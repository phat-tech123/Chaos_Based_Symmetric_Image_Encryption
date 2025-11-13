`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 01:33:30 PM
// Design Name: 
// Module Name: tb_subbytes_shiftrows
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

module tb_subbytes_shiftrows();

    // Clock và Reset
    reg clk;
    reg rst;

    // Input / Output
    reg  [127:0] in;
    wire [127:0] out;

    // Khởi tạo DUT
    subbytes uut (
        .clk(clk),
        .in(in),
        .out(out)
    );

    // Clock 10ns
    always #5 clk = ~clk;

    // SBOX ROM DUMMY (nếu bạn chưa có sbox_rom)
    // 👉 Chỉ dùng cho test, trả về đảo bit để dễ nhận biết
    // Thay bằng ROM thực tế khi cần.
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : srom_inst
            // Dummy S-box implementation
            // Nếu bạn đã có module sbox_rom riêng, bỏ phần này đi
            // và đảm bảo file đó được include vào project.
            // module sbox_rom (input clk, input [7:0] addr, output reg [7:0] data);
            // ...
        end
    endgenerate

    // Mô phỏng chính
    initial begin
        // Dump waveform nếu dùng GTKWave
        $dumpfile("tb_subbytes_shiftrows.vcd");
        $dumpvars(0, tb_subbytes_shiftrows);

        // Khởi tạo tín hiệu
        clk = 0;
        rst = 1;
        in  = 128'd0;

        // Reset trong 2 chu kỳ
        #12 rst = 0;

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
        $display("[%0t] in = %h | out = %h", $time, in, out);
    end

endmodule

