    module PRNG#(
	parameter PRECISION = 32
)(
	input clk,
	input reset_n,
	output reg [PRECISION-1:0] pseudoRandonNumber1,
	output reg [PRECISION-1:0] pseudoRandonNumber2,
	output reg [PRECISION-1:0] pseudoRandonNumber3
);

reg [PRECISION-1:0] A_mat [0:8];
initial begin
	$readmemh("linear_system.mem", A_mat);
end

wire valid_sigma;
wire [PRECISION-1:0] sigma_out;

sigma sigma_u (
	.clk(clk),
	.reset_n(reset_n),
	.err(32'h3dcccccd),
	.A00(A_mat[0]), .A01(A_mat[1]), .A02(A_mat[2]),
	.A10(A_mat[3]), .A11(A_mat[4]), .A12(A_mat[5]),
	.A20(A_mat[6]), .A21(A_mat[7]), .A22(A_mat[8]),
	.valid(valid_sigma),
	.sigma(sigma_out)
);

always @(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		pseudoRandonNumber1 <= 0;
		pseudoRandonNumber2 <= 0;
		pseudoRandonNumber3 <= 0;
	end else if (valid_sigma) begin
        
	end else begin
		pseudoRandonNumber1 <= pseudoRandonNumber1;
		pseudoRandonNumber2 <= pseudoRandonNumber2;
		pseudoRandonNumber3 <= pseudoRandonNumber3;
	end
end

endmodule

