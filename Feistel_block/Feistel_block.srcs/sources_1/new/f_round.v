`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025
// Design Name: AES Round Function
// Module Name: f_round
// Project Name: AES Core
// Target Devices: 
// Tool Versions: 
// Description: One AES encryption round (SubBytes -> ShiftRows -> MixColumns -> AddRoundKey)
//
// Dependencies: subbytes.v, shiftrows.v, mixcolumns.v, addroundkey.v
//
//////////////////////////////////////////////////////////////////////////////////

module f_round(
    input  wire         clk,
    input  wire        reset_n,
    input  wire        start_enc,
    input  wire [7:0]  sbox_out,   
    input  wire        sbox_valid,
    input  wire [127:0] state_in,
    input  wire [127:0] round_key,
    output wire [127:0] state_out
);

    // Wires nối giữa các tầng
    wire [127:0] sb_out;
    wire [127:0] sr_out;
    wire [127:0] mc_out;

    // --- SubBytes ---
    subbytes u_sub (
        .clk(clk),
        .reset_n(reset_n),
        .sbox_out(sbox_out),
        .sbox_valid(sbox_valid),
        .start_enc(start_enc),
        .in(state_in),
        .out(sb_out)
    );

    // --- ShiftRows ---
    shiftrows u_shift (
        .sb(sb_out),
        .out(sr_out)
    );

    // --- MixColumns ---
    mixcolumns u_mix (
        .clk(clk),
        .state_in(sr_out),
        .state_out(mc_out)
    );

    // --- AddRoundKey ---
    addroundkey u_add (
        .state_in(mc_out),
        .round_key(round_key),
        .state_out(state_out)
    );
endmodule
