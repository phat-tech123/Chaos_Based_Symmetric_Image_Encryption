`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025 09:37:25 PM
// Design Name: 
// Module Name: tb_feistel_encrypt
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


module tb_feistel_encrypt();

    reg clk = 0;
    always #5 clk = ~clk;

    reg rstn = 0;
    initial begin
        #20 rstn = 1;
    end

    reg valid_in = 0;
    reg [255:0] data_in;
    // example round keys (fill with some values or load from file)
    reg [127:0] main_key;
    wire valid_out;
    wire [255:0] data_out;
    integer i;
    // prepare dummy keys
    initial begin
        main_key = 128'h00112233445566778899AABBCCDDEEFF;
        // prepare plaintext
        data_in = 256'h000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F;
        #50;
        valid_in = 1;
        #10;
        data_in = 256'hF101112131415161718191A1B1C1D1E1F000102030405060708090A0B0C0D0E0;
        #10;
        valid_in = 0;
    end

    feistel_encrypt #(.ROUNDS(5)) U (
        .clk(clk),
        .rstn(rstn),
        .valid_in(valid_in),
        .data_in(data_in),
        .main_key(main_key),
        .ready_in(),
        .valid_out(valid_out),
        .data_out(data_out)
    );

    initial begin
        #5000;
        $finish;
    end
endmodule