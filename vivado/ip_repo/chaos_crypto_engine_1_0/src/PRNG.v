module PRNG#(
    parameter PRECISION = 32
)(
    input clk,
    input reset_n,
    input tvalid,       
    input [PRECISION-1:0] x0, x1, x2,
    input [PRECISION-1:0] A00, A01, A02, A10, A11, A12, A20, A21, A22,
    input [PRECISION-1:0] sigma_in,
    
    output reg valid,              
    output reg [PRECISION-1:0] pseudoRandomNumber1,
    output reg [PRECISION-1:0] pseudoRandomNumber2,
    output reg [PRECISION-1:0] pseudoRandomNumber3
);

    // ============================================================
    // 0. Constants & State Management
    // ============================================================
    reg [PRECISION-1:0] A [0:8];
    reg [PRECISION-1:0] sigma;
    reg running; // Cờ trạng thái: Đang chạy vòng lặp
    
    // Wire báo hiệu kết thúc một vòng tính toán
    wire loop_done; 
    wire [PRECISION-1:0] next_state_0, next_state_1, next_state_2;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            A[0] <= 0; A[1] <= 0; A[2] <= 0;
            A[3] <= 0; A[4] <= 0; A[5] <= 0;
            A[6] <= 0; A[7] <= 0; A[8] <= 0;

            sigma <= 0;

            running <= 0;
        end else if (tvalid) begin
            A[0] <= A00; A[1] <= A01; A[2] <= A02;
            A[3] <= A10; A[4] <= A11; A[5] <= A12;
            A[6] <= A20; A[7] <= A21; A[8] <= A22;
            sigma <= sigma_in;

            running <= 1; // start
        end
    end

    // ============================================================
    // 1. STAGE 1: Floating Point Multiplier (Sigma * x)
    // ============================================================
    localparam MUL_LATENCY = 7;
    
    // Kích hoạt khi: (Có tvalid) HOẶC (Loop cũ xong VÀ đang ở chế độ running)
    wire mul_start_pulse = tvalid || (loop_done && running);
    
    reg [3:0] mul_latency_counter;
    wire mul_busy = mul_start_pulse || (mul_latency_counter != 0);
    
    reg [2:0] mul_tvalid;
    reg [PRECISION-1:0] mul_a_op[0:2], mul_b_op[0:2];
    wire [2:0] mul_out_valid;
    wire [PRECISION-1:0] mul_out[0:2];
    wire gated_clk1;
    
    integer j;
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            mul_tvalid <= 3'b0;
            mul_latency_counter <= 0;
            for(j=0; j<3; j=j+1) begin
                mul_a_op[j] <= 0;
                mul_b_op[j] <= 0;
            end
        end else begin
            // --- Control Logic ---
            if (mul_start_pulse) begin
                mul_tvalid <= 3'b111;
                mul_latency_counter <= MUL_LATENCY;
                
                // --- Data Loading ---
                for(j=0; j<3; j=j+1) mul_a_op[j] <= sigma;
                
                if (tvalid) begin
                    // Nếu là lần đầu: Lấy Seed từ input
                    mul_b_op[0] <= x0;
                    mul_b_op[1] <= x1;
                    mul_b_op[2] <= x2;
                end else begin
                    // Nếu là vòng lặp: Lấy Feedback từ kết quả vòng trước
                    mul_b_op[0] <= next_state_0;
                    mul_b_op[1] <= next_state_1;
                    mul_b_op[2] <= next_state_2;
                end
            end else begin
                mul_tvalid <= 3'b0; // Tắt tín hiệu valid
                if (mul_latency_counter != 0) 
                    mul_latency_counter <= mul_latency_counter - 1;
            end
        end
    end

    clock_gater clock_gater_1 (.clk(clk), .enable(mul_busy), .clk_out(gated_clk1));

    genvar i;
    generate
        for (i = 0; i < 3; i = i + 1) begin : mul_block
            floating_point_mul mul_inst (
                .aclk(gated_clk1),
//                .aclk(clk),
                .s_axis_a_tvalid(mul_tvalid[i]), .s_axis_a_tdata(mul_a_op[i]),
                .s_axis_b_tvalid(mul_tvalid[i]), .s_axis_b_tdata(mul_b_op[i]),
                .m_axis_result_tvalid(mul_out_valid[i]), .m_axis_result_tdata(mul_out[i])
            );
        end
    endgenerate

    // ============================================================
    // 2. STAGE 2: Sawtooth Function
    // ============================================================
    localparam SAW_LATENCY = 65; // Tăng nhẹ so với 70 để an toàn
    
    wire saw_start_pulse = &mul_out_valid; // Kích hoạt khi MUL xong
    reg [6:0] saw_latency_counter;
    wire saw_busy = saw_start_pulse || (saw_latency_counter != 0);
    
    reg [2:0] sawtooth_tvalid;
    reg [PRECISION-1:0] sawtooth_x[0:2];
    wire [2:0] sawtooth_valid;
    wire [PRECISION-1:0] sawtooth_out[0:2];
    wire gated_clk2;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            sawtooth_tvalid <= 3'b0;
            saw_latency_counter <= 0;
            for(j=0; j<3; j=j+1) sawtooth_x[j] <= 0;
        end else begin
            if (saw_start_pulse) begin
                sawtooth_tvalid <= 3'b111;
                saw_latency_counter <= SAW_LATENCY;
                
                for(j=0; j<3; j=j+1) sawtooth_x[j] <= mul_out[j];
            end else begin
                sawtooth_tvalid <= 3'b0;
                if (saw_latency_counter != 0) 
                    saw_latency_counter <= saw_latency_counter - 1;
            end
        end
    end

    clock_gater clock_gater_2 (.clk(clk), .enable(saw_busy), .clk_out(gated_clk2));

    genvar k;
    generate
        for (k = 0; k < 3; k = k + 1) begin : sawtooth_block
            sawtooth #(.PRECISION(PRECISION)) sawtooth_inst(
                .clk(gated_clk2), 
