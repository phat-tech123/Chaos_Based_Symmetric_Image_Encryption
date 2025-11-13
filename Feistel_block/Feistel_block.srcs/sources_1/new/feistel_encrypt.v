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
    parameter ROUND_LAT = 2,       // latency (clock cycles) of each f_round
    parameter KEY_SIZE   = 16
)(
    input  wire         clk,
    input  wire         rstn,
    input  wire         valid_in,
    input  wire [255:0] data_in,             // 32 bytes = 256-bit block
    input  wire [KEY_SIZE*8-1:0] main_key,
    output reg          ready_in,            // always 1 (accept new block every clock)
    output reg          valid_out,
    output reg [255:0]  data_out
);
    wire [ROUNDS*128-1:0] round_keys_flat;

    key_gen #(
        .ROUNDS(ROUNDS),
        .KEY_SIZE(KEY_SIZE)
    ) kg (
        .main_key(main_key),
        .round_keys_flat(round_keys_flat)
    );
    //----------------------------------------------------
    // Split input block into L0 and R0
    //----------------------------------------------------
    wire [127:0] L0 = data_in[255:128];
    wire [127:0] R0 = data_in[127:0];

    //----------------------------------------------------
    // Register arrays for pipeline
    //----------------------------------------------------
    reg [127:0] L_reg [0:ROUNDS];
    reg [127:0] R_reg [0:ROUNDS];
    wire [127:0] f_in  [0:ROUNDS-1];
    wire [127:0] f_out [0:ROUNDS-1];
    //----------------------------------------------------
    //----------------------------------------------------
    // Input register stage
    //----------------------------------------------------
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            L_reg[0] <= 128'b0;
            R_reg[0] <= 128'b0;
            ready_in <= 1'b1;
        end else if (valid_in) begin
            L_reg[0] <= L0;
            R_reg[0] <= R0;
        end
    end

    //----------------------------------------------------
    // Instantiate ROUNDS of Feistel layers
    //----------------------------------------------------
    generate
        genvar ri;
        for (ri = 0; ri < ROUNDS; ri = ri + 1) begin : RND
            // Extract round key
            wire [127:0] rkey = round_keys_flat[(ri*128) +: 128];

            // Feed current right half into round function
            assign f_in[ri] = R_reg[ri];
            // --- f_round (pipelined) ---
            f_round fr (
                .clk(clk),
                .state_in(f_in[ri]),
                .round_key(rkey),
                .state_out(f_out[ri])
            );

            // --- Register update for next Feistel stage ---
            always @(posedge clk or negedge rstn) begin
                if (!rstn) begin
                    L_reg[ri+1] <= 128'b0;
                    R_reg[ri+1] <= 128'b0;
                end else begin
                    L_reg[ri+1] <= R_reg[ri];           // L_next = R_current
                    R_reg[ri+1] <= L_reg[ri] ^ f_out[ri]; // R_next = L_current ⊕ f(R_current, key)
                end
            end
        end
    endgenerate

    //----------------------------------------------------
    // Output valid pipeline tracking
    //----------------------------------------------------
    localparam integer DEPTH = ROUNDS * ROUND_LAT; // total latency estimate
    reg [DEPTH-1:0] valid_pipe;

    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            valid_pipe <= {DEPTH{1'b0}};
        else
            valid_pipe <= {valid_pipe[DEPTH-2:0], valid_in};
    end

    //----------------------------------------------------
    // Output result when pipeline valid completes
    //----------------------------------------------------
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            valid_out <= 1'b0;
            data_out <= 256'b0;
        end else begin
            valid_out <= valid_pipe[DEPTH-1];
            if (valid_pipe[DEPTH-1])
                data_out <= {L_reg[ROUNDS], R_reg[ROUNDS]};
        end
    end

endmodule


