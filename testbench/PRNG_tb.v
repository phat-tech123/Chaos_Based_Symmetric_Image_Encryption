/*
module PRNG_tb;

    // 1. Parameters
    parameter PRECISION = 32;

    // 2. Inputs to DUT
    reg clk;
    reg reset_n;
    reg tvalid;
    reg [PRECISION-1:0] x0, x1, x2;
    reg [PRECISION-1:0] A00, A01, A02, A10, A11, A12, A20, A21, A22;
    reg [PRECISION-1:0] sigma_in;

    // 3. Outputs from DUT
    wire valid;
    wire [PRECISION-1:0] pseudoRandomNumber1;
    wire [PRECISION-1:0] pseudoRandomNumber2;
    wire [PRECISION-1:0] pseudoRandomNumber3;

    // 4. Instantiate the Device Under Test (DUT)
    PRNG #(
        .PRECISION(PRECISION)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .tvalid(tvalid),
        .x0(x0),
        .x1(x1),
        .x2(x2),
	.A00(A00), .A01(A01), .A02(A02),
	.A10(A10), .A11(A11), .A12(A12),
	.A20(A20), .A21(A21), .A22(A22),
	.sigma_in(sigma),

        .valid(valid),
        .pseudoRandomNumber1(pseudoRandomNumber1),
        .pseudoRandomNumber2(pseudoRandomNumber2),
        .pseudoRandomNumber3(pseudoRandomNumber3)
    );

    // 5. Clock Generation (100MHz -> Period = 10ns)
    always #5 clk = ~clk;

    // 6. Test Sequence
    initial begin
        // --- Initialize Inputs ---
        clk = 0;
        reset_n = 0;
        tvalid = 0;
        x0 = 0; x1 = 0; x2 = 0;

        // --- Apply Reset ---
        $display("[%0t] Resetting System...", $time);
        #100;
        reset_n = 1;
        #20;

        // --- Input Seed Data (IEEE 754 Floating Point) ---
        x0 = 32'h3F000000;
        x1 = 32'h3E4CCCCD; 
        x2 = 32'h3F4CCCCD;
        sigma = 32'h4019060e; 
        A00 = 32'h00000000; A01 = 32'h3f000000; A02 = 32'h3d4ccccd;
        A10 = 32'h3eaaaaab; A11 = 32'h00000000; A12 = 32'h3eaaaaab;
        A20 = 32'h3d4ccccd; A21 = 32'h3f000000; A22 = 32'h00000000;

        $display("[%0t] Loading Seeds...", $time);
        
        // --- Trigger tvalid ---
        @(posedge clk);
        tvalid = 1;
        @(posedge clk);
        tvalid = 0; // Pulse tvalid trong 1 chu kỳ

        // --- Wait for generation ---
        #200000;
        
        $display("[%0t] Simulation Finished", $time);
        $stop;
    end

    // 7. Monitor Output
    always @(posedge clk) begin
        if (valid) begin
            $display("[%0t] NEW RESULT VALID: R1=%h, R2=%h, R3=%h", 
                     $time, pseudoRandomNumber1, pseudoRandomNumber2, pseudoRandomNumber3);
        end
    end

endmodule
*/


