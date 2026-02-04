module fifo_8bit #(
    parameter DEPTH = 64,
    parameter DATA_WIDTH = 8
)(
    input  wire clk,
    input  wire reset_n,
    input  wire wr_en,          // Tín hiệu cho phép Ghi
    input  wire rd_en,          // Tín hiệu cho phép Đọc
    input  wire [DATA_WIDTH-1:0] data_in,
    output reg  full,
    output reg  empty,
    output reg  [DATA_WIDTH-1:0] data_out
);

    // Bộ nhớ RAM
    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    // Con trỏ ghi và đọc
    // Sử dụng $clog2 để tự động tính số bit cần thiết cho DEPTH
    reg [$clog2(DEPTH)-1:0] wr_ptr;
    reg [$clog2(DEPTH)-1:0] rd_ptr;
    
    // Bộ đếm số lượng phần tử đang có trong FIFO
    reg [$clog2(DEPTH):0] count; 

    // --- Logic ghi (Write) ---
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            wr_ptr <= 0;
        end else if (wr_en && !full) begin
            mem[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1; // Tự động tràn về 0 khi vượt quá 63
        end
    end

    // --- Logic đọc (Read) ---
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            rd_ptr <= 0;
            data_out <= 0;
        end else if (rd_en && !empty) begin
            data_out <= mem[rd_ptr];
            rd_ptr <= rd_ptr + 1; // Tự động tràn về 0 khi vượt quá 63
        end
    end

    // --- Logic tính toán số lượng phần tử (Counter) ---
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            count <= 0;
        end else begin
            case ({wr_en && !full, rd_en && !empty})
                2'b10: count <= count + 1; // Chỉ Ghi -> Tăng đếm
                2'b01: count <= count - 1; // Chỉ Đọc -> Giảm đếm
                // 2'b11: Vừa đọc vừa ghi -> count giữ nguyên
                // 2'b00: Không làm gì -> count giữ nguyên
                default: count <= count;
            endcase
        end
    end

    // --- Cập nhật cờ Full/Empty ---
    // Nên dùng logic tổ hợp (combinational) hoặc gán trong block always riêng
    always @(*) begin
        full  = (count == DEPTH);
        empty = (count == 0);
    end

endmodule



//module fifo_8bit #(
//    parameter DEPTH = 64
//)(
//    input  clk,
//    input  reset_n,
//    input  enable,
//    input  [7:0] data_in,
//    output reg full,
//    output reg empty,
//    output [7:0] data_out
//);

//reg [7:0] mem [0:DEPTH-1];
//reg [5:0] wr_ptr;

//always @(posedge clk or negedge reset_n) begin
//    if(!reset_n) begin
//        wr_ptr <= 0;
//        full <= 0;
//        empty <= 0;
//    end else if(enable && !full) begin
//        mem[wr_ptr] <= data_in;
//        wr_ptr <= wr_ptr + 1;
//    end
//end

//always@(posedge clk) begin
//    if(wr_ptr == DEPTH-1) begin
//        full <= 1;
//    end else begin
//        full <= 0;
//    end
    
//    if(wr_ptr == 0) begin
//        empty <= 1;
//    end else begin
//        empty <= 0;
//    end
//end



//assign data_out = mem[wr_ptr-1];

//endmodule

