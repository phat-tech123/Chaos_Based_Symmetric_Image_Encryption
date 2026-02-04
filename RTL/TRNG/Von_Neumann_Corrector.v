/*
module Von_Neumann_Corrector(
	input clk,
	input reset_n,
	input enable,
	input raw_bit,
	output reg valid,
	output reg processed_bit
);

localparam S0 = 2'b00;
localparam S1 = 2'b01; 
localparam S2 = 2'b10;

reg [1:0] curr_state, next_state;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		curr_state <= S0;
	end else if(enable) begin
		curr_state <= next_state;	
	end
end

always@(*) begin
	next_state <= curr_state;
	valid <= 0;
	processed_bit <= 0;
	case(curr_state)
		S0: begin
			next_state <= raw_bit ? S1 : S2;
			valid <= 0;
		end

		S1: begin
			next_state <= S0;
			if(!raw_bit) begin
				valid <= 1;
				processed_bit <= 1;
			end 
		end

		S2: begin
			next_state <= S0;
			if(raw_bit) begin
				valid <= 1;
				processed_bit <= 0;
			end
		end

		default: begin
			valid <= 0;
			processed_bit <=0;
			next_state <= curr_state;
		end

	endcase
end

endmodule
*/
module Von_Neumann_Corrector(
    input  wire clk,
    input  wire reset_n,
    input  wire enable,        // Tín hiệu báo raw_bit hợp lệ
    input  wire raw_bit,
    output reg  valid,         // Báo hiệu đã thu được bit ngẫu nhiên chuẩn
    output reg  processed_bit  // Bit ngẫu nhiên đã khử bias
);

    // Định nghĩa trạng thái
    localparam S_WAIT_FIRST = 1'b0;
    localparam S_WAIT_SECOND = 1'b1;

    reg current_state, next_state;
    reg first_bit_captured; // Lưu giá trị bit đầu tiên

    // --- 1. Sequential Logic (Flip-Flops) ---
    // Cập nhật trạng thái và lưu bit đầu tiên
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            current_state <= S_WAIT_FIRST;
            first_bit_captured <= 1'b0;
        end else if (enable) begin
            current_state <= next_state;
            // Nếu đang ở trạng thái đợi bit đầu, lưu raw_bit lại
            if (current_state == S_WAIT_FIRST) begin
                first_bit_captured <= raw_bit;
            end
        end
    end

    // --- 2. Combinational Logic (Next State & Output) ---
    always @(*) begin
        // Giá trị mặc định để tránh Latch
        next_state    = current_state;
        valid         = 1'b0;
        processed_bit = 1'b0;

        case (current_state)
            S_WAIT_FIRST: begin
                // Luôn chuyển sang trạng thái đợi bit thứ 2
                // (Việc lưu bit diễn ra ở block Sequential bên trên)
                next_state = S_WAIT_SECOND;
            end

            S_WAIT_SECOND: begin
                next_state = S_WAIT_FIRST; // Luôn quay về đợi cặp mới
                
                // So sánh bit cũ (first_bit_captured) và bit mới (raw_bit)
                if (first_bit_captured != raw_bit) begin
                    // Nếu 2 bit khác nhau -> Valid
                    valid = 1'b1;
                    
                    // Von Neumann logic:
                    // Cặp "10" -> Output 1 (Lấy bit đầu)
                    // Cặp "01" -> Output 0 (Lấy bit đầu)
                    // => processed_bit chính là first_bit_captured
                    processed_bit = first_bit_captured; 
                end
                // Nếu giống nhau (00 hoặc 11) -> valid vẫn là 0 -> Bỏ qua
            end
        endcase
    end

endmodule