`timescale 1ns / 1ps

module PRNG_tb;

    // =========================================================
    // 1. Parameters
    // =========================================================
    parameter PRECISION = 32;

    // =========================================================
    // 2. Inputs to DUT
    // =========================================================
    reg clk;
    reg reset_n;
    reg tvalid;

    reg [PRECISION-1:0] x0, x1, x2;

    reg [PRECISION-1:0] A00, A01, A02;
    reg [PRECISION-1:0] A10, A11, A12;
    reg [PRECISION-1:0] A20, A21, A22;

    reg [PRECISION-1:0] sigma_in;

    // =========================================================
    // 3. Outputs from DUT
    // =========================================================
    wire valid;
    wire [PRECISION-1:0] pseudoRandomNumber1;
    wire [PRECISION-1:0] pseudoRandomNumber2;
    wire [PRECISION-1:0] pseudoRandomNumber3;

    // =========================================================
    // 4. Instantiate DUT
    // =========================================================
    PRNG #(
        .PRECISION(PRECISION)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .tvalid(tvalid),

        .x0(x0),
        .x1(x1),
        .x2(x2),

        .A00(A00), .A01(A01), .A02(A02),
        .A10(A10), .A11(A11), .A12(A12),
        .A20(A20), .A21(A21), .A22(A22),

        .sigma_in(sigma_in),

        .valid(valid),
        .pseudoRandomNumber1(pseudoRandomNumber1),
        .pseudoRandomNumber2(pseudoRandomNumber2),
        .pseudoRandomNumber3(pseudoRandomNumber3)
    );

    // =========================================================
    // 5. Clock Generation (100 MHz)
    // =========================================================
    always #1 clk = ~clk;

    // =========================================================
    // 6. Mantissa Extraction (IEEE-754 float32)
    // =========================================================
    wire [22:0] m1 = pseudoRandomNumber1[22:0];
    wire [22:0] m2 = pseudoRandomNumber2[22:0];
    wire [22:0] m3 = pseudoRandomNumber3[22:0];

    wire [68:0] prng_bits = {m1, m2, m3};

    // =========================================================
    // 7. File Dump for NIST
    // =========================================================
    integer fd;
    integer bit_count;

    initial begin
        fd = $fopen("/home/vinhphat-josh/Repos/Chaos_Based_Symmetric_Image_Encryption/NIST_test/NIST-Statistical-Test-Suite/sts/prng_bits.txt", "w");
        if (fd == 0) begin
            $display("ERROR: Cannot open output file!");
            $stop;
        end
        bit_count = 0;
    end

    always @(posedge clk) begin
        if (valid) begin
            $fwrite(fd, "%b", prng_bits);
            bit_count = bit_count + 69;

            if (bit_count >= 1_000_000) begin
                $display("Collected %0d bits. Closing file.", bit_count);
                $fclose(fd);
                $stop;
            end
        end
    end

    // =========================================================
    // 8. Test Sequence
    // =========================================================
    initial begin
        // --- Init ---
        clk      = 0;
        reset_n  = 0;
        tvalid   = 0;

        x0 = 0; x1 = 0; x2 = 0;
        A00 = 0; A01 = 0; A02 = 0;
        A10 = 0; A11 = 0; A12 = 0;
        A20 = 0; A21 = 0; A22 = 0;
        sigma_in = 0;

        // --- Reset ---
        $display("[%0t] Resetting...", $time);
        #100;
        reset_n = 1;
        #20;

        // =====================================================
        // Seed + Parameters (IEEE-754)
        // =====================================================
        x0 = 32'h3dcccccd;   // 0.1
        x1 = 32'h3c23d70a;   // 0.01
        x2 = 0;   // 0.0

        sigma_in = 32'h4019060E; // ~2.39

        A00 = 32'h00000000; A01 = 32'h3F000000; A02 = 32'h3D4CCCCD;
        A10 = 32'h3EAAAAAB; A11 = 32'h00000000; A12 = 32'h3EAAAAAB;
        A20 = 32'h3D4CCCCD; A21 = 32'h3F000000; A22 = 32'h00000000;

        $display("[%0t] Loading seed & parameters", $time);

        // --- Pulse tvalid ---
        @(posedge clk);
        tvalid = 1;
        @(posedge clk);
        tvalid = 0;

        // --- Let it run ---
        $display("[%0t] PRNG running...", $time);
    end

    // =========================================================
    // 9. Debug Monitor (optional)
    // =========================================================
    always @(posedge clk) begin
        if (valid) begin
            $display("[%0t] VALID: R1=%h R2=%h R3=%h",
                     $time,
                     pseudoRandomNumber1,
                     pseudoRandomNumber2,
                     pseudoRandomNumber3);
        end
    end

endmodule