//                .clk(clk),
                .reset_n(reset_n),
                .sawtooth_tvalid(sawtooth_tvalid[k]), 
                .x(sawtooth_x[k]), .epsilon(32'h3d4ccccd),
                .sawtooth_valid(sawtooth_valid[k]), .result(sawtooth_out[k])
            );
        end
    endgenerate

    // ============================================================
    // 3. STAGE 3: Affine Transform
    // ============================================================
    localparam AFFINE_LATENCY = 33;
    
    wire affine_start_pulse = &sawtooth_valid; // Kích hoạt khi SAW xong
    reg [5:0] affine_latency_counter;
    wire affine_busy = affine_start_pulse || (affine_latency_counter != 0);
    
    reg affine_transform_tvalid;
    reg [PRECISION-1:0] affine_transform_x[0:2];
    reg [PRECISION-1:0] affine_transform_U[0:2];
    wire affine_transform_valid;
    wire gated_clk3;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            affine_transform_tvalid <= 1'b0;
            affine_latency_counter <= 0;
            for(j=0; j<3; j=j+1) begin
                affine_transform_x[j] <= 0;
                affine_transform_U[j] <= 0;
            end
        end else begin
            if (affine_start_pulse) begin
                affine_transform_tvalid <= 1'b1;
                affine_latency_counter <= AFFINE_LATENCY;
                
                // Lấy nhiễu từ Sawtooth
                affine_transform_U[0] <= sawtooth_out[0];
                affine_transform_U[1] <= sawtooth_out[1];
                affine_transform_U[2] <= sawtooth_out[2];
                
                // QUAN TRỌNG: Lấy trạng thái hiện tại (chưa cập nhật)
                affine_transform_x[0] <= pseudoRandomNumber1;
                affine_transform_x[1] <= pseudoRandomNumber2;
                affine_transform_x[2] <= pseudoRandomNumber3;
            end else begin
                affine_transform_tvalid <= 1'b0;
                if (affine_latency_counter != 0) 
                    affine_latency_counter <= affine_latency_counter - 1;
            end
        end
    end

    clock_gater clock_gater_3 (.clk(clk), .enable(affine_busy), .clk_out(gated_clk3));

    affine_transform #(.PRECISION(PRECISION)) affine_transform_u(
        .clk(gated_clk3),
