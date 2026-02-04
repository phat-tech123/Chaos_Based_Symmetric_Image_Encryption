`timescale 1ns/1ps

module shiftrows_tb;

    reg  [127:0] sb;
    wire [127:0] out;

    // Instantiate DUT
    shiftrows dut (
        .sb(sb),
        .out(out)
    );

    initial begin

        sb = 128'hD42711AEE0BF98F1B8B45DE51E415230;

        #5;

        $display("Input  : %032h", sb);
        $display("Output : %032h", out);

        // Expected result
        if (out === 128'hd4bf5d30e0b452aeb84111f11e2798e5)
            $display("PASS");
        else
            $display("FAIL");

        $finish;
    end


    initial begin
	    $dumpfile("shiftrows.vcd");
	    $dumpvars(0, shiftrows_tb);
    end

endmodule
