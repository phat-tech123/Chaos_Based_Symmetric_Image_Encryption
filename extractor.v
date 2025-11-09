module extractor(
    input clk,
    input rst,
    input enable_extract,

    input [31:0] val1,
    input [31:0] val2,
    input [31:0] val3,

    output reg [22:0] ex1,
    output reg [22:0] ex2,
    output reg [22:0] ex3
);

    // ====== Khai báo nội bộ ======
    reg [7:0] exponent [0:2];
    reg [22:0] fraction [0:2];
    reg [23:0] mantissa [0:2];
    reg [55:0] tmp [0:2]; 
    reg [55:0] tmp1 [0:2];

    integer E [0:2];
    integer int_part [0:2];

    integer i;
    reg [31:0] val [0:2]; // ánh xạ 3 input thành mảng để dễ xử lý

    // ====== Gộp 3 input vào mảng ======
    always @(*) begin
        val[0] = val1; 
        val[1] = val2;
        val[2] = val3; 
    end

    // ====== Tách exponent và fraction từ 3 input ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3; i = i + 1) begin
                exponent[i] <= 0;
                fraction[i] <= 0;
            end
            ex1 <= 0;
            ex2 <= 0;
            ex3 <= 0;
        end 
        else if (enable_extract) begin  
            for (i = 0; i < 3; i = i + 1) begin
                // --- Tách exponent và fraction ---
                exponent[i] <= val[i][30:23];
                fraction[i] <= val[i][22:0];
            end
        end
    end

    // ====== Tinh toan gia tri mantissa ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3; i = i + 1) begin
                mantissa[i] <= 0;
            end
        end 
        else if (enable_extract) begin
            for (i = 0; i < 3; i = i + 1) begin
                // --- Tính mantissa ---
                if (exponent[i] == 8'b0) begin
                    mantissa[i] <= {1'b0, fraction[i]}; // denormalized number
                end 
                else begin
                    mantissa[i] <= {1'b1, fraction[i]}; // normalized number
                end
            end
        end
    end

    // ====== Tinh toan gia tri E ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3; i = i + 1) begin
                E[i] <= 0;
            end
        end
        else if (enable_extract) begin
            for (i = 0; i < 3; i = i + 1) begin
                // --- Tính E ---
                if (exponent[i] == 8'b0) begin
                    E[i] <= 0; // denormalized number
                end 
                else begin
                    E[i] <= exponent[i] - 127; // normalized number
                end
            end
        end
    end

    // ======  Dich trai mantissa boi E ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3 ; i = i + 1) begin
                tmp[i] <= 0;
            end
        end
        else if (enable_extract) begin
            for (i = 0; i < 3; i = i + 1) begin
                if (E[i] > 0) begin
                    tmp[i] <= mantissa[i] << E[i];
                end 
                else begin
                    tmp[i] <= 0;
                end
            end 
        end   
    end

    // ====== Nhan ket qua dich trai voi 1000 va dich phai 23 bit ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3; i = i + 1) begin
                tmp1[i] <= 0;
            end
        end
        else if (enable_extract) begin
            tmp1[0] <= (tmp[0] * 56'd10000) >> 23;
            tmp1[1] <= (tmp[1] * 56'd10000) >> 23;
            tmp1[2] <= (tmp[2] * 56'd10000) >> 23;
        end
    end

    // ====== Gán kết quả cuối cùng cho output ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ex1 <= 0;
            ex2 <= 0;
            ex3 <= 0;
        end
        else if (enable_extract) begin
            ex1 <= tmp1[0] & 10'h3E8;
            ex2 <= tmp1[1] % 10'h3E8;
            ex3 <= tmp1[2] % 10'h3E8;
        end
    end

endmodule
