module cbc_feistel_encrypt#(
	parameter ROUND 	= 5,
	parameter KEY_SIZE 	= 128,
	parameter BLOCK_SIZE 	= 256
)(
	input clk,
	input reset_n,

	input sbox_valid,
	input [7:0] sbox_out,

	input key_tvalid,
	input [KEY_SIZE-1:0] key,

	input encr_tvalid,
	input [BLOCK_SIZE-1:0] plaintext,
	input [BLOCK_SIZE-1:0] iv,

	output reg encr_valid,
	output reg [BLOCK_SIZE-1:0] ciphertext
);

wire key_valid;
wire [KEY_SIZE-1:0] K[0:ROUND-1];
key_schedule_5r#(.ROUND(ROUND), KEY_SIZE(KEY_SIZE)) key_schedule_5r_u(
	.clk(clk),
	.reset_n(reset_n),
	.key(key),
	.tvalid(key_tvalid),
	.valid(key_valid),
	.K0(K[0]),
	.K1(K[1]),
	.K2(K[2]),
	.K3(K[3]),
	.K4(K[4])
);


endmodule
