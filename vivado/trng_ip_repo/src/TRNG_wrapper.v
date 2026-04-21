`timescale 1ns / 1ps

module TRNG_Wrapper (
    input  wire aclk,          
    input  wire aresetn,       
    input  wire enable,         
    
    // Giao tiếp AXI-Stream Master
    output reg  [31:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    output reg         m_axis_tlast,   
    input  wire        m_axis_tready 
);

wire trng_en = enable; 
wire rand_bit;
wire clr = ~aresetn; 

TRNG_Module trng_inst (
    .en(trng_en),
    .clk(aclk),
    .clr(clr),
    .rand_num(rand_bit)
);
reg [4:0] bit_counter; 
reg [31:0] shift_reg;  
reg [7:0] word_counter; 

// Định nghĩa 3 trạng thái của máy (FSM)
localparam IDLE     = 2'd0; // Chờ bật
localparam SHIFTING = 2'd1; // Đang dịch 32 bit ngẫu nhiên
localparam SENDING  = 2'd2; // Đang giữ data, chờ DMA nhận

reg [1:0] state;

always @(posedge aclk or negedge aresetn) begin
    if (!aresetn) begin
        bit_counter   <= 5'd0;
        shift_reg     <= 32'd0;
        m_axis_tdata  <= 32'd0;
        m_axis_tvalid <= 1'b0;
        m_axis_tlast  <= 1'b0;
        word_counter  <= 8'd0;
        state         <= IDLE;
    end else begin
        case (state)
            IDLE: begin
                if (enable) state <= SHIFTING;
            end

            SHIFTING: begin
                if (enable) begin
                    // Dịch bit ngẫu nhiên vào thanh ghi
                    shift_reg <= {shift_reg[30:0], rand_bit};
                    
                    // Nếu đã đủ 32 bit -> Đẩy ra ngoài
                    if (bit_counter == 5'd31) begin
                        m_axis_tdata  <= {shift_reg[30:0], rand_bit};
                        m_axis_tvalid <= 1'b1;
                        
                        // Kiểm tra nếu là Word thứ 256 thì bật TLAST
                        if (word_counter == 8'd255) begin
                            m_axis_tlast <= 1'b1;
                        end else begin
                            m_axis_tlast <= 1'b0;
                        end
                        
                        bit_counter <= 5'd0; // Reset bộ đếm bit
                        state <= SENDING;    // Chuyển sang trạng thái chờ DMA
                    end else begin
                        bit_counter <= bit_counter + 1'b1;
                    end
                end else begin
                    state <= IDLE;
                end
            end

            SENDING: begin
                // CHỈ THỰC SỰ KẾT THÚC KHI DMA ĐÃ SẴN SÀNG (tready == 1)
                if (m_axis_tvalid && m_axis_tready) begin
                    m_axis_tvalid <= 1'b0;
                    m_axis_tlast  <= 1'b0;
                    
                    // Cập nhật bộ đếm gói
                    if (word_counter == 8'd255) begin
                        word_counter <= 8'd0;
                    end else begin
                        word_counter <= word_counter + 1'b1;
                    end
                    
                    // Quay lại dịch word tiếp theo
                    if (enable) begin
                        state <= SHIFTING;
                    end else begin
                        state <= IDLE;
                    end
                end
            end
        endcase
    end
end
endmodule