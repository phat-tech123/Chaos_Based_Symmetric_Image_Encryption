`include "./../FP_adder/FP_adder.v"
`include "./../FP_div/FP_div.v"
`include "./../FP_mul/FP_mul.v"

module sawtooth#(
	parameter PRECISION = 32
)(
	input clk,
	input reset_n,
	input [PRECISION-1:0] x,
	input [PRECISION-1:0] epsilon,
	output reg [PRECISION-1:0] result
);

reg [PRECISION-1:0] L, L_t;
reg [PRECISION-1:0] div_a_op, div_b_op;
reg [PRECISION-1:0] mul_a_op_1, mul_b_op_1;
reg [PRECISION-1:0] mul_a_op_2, mul_b_op_2;
reg [PRECISION-1:0] add_a_op_1, add_b_op_1;
reg [PRECISION-1:0] add_a_op_2, add_b_op_2;

wire [PRECISION-1:0] div_out;
wire [PRECISION-1:0] mul_out_1;
wire [PRECISION-1:0] add_out_1;
wire [PRECISION-1:0] mul_out_2;
wire [PRECISION-1:0] add_out_2;

FP_div #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) div(
	.clk(clk), .reset_n(reset_n),
	.a_operand(div_a_op), .b_operand(div_b_op), 
	.result(div_out)
);

FP_adder #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) add_1(
	.clk(clk), .reset_n(reset_n),
	.a_operand(add_a_op_1),  .b_operand(add_b_op_1), 
	.result(add_out_1)
);

FP_mul #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) mul_1(
	.clk(clk), .reset_n(reset_n),
	.a_operand(mul_a_op_1), .b_operand(mul_b_op_1), 
	.result(mul_out_1)
);

FP_adder #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) add_2(
	.clk(clk), .reset_n(reset_n),
	.a_operand(add_a_op_2),  .b_operand(add_b_op_2), 
	.result(add_out_2)
);

FP_mul #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) mul_2(
	.clk(clk), .reset_n(reset_n),
	.a_operand(mul_a_op_2), .b_operand(mul_b_op_2), 
	.result(mul_out_2)
);

reg [PRECISION-1:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20;
reg [PRECISION-1:0] epsilon0, epsilon1, epsilon2, epsilon3, epsilon4, epsilon5, epsilon6, epsilon7, epsilon8, epsilon9, epsilon10, epsilon11, epsilon12, epsilon13, epsilon14; 
reg [PRECISION-1:0] L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14, L15, L16, L17, L18, L19;

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		L_t 		<= 0;
		L           	<= 0;
		div_a_op 	<= 0;
		div_b_op 	<= 0;
		add_a_op_1 	<= 0;
		add_b_op_1 	<= 0;
		mul_a_op_1 	<= 0;
		mul_b_op_1 	<= 0;
		add_a_op_2 	<= 0;
		add_b_op_2 	<= 0;
		mul_a_op_2	<= 0;
		mul_b_op_2 	<= 0;
		result      	<= 0;

		x0<=0; x1<=0; x2<=0; x3<=0; x4<=0; x5<=0; x6<=0; x7<=0; x8<=0; x9<=0; 
		x10<=0; x11<=0; x12<=0; x13<=0; x14<=0; x15<=0; x16<=0; x17<=0; x18<=0; x19<=0; x20<=0;
		
		epsilon0<=0; epsilon1<=0; epsilon2<=0; epsilon3<=0; epsilon4<=0; epsilon5<=0; epsilon6<=0; epsilon7<=0; 
		epsilon8<=0; epsilon9<=0; epsilon10<=0; epsilon11<=0; epsilon12<=0; epsilon13<=0; epsilon14<=0;

		L1<=0; L2<=0; L3<=0; L4<=0; L5<=0; L6<=0; L7<=0; L8<=0; L9<=0; L10<=0;
		L11<=0; L12<=0; L13<=0; L14<=0; L15<=0; L16<=0; L17<=0; L18<=0; L19<=0;
	end else begin
		x0 		<= x;
		epsilon0 	<= epsilon;

		// 
		div_a_op 	<= x0;
		div_b_op 	<= epsilon0;
		x1 <= x0;  x2 <= x1;  x3 <= x2;  x4 <= x3;  x5 <= x4;
		epsilon1 <= epsilon0; epsilon2 <= epsilon1; epsilon3 <= epsilon2; epsilon4 <= epsilon3; epsilon5 <= epsilon4; 

		//
		add_a_op_1 	<= 32'h3f800000; //1.0
		add_b_op_1 	<= div_out;
		x6 <= x5;  x7 <= x6;  x8 <= x7;  x9 <= x8;  x10 <= x9;
		epsilon6 <= epsilon5; epsilon7 <= epsilon6; epsilon8 <= epsilon7; epsilon9 <= epsilon8; epsilon10 <= epsilon9; 

		//
		L_t 		<= mul_half(add_out_1);
		x11 <= x10; 
		epsilon11 <= epsilon10; 

		//
		L 		<= floor(L_t);
		x12 <= x11; 
		epsilon12 <= epsilon11;
		epsilon13 <= epsilon12;
		epsilon14 <= epsilon13;

		//
		mul_a_op_1 	<= L;
		mul_b_op_1 	<= mul_neg2(epsilon14);
		x13 <= x12; x14 <= x13; x15 <= x14; x16 <= x15; x17 <= x16;
		L1 <= L;  L2 <= L1;  L3 <= L2;  L4 <= L3; L5 <= L4;  

		//
		x18 <= x17; x19 <= x18; x20 <= x19;
		add_a_op_2 	<= x20;
		add_b_op_2 	<= mul_out_1;
		L6 <= L5;  L7 <= L6;  L8 <= L7;  L9 <= L8; L10 <= L9; 
		L10 <= L9;  L11 <= L10;  L12 <= L11;  L13 <= L12; L14 <= L13; 
		L15 <= L14;  L16 <= L15;  L17 <= L16; L18 <= L17; L19 <= L18;

		//
		mul_a_op_2 	<= (is_ood(L19)) ? 32'hbf800000 : 32'h3f800000;
		mul_b_op_2 	<= add_out_2;

		//
		result 		<= mul_out_2;

	end
end

function signed [31:0] floor(input [31:0] x);
	reg sign;
	reg [7:0] exponent;
	reg [22:0] fraction;
	reg [31:0] result;
	integer E, frac_bits;
	reg [23:0] mantissa;
	reg [23:0] mask;

	begin
		sign     = x[31];
		exponent = x[30:23];
		fraction = x[22:0];

		if (exponent < 127) begin
			if (sign)
				result = 32'hBF800000; // -1.0
			else
				result = 32'h00000000; // 0.0
		end
		else if (exponent >= 150) begin
			result = x;
		end
		else begin
			E = exponent - 127;
			mantissa = {1'b1, fraction}; // 1.f
			frac_bits = 23 - E;

			mask = ~((1 << frac_bits) - 1);
			mantissa = mantissa & mask;

			if (sign && ((x[22:0] & ~mask) != 0))
				mantissa = mantissa + (1 << frac_bits);

			result = {sign, exponent, mantissa[22:0]};
		end

		floor = result;
	end
endfunction

function is_ood(input [PRECISION-1:0] x);
	reg [7:0] exponent;
    	reg [22:0] fraction;
    	reg [23:0] mantissa;
    	integer int_bits;
    	reg [23:0] shifted;

	begin
		exponent = x[30:23];
		fraction = x[22:0];
		mantissa = {1'b1, fraction};       
		int_bits = exponent - 127;

		if (exponent < 127)
			is_ood = 1'b0;    
		else if (int_bits >= 24)
			is_ood = 1'b0;  
		else begin
			shifted = mantissa >> (23 - int_bits); 
			is_ood = shifted[0];           
		end
	end
endfunction

function [31:0] mul_half(input [31:0] x);
	reg sign;
    	reg [7:0] exponent;
    	reg [22:0] fraction;

    	begin
        	sign = x[31];
        	exponent = x[30:23];
        	fraction = x[22:0];

        	if (exponent == 8'd0) begin
            		fraction = fraction >> 1;
            		mul_half = {sign, exponent, fraction};
        	end else if (exponent == 8'd1) begin
            		exponent = 8'd0;
            		fraction = ({1'b1, fraction} >> 1);
            		mul_half = {sign, exponent, fraction[22:0]};
        	end else begin
            		exponent = exponent - 8'd1;
            		mul_half = {sign, exponent, fraction};
        	end
    	end
endfunction

function [31:0] mul_neg2(input [31:0] x);
	reg sign;
	reg [7:0] exponent;
	reg [22:0] fraction;

    	begin
        	sign = ~x[31];       
        	exponent = x[30:23];
        	fraction = x[22:0];

        	if (exponent == 8'd255) begin
            		mul_neg2 = x;
        	end else if (exponent == 8'd0) begin
            		exponent = 8'd1;
            		fraction = fraction << 1;
            		mul_neg2 = {sign, exponent, fraction};
        	end else begin
            		exponent = exponent + 8'd1;
            		mul_neg2 = {sign, exponent, fraction};
        	end
    	end
endfunction

endmodule
