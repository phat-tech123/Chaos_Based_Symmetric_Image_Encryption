`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 00:00:00
// Module Name: tb_feistel_cbc_encrypt
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench cho feistel_cbc_encrypt
//////////////////////////////////////////////////////////////////////////////////

module tb_feistel_cbc_encrypt();

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
    reg [255:0] iv;

    reg         key_valid;
    reg [127:0] key_in;

    reg  [7:0] sbox_out;
    reg        sbox_valid;

    wire        valid_out;
    wire [255:0] data_out;

    // ===============================
    // DUT INSTANCE
    // ===============================
    feistel_cbc_encrypt #(
        .ROUNDS(5),
        .ROUND_LAT(2),
        .KEY_SIZE(128)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .start_enc(start_enc),
        .data_in(data_in),
        .iv(iv),
        .key_valid(key_valid),
        .key_in(key_in),
        .sbox_out(sbox_out),
        .sbox_valid(sbox_valid),
        .valid_out(valid_out),
        .data_out(data_out)
    );

    // ===============================
    // SIMPLE STUB S-BOX DRIVER
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
        $display("=== TB FEISTEL CBC ENCRYPT START ===");

        start_enc  = 0;
        key_valid  = 0;
        key_in     = 128'h0;
        sbox_out   = 0;
        sbox_valid = 0;
        data_in    = 0;
        iv         = 256'h00112233445566778899AABBCCDDEEFF_112233445566778899AABBCCDDEEFF00;

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
        // Gửi 2 block cần encrypt (CBC demo)
        // --------------------------------------
        // Block 1
        @(posedge clk);
        data_in   <= 256'h112233445566778899AABBCCDDEEFF00_FF00EE11DD22CC33BB44AA55996677;
        start_enc <= 1'b1;
        @(posedge clk);
        start_enc <= 0;

        wait(valid_out == 1);
        $display("=> Ciphertext Block 1 = %h", data_out);

        // Block 2
        @(posedge clk);
        data_in   <= 256'hA1B2C3D4E5F60718293A4B5C6D7E8F90_0123456789ABCDEF0011223344556677;
        start_enc <= 1'b1;
        @(posedge clk);
        start_enc <= 0;

        wait(valid_out == 1);
        $display("=> Ciphertext Block 2 = %h", data_out);

        #20;
        $finish;
    end

endmodule
