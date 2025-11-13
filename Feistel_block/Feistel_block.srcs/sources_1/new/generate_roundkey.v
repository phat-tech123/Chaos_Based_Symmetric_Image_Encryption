`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025 03:20:59 PM
// Design Name: 
// Module Name: generate_roundkey
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

module key_gen #(
    parameter ROUNDS = 5,
    parameter KEY_SIZE = 16  // bytes
)(
    input  wire [KEY_SIZE*8-1:0] main_key,
    output reg  [ROUNDS*128-1:0] round_keys_flat
);

    integer r, i;

    // Split main key into bytes
    wire [7:0] in_bytes [0:KEY_SIZE-1];
    wire [7:0] temp    [0:KEY_SIZE-1];  // after S-box
    reg  [127:0] round_keys [0:ROUNDS-1];

    // Assign main_key bytes
    generate
        genvar bi;
        for (bi = 0; bi < KEY_SIZE; bi = bi + 1) begin : split_bytes
            assign in_bytes[bi] = main_key[(KEY_SIZE-bi)*8-1 -: 8];
        end
    endgenerate

    // Apply S-box to each byte (temp must be wire!)
    generate
        genvar gj;
        for (gj = 0; gj < KEY_SIZE; gj = gj + 1) begin : apply_sbox
            sbox u_sbox (.in(in_bytes[gj]), .out(temp[gj]));
        end
    endgenerate

    // Generate round keys (combinational)
    always @(*) begin
        for (r = 0; r < ROUNDS; r = r + 1) begin
            for (i = 0; i < KEY_SIZE; i = i + 1) begin
                // Rotate S-boxed bytes and XOR with round index
                round_keys[r][(KEY_SIZE-i)*8-1 -: 8] = temp[(i+r)%KEY_SIZE] ^ (r*8+i);
            end
        end

        // Flatten round keys
        for (r = 0; r < ROUNDS; r = r + 1) begin
            round_keys_flat[(r*128) +: 128] = round_keys[r];
        end
    end

endmodule