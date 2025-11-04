module EXtractor(
    input clk,
    input rst,
    input enable_extract,

    input [31:0] val1,
    input [31:0] val2,
    input [31:0] val3,


    output reg [22:0] EX1,
    output reg [22:0] EX2,
    output reg [22:0] EX3
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        EX1 <= 22'b0;
        EX2 <= 22'b0;
        EX3 <= 22'b0;
    end else if (enable_extract) begin
        EX1 <= val1[22:0];
        EX2 <= val2[22:0];
        EX3 <= val3[22:0];
    end
end

endmodule