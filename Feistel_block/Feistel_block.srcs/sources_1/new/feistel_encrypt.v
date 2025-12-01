`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025 03:05:54 PM
// Design Name: 
// Module Name: feistel_encrypt
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

module feistel_encrypt #(
    parameter ROUNDS = 5,
    parameter ROUND_LAT = 2,
    parameter KEY_SIZE   = 128
)(
    input  wire         clk,
    input  wire         reset_n,          
    input  wire         start_enc,
    input  wire [255:0] data_in,

    // ROUND KEYS from external input
    input  wire              key_valid,
    input  wire [KEY_SIZE-1:0] key_in,
    // Forward S-box to f_round
    input  wire [7:0]   sbox_out,
    input  wire         sbox_valid,

    output reg          ready_in,
    output reg          valid_out,
    output reg [255:0]  data_out
);

    // =========================================================
    // KEY SCHEDULE (nạp 5 keys)
    // =========================================================
    wire ks_valid;
    wire [127:0] K0, K1, K2, K3, K4;

    key_schedule_5r #(
        .ROUND(ROUNDS),
        .KEY_SIZE(KEY_SIZE)
    ) ks (
        .clk(clk),
        .reset_n(reset_n),
        .tvalid(key_valid),
        .key(key_in),
        .valid(ks_valid),
        .K0(K0), .K1(K1), .K2(K2), .K3(K3), .K4(K4)
    );

    wire [127:0] round_key [0:4];
    assign round_key[0] = K0;
    assign round_key[1] = K1;
    assign round_key[2] = K2;
    assign round_key[3] = K3;
    assign round_key[4] = K4;

    //------------------------------------------
    // Split input
    //------------------------------------------
    wire [127:0] L0 = data_in[255:128];
    wire [127:0] R0 = data_in[127:0];

    //------------------------------------------
    // Registers
    //------------------------------------------
    reg [127:0] L_reg [0:ROUNDS];
    reg [127:0] R_reg [0:ROUNDS];

    wire [127:0] f_in  [0:ROUNDS-1];
    wire [127:0] f_out [0:ROUNDS-1];

    //------------------------------------------
    // Input stage
    //------------------------------------------
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            L_reg[0] <= 128'b0;
            R_reg[0] <= 128'b0;
            ready_in <= 1'b1;
        end 
        else if (start_enc) begin
            L_reg[0] <= L0;
            R_reg[0] <= R0;
        end
    end

    //------------------------------------------
    // Feistel rounds
    //------------------------------------------
    generate
        genvar ri;
        for (ri = 0; ri < ROUNDS; ri = ri + 1) begin : RND

            

            assign f_in[ri] = R_reg[ri];

            // f_round module
            f_round fr (
                .clk(clk),
                .reset_n(reset_n),
                .start_enc(start_enc),

                .sbox_out(sbox_out),
                .sbox_valid(sbox_valid),

                .state_in(f_in[ri]),
                .round_key(round_key[ri]),
                .state_out(f_out[ri])
            );

            // Feistel update
            always @(posedge clk or negedge reset_n) begin
                if (!reset_n) begin
                    L_reg[ri+1] <= 128'b0;
                    R_reg[ri+1] <= 128'b0;
                end 
                else begin
                    L_reg[ri+1] <= R_reg[ri];
                    R_reg[ri+1] <= L_reg[ri] ^ f_out[ri];
                end
            end

        end
    endgenerate

    //------------------------------------------
    // Pipeline for valid_out
    //------------------------------------------
    localparam integer DEPTH = ROUNDS * ROUND_LAT;
    reg [DEPTH-1:0] valid_pipe;

    always @(posedge clk or posedge reset_n) begin
        if (!reset_n)
            valid_pipe <= {DEPTH{1'b0}};
        else
            valid_pipe <= {valid_pipe[DEPTH-2:0], start_enc};
    end

    //------------------------------------------
    // Output stage
    //------------------------------------------
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            valid_out <= 1'b0;
            data_out <= 256'b0;
        end 
        else begin
            valid_out <= valid_pipe[DEPTH-1];
            if (valid_pipe[DEPTH-1])
                data_out <= {L_reg[ROUNDS], R_reg[ROUNDS]};
        end
    end

endmodule
