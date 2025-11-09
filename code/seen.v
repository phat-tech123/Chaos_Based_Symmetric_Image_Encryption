module seen (
    input        clk,
    input        rst,
    input  [7:0] data_in,
    output reg   seen_flag
);

    // ====== Khai báo ======  
    reg [7:0] index, next_index;              
    reg [7:0] seen_mem [0:255];   
    reg       unvalid;             
    integer   i;


    // ====== Kiểm tra dữ liệu đã thấy chưa ======
    always @(*) begin
        unvalid = 1'b0;
        for (i = 0; i < 256; i = i + 1) begin
            if (seen_mem[i] == data_in)
                unvalid = 1'b1;
        end
    end

    // ====== Cập nhật giá trị index =====
    always @(*) begin
        if (!unvalid) 
            next_index = index + 1;
        else
            next_index = index;
    end

    // ====== Cập nhật giá trị next_index =====
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            index <= 1'b0;
        end
        else begin
            index <= next_index;
        end
    end

    // ====== Ghi dữ liệu mới nếu chưa trùng ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 256; i = i + 1)
                seen_mem[i] <= 8'b0;
        end else if (~unvalid) begin
            seen_mem[next_index] <= data_in;
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
