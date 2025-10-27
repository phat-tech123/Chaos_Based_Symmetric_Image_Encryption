`timescale 1ns/1ps

module FP_sawtooth_tb;

// =========================================
// Parameters
// =========================================
parameter PRECISION = 32;

// =========================================
// DUT I/O
// =========================================
reg  clk;
reg  reset_n;
reg  [PRECISION-1:0] a_operand;
reg  [PRECISION-1:0] b_operand;
wire [PRECISION-1:0] result;

// =========================================
// Instantiate DUT
// =========================================
sawtooth #(
    .PRECISION(PRECISION)
) uut (
    .clk(clk),
    .reset_n(reset_n),
    .x(a_operand),
    .epsilon(b_operand),
    .result(result)
);

// =========================================
// Clock generation: 100MHz
// =========================================
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// =========================================
// Stimulus
// =========================================
initial begin
    // Init
    reset_n   = 0;
    a_operand = 0;
    b_operand = 0;

    // Wait some cycles before releasing reset
    #25;
    reset_n = 1;

    // Apply test inputs
    @(posedge clk);
    a_operand = 32'h3fe00000; // 1.75
    b_operand = 32'h3d4ccccd; // 0.05

    @(posedge clk);
    a_operand = 32'h42f63d71; // 123.789 
    b_operand = 32'h3d4ccccd; // 0.05

    @(posedge clk);
    @(posedge clk);
    a_operand = 32'h3fe00000; // 1.75
    b_operand = 32'h3d4ccccd; // 0.05
    // Wait enough time for pipeline to produce output
    #2000;

    $finish;
end

// =========================================
// Dump waveform
// =========================================
initial begin
    $dumpfile("sawtooth.vcd");
    $dumpvars(0, FP_sawtooth_tb);
end

// =========================================
// Monitor pipeline and result
// =========================================
initial begin
    $display("Time\t div_out       \tmul_out_1   \tadd_out_1    \tmul_out_2   \tadd_out_2    \tresult");
    $monitor("%0t\t%h\t%h\t%h\t%h\t%h\t%h", 
              $time, uut.div_out, uut.mul_out_1, uut.add_out_1,
              uut.mul_out_2, uut.add_out_2, result);
end

endmodule

