`timescale 1ns/1ps

module key_generator_tb;

    reg clk;
    reg reset_n;

    reg sbox_valid;
    reg [7:0] V_out;
    reg sbox_done;

    reg [127:0] initial_key;

    wire valid;
    wire [127:0] key;
    wire key_done;

    // DUT
    key_generator #(
        .V_SIZE(8),
        .KEY_SIZE(128),
        .ROUND(5)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .initial_key(initial_key),

        .sbox_valid(sbox_valid),
        .V_out(V_out),
        .sbox_done(sbox_done),

        .valid(valid),
        .key(key),
        .done_key(key_done)
    );

    // Clock 100 MHz
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    integer i;

    initial begin
        // Initial signals
        reset_n    = 0;
        sbox_valid = 0;
        sbox_done  = 0;
        V_out      = 0;

        initial_key = 128'h0123456789ABCDEF_FEDCBA9876543210;

        #20;
        reset_n = 1;
        #20;

        // Gửi SBOX 255 -> 0
        $display("Sending SBOX values 255 -> 0");
        for (i = 255; i >= 0; i = i - 1) begin
            @(posedge clk);
            sbox_valid <= 1;
            V_out      <= i[7:0];
        end

        // Tắt sbox_valid
        @(posedge clk);
        sbox_valid <= 0;

        // Gửi sbox_done 1 chu kỳ
        @(posedge clk);
        sbox_done <= 1;

        @(posedge clk);
        sbox_done <= 0;

        // Theo dõi key output
//        repeat (20) begin
//            @(posedge clk);
//            if (valid)
//                $display("Key = %032h", key);
//        end

        #5000;
//        $display("TB DONE");
        $finish;
    end

endmodule
