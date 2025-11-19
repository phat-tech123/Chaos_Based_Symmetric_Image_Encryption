module sigma#(
	parameter PRECISION = 32
)(
	input clk,
	input reset_n,
	input [PRECISION-1:0] err,
	input tvalid,
	input [PRECISION-1:0] A00, A01, A02,
	input [PRECISION-1:0] A10, A11, A12,
	input [PRECISION-1:0] A20, A21, A22,
	output reg valid,
	output reg [PRECISION-1:0] sigma
);

reg add_tvalid[0:8];
reg [PRECISION-1:0] add_a_op[0:8], add_b_op[0:8];
wire [8:0] add_valid;
wire [PRECISION-1:0] add_out[0:8];
genvar i;
generate 
	for(i = 0; i < 9; i = i+1) begin : add_block
		floating_point_add add_inst (
		  .aclk(clk),           
		  .s_axis_a_tvalid(add_tvalid[i]), 
		  .s_axis_a_tdata(add_a_op[i]),         
		  .s_axis_b_tvalid(add_tvalid[i]), 
		  .s_axis_b_tdata(add_b_op[i]),        
		  .m_axis_result_tvalid(add_valid[i]), 
		  .m_axis_result_tdata(add_out[i])   
		);
	end
endgenerate

wire mul_valid, sqrt_valid; 
reg [PRECISION-1:0] mul_a_op, mul_b_op, sqrt_op;
wire [PRECISION-1:0] mul_out, sqrt_out;
reg mul_tvalid, sqrt_tvalid;
floating_point_mul mul (
  .aclk(clk),        
  .s_axis_a_tvalid(mul_tvalid), .s_axis_a_tdata(mul_a_op),   
  .s_axis_b_tvalid(mul_tvalid), .s_axis_b_tdata(mul_b_op), 
  .m_axis_result_tvalid(mul_valid), .m_axis_result_tdata(mul_out)
);
floating_point_sqrt sqrt (
  .aclk(clk),                                 
  .s_axis_a_tvalid(sqrt_tvalid),            
  .s_axis_a_tdata(sqrt_op),            
  .m_axis_result_tvalid(sqrt_valid), 
  .m_axis_result_tdata(sqrt_out)   
);

localparam ADD_LATENCY = 11;
localparam MUL_LATENCY = 6;
localparam SQRT_LATENCY = 28;
integer iter;

// flip flop for add pipeline
reg [PRECISION-1:0] A02_temp [0:ADD_LATENCY-1];
reg [PRECISION-1:0] A12_temp [0:ADD_LATENCY-1];
reg [PRECISION-1:0] A22_temp [0:ADD_LATENCY-1];
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		for(iter = 0; iter < 3; iter = iter+1) begin
			add_tvalid[iter] <= 0;
			add_a_op[iter] 	 <= 0;
			add_b_op[iter] 	 <= 0;
		end
		for(iter = 0; iter < ADD_LATENCY; iter = iter+1) begin
			A02_temp[iter] <= 0;
			A12_temp[iter] <= 0;
			A22_temp[iter] <= 0;
		end
	end else if (tvalid) begin
		for(iter = 0; iter < 3; iter = iter+1) add_tvalid[iter] <= 1;
		add_a_op[0] <= A00; add_b_op[0] <= A01;
		add_a_op[1] <= A10; add_b_op[1] <= A11;
		add_a_op[2] <= A20; add_b_op[2] <= A21;
		A02_temp[0] <= A02;
		A12_temp[0] <= A12;
		A22_temp[0] <= A22;
	end else begin
		for(iter = 0; iter < 3; iter = iter+1) add_tvalid[iter] <= 0;

		for(iter = 1; iter < ADD_LATENCY; iter = iter+1) begin
			A02_temp[iter] <= A02_temp[iter-1];
			A12_temp[iter] <= A12_temp[iter-1];
			A22_temp[iter] <= A22_temp[iter-1];
		end
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		for(iter = 3; iter < 6; iter = iter+1) begin
			add_tvalid[iter] <= 0;
			add_a_op[iter] 	 <= 0;
			add_b_op[iter] 	 <= 0;
		end
	end else if (&add_valid[2:0]) begin
		for(iter = 3; iter < 6; iter = iter+1) begin
			add_tvalid[iter] <= 1;
		end
		add_a_op[3] <= A02_temp[ADD_LATENCY-1]; add_b_op[3] <= add_out[0];
		add_a_op[4] <= A12_temp[ADD_LATENCY-1]; add_b_op[4] <= add_out[1];
		add_a_op[5] <= A22_temp[ADD_LATENCY-1]; add_b_op[5] <= add_out[2];
	end else begin
		for(iter = 3; iter < 6; iter = iter+1) add_tvalid[iter] <= 0;
	end
