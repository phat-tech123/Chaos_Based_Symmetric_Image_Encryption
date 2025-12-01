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

module subbytes(
    input  wire        clk,
    input  wire        reset_n,

    // ================================
    // PHASE 1 : BUILD SBOX (256 bytes)
    // ================================
    input  wire [7:0]  sbox_out,
    input  wire        sbox_valid, 

    // ================================
    // PHASE 2 : LOOKUP
    // ================================
    input  wire        start_enc,     
    input  wire [127:0] in,     

    output wire [127:0] out     
);

    // 256-byte S-box memory
    reg [7:0] sbox_mem [0:255];

    reg [7:0] write_index;
    reg sbox_ready;

    integer i;

    // =======================================
    // PHASE 1 : BUILDING SBOX
    // =======================================
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            write_index <= 0;
            sbox_ready <=0;
        end
        else if (sbox_valid) begin
            sbox_mem[write_index] <= sbox_out;
            if (write_index == 8'd255) begin
                sbox_ready <= 1; // S-box done
            end
            write_index <= write_index + 1;
        end
    end

    // =======================================
    // PHASE 2 : LOOKUP 128-bit
    // =======================================
    reg [127:0] out_reg;
    assign out = out_reg;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            out_reg <= 128'd0;
        end else if (start_enc && sbox_ready) begin
            out_reg <= {
                sbox_mem[in[127:120]],
                sbox_mem[in[119:112]],
                sbox_mem[in[111:104]],
                sbox_mem[in[103:96]],
                sbox_mem[in[95:88]],
                sbox_mem[in[87:80]],
                sbox_mem[in[79:72]],
                sbox_mem[in[71:64]],
                sbox_mem[in[63:56]],
                sbox_mem[in[55:48]],
                sbox_mem[in[47:40]],
                sbox_mem[in[39:32]],
                sbox_mem[in[31:24]],
                sbox_mem[in[23:16]],
                sbox_mem[in[15:8]],
                sbox_mem[in[7:0]]
            };
        end
    end

endmodule
