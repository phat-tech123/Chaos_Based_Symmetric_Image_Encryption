
//`timescale 1ns/1ps

module tb_crypto_engine_core;
// ============================================================
    // 1. PARAMETERS
    // ============================================================
    parameter PRECISION      = 32;
    parameter SBOX_SIZE      = 256;
    parameter EXTRACT_WIDTH  = 23;
    parameter MIX_WIDTH      = 8;
    parameter ROUND          = 5;
    parameter KEY_SIZE       = 128;
    parameter DATA_WIDTH     = 256;
    parameter F_LAT          = 6;
    parameter ENCR_LAT       = 5*6+1;

    // ============================================================
    // 2. SIGNALS
    // ============================================================
    reg clk;
    reg reset_n;

    // Command Interface
    reg [1:0] op_mode;
    reg cmd_start;

    // Config Inputs
    reg trng_valid;
    reg [PRECISION-1:0] trng_x0, trng_x1, trng_x2;
    
    reg [PRECISION-1:0] user_sigma;
    reg [PRECISION-1:0] user_A00, user_A01, user_A02;
    reg [PRECISION-1:0] user_A10, user_A11, user_A12;
    reg [PRECISION-1:0] user_A20, user_A21, user_A22;

    // Key Input
    reg [KEY_SIZE-1:0] user_key;

    // Data Interface
    reg data_valid;
    reg [DATA_WIDTH-1:0] plaintext;
    reg [DATA_WIDTH-1:0] iv;
    reg is_last_block;

    // Outputs
    wire is_last_cipher;
//    wire [2:0] status_state;
    wire is_ready;
    wire cipher_valid;
    wire [DATA_WIDTH-1:0] ciphertext;
    
    
    reg test_phase;
    reg dma_ready;
    // Variables for simulation
    integer i;
    
    // ============================================================
    // 3. DUT INSTANTIATION
    // ============================================================
    crypto_engine_core #(
        .PRECISION(PRECISION),
        .SBOX_SIZE(SBOX_SIZE),
        .EXTRACT_WIDTH(EXTRACT_WIDTH),
        .MIX_WIDTH(MIX_WIDTH),
        .ROUND(ROUND),
        .KEY_SIZE(KEY_SIZE),
        .DATA_WIDTH(DATA_WIDTH),
        .F_LAT(F_LAT),
        .ENCR_LAT(ENCR_LAT)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .op_mode(op_mode),
        .cmd_start(cmd_start),
//        .is_decrypt(test_phase),
        
        .trng_valid(trng_valid),
        .trng_x0(trng_x0), .trng_x1(trng_x1), .trng_x2(trng_x2),
        
        .user_sigma(user_sigma),
        .user_A00(user_A00), .user_A01(user_A01), .user_A02(user_A02),
        .user_A10(user_A10), .user_A11(user_A11), .user_A12(user_A12),
        .user_A20(user_A20), .user_A21(user_A21), .user_A22(user_A22),
        
        .iv(iv),
        .user_key(user_key),
//        .status_state(status_state),
        
        .s_axis_tvalid(data_valid),
        .s_axis_tready(is_ready),
        .s_axis_tdata(plaintext),
        .s_axis_tlast(is_last_block),
        
        .m_axis_tvalid(cipher_valid),
        .m_axis_tready(dma_ready),
        .m_axis_tdata(ciphertext),
        .m_axis_tlast(is_last_cipher)
    );

    // ============================================================
    // 4. CLOCK GENERATION (100 MHz)
    // ============================================================
    initial begin
        clk = 0;
        forever #2 clk = ~clk;
    end

    // ============================================================
    // 5. TEST PROCEDURE (FULL UNIT ONLY)
    // ============================================================
    reg [31:0] seed;
    integer i;
    integer j;
    reg [DATA_WIDTH-1:0] plaintext_r[0:9];
    reg [DATA_WIDTH-1:0] ciphertext_r[0:9];
    reg [DATA_WIDTH-1:0] plaintext_out[0:9];
    
    
    initial begin
        seed = 32'h1234_abcd;
        i = $random(seed);
        // Generate 10 random plaintexts (256-bit)
        for (i = 0; i < 10; i = i + 1) begin
            plaintext_r[i] <= {
                $random, $random, $random, $random,
                $random, $random, $random, $random
            };
        end
    end
        
    reg [3:0] counter;
    initial begin
        // --- Initialize Signals ---
        reset_n <= 0;
        op_mode <= 0;
        cmd_start <= 0;
        trng_valid <= 0;
        trng_x0<=0; trng_x1<=0; trng_x2<=0;
        data_valid <= 0;
        plaintext <= 0;
        is_last_block <= 0;
        iv <= 0;
        
        //
        dma_ready <= 1;
        
        // --- User Config (Chaotic Map Parameters) ---
        user_sigma = 32'h4019060e; 
        user_A00 = 32'h00000000; user_A01 = 32'h3f000000; user_A02 = 32'h3d4ccccd;
        user_A10 = 32'h3eaaaaab; user_A11 = 32'h00000000; user_A12 = 32'h3eaaaaab;
        user_A20 = 32'h3d4ccccd; user_A21 = 32'h3f000000; user_A22 = 32'h00000000;
        
        // Khóa ban đầu
        user_key = 128'h000102030405060708090A0B0C0D0E0F;



        // --- Step 1: System Reset ---
        #50;
        reset_n = 1;
        #20;

        // ========================================================
        // PHASE 1: INITIALIZATION (Mode 01 -- full-unit)
        // Quy trình: Idle -> Wait TRNG -> Gen Sbox -> Gen Key -> Idle
        // ========================================================
        test_phase = 0;
        counter = 0;
        op_mode = 2'b01; 
        cmd_start = 1;
        #10 cmd_start = 0;
        

        // 2. Chờ Controller yêu cầu TRNG (State 1: WAIT_TRNG)
