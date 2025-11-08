module read(
    input clk,
    input rst,
    input enable_read,
    output reg [31:0] val1,
    output reg [31:0] val2,
    output reg [31:0] val3
);

reg [31:0] mem [0:2699];
reg [7:0] index;

initial begin
    $readmemh("input.hex", mem);
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        val1 <= 32'b0;
        val2 <= 32'b0;
        val3 <= 32'b0;
        index <= 8'b0;
    end else if (enable_read) begin
        val1 <= mem[index];
        val2 <= mem[index + 1];
        val3 <= mem[index + 2];
        index <= index + 3;
    end
end

endmodule