//        .clk(clk), 
        .reset_n(reset_n),
        .tvalid(affine_transform_tvalid),
        .A00(A[0]), .A01(A[1]), .A02(A[2]),
        .A10(A[3]), .A11(A[4]), .A12(A[5]),
        .A20(A[6]), .A21(A[7]), .A22(A[8]),
        .x0(affine_transform_x[0]), .x1(affine_transform_x[1]), .x2(affine_transform_x[2]),
        .U0(affine_transform_U[0]), .U1(affine_transform_U[1]), .U2(affine_transform_U[2]),
        .valid(affine_transform_valid),
        .x_next0(next_state_0), .x_next1(next_state_1), .x_next2(next_state_2)
    );

    // ============================================================
    // 4. Output Logic & Feedback Control
    // ============================================================
    assign loop_done = affine_transform_valid; // Tín hiệu báo xong vòng lặp

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            valid <= 0;
            pseudoRandomNumber1 <= 0;
            pseudoRandomNumber2 <= 0;
            pseudoRandomNumber3 <= 0;
        end else begin
            if (tvalid) begin
                // Case 1: Nạp Seed ban đầu
                pseudoRandomNumber1 <= x0;
                pseudoRandomNumber2 <= x1;
                pseudoRandomNumber3 <= x2;
                valid <= 0;
            end else if (loop_done) begin
                // Case 2: Cập nhật kết quả tính toán mới
                pseudoRandomNumber1 <= next_state_0;
                pseudoRandomNumber2 <= next_state_1;
                pseudoRandomNumber3 <= next_state_2;
                valid <= 1; // Báo ra ngoài là có số mới
            end else begin
                valid <= 0; // Chỉ bật valid trong 1 chu kỳ
            end
        end
    end

endmodule

//module PRNG#(
//	parameter PRECISION = 32
//)(
//	input clk,
//	input reset_n,
//	input tvalid,
//	input [PRECISION-1:0] x0, x1, x2,
//	output reg valid,
//	output reg [PRECISION-1:0] pseudoRandomNumber1,
//	output reg [PRECISION-1:0] pseudoRandomNumber2,
//	output reg [PRECISION-1:0] pseudoRandomNumber3
//);

//// ------------------ instantiate ----------------//
//reg [PRECISION-1:0] A [0:8];
//reg [PRECISION-1:0] sigma;
//always @(posedge clk or negedge reset_n) begin
//    if (!reset_n) begin
//        A[0] <= 32'h00000000;
//        A[1] <= 32'h3f000000;
//        A[2] <= 32'h3d4ccccd;
//        A[3] <= 32'h3eaaaaab;
//        A[4] <= 32'h00000000;
//        A[5] <= 32'h3eaaaaab;
//        A[6] <= 32'h3d4ccccd;
//        A[7] <= 32'h3f000000;
//        A[8] <= 32'h00000000;
//        sigma <= 32'h4019060e;
//    end
//end

//reg [PRECISION-1:0] mul_a_op[0:2], mul_b_op[0:2];
//reg mul_tvalid[0:2];
//wire [2:0] mul_out_valid; 
//wire [PRECISION-1:0] mul_out[0:2];
//genvar i;
//generate
//	for (i = 0; i < 3; i = i + 1) begin : mul_block
//		floating_point_mul mul_inst (
//			.aclk(clk),
//			.s_axis_a_tvalid(mul_tvalid[i]),
//			.s_axis_a_tdata(mul_a_op[i]),
//			.s_axis_b_tvalid(mul_tvalid[i]),
//			.s_axis_b_tdata(mul_b_op[i]),
//			.m_axis_result_tvalid(mul_out_valid[i]),
//			.m_axis_result_tdata(mul_out[i])
//		);
//	end
//endgenerate

//reg [PRECISION-1:0] sawtooth_x[0:2];
//reg sawtooth_tvalid[0:2];
//wire [2:0] sawtooth_valid; 
//wire [PRECISION-1:0] sawtooth_out[0:2];
//genvar k;
//generate
//	for (k = 0; k < 3; k = k + 1) begin : sawtooth_block
//		sawtooth #(.PRECISION(PRECISION)) sawtooth_inst(
//			.clk(clk), .reset_n(reset_n),
//			.sawtooth_tvalid(sawtooth_tvalid[k]),
//			.x(sawtooth_x[k]),
//			.epsilon(32'h3d4ccccd),
//			.sawtooth_valid(sawtooth_valid[k]),
//			.result(sawtooth_out[k])
//		);
//	end
//endgenerate