//        wait(status_state == 3'd1); 
        #50; // Giả lập độ trễ của phần cứng TRNG

        // 3. Cung cấp TRNG Seeds
        trng_x0 <= 32'h3dcccccd; // 0.1
        trng_x1 <= 32'h3c23d70a; // 0.01
        trng_x2 <= 32'h00000000; // 0.0
        trng_valid <= 1;
        @(posedge clk);
        trng_valid = 0;

        // 4. Chờ quá trình sinh Sbox và Key hoàn tất
        wait(is_ready); 
        // 3. Bắt đầu gửi dữ liệu liên tục (Streaming)
        iv = 256'hAABBCCDDEEFF00112233445566778899AABBCCDDEEFF00112233445566778899;
        
        for (j = 0; j < 10; j = j + 1) begin
            @(posedge clk);
            data_valid <= 1;
            plaintext <= plaintext_r[j];
            is_last_block <= (j == 9) ? 1 : 0;
        end
        
        // 4. Dừng gửi
        @(posedge clk);
        is_last_block <= 0;
        data_valid <= 0;
        plaintext <= 0;
        // 5. Chờ pipeline xử lý xong hết dữ liệu
        
        
        wait(is_last_cipher);
        @(posedge clk);
        #100;
        
        test_phase = 1;
        counter = 0;
        op_mode = 2'b11; 
        cmd_start = 1;
        #2 cmd_start <= 0;
        wait(is_ready);
        for (i = 0; i < 10; i = i + 1) begin
            @(posedge clk);
            data_valid <= 1;
            plaintext <= ciphertext_r[i];
            is_last_block <= (i == 9) ? 1 : 0;
        end
        
        // 4. Dừng gửi
        @(posedge clk);
        is_last_block <= 0;
        data_valid <= 0;
        plaintext <= 0;
        
        
        
        wait(is_last_cipher);
        @(posedge clk);
        #100;
        
        test_phase = 0;
        op_mode = 2'b10;
        counter = 0;
        user_key = 128'h2b7e151628aed2a6abf7158809cf4f3c; 
        cmd_start = 1;        
        #2 cmd_start = 0;
        
        
        wait(is_ready);
        for (i = 0; i < 10; i = i + 1) begin
            @(posedge clk);
            data_valid <= 1;
            plaintext <= plaintext_out[i];
            is_last_block <= (i == 9) ? 1 : 0;
        end
        
        // 4. Dừng gửi
        @(posedge clk);
        is_last_block <= 0;
        data_valid <= 0;
        plaintext <= 0;
        
        
        wait(is_last_cipher);
        @(posedge clk);
        #100;
        
        test_phase = 1;
        op_mode = 2'b11;
        counter = 0;
        cmd_start = 1;
        wait(is_ready);
        @(posedge clk);
        cmd_start = 0;
        
        for (i = 0; i < 5; i = i + 1) begin
            @(posedge clk);
            data_valid <= 1;
            plaintext <= ciphertext_r[i];
            is_last_block <= (i == 9) ? 1 : 0;
        end
        
        // 4. Dừng gửi
        @(posedge clk);
        is_last_block <= 0;
        data_valid <= 0;
        plaintext <= 0;
        
        
        for (i = 5; i < 10; i = i + 1) begin
            @(posedge clk);
            data_valid <= 1;
            plaintext <= ciphertext_r[i];
            is_last_block <= (i == 9) ? 1 : 0;
        end
        
        // 4. Dừng gửi
        @(posedge clk);
        is_last_block <= 0;
        data_valid <= 0;
        plaintext <= 0;
        

        wait(is_last_cipher);
        @(posedge clk);
        #100;
        
        // ... (Code khởi tạo op_mode, cmd_start ở trên giữ nguyên) ...
        test_phase = 0;
        op_mode = 2'b11;
        counter = 0;
        cmd_start = 1;
        
        // Setup ban đầu: DMA bận ngay từ đầu!
        dma_ready = 0; 
        #4;
        
        cmd_start = 0; // Tắt lệnh start (Core đã nhận lệnh và chuyển sang WAIT_DATA)

        // CHẠY SONG SONG 2 LUỒNG
        fork
            // --- LUỒNG 1: Cố gắng gửi dữ liệu (Data Feeder) ---
            begin
                // Vòng lặp gửi 10 gói
                for (i = 0; i < 10; i = i + 1) begin
                    // 1. Chuẩn bị dữ liệu
                    if(is_ready) begin
                        @(posedge clk);
                        data_valid <= 1;
                        plaintext <= ciphertext_r[i];
                        is_last_block <= (i == 9) ? 1 : 0;
                    end
                end
                
                // Gửi xong
                @(posedge clk);
                
                is_last_block <= 0;
                data_valid <= 0;
                plaintext <= 0;
            end

            // --- LUỒNG 2: "Cai ngục" DMA (DMA Controller) ---
            begin
                $display("[%0t] DMA is BUSY initially...", $time);
                // Giữ DMA bận trong 50 chu kỳ clock (Core sẽ bị tắc đầu ra -> tắc đầu vào)
                repeat(50) @(posedge clk);
                
                // Sau đó mở khóa
                $display("[%0t] DMA is now READY!", $time);
                dma_ready = 1; 
                // Khi dma_ready=1 -> Controller thấy output thoáng -> set is_ready=1
                // -> Luồng 1 bên trên sẽ thoát khỏi vòng while và bắt đầu gửi được.
            end
        join
        
        
        #20;
               // ... (Code khởi tạo op_mode, cmd_start ở trên giữ nguyên) ...
        test_phase = 0;
        op_mode = 2'b11;
        counter = 0;
        cmd_start = 1;
        
        #4;
        
        cmd_start = 0; 

        // CHẠY SONG SONG 2 LUỒNG
        fork
            // --- LUỒNG 1: Cố gắng gửi dữ liệu (Data Feeder) ---
            begin
                for (i = 0; i < 10; i = i + 1) begin
                    // 1. Chuẩn bị dữ liệu
                    if(is_ready) begin
                        @(posedge clk);
                        data_valid <= 1;
                        plaintext <= ciphertext_r[i];
                        is_last_block <= (i == 9) ? 1 : 0;
                    end
                end
                
                // Gửi xong
                @(posedge clk);
                
                is_last_block <= 0;
                data_valid <= 0;
                plaintext <= 0;
            end

            // --- LUỒNG 2: "Cai ngục" DMA (DMA Controller) ---
            begin
                $display("[%0t] DMA is BUSY initially...", $time);
                dma_ready = 1;
                repeat(5) @(posedge clk);
                
                // Sau đó mở khóa
                $display("[%0t] DMA is now READY!", $time);
                dma_ready = 0; 
                // Khi dma_ready=1 -> Controller thấy output thoáng -> set is_ready=1
                // -> Luồng 1 bên trên sẽ thoát khỏi vòng while và bắt đầu gửi được.
            end
        join
        
        
        #2000; 
        $finish;
    end

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            counter <= 0;
            // Reset mảng ciphertext_r nếu cần (optional)
        end else begin
            // Logic này sẽ chạy TRONG MỌI CHU KỲ CLOCK
            if (cipher_valid) begin 
                if (test_phase == 0) begin
                    // Phase 1: Lưu kết quả vào mảng Ciphertext
                    ciphertext_r[counter] <= ciphertext;
                end else begin
                    // Phase 2: Lưu kết quả vào mảng Decrypted
                    plaintext_out[counter] <= ciphertext; 
                end
                counter <=  counter + 1;
            end
        end
    end
    
    
    
//    // ============================================================
//    // 6. OUTPUT MONITOR
//    // ============================================================
//    always @(posedge clk) begin
//        if (cipher_valid) begin
//            $display("[%0t] << RX Ciphertext:    %h", $time, ciphertext);
//        end
//    end

//    // Monitor State Changes (Hiển thị tên trạng thái nếu bạn đã setup Enum/Radix, hoặc số)
//    always @(status_state) begin
//        case (status_state)
//            3'd0: $display("[%0t] [STATE CHANGE] -> IDLE", $time);
//            3'd1: $display("[%0t] [STATE CHANGE] -> WAIT_TRNG", $time);
//            3'd2: $display("[%0t] [STATE CHANGE] -> GEN_SBOX", $time);
//            3'd3: $display("[%0t] [STATE CHANGE] -> GEN_KEY", $time);
//            3'd4: $display("[%0t] [STATE CHANGE] -> DO_CRYPTO", $time);
//            default: $display("[%0t] [STATE CHANGE] -> Unknown (%d)", $time, status_state);
//        endcase
//    end

endmodule