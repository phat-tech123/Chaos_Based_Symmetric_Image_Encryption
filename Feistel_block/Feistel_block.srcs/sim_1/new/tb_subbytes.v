`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 03:49:44 PM
// Design Name: 
// Module Name: tb_subbytes
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2025 03:49:44 PM
// Design Name: 
// Module Name: tb_subbytes
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
module tb_subbytes();

    reg clk;
    reg reset;

    // Build S-box
    reg [7:0]  sbox_out;
    reg        sbox_valid;

    // Lookup
    reg        start_enc;
    reg [127:0] in;
    wire [127:0] out;

    // Instantiate DUT
    subbytes uut (
        .clk(clk),
        .reset(reset),

        // Build S-box
        .sbox_out(sbox_out),
        .sbox_valid(sbox_valid),

        // Lookup
        .start_enc(start_enc),
        .in(in),
        .out(out)
    );

    // Clock generator
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // -----------------------------
    // STORE expected S-box reference
    // -----------------------------
    integer i, j;

    initial begin
        reset = 1;
        sbox_out = 0;
        sbox_valid = 0;
        start_enc = 0;
        in = 0;

        #20;
        reset = 0;

        // --------------------------------------
        // BUILDING S-BOX (256 bytes)
        // --------------------------------------
        $display("=== BUILDING S-BOX ===");
        for (i = 0; i < 256; i = i + 1) begin
            @(posedge clk);
            sbox_out = i + 8'h55;      // dummy S-box
            sbox_valid = 1;
        end
        @(posedge clk);
        sbox_valid = 0;
        @(posedge clk);

        // --------------------------------------
        // TEST 128-bit LOOKUP
        // --------------------------------------
        $display("=== TESTING 128-BIT LOOKUP ===");

        // Example: random 128-bit input
        for (i = 0; i < 5; i = i + 1) begin
            // Generate random 128-bit value byte by byte
            for (j = 0; j < 16; j = j + 1) begin
                in[j*8 +: 8] = $random % 256;
            end

            start_enc = 1;
            @(posedge clk);
            start_enc = 0;
            // Check each byte
            for (j = 0; j < 16; j = j + 1) begin
                $display(" Byte %0d: input=%02h, output=%02h",
                    j, in[j*8 +: 8], out[j*8 +: 8]);
            end
            $display("----");
        end

        $display("===== ALL TESTS FINISHED =====");
        #50;
        $stop;
    end

endmodule