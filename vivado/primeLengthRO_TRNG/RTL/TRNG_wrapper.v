`timescale 1ns / 1ps

module TRNG_Wrapper (
    input  wire aclk,            // Xung nhịp hệ thống (AXI Clock)
    input  wire aresetn,         // Reset tích cực mức thấp (AXI Reset)
    input  wire enable,          // Tín hiệu bắt đầu chạy từ phần mềm
    
    // Giao tiếp AXI-Stream Master
    output reg  [31:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    input  wire        m_axis_tready // Báo hiệu DMA/FIFO đã sẵn sàng nhận data
);

wire trng_en = enable; 
wire rand_bit;
wire clr = ~aresetn; 

// Khởi tạo Lõi TRNG Prime-length
TRNG_Module trng_inst (
    .en(trng_en),
    .clk(aclk),
    .clr(clr),
    .rand_num(rand_bit)
);

reg [4:0] bit_counter; 
reg [31:0] shift_reg;  

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        bit_counter   <= 5'd0;
        shift_reg     <= 32'd0;
        m_axis_tdata  <= 32'd0;
        m_axis_tvalid <= 1'b0;
    end else if (enable) begin
        // Dịch bit liên tục
        shift_reg <= {shift_reg[30:0], rand_bit};
        
        // Khi gom đủ 32 bit VÀ khối nhận (DMA/FIFO) đang rảnh (tready = 1)
        if (bit_counter == 5'd31) begin
            m_axis_tdata  <= {shift_reg[30:0], rand_bit};
            m_axis_tvalid <= 1'b1;
            
            // Chỉ reset bộ đếm nếu data đã được đẩy đi thành công
            if (m_axis_tready || !m_axis_tvalid) begin
                bit_counter <= 5'd0;
            end
        end else begin
            // Nếu gửi thành công (valid = 1 và ready = 1) thì tắt cờ valid
            if (m_axis_tvalid && m_axis_tready) begin
                m_axis_tvalid <= 1'b0;
            end
            bit_counter <= bit_counter + 1'b1;
        end
    end else begin
        m_axis_tvalid <= 1'b0;
        bit_counter   <= 5'd0;
    end
end

endmodule