//reg [PRECISION-1:0] affine_transform_x[0:2], affine_transform_U[0:2];
//reg affine_transform_tvalid; wire affine_transform_valid;
//wire [PRECISION-1:0] x_next0, x_next1, x_next2;
//affine_transform #(.PRECISION(PRECISION)) affine_transform_u(
//	.clk(clk), .reset_n(reset_n),
//	.tvalid(affine_transform_tvalid),
//	.A00(A[0]), .A01(A[1]), .A02(A[2]),
//	.A10(A[3]), .A11(A[4]), .A12(A[5]),
//	.A20(A[6]), .A21(A[7]), .A22(A[8]),
//	.x0(affine_transform_x[0]), .x1(affine_transform_x[1]), .x2(affine_transform_x[2]),
//	.U0(affine_transform_U[0]), .U1(affine_transform_U[1]), .U2(affine_transform_U[2]),
//	.valid(affine_transform_valid),
//	.x_next0(x_next0),
//	.x_next1(x_next1),
//	.x_next2(x_next2)
//);


//integer j;
////------------- sigma * x -----------------//
//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		for(j = 0; j < 3; j = j+1) begin
//			mul_tvalid[j] 	<= 1'b0;
//			mul_a_op[j] 	<= 0;
//			mul_b_op[j] 	<= 0;
//		end
//	end else if(tvalid || valid) begin
//		for(j = 0; j < 3; j = j+1) begin
//			mul_a_op[j] <= sigma;
//			mul_tvalid[j] <= 1'b1;
//		end
//		mul_b_op[0] <= pseudoRandomNumber1;
//		mul_b_op[1] <= pseudoRandomNumber2;
//		mul_b_op[2] <= pseudoRandomNumber3;
//	end else begin
//		for(j = 0; j < 3; j = j+1) mul_tvalid[j] <= 1'b0;
//	end
//end

////------------- sawtooth -----------------//
//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		for(j = 0; j < 3; j = j+1) begin
//			sawtooth_tvalid[j] <= 0;
//			sawtooth_x[j] <= 0;
//		end
//	end else if(&mul_out_valid) begin
//		for(j = 0; j < 3; j = j+1) begin
//			sawtooth_x[j] <= mul_out[j];
//			sawtooth_tvalid[j] <= 1'b1;
//		end
//	end else begin
//		for(j = 0; j < 3; j = j+1) sawtooth_tvalid[j] <= 1'b0;
//	end
//end

////----------- calculate x_next -----------//
//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		affine_transform_tvalid <= 1'b0;
//		for(j = 0; j < 3; j = j+1) begin
//			affine_transform_x[j] 	<= 0;
//			affine_transform_U[j] 	<= 0;
//		end
//	end else if(&sawtooth_valid) begin
//		affine_transform_tvalid <= 1'b1;
//		affine_transform_x[0] 	<= pseudoRandomNumber1;
//		affine_transform_x[1] 	<= pseudoRandomNumber2;
//		affine_transform_x[2] 	<= pseudoRandomNumber3;
//		affine_transform_U[0] 	<= sawtooth_out[0];
//		affine_transform_U[1] 	<= sawtooth_out[1];
//		affine_transform_U[2] 	<= sawtooth_out[2];
//	end else begin
//		affine_transform_tvalid <= 1'b0;
//	end
//end

//// DONE
//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		valid <= 0;
//		pseudoRandomNumber1 <= 0;
//		pseudoRandomNumber2 <= 0;
//		pseudoRandomNumber3 <= 0;
//	end else if(tvalid) begin 
//		pseudoRandomNumber1 <= x0;
//		pseudoRandomNumber2 <= x1;
//		pseudoRandomNumber3 <= x2;
//	end else if(affine_transform_valid) begin
//		valid <= 1;
//		pseudoRandomNumber1 <= x_next0;
//		pseudoRandomNumber2 <= x_next1;
//		pseudoRandomNumber3 <= x_next2;
//	end else begin
//		valid <= 0;
//	end
//end

//endmodule



