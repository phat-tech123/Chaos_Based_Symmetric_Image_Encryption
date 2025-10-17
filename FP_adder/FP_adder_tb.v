`timescale 1ns/1ps

module FP_adder_tb;

// Parameter match module under test
parameter PRECISION = 32;
parameter EXPONENT  = 8;
parameter FRACTION  = 23;

//parameter PRECISION = 64;
//parameter EXPONENT  = 11;
//parameter FRACTION  = 52;

// DUT I/O
reg clk;
reg reset_n;
reg signed [PRECISION-1:0] a_operand;
reg signed [PRECISION-1:0] b_operand;
wire signed [PRECISION-1:0] result;

// Instantiate DUT
FP_adder #(
    .PRECISION(PRECISION),
    .EXPONENT(EXPONENT),
    .FRACTION(FRACTION)
) uut (
    .clk(clk),
    .reset_n(reset_n),
    .a_operand(a_operand),
    .b_operand(b_operand),
    .result(result)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; // 100MHz clock
end

// Stimulus
initial begin
    // Initialize
    reset_n = 0;
    a_operand = 0;
    b_operand = 0;

    #15;
    reset_n = 1;

    /*
    //0.5 + (-0.4375)
    a_operand = 32'h3f000000; 
    b_operand = 32'hbee00000;
    #50;
    $display("0.5 + (-0.4375) = %h", result);

    // -2.5 + -1.5
    a_operand = 32'hC0200000; // -2.5
    b_operand = 32'hBFC00000; // -1.5
    #60;
    $display("-2.5 + -1.5 = %h", result);

    // 3.25 + (-1.5)
    a_operand = 32'h40500000; // 3.25
    b_operand = 32'hBFC00000; // -1.5
    #60;
    $display("3.25 + (-1.5) = %h", result);

    // 10.0 + 0.5
    a_operand = 32'h41200000; // 10.0
    b_operand = 32'h3F000000; // 0.5
    #60;
    $display("10.0 + 0.5 = %h", result);
    */

    //0.5 + (-0.4375) = 0.0625
    a_operand = 32'h3f000000; 
    b_operand = 32'hbee00000;
    #10;

    // -2.5 + -1.5 = -4
    a_operand = 32'hC0200000; // -2.5
    b_operand = 32'hBFC00000; // -1.5
    #10;

    // 3.25 + (-1.5) = 1.75
    a_operand = 32'h40500000; // 3.25
    b_operand = 32'hBFC00000; // -1.5
    #10;

    // 10.0 + 0.5 = 10.5
    a_operand = 32'h41200000; // 10.0
    b_operand = 32'h3F000000; // 0.5
    #10;

    // 0.13525 + (-0.51244) = -0.37719 = bec11f0c
    a_operand = 32'h3e0a7efa; 
    b_operand = 32'hbf032f45; 
    #10;
    
    // 0.00125 + 0.00075 = 0.002 = 3b03126f
    a_operand = 32'h3aa3d70a;
    b_operand = 32'h3a449ba6;
    #10;

    #50;
    $finish;
end

//initial begin
//    $dumpfile("FP_adder_tb.vcd");
//    $dumpvars(0, FP_adder_tb);

//    $monitor("opA = %h | opB = %h | result = %h", a_operand, b_operand, result);
//end

endmodule
