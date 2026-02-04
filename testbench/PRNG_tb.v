module PRNG_tb;

    // 1. Parameters
    parameter PRECISION = 32;

    // 2. Inputs to DUT
    reg clk;
    reg reset_n;
    reg tvalid;
    reg [PRECISION-1:0] x0, x1, x2;

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
        // Ví dụ: 
        // x0 = 0.5 (32'h3F000000)
        // x1 = 0.2 (32'h3E4CCCCD)
        // x2 = 0.8 (32'h3F4CCCCD)
        x0 = 32'h3F000000;
        x1 = 32'h3E4CCCCD; 
        x2 = 32'h3F4CCCCD;

        $display("[%0t] Loading Seeds...", $time);
        
        // --- Trigger tvalid ---
        @(posedge clk);
        tvalid = 1;
        @(posedge clk);
        tvalid = 0; // Pulse tvalid trong 1 chu kỳ

        // --- Wait for generation ---
        // Quan sát sóng đầu ra.
        // Vì đây là loop, ta chờ khoảng 1000ns để xem vài vòng lặp
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


//`timescale 1ns/1ps

//module PRNG_tb;


//reg clk;
//reg reset_n;
//reg tvalid;
//wire valid;
//wire [31:0] pseudoRandomNumber1, pseudoRandomNumber2, pseudoRandomNumber3;

//PRNG#(
//	.PRECISION(32)
//) uut(
//	.clk(clk), .reset_n(reset_n),
//	.tvalid(tvalid),
//	.valid(valid),
//	.pseudoRandomNumber1(pseudoRandomNumber1),
//	.pseudoRandomNumber2(pseudoRandomNumber2),
//	.pseudoRandomNumber3(pseudoRandomNumber3)
//);

//initial begin
//    	clk = 0;
//    	forever #1 clk = ~clk;
//end

//initial begin
//    clk = 0;
//    reset_n = 0;
//    tvalid = 0;

//    #25;
//    reset_n = 1;

//    // Phát xung tvalid đúng 1 chu kỳ clock
//    @(posedge clk);
//    tvalid = 1;
//    @(posedge clk);
//    tvalid = 0;

//    // Đợi pipeline chạy xong
//    #2000;
//    $finish;
//end



//endmodule
