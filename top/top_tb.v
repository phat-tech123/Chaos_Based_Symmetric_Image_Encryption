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

    initial begin
        clk = 0;
        forever #1.75 clk = ~clk;
    end

    // Reset sequence
    initial begin
        reset_n = 0;
        tvalid  = 0;
        @(posedge clk);             
        reset_n = 1;
        @(posedge clk);     

        // Kick the PRNG
        tvalid = 1;
        @(posedge clk);     
        @(posedge clk);     
        tvalid = 0;

	#2000000;
	$finish;
    end


endmodule

