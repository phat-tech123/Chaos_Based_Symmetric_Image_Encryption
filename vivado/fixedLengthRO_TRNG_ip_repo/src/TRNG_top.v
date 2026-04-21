`timescale 1ns / 1ps

module TRNG_top (
    input  wire aclk,          
    input  wire aresetn,       
    input  wire enable,         
    
    // Giao tiếp AXI-Stream Master
    output reg  [31:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    output reg         m_axis_tlast,
    input  wire        m_axis_tready 
);

    wire random_bit;

    TRNG trng_core_inst (
        .clk(aclk),
        .reset_n(aresetn),
        .trng_enable(enable),
        .random_out(random_bit)
    );

    reg [31:0] shift_reg;
    reg [4:0]  bit_cnt;   //  0 -> 31 
    reg [14:0] word_cnt;  //  0 -> 31249 (Gom đủ 1 triệu bit)

    always @(posedge aclk) begin
        // GỘP CHUNG RESET VÀ ENABLE:
        // Nếu tắt nguồn HOẶC Python ra lệnh tắt (enable=0) -> Xóa sạch mọi thứ
        if (!aresetn || !enable) begin
            shift_reg     <= 32'd0;
            bit_cnt       <= 5'd0;
            word_cnt      <= 15'd0; // Sửa lại thành 15 bit
            m_axis_tdata  <= 32'd0;
            m_axis_tvalid <= 1'b0;
            m_axis_tlast  <= 1'b0;
        end else begin
            
            // 1. Handshake
            if (m_axis_tvalid && m_axis_tready) begin
                m_axis_tvalid <= 1'b0;
                m_axis_tlast  <= 1'b0; 
                
                // Đếm tới 31249 (tương đương 31250 words)
                if (word_cnt == 15'd31249)
                    word_cnt <= 15'd0;
                else
                    word_cnt <= word_cnt + 1'b1;
            end

            // 2. Gom dữ liệu (Chỉ gom khi có lệnh enable và bus đang rảnh)
            if (!m_axis_tvalid || m_axis_tready) begin
                shift_reg <= {shift_reg[30:0], random_bit};
                bit_cnt   <= bit_cnt + 1'b1;

                if (bit_cnt == 5'd31) begin
                    m_axis_tdata  <= {shift_reg[30:0], random_bit};
                    m_axis_tvalid <= 1'b1;
                    // Bật TLAST ở word cuối cùng
                    m_axis_tlast  <= (word_cnt == 15'd31249);
                end
            end
            
        end
    end

endmodule