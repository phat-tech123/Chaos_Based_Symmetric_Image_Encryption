module FF(
    input clk,
    input rst,
    input [7:0] mix_data,
    output reg [7:0] V
);

reg [7:0] data_ff;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        data_ff <= 8'b0;
        V <= 8'b0;
    end else begin
        data_ff <= mix_data;
        V <= data_ff;
    end
end

endmodule