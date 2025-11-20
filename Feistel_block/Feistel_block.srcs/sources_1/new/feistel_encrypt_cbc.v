`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2025 08:08:27 PM
// Design Name: 
// Module Name: feistel_encrypt_cbc
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


module feistel_cbc_encrypt #(
    parameter ROUNDS     = 5,
    parameter ROUND_LAT  = 2,        // latency của 1 f_round
    parameter KEY_SIZE   = 16
)(
    input  wire         clk,
    input  wire         rstn,
    input  wire         valid_in,
    input  wire [255:0] data_in,      // plaintext block
    input  wire [255:0] iv,           // initialization vector
    input  wire [KEY_SIZE*8-1:0] main_key,

    output reg          valid_out,
    output reg [255:0]  data_out
);

    //----------------------------------------------------------
    // Giữ ciphertext của block trước (C[i-1])
    //----------------------------------------------------------
    reg [255:0] prev_cipher;

    // XOR input trước khi vào Feistel (CBC chaining)
    wire [255:0] xor_in = data_in ^ prev_cipher;

    //----------------------------------------------------------
    // Kết nối vào core feistel encrypt (đã pipeline)
    //----------------------------------------------------------
    wire core_ready;
    wire core_valid_out;
    wire [255:0] core_data_out;

    feistel_encrypt #(
        .ROUNDS(ROUNDS),
        .ROUND_LAT(ROUND_LAT),
        .KEY_SIZE(KEY_SIZE)
    ) core (
        .clk(clk),
        .rstn(rstn),
        .valid_in(valid_in),
        .data_in(xor_in),
        .main_key(main_key),
        .ready_in(core_ready),
        .valid_out(core_valid_out),
        .data_out(core_data_out)
    );

    //----------------------------------------------------------
    // Cập nhật CBC state và xuất ciphertext
    //----------------------------------------------------------
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            valid_out   <= 1'b0;
            data_out    <= 256'b0;
            prev_cipher <= iv;        // block đầu dùng IV
        end else begin
            valid_out <= core_valid_out;

            if (core_valid_out) begin
                data_out    <= core_data_out;  // Xuất ciphertext
                prev_cipher <= core_data_out;  // C[i] → làm prev cho block sau
            end
        end
    end

endmodule

