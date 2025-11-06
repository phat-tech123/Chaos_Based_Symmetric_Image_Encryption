module sbox(
    input clk,
    input rst,
    input enable_write,
    input [7:0] data_in,
    output done_sbox,
    output reg [7:0] data_out
);

reg [7:0] sbox_mem [0:255];
reg [7:0] index;

integer i;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        for (i = 0; i < 256; i = i + 1) begin
            sbox_mem[i] <= 8'h00;
        end
    end
    else if (enable_write) begin
        sbox_mem[index] <= data_in;
    end
end

always @(posedge clk or posedge rst) begin
    if (rst) begin
        index <= 0;
    end
    else if (enable_write) begin
        index <= index + 1;
    end
    else begin
        index <= index;
    end
end

assign done_sbox = (index == 8'hA1) ? 1'b1 : 1'b0;

always @(posedge clk) begin
    if (done_sbox) 
        $writememh("output.hex", sbox_mem);
end

endmodule