module affine_transform #(
    parameter PRECISION = 32
)(
    input  wire clk,
    input  wire reset_n,
    input  wire tvalid,
    input  wire [PRECISION-1:0] A00, A01, A02,
    input  wire [PRECISION-1:0] A10, A11, A12,
    input  wire [PRECISION-1:0] A20, A21, A22,
    input  wire [PRECISION-1:0] x0, x1, x2,
    input  wire [PRECISION-1:0] U0, U1, U2,

    output reg  valid,
    output reg  [PRECISION-1:0] x_next0,
    output reg  [PRECISION-1:0] x_next1,
    output reg  [PRECISION-1:0] x_next2
);

reg [PRECISION-1:0] mul_a_op[0:8], mul_b_op[0:8];
reg mul_tvalid[0:8];
wire [8:0] mul_out_valid;
wire [PRECISION-1:0] mul_out[0:8];
genvar i;
generate
	for (i = 0; i < 9; i = i + 1) begin : mul_block
		floating_point_mul mul_inst (
			.aclk(clk),
			.s_axis_a_tvalid(mul_tvalid[i]),
			.s_axis_a_tdata(mul_a_op[i]),
			.s_axis_b_tvalid(mul_tvalid[i]),
			.s_axis_b_tdata(mul_b_op[i]),
			.m_axis_result_tvalid(mul_out_valid[i]),
			.m_axis_result_tdata(mul_out[i])
		);
	end
endgenerate

reg [PRECISION-1:0] add_a_op[0:8], add_b_op[0:8];
reg add_tvalid[0:8];
wire [8:0] add_out_valid;
wire [PRECISION-1:0] add_out[0:8];
genvar j;
generate
	for (j = 0; j < 9; j = j + 1) begin : add_block
		floating_point_add add_inst (
		  .aclk(clk),           
		  .s_axis_a_tvalid(add_tvalid[j]), 
		  .s_axis_a_tdata(add_a_op[j]),         
		  .s_axis_b_tvalid(add_tvalid[j]), 
		  .s_axis_b_tdata(add_b_op[j]),        
		  .m_axis_result_tvalid(add_out_valid[j]), 
		  .m_axis_result_tdata(add_out[j])   
		);
	end
endgenerate

localparam MUL_LATENCY = 6;
reg [PRECISION-1:0] U0_temp[0:MUL_LATENCY - 1];
reg [PRECISION-1:0] U1_temp[0:MUL_LATENCY - 1];
reg [PRECISION-1:0] U2_temp[0:MUL_LATENCY - 1];

integer k; 
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		for(k = 0; k < 9; k = k+1) begin
			mul_a_op[k] 	<= 0;
			mul_b_op[k] 	<= 0;
			mul_tvalid[k]  	<= 0;	
		end
		for(k = 0; k < MUL_LATENCY; k = k + 1) begin
		  U0_temp[k] <= 0;
		  U1_temp[k] <= 0;
		  U2_temp[k] <= 0;
		end
	end else begin
        if(tvalid) begin
            mul_a_op[0] <= A00; mul_b_op[0] <= x0;
            mul_a_op[1] <= A01; mul_b_op[1] <= x1;
            mul_a_op[2] <= A02; mul_b_op[2] <= x2;
    
            mul_a_op[3] <= A10; mul_b_op[3] <= x0;
            mul_a_op[4] <= A11; mul_b_op[4] <= x1;
            mul_a_op[5] <= A12; mul_b_op[5] <= x2;
    
            mul_a_op[6] <= A20; mul_b_op[6] <= x0;
            mul_a_op[7] <= A21; mul_b_op[7] <= x1;
            mul_a_op[8] <= A22; mul_b_op[8] <= x2;
            
            U0_temp[0] <= U0;
            U1_temp[0] <= U1;
            U2_temp[0] <= U2;
    
            for(k = 0; k < 9; k = k + 1) mul_tvalid[k] <= 1'b1;
        end else begin
		    for(k = 0; k < 9; k = k + 1) mul_tvalid[k] <= 1'b0;
		end
		
		for(k = 1; k < MUL_LATENCY; k = k + 1) begin
		  U0_temp[k] <= U0_temp[k-1];
		  U1_temp[k] <= U1_temp[k-1];
		  U2_temp[k] <= U2_temp[k-1];
		end
	end
