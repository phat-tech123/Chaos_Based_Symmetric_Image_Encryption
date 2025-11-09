`include "read.v"
`include "extractor.v"
`include "mixer.v"
`include "counter.v"
`include "seen.v"
`include "checker.v"
`include "sbox.v"
`include "FF.v"

module top(
    input clk,
    input rst,
    output done_sbox
);

wire enable_extract, seen_flag, seen_single, enable_write, enable_counter;
wire [22:0] ex1, ex2, ex3;
wire [31:0] val1, val2, val3;
wire [22:0] v_reg ;
wire [7:0] count;
wire [7:0] V ;

read read_inst (
    .clk(clk),
    .rst(rst),
    .enable_read(!done_sbox),

    .val1(val1),
    .val2(val2),
    .val3(val3)
);

extractor extractor_inst (
    .clk(clk),
    .rst(rst),

    .enable_extract(!done_sbox),

    .val1(val1),
    .val2(val2),
    .val3(val3),
    
    .ex1(ex1),
    .ex2(ex2),
    .ex3(ex3)
);

mixer mixer_inst (
    .clk(clk),
    .rst(rst),
    .ex1(ex1),
    .ex2(ex2),
    .ex3(ex3),
    .v_reg(v_reg)
);  

FF FF_inst(
    .clk(clk),
    .rst(rst),
    .mix_data(v_reg[7:0]),
    .V(V)
);

seen seen_inst (
    .clk(clk),
    .rst(rst),
    .data_in(v_reg[7:0]),
    .seen_flag(seen_flag)
);

counter counter_inst (
    .clk(clk),
    .rst(rst),
    .enable_counter(data_valid),
    .count(count)
);

checker checker_inst (
    .rst(rst),
    .clk(clk),
    .seen_single(seen_flag),
    .count(count),
    .data_valid(data_valid)
);

sbox sbox_inst (
    .clk(clk),
    .rst(rst),
    .enable_write(data_valid),
    .data_in(V),
    .done_sbox(done_sbox)
);

endmodule