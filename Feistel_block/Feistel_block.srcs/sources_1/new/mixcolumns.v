`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 03:10:53 PM
// Design Name: 
// Module Name: mixcolumns
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
    input  wire         clk,
    input  wire [127:0] state_in,
    output reg  [127:0] state_out
);
    // Unpack bytes
    wire [7:0] s [0:15];
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1)
            assign s[i] = state_in[8*(15 - i) +: 8];  // consistent endian
    endgenerate

    // Inline GF(2^8) multiply
    function [7:0] xtime(input [7:0] a);
        xtime = (a << 1) ^ (8'h1B & {8{a[7]}});
    endfunction
    function [7:0] mul2(input [7:0] a); mul2 = xtime(a); endfunction
    function [7:0] mul3(input [7:0] a); mul3 = xtime(a) ^ a; endfunction

    // Compute
    wire [7:0] m [0:15];

    // Column 0
    assign m[0] = mul2(s[0]) ^ mul3(s[1]) ^ s[2] ^ s[3];
    assign m[1] = s[0] ^ mul2(s[1]) ^ mul3(s[2]) ^ s[3];
    assign m[2] = s[0] ^ s[1] ^ mul2(s[2]) ^ mul3(s[3]);
    assign m[3] = mul3(s[0]) ^ s[1] ^ s[2] ^ mul2(s[3]);

    // Column 1
    assign m[4] = mul2(s[4]) ^ mul3(s[5]) ^ s[6] ^ s[7];
    assign m[5] = s[4] ^ mul2(s[5]) ^ mul3(s[6]) ^ s[7];
    assign m[6] = s[4] ^ s[5] ^ mul2(s[6]) ^ mul3(s[7]);
    assign m[7] = mul3(s[4]) ^ s[5] ^ s[6] ^ mul2(s[7]);

    // Column 2
    assign m[8]  = mul2(s[8]) ^ mul3(s[9]) ^ s[10] ^ s[11];
    assign m[9]  = s[8] ^ mul2(s[9]) ^ mul3(s[10]) ^ s[11];
    assign m[10] = s[8] ^ s[9] ^ mul2(s[10]) ^ mul3(s[11]);
    assign m[11] = mul3(s[8]) ^ s[9] ^ s[10] ^ mul2(s[11]);

    // Column 3
    assign m[12] = mul2(s[12]) ^ mul3(s[13]) ^ s[14] ^ s[15];
    assign m[13] = s[12] ^ mul2(s[13]) ^ mul3(s[14]) ^ s[15];
    assign m[14] = s[12] ^ s[13] ^ mul2(s[14]) ^ mul3(s[15]);
    assign m[15] = mul3(s[12]) ^ s[13] ^ s[14] ^ mul2(s[15]);

    // Register output
    always @(posedge clk)
        state_out <= {m[15], m[14], m[13], m[12],
                      m[11], m[10], m[9],  m[8],
                      m[7],  m[6],  m[5],  m[4],
                      m[3],  m[2],  m[1],  m[0]};
endmodule