end 

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		for (k = 0; k < 6; k = k + 1) begin
			add_a_op[k]   <= {PRECISION{1'b0}};
			add_b_op[k]   <= {PRECISION{1'b0}};
			add_tvalid[k] <= 1'b0;
		end
	end else if(&mul_out_valid) begin

		add_a_op[0] 	<= mul_out[0];
		add_b_op[0] 	<= mul_out[1];
		add_a_op[1] 	<= mul_out[2];
		add_b_op[1] 	<= U0_temp[MUL_LATENCY-1];

		add_a_op[2] 	<= mul_out[3];
		add_b_op[2] 	<= mul_out[4];
		add_a_op[3] 	<= mul_out[5];
		add_b_op[3] 	<= U1_temp[MUL_LATENCY-1];

		add_a_op[4] 	<= mul_out[6];
		add_b_op[4] 	<= mul_out[7];
		add_a_op[5] 	<= mul_out[8];
		add_b_op[5] 	<= U2_temp[MUL_LATENCY-1];

		for(k = 0; k < 6; k = k + 1) add_tvalid[k] <= 1'b1;
	end else begin
		for(k = 0; k < 6; k = k + 1) add_tvalid[k] <= 1'b0;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		for (k = 6; k < 9; k = k + 1) begin
			add_a_op[k]   <= {PRECISION{1'b0}};
			add_b_op[k]   <= {PRECISION{1'b0}};
			add_tvalid[k] <= 1'b0;
		end
	end else if (&add_out_valid[5:0]) begin

		add_a_op[6] 	<= add_out[0];
		add_b_op[6] 	<= add_out[1];
		add_a_op[7] 	<= add_out[2];
		add_b_op[7] 	<= add_out[3];
		add_a_op[8] 	<= add_out[4];
		add_b_op[8] 	<= add_out[5];

		for(k = 6; k < 9; k = k + 1) add_tvalid[k] <= 1'b1;
	end else begin
		for(k = 6; k < 9; k = k + 1) add_tvalid[k] <= 1'b0;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		x_next0 <= {PRECISION{1'b0}};
		x_next1 <= {PRECISION{1'b0}};
		x_next2 <= {PRECISION{1'b0}};
		valid   <= 1'b0;
	end else if (&add_out_valid[8:6]) begin

		x_next0 	<= add_out[6];
		x_next1 	<= add_out[7];
		x_next2 	<= add_out[8];
		valid 		<= 1'b1;
	end else begin
		valid 		<= 1'b0;
	end
end

endmodule
//module affine_transform #(
//    parameter PRECISION = 32
//)(
//    input  wire clk,
//    input  wire reset_n,
//    input  wire tvalid,
//    input  wire [PRECISION-1:0] A00, A01, A02,
//    input  wire [PRECISION-1:0] A10, A11, A12,
//    input  wire [PRECISION-1:0] A20, A21, A22,
//    input  wire [PRECISION-1:0] x0, x1, x2,
//    input  wire [PRECISION-1:0] U0, U1, U2,

//    output reg  valid,
//    output reg  [PRECISION-1:0] x_next0,
//    output reg  [PRECISION-1:0] x_next1,
//    output reg  [PRECISION-1:0] x_next2
//);

//reg [PRECISION-1:0] mul_a_op[0:8], mul_b_op[0:8];
//reg mul_tvalid[0:8];
//wire [8:0] mul_out_valid;
//wire [PRECISION-1:0] mul_out[0:8];
//genvar i;
//generate
//	for (i = 0; i < 9; i = i + 1) begin : mul_block
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

//reg [PRECISION-1:0] add_a_op[0:8], add_b_op[0:8];
//reg add_tvalid[0:8];
//wire [8:0] add_out_valid;
//wire [PRECISION-1:0] add_out[0:8];
//genvar j;
//generate
//	for (j = 0; j < 9; j = j + 1) begin : add_block
//		floating_point_add add_inst (
//		  .aclk(clk),           
//		  .s_axis_a_tvalid(add_tvalid[j]), 
//		  .s_axis_a_tdata(add_a_op[j]),         
//		  .s_axis_b_tvalid(add_tvalid[j]), 
//		  .s_axis_b_tdata(add_b_op[j]),        
//		  .m_axis_result_tvalid(add_out_valid[j]), 
//		  .m_axis_result_tdata(add_out[j])   
//		);
//	end
//endgenerate

//localparam MUL_LATENCY = 6;
//reg [PRECISION-1:0] U0_temp[0:MUL_LATENCY - 1];
//reg [PRECISION-1:0] U1_temp[0:MUL_LATENCY - 1];
//reg [PRECISION-1:0] U2_temp[0:MUL_LATENCY - 1];

//integer k; 
//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		for(k = 0; k < 9; k = k+1) begin
//			mul_a_op[k] 	<= 0;
//			mul_b_op[k] 	<= 0;
//			mul_tvalid[k]  	<= 0;	
//		end
//		for(k = 0; k < MUL_LATENCY; k = k + 1) begin
//		  U0_temp[k] <= 0;
//		  U1_temp[k] <= 0;
//		  U2_temp[k] <= 0;
//		end
//	end else if(tvalid) begin
//		mul_a_op[0] <= A00; mul_b_op[0] <= x0;
//		mul_a_op[1] <= A01; mul_b_op[1] <= x1;
//		mul_a_op[2] <= A02; mul_b_op[2] <= x2;

//		mul_a_op[3] <= A10; mul_b_op[3] <= x0;
//		mul_a_op[4] <= A11; mul_b_op[4] <= x1;
//		mul_a_op[5] <= A12; mul_b_op[5] <= x2;

//		mul_a_op[6] <= A20; mul_b_op[6] <= x0;
//		mul_a_op[7] <= A21; mul_b_op[7] <= x1;
//		mul_a_op[8] <= A22; mul_b_op[8] <= x2;
		
//		U0_temp[0] <= U0;
//		U1_temp[0] <= U1;
//		U2_temp[0] <= U2;

//		for(k = 0; k < 9; k = k + 1) mul_tvalid[k] <= 1'b1;
		
//	end else begin
//		for(k = 0; k < 9; k = k + 1) mul_tvalid[k] <= 1'b0;
//		for(k = 1; k < MUL_LATENCY; k = k + 1) begin
//		  U0_temp[k] <= U0_temp[k-1];
//		  U1_temp[k] <= U1_temp[k-1];
//		  U2_temp[k] <= U2_temp[k-1];
//		end
//	end
//end

//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		for (k = 0; k < 6; k = k + 1) begin
//			add_a_op[k]   <= {PRECISION{1'b0}};
//			add_b_op[k]   <= {PRECISION{1'b0}};
//			add_tvalid[k] <= 1'b0;
//		end
//	end else if(&mul_out_valid) begin

//		add_a_op[0] 	<= mul_out[0];
//		add_b_op[0] 	<= mul_out[1];
//		add_a_op[1] 	<= mul_out[2];
//		add_b_op[1] 	<= U0_temp[MUL_LATENCY-1];

//		add_a_op[2] 	<= mul_out[3];
//		add_b_op[2] 	<= mul_out[4];
//		add_a_op[3] 	<= mul_out[5];
//		add_b_op[3] 	<= U1_temp[MUL_LATENCY-1];

//		add_a_op[4] 	<= mul_out[6];
//		add_b_op[4] 	<= mul_out[7];
//		add_a_op[5] 	<= mul_out[8];
//		add_b_op[5] 	<= U2_temp[MUL_LATENCY-1];

//		for(k = 0; k < 6; k = k + 1) add_tvalid[k] <= 1'b1;
//	end else begin
//		for(k = 0; k < 6; k = k + 1) add_tvalid[k] <= 1'b0;
//	end
//end

//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		for (k = 6; k < 9; k = k + 1) begin
//			add_a_op[k]   <= {PRECISION{1'b0}};
//			add_b_op[k]   <= {PRECISION{1'b0}};
//			add_tvalid[k] <= 1'b0;
//		end
//	end else if (&add_out_valid[5:0]) begin

//		add_a_op[6] 	<= add_out[0];
//		add_b_op[6] 	<= add_out[1];
//		add_a_op[7] 	<= add_out[2];
//		add_b_op[7] 	<= add_out[3];
//		add_a_op[8] 	<= add_out[4];
//		add_b_op[8] 	<= add_out[5];

//		for(k = 6; k < 9; k = k + 1) add_tvalid[k] <= 1'b1;
//	end else begin
//		for(k = 6; k < 9; k = k + 1) add_tvalid[k] <= 1'b0;
//	end
//end

//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		x_next0 <= {PRECISION{1'b0}};
//		x_next1 <= {PRECISION{1'b0}};
//		x_next2 <= {PRECISION{1'b0}};
//		valid   <= 1'b0;
//	end else if (&add_out_valid[8:6]) begin

//		x_next0 	<= add_out[6];
//		x_next1 	<= add_out[7];
//		x_next2 	<= add_out[8];
//		valid 		<= 1'b1;
//	end else begin
//		valid 		<= 1'b0;
//	end
//end

//endmodule