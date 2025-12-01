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
module tb_f_round;

    // -------------------------------
    // Inputs
    // -------------------------------
    reg clk;
    reg reset_n;
    reg start_enc;
    reg [7:0] sbox_out;
    reg sbox_valid;
    reg [127:0] state_in;
    reg [127:0] round_key;

    // -------------------------------
    // Outputs
    // -------------------------------
    wire [127:0] state_out;

    // -------------------------------
    // Instantiate DUT
    // -------------------------------
    f_round dut (
        .clk(clk),
        .reset(reset_n),
        .start_enc(start_enc),
        .sbox_out(sbox_out),
        .sbox_valid(sbox_valid),
        .state_in(state_in),
        .round_key(round_key),
        .state_out(state_out)
    );
       integer i;
    // -------------------------------
    // Clock generation
    // -------------------------------
    initial clk = 0;
    always #5 clk = ~clk;  // 100 MHz

    // -------------------------------
    // Test stimulus
    // -------------------------------
    initial begin
        // Initialize inputs
        reset_n = 0;
        start_enc = 0;
        sbox_out = 0;
        sbox_valid = 0;

        // Release reset
        #20;
        reset_n = 1;

        // Start encryption
        start_enc = 1;

        // Simulate S-box filling
        // Giả lập 256 byte S-box
        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            sbox_out = i + 8'h55;      // dummy S-box
            sbox_valid = 1;
        end
        @(posedge clk);
        sbox_valid = 0;
        @(posedge clk);

        // Chờ vài chu kỳ để dữ liệu propagate qua tất cả stage
        state_in = 128'h00112233445566778899aabbccddeeff;
        round_key = 128'h000102030405060708090a0b0c0d0e0f;
        #20
        state_in = 128'hffeeccddbbaa99887766554433221100;
        #100
        // In kết quả
        $display("State Out: %h", state_out);

        $stop;
    end

endmodule


