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
    
    // Kích hoạt khi: (Có tvalid) HOẶC (Loop cũ xong VÀ đang ở chế độ running)
    wire mul_start_pulse = tvalid || (loop_done && running);
    
    reg [2:0] mul_tvalid;
    reg [PRECISION-1:0] mul_a_op[0:2], mul_b_op[0:2];
    wire [2:0] mul_out_valid;
    wire [PRECISION-1:0] mul_out[0:2];
    
    integer j;
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            mul_tvalid <= 3'b0;
            for(j=0; j<3; j=j+1) begin
                mul_a_op[j] <= 0;
                mul_b_op[j] <= 0;
            end
        end else begin
            // --- Control Logic ---
            if (mul_start_pulse) begin
                mul_tvalid <= 3'b111;
                
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
                mul_tvalid <= 3'b0; // Tắt tín hiệu valid sau 1 chu kỳ
            end
        end
    end

    genvar i;
    generate
        for (i = 0; i < 3; i = i + 1) begin : mul_block
            floating_point_mul mul_inst (
                .aclk(clk),  // Sử dụng clock hệ thống chạy liên tục
                .s_axis_a_tvalid(mul_tvalid[i]), .s_axis_a_tdata(mul_a_op[i]),
                .s_axis_b_tvalid(mul_tvalid[i]), .s_axis_b_tdata(mul_b_op[i]),
                .m_axis_result_tvalid(mul_out_valid[i]), .m_axis_result_tdata(mul_out[i])
            );
        end
    endgenerate

    // ============================================================
    // 2. STAGE 2: Sawtooth Function
    // ============================================================
    
    wire saw_start_pulse = &mul_out_valid; // Kích hoạt khi MUL báo xong
    
    reg [2:0] sawtooth_tvalid;
    reg [PRECISION-1:0] sawtooth_x[0:2];
    wire [2:0] sawtooth_valid;
    wire [PRECISION-1:0] sawtooth_out[0:2];

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            sawtooth_tvalid <= 3'b0;
            for(j=0; j<3; j=j+1) sawtooth_x[j] <= 0;
        end else begin
            if (saw_start_pulse) begin
                sawtooth_tvalid <= 3'b111;
                for(j=0; j<3; j=j+1) sawtooth_x[j] <= mul_out[j];
            end else begin
                sawtooth_tvalid <= 3'b0;
            end
        end
    end

    genvar k;
    generate
        for (k = 0; k < 3; k = k + 1) begin : sawtooth_block
            sawtooth #(.PRECISION(PRECISION)) sawtooth_inst(
                .clk(clk), // Sử dụng clock hệ thống
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
    
    wire affine_start_pulse = &sawtooth_valid; // Kích hoạt khi SAW báo xong
    
    reg affine_transform_tvalid;
    reg [PRECISION-1:0] affine_transform_x[0:2];
    reg [PRECISION-1:0] affine_transform_U[0:2];
    wire affine_transform_valid;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            affine_transform_tvalid <= 1'b0;
            for(j=0; j<3; j=j+1) begin
                affine_transform_x[j] <= 0;
                affine_transform_U[j] <= 0;
            end
        end else begin
            if (affine_start_pulse) begin
                affine_transform_tvalid <= 1'b1;
                
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
            end
        end
    end

    affine_transform #(.PRECISION(PRECISION)) affine_transform_u(
        .clk(clk), // Sử dụng clock hệ thống
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