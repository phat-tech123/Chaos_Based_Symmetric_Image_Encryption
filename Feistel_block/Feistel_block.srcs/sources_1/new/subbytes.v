`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 03:46:39 PM
// Design Name: 
// Module Name: subbytes
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
    // ---- Combinational SubBytes ----
    wire [7:0] in_bytes [0:15];  // Đầu vào cho các instance sbox
    wire [7:0] temp [0:15];      // Đầu ra tạm thời từ sbox

    // Map input to bytes (row-major)
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : unpack
            assign in_bytes[i] = in[8*(15 - i) +: 8]; // in[127:120] -> in_bytes[0], in[119:112] -> in_bytes[1], ...
        end
    endgenerate

    // Apply S-box
    generate
        for (i = 0; i < 16; i = i + 1) begin : apply_sbox
            sbox u_sbox (.in(in_bytes[i]), .out(temp[i]));
        end
    endgenerate

    // ---- Pipeline register for higher clock ----
    always @(posedge clk) begin
        out <= {temp[0], temp[1], temp[2], temp[3],
                temp[4], temp[5], temp[6], temp[7],
                temp[8], temp[9], temp[10], temp[11],
                temp[12], temp[13], temp[14], temp[15]};
    end
endmodule