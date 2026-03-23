module baud_gen #(
    parameter integer CLK_FREQ = 100_000_000,
    parameter integer BAUD     = 115200
)(
    input  wire clk,
    input  wire rst,
    output reg  tick
);

    localparam integer DIVISOR = CLK_FREQ / BAUD;
    reg [$clog2(DIVISOR)-1:0] cnt;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            cnt  <= 0;
            tick <= 1'b0;
        end else begin
            if (cnt == DIVISOR-1) begin
                cnt  <= 0;
                tick <= 1'b1;   // 1-clock pulse
            end else begin
                cnt  <= cnt + 1;
                tick <= 1'b0;
            end
        end
    end
endmodule

