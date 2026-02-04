`timescale 1ns/1ps

module von_neumann_tb;

    reg clk;
    reg reset_n;
    reg enable;
    reg raw_bit;

    wire valid;
    wire processed_bit;

    // DUT
    Von_Neumann_Corrector dut (
        .clk(clk),
        .reset_n(reset_n),
        .enable(enable),
        .raw_bit(raw_bit),
        .valid(valid),
        .processed_bit(processed_bit)
    );

    // Clock 10ns period
    always #5 clk = ~clk;

    // Raw bitstream from the figure
    reg [11:0] raw_stream = 12'b100011010010;
    integer i;

    initial begin
        // VCD dump
        $dumpfile("von_neumann_tb.vcd");
        $dumpvars(0, von_neumann_tb);

        clk = 0;
        reset_n = 0;
        enable = 0;
        raw_bit = 0;

        // Reset
        #20;
        reset_n <= 1;

        // Feed raw bits MSB → LSB
        for (i = 11; i >= 0; i = i - 1) begin
        	enable  <= 1;
            	raw_bit <= raw_stream[i];
            	@(posedge clk);
        end
	enable <= 0;

        // Let FSM finish
        repeat(4) @(posedge clk);

        $finish;
    end

    // Monitor output
    always @(posedge clk) begin
        if (valid)
            $display("Time %0t : valid=%b processed_bit=%b", $time,valid, processed_bit);
    end

endmodule

