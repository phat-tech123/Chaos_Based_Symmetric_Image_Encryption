module affine_transform_tb;

parameter PRECISION = 32;

reg clk;
reg reset_n;
reg tvalid;

reg [PRECISION-1:0] A00, A01, A02;
reg [PRECISION-1:0] A10, A11, A12;
reg [PRECISION-1:0] A20, A21, A22;
reg [PRECISION-1:0] x0, x1, x2;
reg [PRECISION-1:0] U0, U1, U2;

// Outputs
wire valid;
wire [PRECISION-1:0] x_next0;
wire [PRECISION-1:0] x_next1;
wire [PRECISION-1:0] x_next2;

// Instantiate DUT
affine_transform #(PRECISION) dut (
	.clk(clk),
	.reset_n(reset_n),
	.tvalid(tvalid),
	.A00(A00), .A01(A01), .A02(A02),
	.A10(A10), .A11(A11), .A12(A12),
	.A20(A20), .A21(A21), .A22(A22),
	.x0(x0), .x1(x1), .x2(x2),
	.U0(U0), .U1(U1), .U2(U2),
	.valid(valid),
	.x_next0(x_next0),
	.x_next1(x_next1),
	.x_next2(x_next2)
);

// Clock
initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 100 MHz
end

// Latency counter variables
integer latency_counter = 0;
reg start_count = 0;

// Control stimulus
initial begin
	reset_n = 0;
	tvalid  = 0;
	A00 = 0; A01 = 0; A02 = 0;
	A10 = 0; A11 = 0; A12 = 0;
	A20 = 0; A21 = 0; A22 = 0;
	x0  = 0; x1  = 0; x2  = 0;
	U0  = 0; U1  = 0; U2  = 0;

	#25;
	reset_n = 1;

	@(posedge clk);
	tvalid <= 1;
	A00 <= 0;
	A01 <= 32'h3f000000; // 0.5
	A02 <= 32'h3d4ccccd; // 0.05
	A10 <= 32'h3eaaaaab; // 0.3333
	A11 <= 0;
	A12 <= 32'h3eaaaaab; // 0.3333
	A20 <= 32'h3d4ccccd; // 0.05
	A21 <= 32'h3f000000; // 0.5
	A22 <= 0;

	x0  <= 32'h3f800000; // 1.0
	x1  <= 32'h40000000; // 2.0
	x2  <= 32'h40400000; // 3.0

	U0 <= 32'h3dcccccd; // 0.1
	U1 <= 32'h3e4ccccd; // 0.2
	U2 <= 32'h3e99999a; // 0.3

	@(posedge clk);
	tvalid <= 0;

	// Start counting latency
	start_count <= 1;

	wait (valid); // wait until valid is asserted
	start_count <= 0;
	$display(">>> [INFO] Output VALID asserted after %0d clock cycles", latency_counter);
	$display("x_next0 = %h", x_next0);
	$display("x_next1 = %h", x_next1);
	$display("x_next2 = %h", x_next2);

	#50;
	$finish;
end

// Count latency cycles
always @(posedge clk) begin
	if (!reset_n)
		latency_counter <= 0;
	else if (start_count && !valid)
		latency_counter <= latency_counter + 1;
	else if (valid)
		latency_counter <= latency_counter; // hold when done
end

endmodule
