`timescale 1ns/1ps

module subbytes_tb;

    // Parameters
    localparam SBOX_WIDTH = 8;
    localparam SBOX_DEPTH = 256;
    localparam DATA_WIDTH = 128;

    // DUT I/O
    reg clk;
    reg reset_n;

    reg sbox_valid;
    reg [SBOX_WIDTH-1:0] sbox_out;

    reg tvalid;
    reg [DATA_WIDTH-1:0] in;

    wire valid;
    wire [DATA_WIDTH-1:0] out;

    // Instantiate DUT
    subbytes #(
        .SBOX_WIDTH(SBOX_WIDTH),
        .SBOX_DEPTH(SBOX_DEPTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .sbox_valid(sbox_valid),
        .sbox_out(sbox_out),
        .tvalid(tvalid),
        .in(in),
        .valid(valid),
        .out(out)
    );

    // Clock
    always #1 clk = ~clk;

    integer k; // <- TESTBENCH LOOP VARIABLE (safe)

    initial begin
        clk = 0;
        reset_n = 0;
        sbox_valid = 0;
        tvalid = 0;
        in = 0;

        // Apply reset
        #20;
        reset_n = 1;

        // ================================
        // PHASE 1: BUILD SBOX 255 -> 0
        // ================================
        $display("==== Sending SBOX data 255..0 ====");

        for (k = 255; k > 0; k = k - 1) begin
            @(posedge clk);
            sbox_out <= k;
            sbox_valid <= 1;
        end

        // send last byte = 0
        @(posedge clk);
        sbox_out <= 8'd0;
        sbox_valid <= 1;

        @(posedge clk);
        sbox_valid <= 0;

        // give time for DUT to set sbox_ready
        #20;

        // ================================
        // PHASE 2: LOOKUP TEST
        // ================================
        $display("==== Test Lookup ====");

        in = 128'h0123456789ABCDEFFEDCBA9876543210;

        @(posedge clk);
        tvalid = 1;
        @(posedge clk);
        tvalid = 0;

        wait(valid == 1);

        @(posedge clk);
        $display("Input :  %032h", in);
        $display("Output: %032h", out);

        $display("==== TEST FINISHED ====");
        #50;
        $finish;
    end

endmodule