end

reg [PRECISION-1:0] norm_inf_manual;
reg norm_inf_manual_valid;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		norm_inf_manual <= 0;
		norm_inf_manual_valid <= 0;
	end else if(&add_valid[5:3]) begin
		norm_inf_manual_valid <= 1;
		norm_inf_manual <= find_max(add_out[5], add_out[4], add_out[3]);
	end else begin
		norm_inf_manual_valid <= 0;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		add_tvalid[6] 	<= 0;
		mul_tvalid 	<= 0;
		mul_a_op 	<= 0; 
		mul_b_op 	<= 0;
		add_a_op[6] 	<= 0;
		add_b_op[6] 	<= 0;
	end else if(norm_inf_manual_valid) begin
		add_tvalid[6] 	<= 1;
		mul_tvalid 	<= 1;
		mul_a_op 	<= 32'h40400000; 
		mul_b_op 	<= norm_inf_manual;
		add_a_op[6] 	<= 32'h3f800000;
		add_b_op[6] 	<= norm_inf_manual;
	end else begin
		add_tvalid[6] 	<= 0;
		mul_tvalid 	<= 0;
	end
end

//flip flop for add pipeline
reg [PRECISION-1:0] mul_temp[0:2*ADD_LATENCY - MUL_LATENCY + SQRT_LATENCY];
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		for(iter = 0; iter < 2*ADD_LATENCY - MUL_LATENCY + SQRT_LATENCY + 1; iter = iter + 1) begin
			mul_temp[iter] <= 0;
		end
	end else if(mul_valid) begin
		mul_temp[0] <= mul_out;
	end else begin
		for(iter = 1; iter < 2*ADD_LATENCY - MUL_LATENCY + SQRT_LATENCY + 1; iter = iter + 1) begin
			mul_temp[iter] <= mul_temp[iter-1];
		end
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		sqrt_tvalid 	<= 0;
		sqrt_op 	<= 0;
	end else if(add_valid[6]) begin
		sqrt_tvalid 	<= 1;
		sqrt_op 	<= add_out[6];
	end else begin
		sqrt_tvalid 	<= 0;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		add_tvalid[7] 	<= 0;
		add_a_op[7] 	<= 0;
		add_b_op[7] 	<= 0;
	end else if(sqrt_valid) begin
		add_tvalid[7] 	<= 1;
		add_a_op[7] 	<= sqrt_out;
		add_b_op[7] 	<= 32'h3f800000;
	end else begin
		add_tvalid[7] 	<= 0;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		add_tvalid[8] 	<= 0;
		add_a_op[8] <= 0;
		add_b_op[8] <= 0;
	end else if(add_valid[7]) begin
		add_tvalid[8] 	<= 1;
		add_a_op[8] 	<= fp_gt(mul_temp[2*ADD_LATENCY - MUL_LATENCY + SQRT_LATENCY], add_out[7]) ? mul_temp[2*ADD_LATENCY - MUL_LATENCY + SQRT_LATENCY] : add_out[7];
		add_b_op[8] 	<= err;
	end else begin
		add_tvalid[8] 	<= 0;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		valid <= 0;
		sigma <= 0;
	end else if(add_valid[8]) begin
		valid <= 1;
		sigma <= add_out[8];
	end else begin
		valid <= 0;
	end
end

function fp_gt;
	input [31:0] a;
	input [31:0] b;
	reg a_sign, b_sign;
	reg [7:0] a_exp, b_exp;
	reg [22:0] a_frac;
	reg [22:0] b_frac;

    	begin
		a_sign = a[31];
		b_sign = b[31];
		a_exp  = a[30:23];
		b_exp  = b[30:23];
		a_frac = a[22:0];
		b_frac = b[22:0];

		if (a_sign != b_sign) 		fp_gt = (a_sign == 0); 
		else if (a_exp != b_exp) 	fp_gt = (a_sign == 0) ? (a_exp > b_exp) : (a_exp < b_exp);
		else 				fp_gt = (a_sign == 0) ? (a_frac > b_frac) : (a_frac < b_frac);
    	end
endfunction

function [31:0] find_max;
	input [31:0] a;
	input [31:0] b;
	input [31:0] c;
    	reg [31:0] temp_max;

    	begin
        	if (fp_gt(a, b)) 	temp_max = a;
        	else 			temp_max = b;

        	if (fp_gt(temp_max, c)) find_max = temp_max;
        	else 			find_max = c;
    	end
endfunction

endmodule
