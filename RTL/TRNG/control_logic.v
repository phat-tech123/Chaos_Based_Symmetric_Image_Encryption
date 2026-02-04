module control_logic(
    input  wire clk,
    input  wire reset_n,

    // Status inputs
    input  wire raw_bit,
    input  wire pp_done,
    input  wire pp_valid,
    input  wire fifo_full,
    input  wire fifo_empty, // Vẫn giữ nếu bạn định dùng cho debug sau này

    // Control outputs
    output reg [2:0] delay_cfg,
    output reg       enable_ro,
    output reg       enable_pp,
    output reg       enable_shift,
    output reg       enable_fifo,
    output reg       bit_select
);

    reg [2:0] bit_cnt;
    reg       write_pending; // CỜ QUAN TRỌNG: Đánh dấu dữ liệu đã sẵn sàng để ghi

    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            delay_cfg     <= 3'd0;
            enable_ro     <= 0;
            enable_pp     <= 0;
            enable_shift  <= 0;
            enable_fifo   <= 0;
            bit_select    <= 0;
            bit_cnt       <= 3'd0;
            write_pending <= 0;
        end else begin
            // Reset mặc định (Pulse generation)
            enable_fifo   <= 0;
            enable_shift  <= 0;

            // --- Logic điều khiển hệ thống ---
            if(!fifo_full) begin
                enable_ro <= 1;
                enable_pp <= 1;
                // Chaos feedback: Rất tốt để tăng entropy
                delay_cfg <= {delay_cfg[1:0], raw_bit};
            end else begin
                enable_ro <= 0;
                enable_pp <= 0;
            end

            // --- Logic Select ---
            bit_select <= pp_valid; // Cập nhật theo tín hiệu valid

            // --- LOGIC THU THẬP DỮ LIỆU (ĐÃ SỬA LỖI) ---
            if (!fifo_full) begin
                // Ưu tiên 1: Nếu đang có cờ chờ ghi -> Thực hiện ghi FIFO
                if (write_pending) begin
                    enable_fifo   <= 1; // Kích hoạt ghi
                    write_pending <= 0; // Xóa cờ chờ
                    bit_cnt       <= 0; // Reset bộ đếm
                end 
                // Ưu tiên 2: Nếu có bit mới -> Dịch vào Shift Register
                else if (pp_done) begin
                    enable_shift <= 1; // Luôn cho phép dịch
                    
                    if (bit_cnt == 3'd7) begin
                        // Nếu đây là bit thứ 8:
                        // Đừng ghi ngay! Hãy bật cờ chờ.
                        // Việc ghi sẽ diễn ra ở chu kỳ clock TIẾP THEO.
                        write_pending <= 1; 
                    end else begin
                        bit_cnt <= bit_cnt + 1;
                    end
                end
            end
        end
    end

endmodule


//module control_logic(
//	input  clk,
//	input  reset_n,

//	// Status inputs
//	input raw_bit,
//	input pp_done,
//	input pp_valid,
//	input fifo_full,
//	input fifo_empty,

//	// Control outputs
//	output reg [2:0] delay_cfg,     // delay control for RO
//	output reg       enable_ro,      // enable ring oscillators
//	output reg       enable_pp,      // enable post-processing
//	output reg       enable_shift,   // enable shift register
//	output reg       enable_fifo,    // FIFO write enable
//	output reg       bit_select      // 0: raw, 1: processed
//);

//reg [2:0] bit_cnt;
//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		delay_cfg 	<= 0;
//		enable_ro 	<= 0;
//		enable_pp 	<= 0;
//		enable_shift 	<= 0;
//		enable_fifo 	<= 0;
//		bit_select 	<= 0;
//		bit_cnt 	<= 3'd0;
//	end else begin
//		enable_fifo 	<= 0;
//		enable_shift 	<= 0;

//		if(!fifo_full) begin
//			enable_ro <= 1;
//			enable_pp <= 1;
//		end else begin
//			enable_ro <= 0;
//			enable_pp <= 0;
//		end

//		if(enable_ro) begin
//			delay_cfg <= {delay_cfg[1:0], raw_bit};
//		end

//		if(pp_done && !fifo_full) begin
//			enable_shift <= 1;
//			bit_cnt <= bit_cnt + 1;
//		end

//		if (bit_cnt == 3'd7 && pp_done && !fifo_full) begin
//			enable_fifo <= 1;
//			bit_cnt <= 0;
//		end

//		if(pp_valid) begin
//			bit_select <= 1;
//		end else begin
//			bit_select <= 0;
//		end
//	end
//end

//endmodule
