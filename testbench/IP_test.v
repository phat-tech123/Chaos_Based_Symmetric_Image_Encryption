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
    
    // (Read AXI-Lite - Bỏ qua do chỉ ghi cấu hình)
    reg [6:0]   s00_axi_araddr = 0;
    reg         s00_axi_arvalid = 0;
    wire        s00_axi_arready;
    wire [31:0] s00_axi_rdata;
    wire [1:0]  s00_axi_rresp;
    wire        s00_axi_rvalid;
    reg         s00_axi_rready = 0;

    // --- Tín hiệu AXI-Stream ---
    reg          s_axis_tvalid;
    wire         s_axis_tready;
    reg  [255:0] s_axis_tdata;
    reg          s_axis_tlast;

    wire         m_axis_tvalid;
    reg          m_axis_tready;
    wire [255:0] m_axis_tdata;
    wire         m_axis_tlast;

    // ============================================================
    // 2. INSTANTIATION (GỌI IP ĐÃ ĐÓNG GÓI)
    // ============================================================
    chaos_cryptor_0 dut (
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
    
    // Task Ghi AXI-Lite (Như C/Python)
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

    // Task truyền 1 cục dữ liệu AXI-Stream
    task axi_stream_send;
        input [255:0] data;
        input         is_last;
        begin
            s_axis_tvalid <= 1;
            s_axis_tdata  <= data;
            s_axis_tlast  <= is_last;
            
            @(posedge clk);
            while (!s_axis_tready) @(posedge clk); // Chờ IP nuốt dữ liệu
            
            s_axis_tvalid <= 0;
            s_axis_tlast  <= 0;
        end
    endtask

    // ============================================================
    // 5. TEST PROCEDURE TỔNG HỢP
    // ============================================================
    integer i;
    reg [255:0] plaintext_r [0:9];
    reg [255:0] ciphertext_r [0:9];
    reg [255:0] plaintext_out [0:9];
    
    reg [1:0] test_phase = 0; // 0: Encrypt 1, 1: Decrypt 1, 2: Encrypt 2 (Re-key), 3: Backpressure

    initial begin
        // Khởi tạo mảng dữ liệu test ngẫu nhiên
        for (i = 0; i < 10; i = i + 1) begin
            plaintext_r[i] = { $random, $random, $random, $random, $random, $random, $random, $random };
        end

        // KHỞI TẠO TÍN HIỆU
        reset_n = 0;
        s00_axi_awvalid = 0; s00_axi_wvalid = 0; s00_axi_bready = 0;
        s_axis_tvalid = 0; s_axis_tdata = 0; s_axis_tlast = 0;
        m_axis_tready = 1; // DMA nhận luôn rảnh ở các phase đầu

        #100; reset_n = 1; #50;

        // --------------------------------------------------------
        // PHASE 0: FULL INITIALIZATION
        // --------------------------------------------------------
        $display("========================================");
        $display("[%0t] PHASE 1: FULL INITIALIZATION", $time);
        
        axi_lite_write(7'h10, 32'h4019060e); // Sigma
        axi_lite_write(7'h14, 32'h00000000); axi_lite_write(7'h18, 32'h3f000000); axi_lite_write(7'h1C, 32'h3d4ccccd); // A00-A02
        axi_lite_write(7'h20, 32'h3eaaaaab); axi_lite_write(7'h24, 32'h00000000); axi_lite_write(7'h28, 32'h3eaaaaab); // A10-A12
        axi_lite_write(7'h2C, 32'h3d4ccccd); axi_lite_write(7'h30, 32'h3f000000); axi_lite_write(7'h34, 32'h00000000); // A20-A22

        axi_lite_write(7'h38, 32'h0C0D0E0F); axi_lite_write(7'h3C, 32'h08090A0B); // Key
        axi_lite_write(7'h40, 32'h04050607); axi_lite_write(7'h44, 32'h00010203);

        // Kích hoạt Init (op_mode = 01, cmd_start = 1 => 0x03)
        axi_lite_write(7'h00, 32'h00000003); axi_lite_write(7'h00, 32'h00000002);

        #100;
        // Bơm TRNG
        axi_lite_write(7'h04, 32'h3dcccccd); axi_lite_write(7'h08, 32'h3c23d70a); axi_lite_write(7'h0C, 32'h00000000);
        axi_lite_write(7'h00, 32'h0000000A); // trng_valid = 1
        axi_lite_write(7'h00, 32'h00000002); // trng_valid = 0

        #5000; // Đợi sinh Sbox/Key

        // --------------------------------------------------------
        // PHASE 1: ENCRYPT (Mạch chạy mượt mà 10 khối) ///////////////////////////////////////////////////////////////////////////////////////////////
        // --------------------------------------------------------
        $display("========================================");
        $display("[%0t] PHASE 2: ENCRYPT (10 BLOCKS)", $time);
        test_phase = 0; 
        
        // Ghi IV giả lập (Tùy chọn, ghi vào slv_reg18 đến slv_reg25)
        axi_lite_write(7'h5C, 32'hAABBCCDD); // slv_reg23 (Bits 255:224)
        axi_lite_write(7'h58, 32'hEEFF0011); // slv_reg22 (Bits 223:192)
        axi_lite_write(7'h54, 32'h22334455); // slv_reg21 (Bits 191:160)
        axi_lite_write(7'h50, 32'h66778899); // slv_reg20 (Bits 159:128)
        axi_lite_write(7'h4C, 32'hAABBCCDD); // slv_reg19 (Bits 127:96)
        axi_lite_write(7'h48, 32'hEEFF0011); // slv_reg18 (Bits 95:64)
        axi_lite_write(7'h64, 32'h22334455); // slv_reg25 (Bits 63:32)
        axi_lite_write(7'h60, 32'h66778899); // slv_reg24 (Bits 31:0)
        
        
        // Kích hoạt Encrypt (op_mode = 11, cmd_start = 1 => 0x07)
        axi_lite_write(7'h00, 32'h00000007); axi_lite_write(7'h00, 32'h00000006);
        wait(s_axis_tready);
        for (i = 0; i < 10; i = i + 1) begin
            axi_stream_send(plaintext_r[i], (i == 9));
        end

        wait(m_axis_tlast); // Đợi DMA nhả hết kết quả
        #20;
    
        // --------------------------------------------------------
        // PHASE 2: DECRYPT (Mạch chạy mượt mà 10 khối)
        // --------------------------------------------------------
        $display("========================================");
        $display("[%0t] PHASE 2: DECRYPT (10 BLOCKS)", $time);
        
        // Đổi cờ test_phase = 1 để khối Monitor (RAM đầu ra) biết mà lưu vào mảng khác (plaintext_out)
        test_phase = 1; 

        // Kích hoạt lại IP: Vẫn giữ op_mode = 11 (Encrypt/Decrypt CTR), nháy cmd_start để reset bộ đếm IV
        axi_lite_write(7'h00, 32'h00000007); 
        axi_lite_write(7'h00, 32'h00000006);
        
        // Đợi IP sẵn sàng nhận dữ liệu
        wait(s_axis_tready);

        // Đọc dữ liệu từ "Memory" (mảng ciphertext_r) và bơm lại vào mạch
        for (i = 0; i < 10; i = i + 1) begin
            // Truyền bản mã vào mạch
            axi_stream_send(ciphertext_r[i], (i == 9));
        end

        #2000;
 
 
 
 
 
 
 
        // --------------------------------------------------------
        // PHASE 3: RE-KEY & ENCRYPT VỚI KHÓA MỚI
        // --------------------------------------------------------
        $display("========================================");
        $display("[%0t] PHASE 3: RE-KEY & ENCRYPT VỚI KHÓA MỚI", $time);
        test_phase = 2; // Báo cho Monitor lưu đè vào mảng ciphertext_r

        // Đổi khóa mới
        axi_lite_write(7'h38, 32'h2b7e1516); axi_lite_write(7'h3C, 32'h28aed2a6); 
        axi_lite_write(7'h40, 32'habf71588); axi_lite_write(7'h44, 32'h09cf4f3c);

        // 1. Kích hoạt Re-key (op_mode = 10, cmd_start = 1 => 0x05)
        axi_lite_write(7'h00, 32'h00000005); axi_lite_write(7'h00, 32'h00000004);
        
        // ---> [THÊM VÀO ĐÂY]: Đợi mạch sinh khóa xong rồi mới mở cửa nhận Data
        #1000; 
        
        // 2. Kích hoạt chế độ Encrypt (op_mode = 11, cmd_start = 1 => 0x07)
        axi_lite_write(7'h00, 32'h00000007); axi_lite_write(7'h00, 32'h00000006);
        // <------------------------------------------------------------------

        wait(s_axis_tready);

        for (i = 0; i < 10; i = i + 1) axi_stream_send(plaintext_r[i], (i == 9));
        
        
        // --------------------------------------------------------
        // PHASE 4: DECRYPT (VỚI KHÓA MỚI)
        // --------------------------------------------------------
        wait(m_axis_tlast); // Đợi Phase 3 nhả xong khối cuối cùng
        #100; // Nghỉ vài nhịp clock cho mạch ổn định
    
        $display("========================================");
        $display("[%0t] PHASE 4: DECRYPT VỚI KHÓA MỚI", $time);
        
        // ---> [THÊM VÀO ĐÂY]: Cập nhật test_phase để Monitor lưu vào plaintext_out
        test_phase = 3; 
        // <------------------------------------------------------------------

        // Reset lại bộ đếm IV để bắt đầu giải mã
        axi_lite_write(7'h00, 32'h00000007); axi_lite_write(7'h00, 32'h00000006);
        
        wait(s_axis_tready); // Nên có thêm lệnh wait này cho an toàn tuyệt đối
        
        // Bơm mảng ciphertext_r (vừa được cập nhật ở Phase 3) vào để giải mã
        for (i = 0; i < 10; i = i + 1) axi_stream_send(ciphertext_r[i], (i == 9));

        #2000;
        
        
        
        
        $display("========================================");
        $display("[%0t] HOAN TAT TOAN BO KICH BAN MO PHONG!", $time);
        $finish;
    end

    // ============================================================
    // 6. OUTPUT MONITOR 
    // ============================================================
    integer out_count = 0;
    always @(posedge clk) begin
        if (m_axis_tvalid && m_axis_tready && reset_n) begin
            
            // Nếu test_phase là số chẵn (0, 2, 4) -> Quá trình Mã hóa
            if (test_phase % 2 == 0) begin
                ciphertext_r[out_count] = m_axis_tdata; // GHI ĐÈ LÊN MẢNG CŨ
                $display("[%0t] [Phase %0d] RX Ciphertext %0d: %h", $time, test_phase, out_count, m_axis_tdata);
            end 
            // Nếu test_phase là số lẻ (1, 3, 5) -> Quá trình Giải mã
            else begin
                plaintext_out[out_count] = m_axis_tdata; // GHI ĐÈ LÊN MẢNG CŨ
                $display("[%0t] [Phase %0d] RX Decrypted Plaintext %0d: %h", $time, test_phase, out_count, m_axis_tdata);
            end
            
            out_count = out_count + 1;
            if (m_axis_tlast) begin
                $display("[%0t] ---> DA NHAN DUOC GOI TLAST!", $time);
                out_count = 0; // Reset con trỏ bộ nhớ
            end
        end
    end
endmodule