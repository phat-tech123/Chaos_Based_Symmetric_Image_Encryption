module PRNG#(
	parameter PRECISION = 32
)(
	input clk,
	input reset_n,
	input tvalid,
	output reg valid,
	output reg [PRECISION-1:0] pseudoRandomNumber1,
	output reg [PRECISION-1:0] pseudoRandomNumber2,
	output reg [PRECISION-1:0] pseudoRandomNumber3
);

// --------------- INIT ------------------//
wire [PRECISION-1:0] A[0:8], x[0:2];
ParamMem #(.PRECISION(PRECISION)) mem_inst (
    .clk(clk),
//    .reset_n(reset_n),
    .A00(A[0]), .A01(A[1]), .A02(A[2]),
    .A10(A[3]), .A11(A[4]), .A12(A[5]),
    .A20(A[6]), .A21(A[7]), .A22(A[8]),
    .x0(x[0]), .x1(x[1]), .x2(x[2])
);

// ------------------ instantiate ----------------//
wire sigma_out_valid;
wire [PRECISION-1:0] sigma_out;
reg sigma_tvalid;
sigma sigma_u (
	.clk(clk), .reset_n(reset_n),
	.tvalid(sigma_tvalid),
	.err(32'h3dcccccd),
	.A00(A[0]), .A01(A[1]), .A02(A[2]),
	.A10(A[3]), .A11(A[4]), .A12(A[5]),
	.A20(A[6]), .A21(A[7]), .A22(A[8]),
	.valid(sigma_out_valid),
	.sigma(sigma_out)
);

reg [PRECISION-1:0] mul_a_op[0:2], mul_b_op[0:2];
reg mul_tvalid[0:2];
wire [2:0] mul_out_valid; 
wire [PRECISION-1:0] mul_out[0:2];
genvar i;
generate
	for (i = 0; i < 3; i = i + 1) begin : mul_block
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

reg [PRECISION-1:0] sawtooth_x[0:2], epsilon;
reg sawtooth_tvalid[0:2];
wire [2:0] sawtooth_valid; 
wire [PRECISION-1:0] sawtooth_out[0:2];
genvar k;
generate
	for (k = 0; k < 3; k = k + 1) begin : sawtooth_block
		sawtooth #(.PRECISION(PRECISION)) sawtooth_inst(
			.clk(clk), .reset_n(reset_n),
			.sawtooth_tvalid(sawtooth_tvalid[k]),
			.x(sawtooth_x[k]),
			.epsilon(epsilon),
			.sawtooth_valid(sawtooth_valid[k]),
			.result(sawtooth_out[k])
		);
	end
endgenerate

reg [PRECISION-1:0] affine_transform_x[0:2], affine_transform_U[0:2];
reg affine_transform_tvalid; wire affine_transform_valid;
wire [PRECISION-1:0] x_next0, x_next1, x_next2;
affine_transform #(.PRECISION(PRECISION)) affine_transform_u(
	.clk(clk), .reset_n(reset_n),
	.tvalid(affine_transform_tvalid),
	.A00(A[0]), .A01(A[1]), .A02(A[2]),
	.A10(A[3]), .A11(A[4]), .A12(A[5]),
	.A20(A[6]), .A21(A[7]), .A22(A[8]),
	.x0(affine_transform_x[0]), .x1(affine_transform_x[1]), .x2(affine_transform_x[2]),
	.U0(affine_transform_U[0]), .U1(affine_transform_U[1]), .U2(affine_transform_U[2]),
	.valid(affine_transform_valid),
	.x_next0(x_next0),
	.x_next1(x_next1),
	.x_next2(x_next2)
);


integer j;
//------------- calculate sigma -----------//
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		sigma_tvalid <= 1'b0; 
	end else if(tvalid) begin
		sigma_tvalid <= 1'b1; 
	end else begin
		sigma_tvalid <= 1'b0; 
	end
end

//------------- sigma * x -----------------//
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		for(j = 0; j < 3; j = j+1) begin
			mul_tvalid[j] 	<= 1'b0;
			mul_a_op[j] 	<= 0;
			mul_b_op[j] 	<= 0;
		end
	end else if(sigma_out_valid || valid) begin
		for(j = 0; j < 3; j = j+1) begin
			mul_a_op[j] <= sigma_out;
			mul_tvalid[j] <= 1'b1;
		end
		mul_b_op[0] <= pseudoRandomNumber1;
		mul_b_op[1] <= pseudoRandomNumber2;
		mul_b_op[2] <= pseudoRandomNumber3;
	end else begin
		for(j = 0; j < 3; j = j+1) mul_tvalid[j] <= 1'b0;
	end
end

//------------- sawtooth -----------------//
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		epsilon <= 0;
		for(j = 0; j < 3; j = j+1) begin
			sawtooth_tvalid[j] <= 0;
			sawtooth_x[j] <= 0;
		end
	end else if(&mul_out_valid) begin
		epsilon <= 32'h3d4ccccd;
		for(j = 0; j < 3; j = j+1) begin
			sawtooth_x[j] <= mul_out[j];
			sawtooth_tvalid[j] <= 1'b1;
		end
	end else begin
		for(j = 0; j < 3; j = j+1) sawtooth_tvalid[j] <= 1'b0;
	end
end

//----------- calculate x_next -----------//
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		affine_transform_tvalid <= 1'b0;
		for(j = 0; j < 3; j = j+1) begin
			affine_transform_x[j] 	<= 0;
			affine_transform_U[j] 	<= 0;
		end
	end else if(&sawtooth_valid) begin
		affine_transform_tvalid <= 1'b1;
		affine_transform_x[0] 	<= pseudoRandomNumber1;
		affine_transform_x[1] 	<= pseudoRandomNumber2;
		affine_transform_x[2] 	<= pseudoRandomNumber3;
		affine_transform_U[0] 	<= sawtooth_out[0];
		affine_transform_U[1] 	<= sawtooth_out[1];
		affine_transform_U[2] 	<= sawtooth_out[2];
	end else begin
		affine_transform_tvalid <= 1'b0;
	end
end

// DONE
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		valid <= 0;
		pseudoRandomNumber1 <= 0;
		pseudoRandomNumber2 <= 0;
		pseudoRandomNumber3 <= 0;
	end else if(tvalid) begin 
		pseudoRandomNumber1 <= x[0];
		pseudoRandomNumber2 <= x[1];
		pseudoRandomNumber3 <= x[2];
	end else if(affine_transform_valid) begin
		valid <= 1;
		pseudoRandomNumber1 <= x_next0;
		pseudoRandomNumber2 <= x_next1;
		pseudoRandomNumber3 <= x_next2;
	end else begin
		valid <= 0;
	end
end

endmodule
