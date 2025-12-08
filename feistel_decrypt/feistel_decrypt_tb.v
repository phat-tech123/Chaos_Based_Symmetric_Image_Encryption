//`timescale 1ns/1ps

module feistel_enc_dec_tb;

    // Parameters
    localparam ROUND      = 5;
    localparam SBOX_WIDTH = 8;
    localparam KEY_SIZE   = 128;
    localparam DATA_WIDTH = 256;

    // Clock & reset
    reg clk;
    reg reset_n;

    // SBOX
    reg  [SBOX_WIDTH-1:0] sbox_out;
    reg sbox_valid;

    // Keys
    reg key_valid;
    reg [KEY_SIZE-1:0] K0, K1, K2, K3, K4;

    // Encrypt
    reg tvalid_enc;
    reg [DATA_WIDTH-1:0] plaintext_in;
    wire valid_enc;
    wire [DATA_WIDTH-1:0] ciphertext_out;

    // Decrypt
    wire valid_dec;
    wire [DATA_WIDTH-1:0] plaintext_out;


    // ===========================
    // Instantiate ENCRYPT
    // ===========================
    feistel_encrypt #(
        .ROUND(ROUND),
        .F_LAT(6),
        .SBOX_WIDTH(SBOX_WIDTH),
        .KEY_SIZE(KEY_SIZE),
        .DATA_WIDTH(DATA_WIDTH)
    ) encrypt_u (
        .clk(clk),
        .reset_n(reset_n),
        .sbox_out(sbox_out),
        .sbox_valid(sbox_valid),
        .key_valid(key_valid),
        .K0(K0), .K1(K1), .K2(K2), .K3(K3), .K4(K4),
        .tvalid(tvalid_enc),
        .plaintext(plaintext_in),
        .valid(valid_enc),
        .ciphertext(ciphertext_out)
    );


    // ===========================
    // Instantiate DECRYPT
    // ===========================
    feistel_decrypt #(
        .ROUND(ROUND),
        .F_LAT(6),
        .SBOX_WIDTH(SBOX_WIDTH),
        .KEY_SIZE(KEY_SIZE),
        .DATA_WIDTH(DATA_WIDTH)
    ) decrypt_u (
        .clk(clk),
        .reset_n(reset_n),
        .sbox_out(sbox_out),
        .sbox_valid(sbox_valid),
        .key_valid(key_valid),
        .K0(K0), .K1(K1), .K2(K2), .K3(K3), .K4(K4),
        .tvalid(valid_enc),
        .ciphertext(ciphertext_out),
        .valid(valid_dec),
        .plaintext(plaintext_out)
    );


    // ===========================
    // Clock generator
    // ===========================
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    // ===========================
    // Tasks
    // ===========================
    task apply_encrypt(input [DATA_WIDTH-1:0] pt);
    begin
        @(posedge clk);
        plaintext_in <= pt;
        tvalid_enc <= 1;
    end
    endtask



    // ===========================
    // Test sequence
    // ===========================
    integer k, i;
    integer counter;
    reg [DATA_WIDTH-1:0] PT [0:2];

initial begin
    // INIT
    reset_n <= 0;
    counter <= 0;
    sbox_out <= 0;
    sbox_valid <= 0;
    tvalid_enc <= 0;
    key_valid <= 1;
    K0 <= 128'h000102030405060708090A0B0C0D0E0F;
    K1 <= 128'h101112131415161718191A1B1C1D1E1F;
    K2 <= 128'h202122232425262728292A2B2C2D2E2F;
    K3 <= 128'h303132333435363738393A3B3C3D3E3F;
    K4 <= 128'h404142434445464748494A4B4C4D4E4F;

    #15 reset_n = 1;

    // Load SBOX
    for (k = 255; k >= 0; k = k - 1) begin
        @(posedge clk);
        sbox_out <= k;
        sbox_valid <= 1;
    end
    @(posedge clk);
    sbox_valid <= 0;

    #2;

    // Test vectors
    PT[0] = 256'h11223344556677889900AABBCCDDEEFF_00112233445566778899AABBCCDDEEFF;
    PT[1] = 256'hA1B2C3D4E5F60718293A4B5C6D7E8F90_102132435465768798A9BACBDCEDFE0F;
    PT[2] = 256'h55AA55AA33CC33CC0F0F0F0FF0F0F0F0_1234567890ABCDEF1122334455667788;


    // ===== FEED 3 plaintext =====
    for (i = 0; i < 3; i = i + 1) begin
        apply_encrypt(PT[i]);
    end
    
    @(posedge clk);
    tvalid_enc <= 0;
    #500 $finish;
end
always @(posedge clk) begin
    if (valid_dec) begin
        if (plaintext_out === PT[counter]) begin
            $display("Block %0d: PASS", counter);
        end else begin
            $display("Block %0d: FAIL", counter);
        end
        counter = counter + 1;
    end
end



endmodule
