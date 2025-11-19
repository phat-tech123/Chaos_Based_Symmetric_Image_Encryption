`timescale 1ns/1ps

module top_tb;

    // Parameters
    localparam PRECISION = 32;
    localparam BIT_WIDTH = 8;

    // DUT signals
    reg clk;
    reg reset_n;
    reg tvalid;

    // Instantiate DUT
    top #(
        .PRECISION(PRECISION),
        .BIT_WIDTH(BIT_WIDTH)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .tvalid(tvalid)
    );

    // Clock generation: 100 MHz
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    // Reset sequence
    initial begin
        reset_n = 0;
        tvalid  = 0;
        #5;             
        reset_n = 1;
        #5;

        // Kick the PRNG
        tvalid = 1;
        #2;
        tvalid = 0;

	#2000000;
	$finish;
    end


endmodule

