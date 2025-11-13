`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 01:30:21 PM
// Design Name: 
// Module Name: subbytes_shiftrows
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

module subbytes (
    input  wire         clk,
    input  wire [127:0] in,
    output reg  [127:0] out
);
    integer i;
    reg [7:0] temp [0:15];

    // === SubBytes combinational ===
    always @(*) begin
        temp[0]  = aes_sbox(in[7:0]);
        temp[1]  = aes_sbox(in[15:8]);
        temp[2]  = aes_sbox(in[23:16]);
        temp[3]  = aes_sbox(in[31:24]);
        temp[4]  = aes_sbox(in[39:32]);
        temp[5]  = aes_sbox(in[47:40]);
        temp[6]  = aes_sbox(in[55:48]);
        temp[7]  = aes_sbox(in[63:56]);
        temp[8]  = aes_sbox(in[71:64]);
        temp[9]  = aes_sbox(in[79:72]);
        temp[10] = aes_sbox(in[87:80]);
        temp[11] = aes_sbox(in[95:88]);
        temp[12] = aes_sbox(in[103:96]);
        temp[13] = aes_sbox(in[111:104]);
        temp[14] = aes_sbox(in[119:112]);
        temp[15] = aes_sbox(in[127:120]);
    end

    // === Pipeline register (để tăng tốc) ===
    always @(posedge clk)
        out <= {temp[15], temp[14], temp[13], temp[12],
                temp[11], temp[10], temp[9],  temp[8],
                temp[7],  temp[6],  temp[5],  temp[4],
                temp[3],  temp[2],  temp[1],  temp[0]};

    // === S-box function ===
    function [7:0] aes_sbox;
        input [7:0] a;
        begin
            case (a)
                8'h00: aes_sbox = 8'h63; 8'h01: aes_sbox = 8'h7c; 8'h02: aes_sbox = 8'h77; 8'h03: aes_sbox = 8'h7b;
                8'h04: aes_sbox = 8'hf2; 8'h05: aes_sbox = 8'h6b; 8'h06: aes_sbox = 8'h6f; 8'h07: aes_sbox = 8'hc5;
                8'h08: aes_sbox = 8'h30; 8'h09: aes_sbox = 8'h01; 8'h0a: aes_sbox = 8'h67; 8'h0b: aes_sbox = 8'h2b;
                8'h0c: aes_sbox = 8'hfe; 8'h0d: aes_sbox = 8'hd7; 8'h0e: aes_sbox = 8'hab; 8'h0f: aes_sbox = 8'h76;
                8'h10: aes_sbox = 8'hca; 8'h11: aes_sbox = 8'h82; 8'h12: aes_sbox = 8'hc9; 8'h13: aes_sbox = 8'h7d;
                8'h14: aes_sbox = 8'hfa; 8'h15: aes_sbox = 8'h59; 8'h16: aes_sbox = 8'h47; 8'h17: aes_sbox = 8'hf0;
                8'h18: aes_sbox = 8'had; 8'h19: aes_sbox = 8'hd4; 8'h1a: aes_sbox = 8'ha2; 8'h1b: aes_sbox = 8'haf;
                8'h1c: aes_sbox = 8'h9c; 8'h1d: aes_sbox = 8'ha4; 8'h1e: aes_sbox = 8'h72; 8'h1f: aes_sbox = 8'hc0;
                // ... (bạn thêm hết 256 giá trị S-box ở đây)
                8'hff: aes_sbox = 8'h16;
            endcase
        end
    endfunction
endmodule