//module PRNG#(
//	parameter PRECISION = 32
//)(
//	input clk,
//	input reset_n,
//	input tvalid,
//	input [PRECISION-1:0] x0, x1, x2,
//	output reg valid,
//	output reg [PRECISION-1:0] pseudoRandomNumber1,
//	output reg [PRECISION-1:0] pseudoRandomNumber2,
//	output reg [PRECISION-1:0] pseudoRandomNumber3
//);

//// ------------------ instantiate ----------------//
//reg [PRECISION-1:0] A [0:8];
//reg [PRECISION-1:0] sigma;
//always @(posedge clk or negedge reset_n) begin
//    if (!reset_n) begin
//        A[0] <= 32'h00000000;
//        A[1] <= 32'h3f000000;
//        A[2] <= 32'h3d4ccccd;
//        A[3] <= 32'h3eaaaaab;
//        A[4] <= 32'h00000000;
//        A[5] <= 32'h3eaaaaab;
//        A[6] <= 32'h3d4ccccd;
//        A[7] <= 32'h3f000000;
//        A[8] <= 32'h00000000;
//        sigma <= 32'h4019060e;
//    end
//end

//// ============================================================
//// 1
//// ============================================================
//localparam MUL_LATENCY = 7; 
//wire start_pulse = tvalid || valid;
//reg [3:0] latency_counter; 
//wire mul_busy = start_pulse || (latency_counter != 0);

//reg [2:0] mul_tvalid; 
//reg [PRECISION-1:0] mul_a_op[0:2], mul_b_op[0:2];

//// Output Wires
//wire [2:0] mul_out_valid; 
//wire [PRECISION-1:0] mul_out[0:2];
//wire gated_clk1;

//integer j;
//always @(posedge clk or negedge reset_n) begin
//    if (!reset_n) begin
//        mul_tvalid <= 3'b0; 
//    end else if (start_pulse) begin
//        mul_tvalid <= 3'b111; // Kích hoạt cả 3 bộ nhân
        
//        for(j = 0; j < 3; j = j+1) mul_a_op[j] <= sigma;
        
//        mul_b_op[0] <= pseudoRandomNumber1;
//        mul_b_op[1] <= pseudoRandomNumber2;
//        mul_b_op[2] <= pseudoRandomNumber3;
//    end else begin
//        mul_tvalid <= 3'b0; // Ngắt tín hiệu valid để tiết kiệm điện
//    end
//end

//always @(posedge clk or negedge reset_n) begin
//    if (!reset_n) begin
//        latency_counter <= 0;
//    end else begin
//        if (start_pulse) 
//            latency_counter <= MUL_LATENCY; // Có dữ liệu -> Nạp counter
//        else if (latency_counter != 0) 
//            latency_counter <= latency_counter - 1; // Đếm lùi giữ clock
//    end
//end

//clock_gater clock_gater_1(
//    .clk(clk),
//    .enable(mul_busy),
//    .clk_out(gated_clk1)
//);

//genvar i;
//generate
//    for (i = 0; i < 3; i = i + 1) begin : mul_block
//        floating_point_mul mul_inst (
//            .aclk(gated_clk1),
//            .s_axis_a_tvalid(mul_tvalid[i]),
//            .s_axis_a_tdata(mul_a_op[i]),
//            .s_axis_b_tvalid(mul_tvalid[i]),
//            .s_axis_b_tdata(mul_b_op[i]),
//            .m_axis_result_tvalid(mul_out_valid[i]),
//            .m_axis_result_tdata(mul_out[i])
//        );
//    end
//endgenerate

//// ============================================================
//// 1. Khai báo biến & Tham số cho Sawtooth
//// ============================================================
//localparam SAW_LATENCY = 65; 

//wire saw_start_pulse = &mul_out_valid;

//reg [6:0] saw_latency_counter;
//wire saw_busy = saw_start_pulse || (saw_latency_counter != 0);

//reg [2:0] sawtooth_tvalid;
//reg [PRECISION-1:0] sawtooth_x[0:2]; 

//// Output Wires
//wire [2:0] sawtooth_valid; 
//wire [PRECISION-1:0] sawtooth_out[0:2];
//wire gated_clk2; 
//always @(posedge clk or negedge reset_n) begin
//    if (!reset_n) begin
//        sawtooth_tvalid <= 3'b0;
//    end else if (saw_start_pulse) begin
//        sawtooth_tvalid <= 3'b111; 
        
