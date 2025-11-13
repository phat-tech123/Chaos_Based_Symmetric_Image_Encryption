`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 06:10:36 PM
// Design Name: 
// Module Name: sbox
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


module sbox (
    input  wire [7:0] in,
    output reg  [7:0] out
);
    (* rom_style = "distributed" *) reg [7:0] SBOX [0:255];

    initial begin
        $readmemh("sbox_lut.hex", SBOX);
    end

    always @(*) begin
        out = SBOX[in];
    end
endmodule