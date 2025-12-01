module feistel_cbc_encrypt #(
    parameter ROUNDS     = 5,
    parameter ROUND_LAT  = 2,        // latency của 1 f_round
    parameter KEY_SIZE   = 16
)(
    input  wire         clk,
    input  wire         rstn,
    input  wire         valid_in,
    input  wire [255:0] data_in,      // plaintext block
    input  wire [255:0] iv,           // initialization vector
    input  wire [KEY_SIZE*8-1:0] main_key,

    output reg          valid_out,
    output reg [255:0]  data_out
);




endmodule
