`timescale 1ns/1ps

module CTR_feistel_encrypt_tb;

    localparam ROUND      = 5;
    localparam SBOX_WIDTH = 8;
    localparam KEY_SIZE   = 128;
    localparam DATA_WIDTH = 256;

    reg clk;
    reg reset_n;

    // DUT inputs
    reg  [SBOX_WIDTH-1:0] sbox_out;
    reg sbox_valid;

    reg [KEY_SIZE-1:0] K0;
    reg [KEY_SIZE-1:0] K1;
    reg [KEY_SIZE-1:0] K2;
    reg [KEY_SIZE-1:0] K3;
    reg [KEY_SIZE-1:0] K4;
    
    reg key_tvalid;
    reg [KEY_SIZE-1:0] key;

    reg tvalid;
    reg [DATA_WIDTH-1:0] plaintext;
    reg [DATA_WIDTH-1:0] iv;

    // DUT outputs
    wire valid;
    wire [DATA_WIDTH-1:0] ciphertext;

    // ===========================
    // Instantiate DUT
    // ===========================
    CTR_feistel_encrypt #(
        .ROUND(ROUND),
        .F_LAT(6),
        .SBOX_WIDTH(SBOX_WIDTH),
        .KEY_SIZE(KEY_SIZE),
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),

        .sbox_valid(sbox_valid),
        .sbox_out(sbox_out),

        .key_tvalid(key_tvalid),
        .key(key),

        .tvalid(tvalid),
        .plaintext(plaintext),
        .iv(iv),

        .valid(valid),
        .ciphertext(ciphertext)
    );

    // ===========================
    // Clock generator
    // ===========================
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    // ===========================
    // Task: apply plaintext block
    // ===========================
    task apply_block(input [DATA_WIDTH-1:0] pt);
    begin
//        @(posedge clk);
        plaintext <= pt;
        tvalid <= 1;
    end
    endtask

    // ===========================
    // Test sequence
    // ===========================
    integer k;

    initial begin
        // Init signals
        reset_n    <= 0;
        sbox_out   <= 0;
        sbox_valid <= 0;

        key_tvalid <= 0;

        iv         <= 256'hAABBCCDDEEFF00112233445566778899_0123456789ABCDEF0011223344556677;
        
        // Keys
        K0 <= 128'h000102030405060708090A0B0C0D0E0F;
        K1 <= 128'h101112131415161718191A1B1C1D1E1F;
        K2 <= 128'h202122232425262728292A2B2C2D2E2F;
        K3 <= 128'h303132333435363738393A3B3C3D3E3F;
        K4 <= 128'h404142434445464748494A4B4C4D4E4F;

        tvalid     <= 0;
        plaintext  <= 0;

        // Reset
        #10 reset_n <= 1;

        // ============================
        // Load S-box (same as original testbench)
        // ============================
        for (k = 255; k > 0; k = k - 1) begin
            @(posedge clk);
            sbox_out   <= k;
            sbox_valid <= 1;
        end
        @(posedge clk);
        sbox_out   <= 0;
        sbox_valid <= 1;

        @(posedge clk);
        sbox_valid <= 0;

        // ============================
        // Load key
        // ============================
        key_tvalid <= 1;
        key = K0;
        @(posedge clk);
        key = K1;
        @(posedge clk);
        key = K2;
        @(posedge clk);
        key = K3;
        @(posedge clk);
        key = K4;
        @(posedge clk);
        key_tvalid <= 0;
        #5;

        // ============================
        // Apply block 1
        // ============================
        $display("=== CTR block 1 ===");
        apply_block(256'h11223344556677889900AABBCCDDEEFF_00112233445566778899AABBCCDDEEFF);

        @(posedge clk);
        // ============================
        // Apply block 2
        // ============================
        $display("=== CTR block 2 ===");
        apply_block(256'hFFEEDDCCBBAA99887766554433221100_0123456789ABCDEF0011223344556677);

        @(posedge clk);
        tvalid <= 0;

        #2000 $finish;
    end

endmodule

