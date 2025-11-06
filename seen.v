module seen (
    input        clk,
    input        rst,
    input  [7:0] data_in,
    output reg   seen_flag
);

    // ====== Khai báo ======  
    reg [7:0] data_reg ;            // Thanh ghi lưu giá trị của data_in
    reg [7:0] index;               // Con trỏ ghi trong bộ nhớ
    reg [8:0] seen_mem [0:255];    // Bộ nhớ lưu các giá trị đã thấy (bit 8: valid flag)
    reg       unvalid;             // Cờ báo trùng dữ liệu
    integer   i;

    // ====== Lấy mẫu data_in ======
    always @(posedge clk or posedge rst) begin
        if (rst)
            data_reg <= 8'b0;
        else
            data_reg <= data_in;
    end

    // ====== Kiểm tra dữ liệu đã thấy chưa ======
    always @(*) begin
        if (rst) begin
            unvalid <= 1'b0;
        end else begin
            unvalid <= 1'b0;
            for (i = 0; i < 256; i = i + 1) begin
                if (seen_mem[i][8] && seen_mem[i][7:0] == data_in)
                    unvalid <= 1'b1;
            end
        end
    end

    // ====== Ghi dữ liệu mới nếu chưa trùng ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            index <= 8'd0;
            for (i = 0; i < 256; i = i + 1)
                seen_mem[i] <= 9'b0;
        end else if (!unvalid) begin
            seen_mem[index] <= {1'b1, data_reg};
            index <= index + 1;
        end
    end

    // ====== Xuất cờ báo đã thấy dữ liệu ======
    always @(posedge clk or posedge rst) begin
        if (rst)
            seen_flag <= 1'b0;
        else
            seen_flag <= unvalid;
    end

endmodule
