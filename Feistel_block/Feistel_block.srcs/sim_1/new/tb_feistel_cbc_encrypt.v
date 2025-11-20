`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2025 02:15:31 AM
// Design Name: 
// Module Name: tb_feistel_cbc_encrypt
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

module tb_feistel_cbc_encrypt;

    //-------------------------------------------------------------
    // Params
    //-------------------------------------------------------------
    localparam ROUNDS    = 5;
    localparam ROUND_LAT = 2;
    localparam KEY_SIZE  = 16;
    localparam TOTAL_LAT = ROUNDS * ROUND_LAT;

    //-------------------------------------------------------------
    // Signals
    //-------------------------------------------------------------
    reg clk = 0;
    reg rstn = 0;

    reg valid_in;
    reg [255:0] data_in;
    reg [255:0] iv;
    reg [KEY_SIZE*8-1:0] main_key;

    wire valid_out;
    wire [255:0] data_out;

    //-------------------------------------------------------------
    // DUT
    //-------------------------------------------------------------
    feistel_cbc_encrypt #(
        .ROUNDS(ROUNDS),
        .ROUND_LAT(ROUND_LAT),
        .KEY_SIZE(KEY_SIZE)
    ) dut (
        .clk(clk),
        .rstn(rstn),
        .valid_in(valid_in),
        .data_in(data_in),
        .iv(iv),
        .main_key(main_key),
        .valid_out(valid_out),
        .data_out(data_out)
    );

    //-------------------------------------------------------------
    // Clock
    //-------------------------------------------------------------
    always #5 clk = ~clk;   // 100 MHz

    //-------------------------------------------------------------
    // Task send block
    //-------------------------------------------------------------
    task send_block(input [255:0] block);
    begin
        @(posedge clk);
        data_in  <= block;
        valid_in <= 1;
        $display("[%0t]  SEND BLOCK: %h", $time, block);
    end
    endtask

    //-------------------------------------------------------------
    // Release valid
    //-------------------------------------------------------------
    task no_block();
    begin
        @(posedge clk);
        valid_in <= 0;
    end
    endtask

    //-------------------------------------------------------------
    // Monitor output
    //-------------------------------------------------------------
    always @(posedge clk) begin
        if (valid_out)
            $display("[%0t]  OUT BLOCK = %h", $time, data_out);
    end

    //-------------------------------------------------------------
    // Main stimulus
    //-------------------------------------------------------------
    initial begin
        $dumpfile("cbc_encrypt.vcd");
        $dumpvars(0, tb_feistel_cbc_encrypt);

        valid_in = 0;
        data_in  = 0;

        main_key = 128'h00112233445566778899AABBCCDDEEFF;
        iv       = 256'h1111111122222222333333334444444455555555666666667777777788888888;

        #20;
        rstn = 1;

        //---------------------------------------------------------
        // Gửi 3 block liên tục → pipeline đầy
        //---------------------------------------------------------
        send_block(256'hAAAABBBBCCCCDDDDEEEEFFFF0000111122223333444455556666777788889999);
        send_block(256'h111122223333444455556666777788889999AAAABBBBCCCCDDDDEEEEFFFF0000);
        send_block(256'hDEADBEEFCAFEBABE1234567890ABCDEF112233445566778899AABBCCDDEEFF00);

        no_block();   // Ngừng bơm block

        //---------------------------------------------------------
        // Chờ pipeline xử lý xong
        //---------------------------------------------------------
        repeat (TOTAL_LAT + 10) @(posedge clk);

        $display("---- Simulation Finished ----");
        $finish;
    end

endmodule
