module EXtractor(
    input clk,
    input rst,
    input enable_extract,
    input [31:0] val [0:2],  // 3 giá trị 32-bit

    output reg [22:0] extraction_value [0:2]
);

reg [7:0] exponent [0:2];
reg [22:0] fraction [0:2];
reg [45:0] mantissa [0:2];
reg [8:0] E [0:2];

integer i;
integer in_part[0:2];

always @(posedge clk or posedge rst) begin
    if (rst) begin
        for (i = 0; i < 3; i = i + 1) begin
            exponent[i] <= 0;
            fraction[i] <= 0;
        end
    end
    else if (enable_extract) begin
        for (i = 0; i < 3; i = i + 1) begin
            exponent[i] <= val[i][30:23];
            fraction[i] <= val[i][22:0];
        end
    end
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        for (i = 0; i < 3; i = i + 1) begin
            mantissa[i] <= 0;
        end
    end
    else if (enable_extract) begin
        for (i = 0; i < 3; i = i + 1) begin
            mantissa[i] <= {1'b1, fraction[i]};
        end
    end
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        for (i = 0; i < 3; i = i + 1) begin
            extraction_value[i] <= 0;
        end
    end
    else if (enable_extract) begin
        for (i = 0; i < 3; i = i + 1) begin
            E[i] <= exponent[i] - 127; 
        end
    end
end

always @(posedge clk) begin
    for (i = 0; i < 3; i = i + 1) begin
        mantissa[i] <= mantissa[i] << E[i];
    end  
end

always @(posedge clk) begin
    for (i = 0; i < 3; i = i + 1) begin
        mantissa[i] <= mantissa[i] * 1000;
    end
end

always @(posedge clk) begin
    for (i = 0; i < 3; i = i + 1) begin
        mantissa[i] <= mantissa[i] >> 23;
    end
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        for (i = 0; i < 3; i = i + 1) begin
            in_part[i] <= 0;
        end
    end
    else if (enable_extract) begin
        for (i = 0; i < 3; i = i + 1) begin
            in_part[i] <= mantissa[i] / 1000;
        end
    end
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        for (i = 0; i < 3; i = i + 1) begin
            extraction_value[i] <= 0;
        end
    end
    else if (enable_extract) begin
        for (i = 0; i < 3; i = i + 1) begin
            extraction_value[i] <= mantissa - in_part[i] * 1000;
        end
    end
end

endmodule
