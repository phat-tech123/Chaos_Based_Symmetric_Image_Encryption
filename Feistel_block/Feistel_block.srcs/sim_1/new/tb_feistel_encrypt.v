`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025 09:37:25 PM
// Design Name: 
// Module Name: tb_feistel_encrypt
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


module tb_feistel_encrypt();

    // ===============================
    // Clock / Reset
    // ===============================
    reg clk = 0;
    always #5 clk = ~clk;   // 100 MHz

    reg reset_n = 0;

    // ===============================
    // DUT signals
    // ===============================
    reg         start_enc;
    reg [255:0] data_in;

    reg         key_valid;
    reg [127:0] key_in;

    reg  [7:0] sbox_out;
    reg        sbox_valid;

    wire        ready_in;
    wire        valid_out;
    wire [255:0] data_out;

    // ===============================
    // DUT INSTANCE
    // ===============================
    feistel_encrypt #(
        .ROUNDS(5),
        .ROUND_LAT(2),
        .KEY_SIZE(128)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .start_enc(start_enc),
        .data_in(data_in),

        .key_valid(key_valid),
        .key_in(key_in),

        .sbox_out(sbox_out),
        .sbox_valid(sbox_valid),

        .ready_in(ready_in),
        .valid_out(valid_out),
        .data_out(data_out)
    );

    // ===============================
    // SIMPLE STUB S-BOX DRIVER
    // mỗi chu kỳ trả về byte tăng dần
    // ===============================
    reg [7:0] s_val = 8'h10;

    always @(posedge clk) begin
        sbox_out   <= s_val;
        sbox_valid <= 1'b1;
        s_val      <= s_val + 1;
    end

    // ===============================
    // TEST SEQUENCE
    // ===============================
    initial begin
        $display("=== TB FEISTEL ENCRYPT START ===");

        start_enc  = 0;
        key_valid  = 0;
        key_in     = 128'h0;
        sbox_out   = 0;
        sbox_valid = 0;
        data_in    = 0;

        // RESET
        #20 reset_n = 1;

        // --------------------------------------
        // Load 5 KEYS vào key_schedule
        // --------------------------------------
        repeat(5) begin
            @(posedge clk);
            key_in    <= {$random, $random};
            key_valid <= 1'b1;
            @(posedge clk);
            key_valid <= 0;
        end

        // --------------------------------------
        // Chờ key_schedule xong
        // --------------------------------------
        #50;

        // --------------------------------------
        // Gửi block cần encrypt
        // --------------------------------------
        @(posedge clk);
        data_in   <= 256'h112233445566778899AABBCCDDEEFF00_FF00EE11DD22CC33BB44AA55996677;
        start_enc <= 1'b1;

        @(posedge clk);
        start_enc <= 0;

        // --------------------------------------
        // Chờ kết quả
        // --------------------------------------
        wait(valid_out == 1);

        $display("=> Ciphertext = %h", data_out);

        #20;
        $finish;
    end

endmodule
