`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 03:49:44 PM
// Design Name: 
// Module Name: tb_subbytes
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


module tb_subbytes();

    // Clock và Reset
    reg clk;
    reg [127:0]round_key;

    // Input / Output
    reg  [127:0] in;
    wire [127:0] sb;
    wire [127:0] sh;
    wire [127:0] mi;
    wire [127:0] out;

    // Khởi tạo DUT
    subbytes uut (
        .clk(clk),
        .in(in),
        .out(sb)
    );
    shiftrows u (
        .clk(clk),
        .sb(sb),
        .out(sh)
    );
    mixcolumns ut (
        .clk(clk),
        .state_in(sh),
        .state_out(mi)
    );
    addroundkey uf(
        .state_in(mi),
        .round_key(round_key),
        .state_out(out)
    );

    // Clock 10ns
    always #5 clk = ~clk;

    // Mô phỏng chính
    initial begin
        // Dump waveform nếu dùng GTKWave
        $dumpfile("tb_subbytes.vcd");
        $dumpvars(0, tb_subbytes);

        // Khởi tạo tín hiệu
        clk = 0;
        in  = 128'd0;
        round_key = 128'h2b7e151628aed2a6abf7158809cf4f3c;

        // Reset trong 2 chu kỳ

        // Test vector 1: dữ liệu đơn giản
        in = 128'h000102030405060708090a0b0c0d0e0f;
        #10;

        // Test vector 2: dữ liệu ngẫu nhiên
        in = 128'h0f0e0d0c0b0a09080706050403020100;
        #10;

        // Test vector 3: toàn 1
        in = 128'hffffffffffffffffffffffffffffffff;
        #10;

        // Chờ vài chu kỳ để xem pipeline ra
        #100;

        $display("Simulation finished.");
        $finish;
    end

    // Theo dõi kết quả từng chu kỳ
    always @(posedge clk) begin
        $display("[%0t] in = %h |sb = %h|sh = %h |mi = %h| out = %h", $time, in,sb,sh,mi, out);
    end

endmodule


