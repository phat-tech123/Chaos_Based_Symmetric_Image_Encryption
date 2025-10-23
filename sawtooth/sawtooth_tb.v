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
    #20;
    reset_n = 1;

    // Wait a few clocks
    #10;

    $display("---------------- START ----------------");
    // a_operand = 1.75
    // b_operand = 0.05
    a_operand = 32'h3fe00000; 
    b_operand = 32'h3d4ccccd;

    /*
    a_operand = 32'h42f63d71; 
    b_operand = 32'h3d4ccccd;
    */

    // Wait enough time for pipeline result
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
// Optional monitor
// =========================================
initial begin
 //   $display("Time\t\tdiv_out\tmul_out\tadd_out\tresult");
    $display("Time\t state \tdiv_out       \tmul_out   \tadd_out      \tresult");
    $monitor("%0t\t%d\t%h\t%h\t%h\t%h", $time, uut.state,uut.div_out, uut.mul_out, uut.add_out, result);
end

endmodule

