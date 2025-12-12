module top#(
	parameter PRECISION = 32,
	parameter SBOX_WIDTH = 8,
	parameter DATA_WIDTH = 256,
	parameter KEY_SIZE = 128,
	parameter ROUND = 5
)(
	input clk,
	input reset_n,
	input tvalid
);

reg [KEY_SIZE-1:0] initial_key;
reg [DATA_WIDTH-1:0] iv;
reg [PRECISION-1:0] A[0:8], x[0:2];
reg [DATA_WIDTH-1:0] plaintext;
initial begin
	A[0] <= 0;            // 0
	A[1] <= 32'h3f000000; // 1/2
	A[2] <= 32'h3d4ccccd; // 1/20
	A[3] <= 32'h3eaaaaab; // 1/3
	A[4] <= 0;            // 0
	A[5] <= 32'h3eaaaaab; // 1/3
	A[6] <= 32'h3d4ccccd; // 1/20
	A[7] <= 32'h3f000000; // 1/2
	A[8] <= 0;            // 0

	x[0] <= 32'h3dcccccd; // 0.1
	x[1] <= 32'h3c23d70a; // 0.01
	x[2] <= 0;            // 0

	initial_key <= 128'h9f3a_6b1c_4d2e_8f70_a1b3_c5d_6e7f8_0912;
	iv <= 256'h3fa8b74c_92e1075d_b3c4a9f0_1d8e23bb_7ac1d054_ee39ab12_4f8d9023_c6715aae;
	plaintext <= 256'h11223344556677889900AABBCCDDEEFF_00112233445566778899AABBCCDDEEFF;
end

reg PRNG_tvalid;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		PRNG_tvalid <= 0;
	end else if(tvalid) begin
		PRNG_tvalid <= 1;
	end else begin
		PRNG_tvalid <= 0;
	end
end

wire PRNG_valid;
wire [PRECISION-1:0] pseudoRandomNumber[0:2];

wire sbox_gen_valid;
wire [SBOX_WIDTH-1:0] V;

wire sbox_valid;
wire [SBOX_WIDTH-1:0] V_out;
wire done_sbox;

wire key_valid;
wire [KEY_SIZE-1:0] key;
wire done_key;

PRNG #(.PRECISION(PRECISION)) PRNG_u(
	.clk(clk),
	.reset_n(reset_n),
	.tvalid(PRNG_tvalid),
	.valid(PRNG_valid),
	.pseudoRandomNumber1(pseudoRandomNumber[0]),
	.pseudoRandomNumber2(pseudoRandomNumber[1]),
	.pseudoRandomNumber3(pseudoRandomNumber[2])
);

sbox_generator #(.PRECISION(PRECISION), .EXTRACT_WIDTH(23), .MIX_WIDTH(8)) sbox_generator_u(
	.clk(clk),
	.reset_n(reset_n),
	.tvalid(PRNG_valid),
	.pseudoRandomNumber1(pseudoRandomNumber[0]),
	.pseudoRandomNumber2(pseudoRandomNumber[1]),
	.pseudoRandomNumber3(pseudoRandomNumber[2]),
	.valid(sbox_gen_valid),
	.V_out(V)
);

sbox #(.SIZE(DATA_WIDTH), .BIT_WIDTH(SBOX_WIDTH)) sbox_u(
    .clk(clk),
    .reset_n(reset_n),
    .tvalid(sbox_gen_valid),
    .V(V),
    .valid(sbox_valid),
    .V_out(V_out),
    .done_sbox(done_sbox)
);

key_generator #(
    .V_SIZE(SBOX_WIDTH),
    .KEY_SIZE(KEY_SIZE),
    .ROUND(ROUND)
) dut (
    .clk(clk),
    .reset_n(reset_n),
    .initial_key(initial_key),

    .sbox_valid(sbox_valid),
    .V_out(V_out),
    .sbox_done(done_sbox),

    .valid(key_valid),
    .key(key),
    .done_key(done_key)
);

wire en_valid;
wire [DATA_WIDTH-1:0]ciphertext_out;
wire de_valid;
wire [DATA_WIDTH-1:0]plaintext_out;

localparam F_LAT = 6;
CTR_feistel_encrypt #(
    .ROUND(ROUND),
    .KEY_SIZE(KEY_SIZE),
    .F_LAT(F_LAT),
    .ENCR_LAT(5*F_LAT+1),
    .SBOX_WIDTH(SBOX_WIDTH),
    .DATA_WIDTH(DATA_WIDTH)
) en_dut (
    .clk(clk),
    .reset_n(reset_n),
    
    .sbox_valid(sbox_valid),
    .sbox_out(V_out),
    
    .key_tvalid(key_valid),
    .key(key),
    
    .tvalid(done_key),
    .plaintext(plaintext),
    .iv(iv),
    
    .valid(en_valid),
    .ciphertext(ciphertext_out)
);

CTR_feistel_decrypt #(
    .ROUND(ROUND),
    .F_LAT(F_LAT),
    .ENCR_LAT(5*F_LAT+1),
    .SBOX_WIDTH(SBOX_WIDTH),
    .KEY_SIZE(KEY_SIZE),
    .DATA_WIDTH(DATA_WIDTH)
) de_dut (
    .clk(clk),
    .reset_n(reset_n),
    
    .sbox_valid(sbox_valid),
    .sbox_out(V_out),
    
    .key_tvalid(key_valid),
    .key(key),

    .tvalid(en_valid),
    .ciphertext(ciphertext_out),
    .iv(iv),

    .valid(de_valid),
    .plaintext(plaintext_out)
);


endmodule
