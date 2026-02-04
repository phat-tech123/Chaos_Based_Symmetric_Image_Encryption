module shift_reg_8(
    input  clk,
    input  reset_n,
    input  enable,
    input  bit_in,
    output reg [7:0] data_out
);

always @(posedge clk or negedge reset_n) begin
    if(!reset_n)
        data_out <= 8'd0;
    else if(enable)
        data_out <= {data_out[6:0], bit_in};
end

endmodule

