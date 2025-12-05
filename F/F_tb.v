`timescale 1ns/1ps
module F_tb;

    reg         clk;
    reg         reset_n;
    reg         tvalid;
    reg  [7:0]  sbox_out;
    reg         sbox_valid;
    reg  [127:0] state_in;
    reg  [127:0] round_key;
    wire [127:0] state_out;
    wire valid;
    // Instantiate DUT
    F dut (
        .clk(clk),
        .reset_n(reset_n),
        .tvalid(tvalid),
        .sbox_out(sbox_out),
        .sbox_valid(sbox_valid),
        .state_in(state_in),
        .round_key(round_key),
        .state_out(state_out),
        .valid(valid)
    );

    // Clock = 10ns
    initial clk = 0;
    always #1 clk = ~clk;


    integer k;
    initial begin
        // --- Init ---
        reset_n    = 0;
        tvalid     = 0;
        sbox_out   = 0;
        sbox_valid = 0;
        state_in   = 0;
        round_key  = 128'h0F0E0D0C0B0A09080706050403020100;

        // --- Release reset ---
        #20;
        reset_n = 1;


        // --- Giả lập S-box trả về 256 byte ---
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

        // --- Bắt đầu vòng F ---
        @(posedge clk);
        tvalid = 1;
        state_in   = 128'h00112233445566778899AABBCCDDEEFF;
        
        @(posedge clk);
        state_in   = 128'h112233445566778899AABBCCDDEEFF00;

        @(posedge clk);
        state_in   = 128'hA1B2C3D4E5F60718293A4B5C6D7E8F90;
        
        @(posedge clk);
        tvalid     = 0;

        // Chờ vài chu kỳ để pipeline chạy xong
        repeat (20) @(posedge clk);

        $display("STATE_OUT = %h", state_out);

        $stop;
    end

endmodule