//        for(j = 0; j < 3; j = j+1) begin
//            sawtooth_x[j] <= mul_out[j];
//        end
//    end else begin
//        sawtooth_tvalid <= 3'b0;
//    end
//end

//always @(posedge clk or negedge reset_n) begin
//    if (!reset_n) begin
//        saw_latency_counter <= 0;
//    end else begin
//        if (saw_start_pulse) 
//            saw_latency_counter <= SAW_LATENCY; // Nạp counter
//        else if (saw_latency_counter != 0) 
//            saw_latency_counter <= saw_latency_counter - 1; // Đếm lùi
//    end
//end

//clock_gater clock_gater_2(
//    .clk(clk),
//    .enable(saw_busy),
//    .clk_out(gated_clk2)
//);

//genvar k;
//generate
//    for (k = 0; k < 3; k = k + 1) begin : sawtooth_block
//        sawtooth #(.PRECISION(PRECISION)) sawtooth_inst(
//            .clk(gated_clk2), // Dùng Clock đã Gated
//            .reset_n(reset_n),
//            .sawtooth_tvalid(sawtooth_tvalid[k]), // Truy xuất bit từ vector
//            .x(sawtooth_x[k]),
//            .epsilon(32'h3d4ccccd),
//            .sawtooth_valid(sawtooth_valid[k]),
//            .result(sawtooth_out[k])
//        );
//    end
//endgenerate





//// ============================================================
//// 1. Khai báo biến & Tham số cho Affine Transform
//// ============================================================
//// Cần kiểm tra Module Affine mất bao nhiêu nhịp (thường là cộng + nhân float ~ 10-15 cycles)
//localparam AFFINE_LATENCY = 32; 

//// Tín hiệu kích hoạt: Khi Sawtooth tính xong (AND tất cả các bit valid)
//// Lưu ý: sawtooth_valid là vector [2:0] từ block trước
//wire affine_start_pulse = &sawtooth_valid;

//reg [6:0] affine_latency_counter;
//wire affine_busy = affine_start_pulse || (affine_latency_counter != 0);

//// Data Path Registers
//reg affine_transform_tvalid;
//reg [PRECISION-1:0] affine_transform_x[0:2];
//reg [PRECISION-1:0] affine_transform_U[0:2];

//// Output Wires
//wire affine_transform_valid;
//wire [PRECISION-1:0] x_next0, x_next1, x_next2;
//wire gated_clk3; // Clock riêng cho Affine

//always @(posedge clk or negedge reset_n) begin
//    if (!reset_n) begin
//        affine_transform_tvalid <= 1'b0;
//        // TỐI ƯU: Không reset x[] và U[] để tiết kiệm logic
//    end else if (affine_start_pulse) begin
//        affine_transform_tvalid <= 1'b1;
        
//        // 1. Load vector trạng thái cũ (Feedback từ kết quả vòng trước)
//        affine_transform_x[0] <= pseudoRandomNumber1;
//        affine_transform_x[1] <= pseudoRandomNumber2;
//        affine_transform_x[2] <= pseudoRandomNumber3;
        
//        // 2. Load vector nhiễu (Từ Sawtooth)
//        affine_transform_U[0] <= sawtooth_out[0];
//        affine_transform_U[1] <= sawtooth_out[1];
//        affine_transform_U[2] <= sawtooth_out[2];
//    end else begin
//        affine_transform_tvalid <= 1'b0;
//    end
//end

//always @(posedge clk or negedge reset_n) begin
//    if (!reset_n) begin
//        affine_latency_counter <= 0;
//    end else begin
//        if (affine_start_pulse) 
//            affine_latency_counter <= AFFINE_LATENCY;
//        else if (affine_latency_counter != 0) 
//            affine_latency_counter <= affine_latency_counter - 1;
//    end
//end

//clock_gater clock_gater_3(
//    .clk(clk),
//    .enable(affine_busy),
//    .clk_out(gated_clk3)
//);


