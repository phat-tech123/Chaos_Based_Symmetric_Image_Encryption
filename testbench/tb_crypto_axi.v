`timescale 1ns/1ps

module tb_crypto_axi;

    // ============================================================
    // 1. KHAI BÁO TÍN HIỆU AXI
    // ============================================================
    reg clk;
    reg reset_n;

    // --- Tín hiệu AXI-Lite ---
    reg [6:0]   s00_axi_awaddr;
    reg         s00_axi_awvalid;
    wire        s00_axi_awready;
    reg [31:0]  s00_axi_wdata;
    reg [3:0]   s00_axi_wstrb;
    reg         s00_axi_wvalid;
    wire        s00_axi_wready;
    wire [1:0]  s00_axi_bresp;
    wire        s00_axi_bvalid;
    reg         s00_axi_bready;
    
    // (Read AXI-Lite)
    reg [6:0]   s00_axi_araddr = 0;
    reg         s00_axi_arvalid = 0;
    wire        s00_axi_arready;
    wire [31:0] s00_axi_rdata;
    wire [1:0]  s00_axi_rresp;
    wire        s00_axi_rvalid;
    reg         s00_axi_rready = 0;

    // --- Tín hiệu AXI-Stream (Dữ liệu vào/ra) ---
    reg          s_axis_tvalid;
    wire         s_axis_tready;
    reg  [255:0] s_axis_tdata;
    reg          s_axis_tlast;

    wire         m_axis_tvalid;
    reg          m_axis_tready;
    wire [255:0] m_axis_tdata;
    wire         m_axis_tlast;

    // --- [MỚI] Tín hiệu AXI-Stream (Của mạch TRNG) ---
    reg          s_axis_trng_tvalid;
    wire         s_axis_trng_tready;
    reg  [95:0]  s_axis_trng_tdata; // 3 x 32-bit = 96 bit

    // ============================================================
    // 2. INSTANTIATION (GỌI IP ĐÃ ĐÓNG GÓI)
    // ============================================================
    crypto_engine_v1_0 dut (
        .s00_axi_aclk(clk),
        .s00_axi_aresetn(reset_n),
        
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awprot(3'b000),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_bresp(s00_axi_bresp),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_bready(s00_axi_bready),
        
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arprot(3'b000),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rresp(s00_axi_rresp),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_rready(s00_axi_rready),

        // Cổng TRNG Mới
        .s_axis_trng_tvalid(s_axis_trng_tvalid),
        .s_axis_trng_tready(s_axis_trng_tready),
        .s_axis_trng_tdata(s_axis_trng_tdata),

        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),

        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast)
    );

    // ============================================================
    // 3. CLOCK GENERATION (100 MHz)
    // ============================================================
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // ============================================================
    // 4. TASKS HỖ TRỢ GIAO TIẾP AXI
    // ============================================================
    task axi_lite_write;
        input [6:0] addr;
        input [31:0] data;
        begin
            @(posedge clk);
            s00_axi_awaddr  <= addr;
            s00_axi_awvalid <= 1;
            s00_axi_wdata   <= data;
            s00_axi_wvalid  <= 1;
            s00_axi_wstrb   <= 4'b1111;
            s00_axi_bready  <= 1;
            
            while (!(s00_axi_awvalid && s00_axi_awready && s00_axi_wvalid && s00_axi_wready)) @(posedge clk);
            s00_axi_awvalid <= 0;
            s00_axi_wvalid  <= 0;
            
            while (!s00_axi_bvalid) @(posedge clk);
            s00_axi_bready  <= 0;
        end
    endtask

    task axi_stream_send;
        input [255:0] data;
        input         is_last;
        begin
            s_axis_tvalid <= 1;
            s_axis_tdata  <= data;
            s_axis_tlast  <= is_last;
            
            @(posedge clk);
            while (!s_axis_tready) @(posedge clk); 
            
            s_axis_tvalid <= 0;
            s_axis_tlast  <= 0;
        end
    endtask

    // ============================================================
    // 5. TRNG EMULATOR (ĐÃ GIẢI ĐỘC FLOAT)
    // ============================================================
    initial begin
        s_axis_trng_tvalid <= 0;
        s_axis_trng_tdata  <= 0;
        
        wait(reset_n); 
        #200;
        
	    s_axis_trng_tdata <= { 
		{1'b0, 8'h3F, $random}, 
		{1'b0, 8'h3F, $random}, 
		{1'b0, 8'h3F, $random} 
	    }; 
	    
	    s_axis_trng_tvalid <= 1; 
	    
	    @(posedge clk);
	    while (!s_axis_trng_tready) @(posedge clk);
	    
	    s_axis_trng_tvalid <= 0;
        forever begin
            // [FIXED] Ghép bit tạo số Float: [31] Sign=0, [30:23] Exp=126 (8'h3F), [22:0] Mantissa = Random
            s_axis_trng_tdata <= { 
                {1'b0, 8'h3F, $random}, 
                {1'b0, 8'h3F, $random}, 
                {1'b0, 8'h3F, $random} 
            }; 
            
            s_axis_trng_tvalid <= 0; 
            
            @(posedge clk);
            while (!s_axis_trng_tready) @(posedge clk);
            
            s_axis_trng_tvalid <= 0;
            repeat(4000) @(posedge clk); 
        end
    end

    // ============================================================
    // 6. TEST PROCEDURE TỔNG HỢP (MAIN CONTROL)
    // ============================================================
    integer i;
    reg [255:0] plaintext_r [0:9];
    reg [255:0] ciphertext_r [0:9];
    reg [255:0] plaintext_out [0:9];
    
    reg [1:0] test_phase = 0; 

    initial begin
        for (i = 0; i < 10; i = i + 1) begin
            plaintext_r[i] = { $random, $random, $random, $random, $random, $random, $random, $random };
        end

        reset_n = 0;
        s00_axi_awvalid = 0; s00_axi_wvalid = 0; s00_axi_bready = 0;
        s_axis_tvalid = 0; s_axis_tdata = 0; s_axis_tlast = 0;
        m_axis_tready = 1; 

        #100; reset_n = 1; #50;

        // --------------------------------------------------------
        // PHASE 1: FULL INITIALIZATION
        // --------------------------------------------------------
        $display("========================================");
        $display("[%0t] PHASE 1: FULL INITIALIZATION", $time);
        
        axi_lite_write(7'h10, 32'h4019060e); // Sigma
        axi_lite_write(7'h14, 32'h00000000); axi_lite_write(7'h18, 32'h3f000000); axi_lite_write(7'h1C, 32'h3d4ccccd); // A00-A02
        axi_lite_write(7'h20, 32'h3eaaaaab); axi_lite_write(7'h24, 32'h00000000); axi_lite_write(7'h28, 32'h3eaaaaab); // A10-A12
        axi_lite_write(7'h2C, 32'h3d4ccccd); axi_lite_write(7'h30, 32'h3f000000); axi_lite_write(7'h34, 32'h00000000); // A20-A22

        axi_lite_write(7'h38, 32'h0C0D0E0F); axi_lite_write(7'h3C, 32'h08090A0B); // Key
        axi_lite_write(7'h40, 32'h04050607); axi_lite_write(7'h44, 32'h00010203);

        // Kích hoạt Init 
        axi_lite_write(7'h00, 32'h00000003); axi_lite_write(7'h00, 32'h00000002);

        #5000; 

        // --------------------------------------------------------
        // PHASE 2: ENCRYPT 
        // --------------------------------------------------------
        $display("========================================");
        $display("[%0t] PHASE 2: ENCRYPT (10 BLOCKS)", $time);
        test_phase = 0; 
        
        axi_lite_write(7'h5C, 32'hAABBCCDD); axi_lite_write(7'h58, 32'hEEFF0011); 
        axi_lite_write(7'h54, 32'h22334455); axi_lite_write(7'h50, 32'h66778899); 
        axi_lite_write(7'h4C, 32'hAABBCCDD); axi_lite_write(7'h48, 32'hEEFF0011); 
        axi_lite_write(7'h64, 32'h22334455); axi_lite_write(7'h60, 32'h66778899); 
        
        axi_lite_write(7'h00, 32'h00000007); axi_lite_write(7'h00, 32'h00000006);
        wait(s_axis_tready);
        for (i = 0; i < 10; i = i + 1) begin
            axi_stream_send(plaintext_r[i], (i == 9));
        end

        wait(m_axis_tlast); 
        #200;

        // --------------------------------------------------------
        // PHASE 3: DECRYPT
        // --------------------------------------------------------
        $display("========================================");
        $display("[%0t] PHASE 3: DECRYPT (10 BLOCKS)", $time);
        
        test_phase = 1; 

        // Reset bộ đếm IV
        axi_lite_write(7'h00, 32'h00000007); 
        axi_lite_write(7'h00, 32'h00000006);
        
        wait(s_axis_tready);

        for (i = 0; i < 10; i = i + 1) begin
            axi_stream_send(ciphertext_r[i], (i == 9));
        end

        wait(m_axis_tlast);
        #200;

        // --------------------------------------------------------
        // PHASE 4: RE-KEY & ENCRYPT VỚI KHÓA MỚI
        // --------------------------------------------------------
        $display("========================================");
        $display("[%0t] PHASE 4: RE-KEY & ENCRYPT VỚI KHÓA MỚI", $time);
        test_phase = 2; // Ghi đè ciphertext_r

        // Nạp khóa mới
        axi_lite_write(7'h38, 32'h2b7e1516); axi_lite_write(7'h3C, 32'h28aed2a6); 
        axi_lite_write(7'h40, 32'habf71588); axi_lite_write(7'h44, 32'h09cf4f3c);

        // Kích hoạt sinh khóa
        axi_lite_write(7'h00, 32'h00000005); axi_lite_write(7'h00, 32'h00000004);
        #1000; 
        
        // Kích hoạt mã hóa
        axi_lite_write(7'h00, 32'h00000007); axi_lite_write(7'h00, 32'h00000006);

        wait(s_axis_tready);

        for (i = 0; i < 10; i = i + 1) begin
            axi_stream_send(plaintext_r[i], (i == 9));
        end
        
        wait(m_axis_tlast);
        #200;

        // --------------------------------------------------------
        // PHASE 5: DECRYPT VỚI KHÓA MỚI
        // --------------------------------------------------------
        $display("========================================");
        $display("[%0t] PHASE 5: DECRYPT VỚI KHÓA MỚI", $time);
        
        test_phase = 3; 

        // Reset bộ đếm IV
        axi_lite_write(7'h00, 32'h00000007); axi_lite_write(7'h00, 32'h00000006);
        
        wait(s_axis_tready); 
        
        for (i = 0; i < 10; i = i + 1) begin
            axi_stream_send(ciphertext_r[i], (i == 9));
        end

        wait(m_axis_tlast);
        #500;

        $display("========================================");
        $display("[%0t] HOAN TAT TOAN BO KICH BAN MO PHONG!", $time);
        $finish;
    end

    // ============================================================
    // 7. OUTPUT MONITOR 
    // ============================================================
    integer out_count = 0;
    always @(posedge clk) begin
        if (m_axis_tvalid && m_axis_tready && reset_n) begin
            if (test_phase % 2 == 0) begin
                ciphertext_r[out_count] = m_axis_tdata; 
                $display("[%0t] [Phase %0d] RX Ciphertext %0d: %h", $time, test_phase, out_count, m_axis_tdata);
            end else begin
                plaintext_out[out_count] = m_axis_tdata; 
                $display("[%0t] [Phase %0d] RX Decrypted Plaintext %0d: %h", $time, test_phase, out_count, m_axis_tdata);
            end
            
            out_count = out_count + 1;
            if (m_axis_tlast) begin
                $display("[%0t] ---> DA NHAN DUOC GOI TLAST!", $time);
                out_count = 0; 
            end
        end
    end
endmodule
