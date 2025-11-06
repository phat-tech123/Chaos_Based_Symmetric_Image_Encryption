module PRNG_tb;


reg clk;
reg reset_n;
reg [31:0] A00, A01, A02;
reg [31:0] A10, A11, A12;
reg [31:0] A20, A21, A22;

wire [31:0] pseudoRandonNumber1, pseudoRandonNumber2, pseudoRandonNumber3;

PRNG#(
	.PRECISION(32)
) uut(
	.clk(clk), .reset_n(reset_n),
	.A00(A00), .A01(A01), .A02(A02),
	.A10(A10), .A11(A11), .A12(A12),
	.A20(A20), .A21(A21), .A22(A22),
	.pseudoRandonNumber1(pseudoRandonNumber1),
	.pseudoRandonNumber2(pseudoRandonNumber2),
	.pseudoRandonNumber3(pseudoRandonNumber3)
);

initial begin
    	clk = 0;
    	forever #5 clk = ~clk;
end

initial begin
    	reset_n   = 0;

    	#25;
    	reset_n = 1;

    	@(posedge clk);
	A00 <= 0;
	A01 <= 32'h3f000000;
	A02 <= 32'h3d4ccccd;

	A10 <= 32'h3eaaaaaa;
	A11 <= 0;
	A12 <= 32'h3eaaaaaa;

	A20 <= 32'h3d4ccccd;
	A21 <= 32'h3f000000;
	A22 <= 0;
    	#2000;

    	$finish;
end

initial begin
	$dumpfile("PRNG.vcd");
	$dumpvars(0, PRNG_tb);
end


initial begin
	$display("%h", uut.norm_inf_manual);
end

endmodule
