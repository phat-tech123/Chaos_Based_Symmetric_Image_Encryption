`timescale 1ns/1ps

module key_schedule_5r_tb;

    parameter KEY_SIZE = 128;

    reg clk;
    reg reset_n;
    reg tvalid;
    reg [KEY_SIZE-1:0] key;

    wire valid;
    wire [KEY_SIZE-1:0] K0, K1, K2, K3, K4;

    // Instantiate DUT
    key_schedule_5r #(
        .ROUND(5),
        .KEY_SIZE(KEY_SIZE)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .tvalid(tvalid),
        .key(key),
        .valid(valid),
        .K0(K0),
        .K1(K1),
        .K2(K2),
        .K3(K3),
        .K4(K4)
    );

    always #5 clk = ~clk;  

//    initial begin
//	    $dumpfile("key_schedule_5r.vcd");
//	    $dumpvars(0, key_schedule_5r_tb);
//    end

    initial begin
        clk        = 0;
        reset_n    = 0;
        tvalid = 0;
        key        = 0;

        #15;
        reset_n = 1;

        send_key(128'hAAAABBBB_CCCC1111_DDDD2222_EEEE3333);
        send_key(128'h11112222_33334444_55556666_77778888);
        send_key(128'h01234567_89ABCDEF_FEDCBA98_76543210);
        send_key(128'hCAFEBABE_DEADBEEF_12345678_90ABCDEF);
        send_key(128'hFACEFACE_12345678_A1B2C3D4_E5F60718);

        #100;

        $display("===== RESULTS =====");
        $display("valid = %b", valid);
        $display("K0 = %h", K0);
        $display("K1 = %h", K1);
        $display("K2 = %h", K2);
        $display("K3 = %h", K3);
        $display("K4 = %h", K4);

        $display("===== END SIM =====");
        #20;
        $finish;
    end

    task send_key(input [KEY_SIZE-1:0] key_value);
    begin
        #20;
        key        = key_value;
        tvalid = 1;
        #10;
        tvalid = 0;
    end
    endtask

endmodule

