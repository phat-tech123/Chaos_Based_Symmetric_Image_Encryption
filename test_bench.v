`include "top.v"
module tb_top;
reg clk;
reg rst;
wire done_sbox;

top inst_top 
(
    .rst (rst),
    .clk (clk),
    .done_sbox(done_sbox)
);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk=~clk;

initial begin
    $dumpfile("tb_top.vcd");
    $dumpvars(0, tb_top);
end

initial begin
    rst = 1;
    clk = 1;
    #20;
    rst = 0;
    #3000_000;
    $finish;
end

// always @(posedge done_sbox) begin
//     #20;
//     $finish;    
// end

endmodule
