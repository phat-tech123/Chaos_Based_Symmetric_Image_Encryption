`timescale 1ns/1ps

module tb_sbox_generator;

localparam PRECISION = 32;
localparam BIT_WIDTH = 23;
localparam MIX_WIDTH = 8;
localparam CLK_PERIOD = 10; // 100 MHz

reg clk;
reg reset_n;
reg tvalid;

reg  [PRECISION-1:0] pseudoRandomNumber1;
reg  [PRECISION-1:0] pseudoRandomNumber2;
reg  [PRECISION-1:0] pseudoRandomNumber3;

wire valid;
wire [MIX_WIDTH-1:0] V_out;

sbox_generator #(.PRECISION(PRECISION), .BIT_WIDTH(BIT_WIDTH), .MIX_WIDTH(MIX_WIDTH)) dut (
	.clk(clk),
	.reset_n(reset_n),
	.tvalid(tvalid),
	.pseudoRandomNumber1(pseudoRandomNumber1),
	.pseudoRandomNumber2(pseudoRandomNumber2),
	.pseudoRandomNumber3(pseudoRandomNumber3),
	.valid(valid),
	.V_out(V_out)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 100 MHz
end

initial begin
	reset_n <= 0;
	tvalid<=0;
	pseudoRandomNumber1<=0;
	pseudoRandomNumber2<=0;
	pseudoRandomNumber3<=0;

	#20;
	reset_n<=1;
	@(posedge clk);
	tvalid<=1;
	pseudoRandomNumber1<=32'h3d34a1a1;
	pseudoRandomNumber2<=32'h3d6a77ee;
	pseudoRandomNumber3<=32'h3c23d70a;
	
	
	@(posedge clk);
	tvalid<=0;
	
	#2000;
	$finish;

end

endmodule

