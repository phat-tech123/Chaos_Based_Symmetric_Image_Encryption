module shift_reg_8(
    input  wire clk,
    input  wire reset_n,
    input  wire enable,       // valid từ Von Neumann
    input  wire bit_in,
    output reg  byte_valid,
    output reg [7:0] data_out
);

reg [2:0] cnt;
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        data_out   <= 8'd0;
        cnt        <= 3'd0;
        byte_valid <= 1'b0;
    end else begin
        byte_valid <= 1'b0; 

        if (enable) begin
            data_out <= {data_out[6:0], bit_in};

            if (cnt == 3'd7) begin
                cnt        <= 3'd0;
                byte_valid <= 1'b1; // đủ 8 bit
            end else begin
                cnt <= cnt + 1'b1;
            end
        end
    end
end

endmodule

