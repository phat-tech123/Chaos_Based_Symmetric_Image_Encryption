`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 12:14:12 PM
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
    input  wire clk,
    input  wire [127:0] state_in,
    output reg  [127:0] state_out
);
    reg [7:0] s [0:15];
    reg [7:0] s2 [0:15], s3 [0:15];
    reg [7:0] m [0:15];

    // Stage 1: Unpack and GF multiplications
    always @(posedge clk) begin
        for (i = 0; i < 16; i = i + 1) begin
            s[i] <= state_in[8*(15 - i) +: 8];
            s2[i] <= (s[i] << 1) ^ (s[i][7] ? 8'h1B : 8'h00);
            s3[i] <= s2[i] ^ s[i];
        end
    end

    // Stage 2: XOR operations
    always @(posedge clk) begin
        m[0] <= s2[0] ^ s3[1] ^ s[2] ^ s[3];
        // ... similarly for others
    end

    // Stage 3: Pack
    always @(posedge clk) begin
        for (i = 0; i < 16; i = i + 1) begin
            state_out[8*(15 - i) +: 8] <= m[i];
        end
    end
endmodule
