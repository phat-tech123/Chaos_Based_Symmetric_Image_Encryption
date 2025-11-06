module checker (
    input  wire rst,
    input wire clk,
    input  wire [7:0] count,
    input  wire seen_single,
    output reg data_valid
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            data_valid <= 1'b0;
        else
            data_valid <= (count <= 8'hFF) && (seen_single == 1'b0);
    end
endmodule
