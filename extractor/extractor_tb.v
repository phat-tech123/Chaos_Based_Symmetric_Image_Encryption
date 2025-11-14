`timescale 1ns/1ps

module extractor_tb;

    // ====== Khai báo tín hiệu ======
    reg clk;
    reg reset_n;
    reg enable_extract;
    reg [31:0] val1, val2, val3;
    wire valid_extract;
    wire [22:0] ex1, ex2, ex3;

    // ====== Gọi module cần test ======
    extractor uut (
        .clk(clk),
        .reset_n(reset_n),
        .enable_extract(enable_extract),
        .val1(val1),
        .val2(val2),
        .val3(val3),
        .valid_extract(valid_extract),
        .ex1(ex1),
        .ex2(ex2),
        .ex3(ex3)
    );

    // ====== Tạo clock ======
    initial clk = 0;
    always #5 clk = ~clk;  // Clock 100 MHz

    // ====== Nhiệm vụ test ======
    initial begin
        // --- Khởi tạo ---
        reset_n = 0;
        enable_extract = 0;
        val1 = 0;
        val2 = 0;
        val3 = 0;

        #20;
        reset_n = 1;

        // --- Bộ test 1 ---
        @(posedge clk);
        val1 = 32'h44e419f7;
        val2 = 32'h451622c7;
        val3 = 32'h4509189f;
        enable_extract = 1;
        @(posedge clk);
        enable_extract = 0;

        // --- Bộ test 2 ---
        @(posedge clk);
        val1 = 32'h4514DC72;
        val2 = 32'h450CF6BD;
        val3 = 32'h43863380;
        enable_extract = 1;
        @(posedge clk);
        enable_extract = 0;


        // --- Bộ test 3 (ngẫu nhiên) ---
        @(posedge clk);
        val1 = 32'h458785A1;
        val2 = 32'h440FC6B3;
        val3 = 32'h4569AF85;
        enable_extract = 1;
        @(posedge clk);
        enable_extract = 0;

        #2000;

        // --- Kết thúc ---
        $finish;
    end

endmodule

