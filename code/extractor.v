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
    reg [31:0] val [0:2]; // ánh xạ 3 input vào mảng

    integer E [0:2];
    integer i;

    // ====== Gộp 3 input vào mảng ======
    always @(*) begin
        val[0] = val1; 
        val[1] = val2;
        val[2] = val3; 
    end

    // ====== Tách exponent và fraction ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3; i = i + 1) begin
                exponent[i] <= 8'd0;
                fraction[i] <= 23'd0;
            end
        end 
        else if (enable_extract) begin  
            for (i = 0; i < 3; i = i + 1) begin
                exponent[i] <= val[i][30:23];
                fraction[i] <= val[i][22:0];
            end
        end
    end

    // ====== Tính mantissa ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3; i = i + 1)
                mantissa[i] <= 24'd0;
        end 
        else if (enable_extract) begin
            for (i = 0; i < 3; i = i + 1) begin
                if (exponent[i] == 8'd0)
                    mantissa[i] <= {1'b0, fraction[i]}; // denormalized
                else
                    mantissa[i] <= {1'b1, fraction[i]}; // normalized
            end
        end
    end

    // ====== Tính E ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3; i = i + 1)
                E[i] <= 0;
        end
        else if (enable_extract) begin
            for (i = 0; i < 3; i = i + 1) begin
                if (exponent[i] == 8'd0)
                    E[i] <= -126; // bias cho số denormalized
                else
                    E[i] <= exponent[i] - 127;
            end
        end
    end

    // ====== Dịch trái mantissa theo E ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3 ; i = i + 1)
                tmp[i] <= 56'd0;
        end
        else if (enable_extract) begin
            for (i = 0; i < 3; i = i + 1) begin
                if (E[i] >= 0)
                    tmp[i] <= mantissa[i] << E[i];
                else
                    tmp[i] <= mantissa[i] >> (-E[i]);
            end 
        end   
    end

    // ====== Nhân kết quả với 10000 và chia lại (dịch phải 23 bit) ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 3; i = i + 1)
                tmp1[i] <= 56'd0;
        end
        else if (enable_extract) begin
            for (i = 0; i < 3; i = i + 1)
                tmp1[i] <= (tmp[i] * 56'd1000) >> 23;
        end
    end

    // ====== Lấy phần thập phân (mod 1000) và gán ra output ======
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ex1 <= 23'd0;
            ex2 <= 23'd0;
            ex3 <= 23'd0;
        end
        else if (enable_extract) begin
            ex1 <= tmp1[0][22:0] % 1000;
            ex2 <= tmp1[1][22:0] % 1000;
            ex3 <= tmp1[2][22:0] % 1000;
        end
    end

endmodule
