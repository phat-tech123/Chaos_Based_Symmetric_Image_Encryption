module counter(
    input clk,
    input rst,
    input enable_counter,
    output reg [7:0] count
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        count <= 0;
    end
    else if (enable_counter) begin
        count <= count + 1;
    end
    else begin
        count <= count;
    end
end 

endmodule