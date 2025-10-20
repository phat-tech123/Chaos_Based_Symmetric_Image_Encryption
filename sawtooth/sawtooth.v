module sawtooth#(
	parameter PRECISION = 32,
)(
	input clk,
	input reset_n,
	input [PRECISION-1:0] x,
	input [PRECISION-1:0] epsilon,
	output reg [PRECISION-1:0] result
);

wire [PRECISION-1:0] div1_out;
FP_div #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) div1(
	.clk(clk),
	.reset_n(reset_n),
	.a_operand(x), 
	.b_operand(epsilon), 
	.result(div1_out)
);


wire [PRECISION-1:0] L;

endmodule
