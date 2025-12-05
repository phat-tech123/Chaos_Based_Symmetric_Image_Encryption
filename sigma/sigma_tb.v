module sigma_tb;

reg clk;
reg reset_n;
reg [31:0] A00, A01, A02;
reg [31:0] A10, A11, A12;
reg [31:0] A20, A21, A22;
wire [31:0] sigma;
wire valid;
reg tvalid;
integer cycle_count;
integer start_cycle, end_cycle;
real clk_period = 10.0; // 10ns = 100MHz

sigma#(
	.PRECISION(32)
) uut(
	.clk(clk), .reset_n(reset_n),
	.tvalid(tvalid),
	.err(32'h3dcccccd),
	.A00(A00), .A01(A01), .A02(A02),
	.A10(A10), .A11(A11), .A12(A12),
	.A20(A20), .A21(A21), .A22(A22),
	.valid(valid),
	.sigma(sigma)
);

// Clock
initial begin
    	clk = 0;
    	forever #1 clk = ~clk; // 100MHz
end

// Stimulus
initial begin
    	reset_n = 0;
    	#5;
    	reset_n = 1;

    	@(posedge clk);
    	tvalid <= 1;
    	A00 <= 0;
    	A01 <= 32'h3f000000;
    	A02 <= 32'h3d4ccccd;

    	A10 <= 32'h3eaaaaaa;
    	A11 <= 0;
    	A12 <= 32'h3eaaaaaa;

    	A20 <= 32'h3d4ccccd;
    	A21 <= 32'h3f000000;
    	A22 <= 0;

//    	@(posedge clk);
//    	tvalid <= 0;
        
        @(posedge clk);
        tvalid <= 1;
    	A00 <= 0;
    	A01 <= 32'h3f000000;
    	A02 <= 32'h3d4ccccd;

    	A10 <= 32'h3eaaaaaa;
    	A11 <= 0;
    	A12 <= 32'h3f000000;

    	A20 <= 32'h3d4ccccd;
    	A21 <= 32'h3f000000;
    	A22 <= 0;
        
    	@(posedge clk);
    	tvalid <= 0;
    	#5000;
    	$finish;
end

// Cycle counter
always @(posedge clk or negedge reset_n) begin
	if (!reset_n)
		cycle_count <= 0;
	else
		cycle_count <= cycle_count + 1;
end

endmodule
