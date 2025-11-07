`timescale 1ns/1ps

module PRNG_tb;


reg clk;
reg reset_n;
reg tvalid;
wire valid;
wire [31:0] pseudoRandomNumber1, pseudoRandomNumber2, pseudoRandomNumber3;

PRNG#(
	.PRECISION(32)
) uut(
	.clk(clk), .reset_n(reset_n),
	.tvalid(tvalid),
	.valid(valid),
	.pseudoRandomNumber1(pseudoRandomNumber1),
	.pseudoRandomNumber2(pseudoRandomNumber2),
	.pseudoRandomNumber3(pseudoRandomNumber3)
);

initial begin
    	clk = 0;
    	forever #1 clk = ~clk;
end

initial begin
    clk = 0;
    reset_n = 0;
    tvalid = 0;

    #25;
    reset_n = 1;

    // Phát xung tvalid đúng 1 chu kỳ clock
    @(posedge clk);
    tvalid = 1;
    @(posedge clk);
    tvalid = 0;

    // Đợi pipeline chạy xong
    #2000;
    $finish;
end



endmodule
