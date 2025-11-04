module checker (
    input clk,
    input rst,
    input  wire [7:0] count,
    input  wire seen_single,
    output reg data_valid
);
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data_valid <= 1'b0;
        end
        else if (count <= 8'hFF && !seen_single) begin
            data_valid <= 1'b1;
        end
        else begin
            data_valid <= 1'b0;
        end
    end
endmodule
