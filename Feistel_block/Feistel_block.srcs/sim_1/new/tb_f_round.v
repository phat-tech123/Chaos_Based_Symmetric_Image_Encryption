`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 06:57:45 PM
// Design Name: 
// Module Name: tb_f_round
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module tb_f_round();
    reg clk;
    reg [127:0] in, round_key;
    wire [127:0] out;

    f_round uut (
        .clk(clk),
        .state_in(in),
        .round_key(round_key),
        .state_out(out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("tb_f_round.vcd");
        $dumpvars(0, tb_f_round);

        clk = 0;
        in  = 128'h00112233445566778899aabbccddeeff;
        round_key = 128'h000102030405060708090a0b0c0d0e0f;

        #10 in = 128'hffffffffffffffffffffffffffffffff;
        #10 in = 128'h0f0e0d0c0b0a09080706050403020100;

        #100;
        $finish;
    end

    always @(posedge clk) begin
        $display("[%0t] state_in=%h | state_out=%h", $time, in, out);
    end

endmodule
