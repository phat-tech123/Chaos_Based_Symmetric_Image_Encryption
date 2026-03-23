`timescale 1ns / 1ps
`define ENTROPY_TEST


module TRNG_Module(clk, clr, clk_debug, randomness);

input clk,clr;
output clk_debug, randomness;
wire [31:0] z;
wire [2:0] del_z [7:0];
wire xor_value;
wire [7:0] rand_num;

wire en = 1;
assign clk_debug = clk;

// -------------------------------- TRNG BEGIN -------------------------------- //
PDL pdl_0 (.en(en),.clr(clr),.clk(clk),.del(del_z[0]),.z(z[0]));
PDL pdl_1 (.en(en),.clr(clr),.clk(clk),.del(del_z[1]),.z(z[1]));
PDL pdl_2 (.en(en),.clr(clr),.clk(clk),.del(del_z[2]),.z(z[2]));
PDL pdl_3 (.en(en),.clr(clr),.clk(clk),.del(del_z[3]),.z(z[3]));
PDL pdl_4 (.en(en),.clr(clr),.clk(clk),.del(del_z[4]),.z(z[4]));
PDL pdl_5 (.en(en),.clr(clr),.clk(clk),.del(del_z[5]),.z(z[5]));
PDL pdl_6 (.en(en),.clr(clr),.clk(clk),.del(del_z[6]),.z(z[6]));
PDL pdl_7 (.en(en),.clr(clr),.clk(clk),.del(del_z[7]),.z(z[7]));
PDL pdl_8 (.en(en),.clr(clr),.clk(clk),.del(del_z[0]),.z(z[8]));
PDL pdl_9 (.en(en),.clr(clr),.clk(clk),.del(del_z[1]),.z(z[9]));
PDL pdl_10 (.en(en),.clr(clr),.clk(clk),.del(del_z[2]),.z(z[10]));
PDL pdl_11 (.en(en),.clr(clr),.clk(clk),.del(del_z[3]),.z(z[11]));
PDL pdl_12 (.en(en),.clr(clr),.clk(clk),.del(del_z[4]),.z(z[12]));
PDL pdl_13 (.en(en),.clr(clr),.clk(clk),.del(del_z[5]),.z(z[13]));
PDL pdl_14 (.en(en),.clr(clr),.clk(clk),.del(del_z[6]),.z(z[14]));
PDL pdl_15 (.en(en),.clr(clr),.clk(clk),.del(del_z[7]),.z(z[15]));
PDL pdl_16 (.en(en),.clr(clr),.clk(clk),.del(del_z[0]),.z(z[16]));
PDL pdl_17 (.en(en),.clr(clr),.clk(clk),.del(del_z[1]),.z(z[17]));
PDL pdl_18 (.en(en),.clr(clr),.clk(clk),.del(del_z[2]),.z(z[18]));
PDL pdl_19 (.en(en),.clr(clr),.clk(clk),.del(del_z[3]),.z(z[19]));
PDL pdl_20 (.en(en),.clr(clr),.clk(clk),.del(del_z[4]),.z(z[20]));
PDL pdl_21 (.en(en),.clr(clr),.clk(clk),.del(del_z[5]),.z(z[21]));
PDL pdl_22 (.en(en),.clr(clr),.clk(clk),.del(del_z[6]),.z(z[22]));
PDL pdl_23 (.en(en),.clr(clr),.clk(clk),.del(del_z[7]),.z(z[23]));
PDL pdl_24 (.en(en),.clr(clr),.clk(clk),.del(del_z[0]),.z(z[24]));
PDL pdl_25 (.en(en),.clr(clr),.clk(clk),.del(del_z[1]),.z(z[25]));
PDL pdl_26 (.en(en),.clr(clr),.clk(clk),.del(del_z[2]),.z(z[26]));
PDL pdl_27 (.en(en),.clr(clr),.clk(clk),.del(del_z[3]),.z(z[27]));
PDL pdl_28 (.en(en),.clr(clr),.clk(clk),.del(del_z[4]),.z(z[28]));
PDL pdl_29 (.en(en),.clr(clr),.clk(clk),.del(del_z[5]),.z(z[29]));
PDL pdl_30 (.en(en),.clr(clr),.clk(clk),.del(del_z[6]),.z(z[30]));
PDL pdl_31 (.en(en),.clr(clr),.clk(clk),.del(del_z[7]),.z(z[31]));

