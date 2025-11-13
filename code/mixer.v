module mixer(
    input clk,
    input rst,
    input [22:0] ex1,
    input [22:0] ex2,
    input [22:0] ex3,
    output reg [22:0] v_reg
);

reg [22:0] D1, D2, D3;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        D1 <= 22'b0;
        D2 <= 22'b0;
        D3 <= 22'b0;
    end
    else begin
        D1 <= ex1 % 8'hFF;
        D2 <= ex2 % 8'hFF;
        D3 <= ex3 % 8'hFF;
    end
end


always @(posedge clk or posedge rst) begin
    if (rst) begin
        v_reg <= 23'b0;
    end
    else begin
        v_reg <= D1 ^ D2 ^ D3;
    end
end

endmodule