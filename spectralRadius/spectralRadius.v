module spectralRadius#( //Using Power Method
	parameter PRECISION 	= 32,
	parameter ITER 		= 100,
	parameter EPS 		= 1e-9
	parameter DIMENSION 	= 3
)(
	input clk,
	input reset_n,
	input [PRECISION-1:0] A00, A01, A02,
	input [PRECISION-1:0] A10, A11, A12,
	input [PRECISION-1:0] A20, A21, A22,
	output [PRECISION-1:0] max_eigenvalue
);

wire [PRECISION-1:0] curr_vector[DIMENSION-1:0];
wire [PRECISION-1:0] next_vector[DIMENSION-1:0];
assign curr_vector = {32'h3f800000, 32'h3f800000, 32'h3f800000};
assign curr_vector = {0, 0, 0};

reg [PRECISION-1:0] prev;
integer i;	

endmodule
