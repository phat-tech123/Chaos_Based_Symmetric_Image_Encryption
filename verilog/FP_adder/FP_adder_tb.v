`timescale 1ns/1ps

module FP_adder_tb;

// Parameter match module under test
parameter PRECISION = 32;
parameter EXPONENT  = 8;
parameter FRACTION  = 23;

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

    // 1.0 + (-0.875)
    a_operand = 32'h3F800000; // 1.0
    b_operand = 32'hBEE00000; // -0.4375
    #10;

    // -2.5 + -1.5
    a_operand = 32'hC0200000; // -2.5
    b_operand = 32'hBFC00000; // -1.5
    #10;

    // 3.25 + (-1.5)
    a_operand = 32'h40500000; // 3.25
    b_operand = 32'hBFC00000; // -1.5
    #10;

    // 10.0 + 0.5
    a_operand = 32'h41200000; // 10.0
    b_operand = 32'h3F000000; // 0.5
    #10;

    // ---- Nhóm 1: số dương nhỏ ----
    a_operand = 32'h3E800000; // 0.25
    b_operand = 32'h3E000000; // 0.125
    #10;

    a_operand = 32'h3F000000; // 0.5
    b_operand = 32'h3E800000; // 0.25
    #10;

    a_operand = 32'h3F800000; // 1.0
    b_operand = 32'h3F000000; // 0.5
    #10;

    a_operand = 32'h3FA00000; // 1.25
    b_operand = 32'h3F400000; // 0.75
    #10;

    a_operand = 32'h3FC00000; // 1.5
    b_operand = 32'h3FC00000; // 1.5
    #10;

    a_operand = 32'h3FE00000; // 1.75
    b_operand = 32'h3F800000; // 1.0
    #10;

    // ---- Nhóm 2: số âm nhỏ ----
    a_operand = 32'hBE800000; // -0.25
    b_operand = 32'hBE000000; // -0.125
    #10;

    a_operand = 32'hBF000000; // -0.5
    b_operand = 32'hBE800000; // -0.25
    #10;

    a_operand = 32'hBF800000; // -1.0
    b_operand = 32'hBF000000; // -0.5
    #10;

    a_operand = 32'hBFA00000; // -1.25
    b_operand = 32'hBF400000; // -0.75
    #10;

    a_operand = 32'hBFC00000; // -1.5
    b_operand = 32'hBFC00000; // -1.5
    #10;

    a_operand = 32'hBFE00000; // -1.75
    b_operand = 32'hBF800000; // -1.0
    #10;

    // ---- Nhóm 3: dương + âm ----
    a_operand = 32'h40000000; // 2.0
    b_operand = 32'hBF000000; // -0.5
    #10;

    a_operand = 32'h40400000; // 3.0
    b_operand = 32'hBF800000; // -1.0
    #10;

    a_operand = 32'h40A00000; // 5.0
    b_operand = 32'hC0000000; // -2.0
    #10;

    a_operand = 32'h40C00000; // 6.0
    b_operand = 32'hC0800000; // -4.0
    #10;

    a_operand = 32'h41200000; // 10.0
    b_operand = 32'hC0A00000; // -5.0
    #10;

    // ---- Nhóm 4: âm + dương ----
    a_operand = 32'hC0A00000; // -5.0
    b_operand = 32'h40A00000; // 5.0
    #10;

    a_operand = 32'hC1000000; // -8.0
    b_operand = 32'h41000000; // 8.0
    #10;

    a_operand = 32'hC0E00000; // -7.0
    b_operand = 32'h40A00000; // 5.0
    #10;

    a_operand = 32'hC1200000; // -10.0
    b_operand = 32'h40A00000; // 5.0
    #10;

    a_operand = 32'hC1A00000; // -20.0
    b_operand = 32'h41200000; // 10.0
    #10;

    // ---- Nhóm 5: số lớn ----
    a_operand = 32'h42C80000; // 100.0
    b_operand = 32'h41200000; // 10.0
    #10;

    a_operand = 32'h447A0000; // 1000.0
    b_operand = 32'h42C80000; // 100.0
    #10;

    a_operand = 32'h461C4000; // 10000.0
    b_operand = 32'h447A0000; // 1000.0
    #10;

    a_operand = 32'h49742400; // 1000000.0
    b_operand = 32'h42C80000; // 100.0
    #10;

    a_operand = 32'h4F800000; // 4.2949673e9 (gần max)
    b_operand = 32'h3F800000; // 1.0
    #10;

    // ---- Nhóm 6: số rất nhỏ (denormalized range) ----
    a_operand = 32'h00000001; // gần 0+
    b_operand = 32'h00000002; // gần 0+
    #10;

    a_operand = 32'h00800000; // 1.17549435e-38
    b_operand = 32'h00000001; // rất nhỏ
    #10;

    a_operand = 32'h3EAAAAAB; // 0.3333333
    b_operand = 32'h3E4CCCCD; // 0.2
    #10;

    // ---- Nhóm 7: số có phần thập phân lạ ----
    a_operand = 32'h3F99999A; // 1.2
    b_operand = 32'h3FCCCCCD; // 1.6
    #10;

    a_operand = 32'h40266666; // 2.6
    b_operand = 32'h3F99999A; // 1.2
    #10;

    a_operand = 32'h40A66666; // 5.2
    b_operand = 32'hC0A00000; // -5.0

    #50;
    $finish;
end

initial begin
    $dumpfile("FP_adder_tb.vcd");
    $dumpvars(0, FP_adder_tb);

    $monitor("opA = %h | opB = %h | result = %h", a_operand, b_operand, result);
end

endmodule
