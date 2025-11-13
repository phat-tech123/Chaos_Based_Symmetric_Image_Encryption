`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 12:05:44 PM
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


module gf_mul2 (
    input  wire [7:0] a,
    output wire [7:0] y
);
    assign y = (a[7]) ? ((a << 1) ^ 8'h1B) : (a << 1);
endmodule

module gf_mul3 (
    input  wire [7:0] a,
    output wire [7:0] y
);
    wire [7:0] m2;
    gf_mul2 u2(.a(a), .y(m2));
    assign y = m2 ^ a;
endmodule
