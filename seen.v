module seen(
    input clk,
    input rst,
    input [7:0] data_in,
    output reg seen_flag
);

reg [7:0] index;
reg [8:0] seen_mem[0:255];
reg unvalid;

integer i;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        unvalid <= 0;
    end
    else begin
        unvalid <= 1'b0 ;
        for (i = 0; i < 256 ; i = i + 1 ) begin
            if (seen_mem[i][7:0] == data_in && seen_mem[i][8]) begin
              unvalid <= 1'b1;
            end
        end
    end
end

always @(negedge clk or posedge rst) begin
    if (rst) begin
        index <= 0;
        for (i = 0; i < 256 ; i = i + 1 ) begin
            seen_mem[i] <= 9'b0;
        end
    end
    else begin
        if (unvalid) begin
            index <= index;
        end
        else begin
            seen_mem[index] <= {1'b1, data_in};
            index <= index + 1;
        end
    end
end

always @(negedge clk or posedge rst) begin
    if (rst) begin
        seen_flag   <= 1'b0;
    end
    else begin
        if (unvalid) begin
            seen_flag <= 1'b1;
        end
        else begin
            seen_flag <= 1'b0;
        end
    end
end

endmodule