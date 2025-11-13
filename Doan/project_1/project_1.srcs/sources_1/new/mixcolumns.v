`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 12:39:58 PM
// Design Name: 
// Module Name: gf_ops
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
module mixcolumns (
    input  wire [127:0] state_in,
    output wire [127:0] state_out
);
    // state_in: 4x4 byte matrix, column-major
    wire [7:0] s [0:15];
    genvar i;
    for (i = 0; i < 16; i = i + 1) begin : unpack
        assign s[i] = state_in[8*(15 - i) +: 8];
    end

    // GF multiplication wires
    wire [7:0] s2 [0:15];
    wire [7:0] s3 [0:15];

    generate
        for (i = 0; i < 16; i = i + 1) begin : mul
            gf_mul2 u2 (.a(s[i]), .y(s2[i]));
            gf_mul3 u3 (.a(s[i]), .y(s3[i]));
        end
    endgenerate

    // MixColumns for each column
    wire [7:0] m [0:15];

    assign m[0]  = s2[0] ^ s3[1] ^ s[2] ^ s[3];
    assign m[1]  = s[0] ^ s2[1] ^ s3[2] ^ s[3];
    assign m[2]  = s[0] ^ s[1] ^ s2[2] ^ s3[3];
    assign m[3]  = s3[0] ^ s[1] ^ s[2] ^ s2[3];

    assign m[4]  = s2[4] ^ s3[5] ^ s[6] ^ s[7];
    assign m[5]  = s[4] ^ s2[5] ^ s3[6] ^ s[7];
    assign m[6]  = s[4] ^ s[5] ^ s2[6] ^ s3[7];
    assign m[7]  = s3[4] ^ s[5] ^ s[6] ^ s2[7];

    assign m[8]  = s2[8] ^ s3[9] ^ s[10] ^ s[11];
    assign m[9]  = s[8] ^ s2[9] ^ s3[10] ^ s[11];
    assign m[10] = s[8] ^ s[9] ^ s2[10] ^ s3[11];
    assign m[11] = s3[8] ^ s[9] ^ s[10] ^ s2[11];

    assign m[12] = s2[12] ^ s3[13] ^ s[14] ^ s[15];
    assign m[13] = s[12] ^ s2[13] ^ s3[14] ^ s[15];
    assign m[14] = s[12] ^ s[13] ^ s2[14] ^ s3[15];
    assign m[15] = s3[12] ^ s[13] ^ s[14] ^ s2[15];

    // Pack back to 128-bit
    for (i = 0; i < 16; i = i + 1) begin : pack
        assign state_out[8*(15 - i) +: 8] = m[i];
    end
endmodule