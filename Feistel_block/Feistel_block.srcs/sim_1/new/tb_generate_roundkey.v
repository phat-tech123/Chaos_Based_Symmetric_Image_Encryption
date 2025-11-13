`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025 03:35:45 PM
// Design Name: 
// Module Name: tb_generate_roundkey
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

module tb_key_gen;

    // --- Parameter ---
    parameter ROUNDS    = 5;
    parameter KEY_SIZE  = 16; // bytes

    // --- DUT I/O ---
    reg  [KEY_SIZE*8-1:0] main_key;
    reg  [2:0] round_index;
    wire [KEY_SIZE*8-1:0] round_key;

    // --- DUT Instantiation ---
    key_gen #(
        .ROUNDS(ROUNDS),
        .KEY_SIZE(KEY_SIZE)
    ) uut (
        .main_key(main_key),
        .round_index(round_index),
        .round_key(round_key)
    );

    // --- SBOX instance stub ---
    // Nếu bạn đã có module sbox rồi thì bỏ phần dưới đi.
    // Dưới đây chỉ là SBOX mẫu để test nhanh (identity mapping)
    // Giúp compile mà không cần file sbox_lut.hex
    // ---------------------------------------------
   
    // ---------------------------------------------

    integer r;

    initial begin
        $display("=== Testbench for key_gen ===");
        // Main key mẫu: 128-bit
        main_key = 128'h00112233445566778899AABBCCDDEEFF;

        // Test từng round
        for (r = 0; r < ROUNDS; r = r + 1) begin
            round_index = r;
            #1; // đợi combinational settle
            $display("Round %0d key = %032x", r, round_key);
        end

        $finish;
    end

endmodule