//affine_transform #(.PRECISION(PRECISION)) affine_transform_u(
//    .clk(gated_clk3),         // Dùng Gated Clock
//    .reset_n(reset_n),
//    .tvalid(affine_transform_tvalid),
//    // Ma trận A (Constants)
//    .A00(A[0]), .A01(A[1]), .A02(A[2]),
//    .A10(A[3]), .A11(A[4]), .A12(A[5]),
//    .A20(A[6]), .A21(A[7]), .A22(A[8]),
//    // Vector đầu vào
//    .x0(affine_transform_x[0]), .x1(affine_transform_x[1]), .x2(affine_transform_x[2]),
//    .U0(affine_transform_U[0]), .U1(affine_transform_U[1]), .U2(affine_transform_U[2]),
//    // Output
//    .valid(affine_transform_valid),
//    .x_next0(x_next0),
//    .x_next1(x_next1),
//    .x_next2(x_next2)
//);



//// DONE
//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		valid <= 0;
//		pseudoRandomNumber1 <= 0;
//		pseudoRandomNumber2 <= 0;
//		pseudoRandomNumber3 <= 0;
//	end else if(tvalid) begin 
//		pseudoRandomNumber1 <= x0;
//		pseudoRandomNumber2 <= x1;
//		pseudoRandomNumber3 <= x2;
//	end else if(affine_transform_valid) begin
//		valid <= 1;
//		pseudoRandomNumber1 <= x_next0;
//		pseudoRandomNumber2 <= x_next1;
//		pseudoRandomNumber3 <= x_next2;
//	end else begin
//		valid <= 0;
//	end
//end

//endmodule




////module PRNG#(
////	parameter PRECISION = 32
////)(
////	input clk,
////	input reset_n,
////	input tvalid,
////	input [PRECISION-1:0] x0, x1, x2,
////	output reg valid,
////	output reg [PRECISION-1:0] pseudoRandomNumber1,
////	output reg [PRECISION-1:0] pseudoRandomNumber2,
////	output reg [PRECISION-1:0] pseudoRandomNumber3
////);

////// ------------------ instantiate ----------------//
////reg [PRECISION-1:0] A [0:8];
////reg [PRECISION-1:0] sigma;
////always @(posedge clk or negedge reset_n) begin
////    if (!reset_n) begin
////        A[0] <= 32'h00000000;
////        A[1] <= 32'h3f000000;
////        A[2] <= 32'h3d4ccccd;
////        A[3] <= 32'h3eaaaaab;
////        A[4] <= 32'h00000000;
////        A[5] <= 32'h3eaaaaab;
////        A[6] <= 32'h3d4ccccd;
////        A[7] <= 32'h3f000000;
////        A[8] <= 32'h00000000;
////        sigma <= 32'h4019060e;
////    end
////end

////reg [PRECISION-1:0] mul_a_op[0:2], mul_b_op[0:2];
////reg mul_tvalid[0:2];
////wire [2:0] mul_out_valid; 
////wire [PRECISION-1:0] mul_out[0:2];
////genvar i;
////generate
////	for (i = 0; i < 3; i = i + 1) begin : mul_block
////		floating_point_mul mul_inst (
////			.aclk(clk),
////			.s_axis_a_tvalid(mul_tvalid[i]),
////			.s_axis_a_tdata(mul_a_op[i]),
////			.s_axis_b_tvalid(mul_tvalid[i]),
////			.s_axis_b_tdata(mul_b_op[i]),
////			.m_axis_result_tvalid(mul_out_valid[i]),
////			.m_axis_result_tdata(mul_out[i])
////		);
////	end
////endgenerate

////reg [PRECISION-1:0] sawtooth_x[0:2];
////reg sawtooth_tvalid[0:2];
////wire [2:0] sawtooth_valid; 
////wire [PRECISION-1:0] sawtooth_out[0:2];
////genvar k;
////generate
////	for (k = 0; k < 3; k = k + 1) begin : sawtooth_block
////		sawtooth #(.PRECISION(PRECISION)) sawtooth_inst(
////			.clk(clk), .reset_n(reset_n),
////			.sawtooth_tvalid(sawtooth_tvalid[k]),
////			.x(sawtooth_x[k]),
////			.epsilon(32'h3d4ccccd),
////			.sawtooth_valid(sawtooth_valid[k]),
////			.result(sawtooth_out[k])
////		);
////	end
////endgenerate

