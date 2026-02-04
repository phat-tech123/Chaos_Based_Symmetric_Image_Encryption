`timescale 1ns/1ps

module mixcolumns_tb;

    reg clk;
    reg reset_n;
    reg tvalid;
    reg [127:0] state_in;
    wire valid;
    wire [127:0] state_out;

    // Instantiate DUT
    mixcolumns dut (
        .clk(clk),
        .reset_n(reset_n),
        .tvalid(tvalid),
        .state_in(state_in),
        .valid(valid),
        .state_out(state_out)
    );

    // Clock
    initial begin
        forever #5 clk = ~clk;   // 100 MHz
    end

    // Expected output from AES standard
    localparam [127:0] EXPECTED = 128'h046681e5_e0cb199a_48f8d37a_2806264c;

    initial begin
        $display("---- MixColumns Testbench ----");

        // Initialize
        clk <= 0;
        reset_n <= 0;
        tvalid  <= 0;
        state_in <= 128'd0;
        #15;

        // Release reset
        reset_n <= 1;
        #10;

        // Apply input
        tvalid <= 1;
        state_in <= 128'hd4bf5d30_e0b452ae_b84111f1_1e2798e5;
        #10;
        tvalid <= 0;

        #10;

        $display("Output     = %032h", state_out);
        $display("Expected   = %032h", EXPECTED);

        if (state_out === EXPECTED)
            $display("PASSED");
        else
            $display("FAILED");

        #200;
        $finish;
    end

endmodule

