`timescale 1ns/1ps

module top_tb;

    // ==================================================
    // 1. Parameters
    // ==================================================
    parameter PRECISION  = 32;
    parameter SBOX_WIDTH = 8;
    parameter DATA_WIDTH = 256;
    parameter KEY_SIZE   = 128;
    parameter ROUND      = 5;
    parameter F_LAT     = 6;

    // ==================================================
    // Clock & reset
    // ==================================================
    
    reg reset_n;
    reg tvalid;

    reg clk;
    initial begin
        clk = 0;
        forever #2 clk = ~clk;   
    end

    // ==================================================
    // 3. Test vectors & registers
    // ==================================================
    reg [KEY_SIZE-1:0]  initial_key;
    reg [DATA_WIDTH-1:0] iv;
    reg [DATA_WIDTH-1:0] plaintext[0:9];

    reg [PRECISION-1:0] A [0:8];
    reg [PRECISION-1:0] x [0:2];

    // ==================================================
    // 4. Initial values
    // ==================================================
    reg [31:0] seed;
    integer i;
    
    initial begin
        seed = 32'h1234_abcd;
    
        // Initial x
        x[0]=32'h3dcccccd;
        x[1]=32'h3c23d70a;
        x[2]=0;
    
        initial_key = 128'h9f3a6b1c4d2e8f70a1b3c5d6e7f80912;
        iv          = 256'h3fa8b74c92e1075db3c4a9f01d8e23bb7ac1d054ee39ab124f8d9023c6715aae;
    
        // Seed PRNG ONCE
        i = $random(seed);
    
        // Generate 10 random plaintexts (256-bit)
        for (i = 0; i < 10; i = i + 1) begin
            plaintext[i] = {
                $random, $random, $random, $random,
                $random, $random, $random, $random
            };
        end
    end
    // ==================================================
    // 5. PRNG
    // ==================================================
    reg PRNG_tvalid;
    always @(posedge clk or negedge reset_n)
        if (!reset_n) PRNG_tvalid <= 0;
        else          PRNG_tvalid <= tvalid;

    wire PRNG_valid;
    wire [PRECISION-1:0] prng_out [0:2];

    PRNG #(.PRECISION(PRECISION)) u_prng (
        .clk(clk), .reset_n(reset_n),
        .tvalid(PRNG_tvalid),
        .valid(PRNG_valid),
        .x0(x[0]), .x1(x[1]), .x2(x[2]),
        .pseudoRandomNumber1(prng_out[0]),
        .pseudoRandomNumber2(prng_out[1]),
        .pseudoRandomNumber3(prng_out[2])
    );


    wire sbox_valid, done_sbox;
    wire [SBOX_WIDTH-1:0] V_out;
    sbox_generator #(
        .PRECISION(PRECISION),
        .EXTRACT_WIDTH(23),
        .MIX_WIDTH(8)
    ) u_sbox_gen (
        .clk(clk), .reset_n(reset_n),
        .tvalid(PRNG_valid),
        .pseudoRandomNumber1(prng_out[0]),
        .pseudoRandomNumber2(prng_out[1]),
        .pseudoRandomNumber3(prng_out[2]),
        .valid(sbox_valid),
        .V_out(V_out),
        .done_sbox(done_sbox)
    );
    
    wire key_valid;
    wire [128-1:0] key;
    wire done_key;
    key_generator #(
        .V_SIZE(SBOX_WIDTH),
        .KEY_SIZE(KEY_SIZE),
        .ROUND(ROUND)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .initial_key(initial_key),
    
        .sbox_valid(sbox_valid),
        .V_out(V_out),
        .sbox_done(done_sbox),
    
        .valid(key_valid),
        .key(key),
        .done_key(done_key)
    );
    

    reg en_tvalid;
    reg [DATA_WIDTH-1:0] plaintxt;
    wire en_valid;
    wire [DATA_WIDTH-1:0] ciphertext;

    CTR_feistel_encrypt #(
        .ROUND(ROUND),
        .KEY_SIZE(KEY_SIZE),
        .F_LAT(F_LAT),
        .ENCR_LAT(5*F_LAT+1),
        .SBOX_WIDTH(SBOX_WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) u_encrypt (
        .clk(clk), .reset_n(reset_n),
        .sbox_valid(sbox_valid),
        .sbox_out(V_out),
        .key_tvalid(key_valid),
        .key(key),
        .tvalid(en_tvalid),
        .plaintext(plaintxt),
        .iv(iv),
        .valid(en_valid),
        .ciphertext(ciphertext)
    );

    wire de_valid;
    wire [DATA_WIDTH-1:0] plaintext_out;

    CTR_feistel_decrypt #(
        .ROUND(ROUND),
        .F_LAT(F_LAT),
        .ENCR_LAT(5*F_LAT+1),
        .SBOX_WIDTH(SBOX_WIDTH),
        .KEY_SIZE(KEY_SIZE),
        .DATA_WIDTH(DATA_WIDTH)
    ) u_decrypt (
        .clk(clk), .reset_n(reset_n),
        .sbox_valid(sbox_valid),
        .sbox_out(V_out),
        .key_tvalid(key_valid),
        .key(key),
        .tvalid(en_valid),
        .ciphertext(ciphertext),
        .iv(iv),
        .valid(de_valid),
        .plaintext(plaintext_out)
    );

    initial begin
        reset_n = 0;
        tvalid  = 0;

        #30;
        reset_n = 1;

        #20;
        tvalid = 1;
        #10;
        tvalid = 0;
        $display("✅System start at %0t" ,$time);
    end

    reg [255:0] count;
    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            en_tvalid <= 0;
            count <= 0;
            plaintxt <= 0;
        end else if(done_key || (count != 0 && count < 10)) begin
            if(count == 0) begin
                $display("------------------------------------------- TEST -------------------------------------------");
            end
            $display("✅Plaintext: %h at %0t", plaintext[count] ,$time);
            en_tvalid <= 1;
            plaintxt <= plaintext[count];
            count <= count + 1;
        end else begin 
            plaintxt <= 0;
            en_tvalid <= 0;
        end
    end
    
    reg first;
    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin 
            first <= 1;
        end else if (en_valid) begin
            if(first) begin
                $display("---------------------------------------- ENCRYPTION ----------------------------------------");
                first <= 0;
            end
            $display("Ciphertext: %h at %0t", ciphertext, $time);
        end
    end
    
    reg [255:0] count1;
    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin 
            count1 <= 0;
        end else if (de_valid) begin
            if(count1 == 0) begin
                $display("---------------------------------------- DECRYPTION ----------------------------------------");
            end
            if (plaintext_out == plaintext[count1])
                $display("✅[PASS] Decrypted Plaintext: %h at %0t", plaintext_out,$time);
            else
                $display("✅[FAIL] Decrypted Plaintext: %h at %0t", plaintext_out,$time);
            count1 <= count1 + 1;
        end
    end

endmodule