////reg [PRECISION-1:0] affine_transform_x[0:2], affine_transform_U[0:2];
////reg affine_transform_tvalid; wire affine_transform_valid;
////wire [PRECISION-1:0] x_next0, x_next1, x_next2;
////affine_transform #(.PRECISION(PRECISION)) affine_transform_u(
////	.clk(clk), .reset_n(reset_n),
////	.tvalid(affine_transform_tvalid),
////	.A00(A[0]), .A01(A[1]), .A02(A[2]),
////	.A10(A[3]), .A11(A[4]), .A12(A[5]),
////	.A20(A[6]), .A21(A[7]), .A22(A[8]),
////	.x0(affine_transform_x[0]), .x1(affine_transform_x[1]), .x2(affine_transform_x[2]),
////	.U0(affine_transform_U[0]), .U1(affine_transform_U[1]), .U2(affine_transform_U[2]),
////	.valid(affine_transform_valid),
////	.x_next0(x_next0),
////	.x_next1(x_next1),
////	.x_next2(x_next2)
////);


////integer j;
//////------------- sigma * x -----------------//
////always@(posedge clk or negedge reset_n) begin
////	if(!reset_n) begin
////		for(j = 0; j < 3; j = j+1) begin
////			mul_tvalid[j] 	<= 1'b0;
////			mul_a_op[j] 	<= 0;
////			mul_b_op[j] 	<= 0;
////		end
////	end else if(tvalid || valid) begin
////		for(j = 0; j < 3; j = j+1) begin
////			mul_a_op[j] <= sigma;
////			mul_tvalid[j] <= 1'b1;
////		end
////		mul_b_op[0] <= pseudoRandomNumber1;
////		mul_b_op[1] <= pseudoRandomNumber2;
////		mul_b_op[2] <= pseudoRandomNumber3;
////	end else begin
////		for(j = 0; j < 3; j = j+1) mul_tvalid[j] <= 1'b0;
////	end
////end

//////------------- sawtooth -----------------//
////always@(posedge clk or negedge reset_n) begin
////	if(!reset_n) begin
////		for(j = 0; j < 3; j = j+1) begin
////			sawtooth_tvalid[j] <= 0;
////			sawtooth_x[j] <= 0;
////		end
////	end else if(&mul_out_valid) begin
////		for(j = 0; j < 3; j = j+1) begin
////			sawtooth_x[j] <= mul_out[j];
////			sawtooth_tvalid[j] <= 1'b1;
////		end
////	end else begin
////		for(j = 0; j < 3; j = j+1) sawtooth_tvalid[j] <= 1'b0;
////	end
////end

//////----------- calculate x_next -----------//
////always@(posedge clk or negedge reset_n) begin
////	if(!reset_n) begin
////		affine_transform_tvalid <= 1'b0;
////		for(j = 0; j < 3; j = j+1) begin
////			affine_transform_x[j] 	<= 0;
////			affine_transform_U[j] 	<= 0;
////		end
////	end else if(&sawtooth_valid) begin
////		affine_transform_tvalid <= 1'b1;
////		affine_transform_x[0] 	<= pseudoRandomNumber1;
////		affine_transform_x[1] 	<= pseudoRandomNumber2;
////		affine_transform_x[2] 	<= pseudoRandomNumber3;
////		affine_transform_U[0] 	<= sawtooth_out[0];
////		affine_transform_U[1] 	<= sawtooth_out[1];
////		affine_transform_U[2] 	<= sawtooth_out[2];
////	end else begin
////		affine_transform_tvalid <= 1'b0;
////	end
////end

////// DONE
////always@(posedge clk or negedge reset_n) begin
////	if(!reset_n) begin
////		valid <= 0;
////		pseudoRandomNumber1 <= 0;
////		pseudoRandomNumber2 <= 0;
////		pseudoRandomNumber3 <= 0;
////	end else if(tvalid) begin 
////		pseudoRandomNumber1 <= x0;
////		pseudoRandomNumber2 <= x1;
////		pseudoRandomNumber3 <= x2;
////	end else if(affine_transform_valid) begin
////		valid <= 1;
////		pseudoRandomNumber1 <= x_next0;
////		pseudoRandomNumber2 <= x_next1;
////		pseudoRandomNumber3 <= x_next2;
////	end else begin
////		valid <= 0;
////	end
////end

////endmodule