Delay_Control #(.count_init(3'b000)) D_0 (.cnt(del_z[0]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b001)) D_1 (.cnt(del_z[1]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b010)) D_2 (.cnt(del_z[2]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b011)) D_3 (.cnt(del_z[3]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b100)) D_4 (.cnt(del_z[4]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b101)) D_5 (.cnt(del_z[5]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b110)) D_6 (.cnt(del_z[6]),.clk(clk),.clr(clr));
Delay_Control #(.count_init(3'b111)) D_7 (.cnt(del_z[7]),.clk(clk),.clr(clr));

assign xor_value = ^z;

wire raw_bit;
DFF dff_z (.d_in(xor_value),.ce(en),.clk(clk),.clr(clr),.dout(raw_bit));
// -------------------------------- TRNG END -------------------------------- //

//// --------------------------- POST-PROCESSING BEGIN --------------------------- //
//wire processed_bit, pp_valid;
//Von_Neumann_Corrector pp(
//    .clk(clk),
//    .reset_n(clr),
//    .raw_bit(raw_bit),
//    .valid(pp_valid),
//    .processed_bit(processed_bit)
//);
//// --------------------------- POST-PROCESSING END --------------------------- //

//wire bit_to_pack;
//wire bit_valid;

//`ifdef ENTROPY_TEST
//    assign bit_to_pack = raw_bit;
//    assign bit_valid   = 1'b1;   
//`else
//    assign bit_to_pack = processed_bit;
//    assign bit_valid   = pp_valid;
//`endif
	

//// --------------------------- GET BYTES BEGIN --------------------------- //
//wire [7:0] byte_out;
//wire byte_valid;
//shift_reg_8 shift_reg_8_z (
//    .clk(clk),
//    .reset_n(clr),
//    .enable(bit_valid),
//    .bit_in(bit_to_pack),
//    .byte_valid(byte_valid),
//    .data_out(byte_out)
//);
//// ---------------- FIFO control & limit counter ---------------- //
//wire wr_en, rd_en;
//wire full, empty;

//reg  [31:0] byte_cnt;
//reg         uart_ready_r;


//wire tx_en;
//wire tx;
//wire tx_busy;
//assign tx_en = uart_ready_r && !empty && !tx_busy;

//assign wr_en = byte_valid && !full;
//assign rd_en = tx_en;
//always @(posedge clk or posedge clr) begin
//    if (clr) begin
//        byte_cnt     <= 32'd0;
//        uart_ready_r <= 1'b1;
//    end else if (tx_en) begin
//        if (byte_cnt < 32'd1500000)
//            byte_cnt <= byte_cnt + 1;
//        else
//            uart_ready_r <= 1'b0;   // dừng sau 12 Mbit
//    end
//end

//// ---------------- FIFO instance ---------------- //
//fifo_generator_0 fifo_0 (
//    .clk   (clk),
//    .full  (full),
//    .din   (byte_out),
//    .wr_en (wr_en),
//    .empty (empty),
//    .dout  (rand_num),
//    .rd_en (rd_en)
//);

//// ---------------- UART TX ---------------- //
//wire baud_tick;
//baud_gen #(
//    .CLK_FREQ(100_000_000),
//    .BAUD(115200)
//) baud_gen_0 (
//    .clk (clk),
//    .rst (clr),
//    .tick(baud_tick)
//);

//uart_tx uart_tx_0 (
//    .clk     (clk),
//    .rst     (clr),
//    .clken   (baud_tick),  
//    .data_in (rand_num),
//    .tx_en   (tx_en),
//    .tx      (tx),
//    .tx_busy (tx_busy)
//);

assign randomness = raw_bit;
	
endmodule
