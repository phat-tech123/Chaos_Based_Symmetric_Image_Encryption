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
wire [22:0] EX1, EX2, EX3;
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

EXtractor extractor_inst (
    .clk(clk),
    .rst(rst),

    .enable_extract(!done_sbox),

    .val1(val1),
    .val2(val2),
    .val3(val3),
    .EX1(EX1),
    .EX2(EX2),
    .EX3(EX3)
);

mixer mixer_inst (
    .clk(clk),
    .rst(rst),
    .EX1(EX1),
    .EX2(EX2),
    .EX3(EX3),
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
    .data_in(V),
    .seen_flag(seen_flag)
);

counter counter_inst (
    .clk(clk),
    .rst(rst),
    .enable_counter(data_valid),
    .count(count)
);

checker checker_inst (
    .clk(clk),
    .rst(rst),
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