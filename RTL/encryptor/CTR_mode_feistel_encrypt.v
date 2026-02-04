module CTR_feistel_encrypt#(
	parameter ROUND 	= 5,
	parameter KEY_SIZE 	= 128,
	parameter F_LAT 	= 6,
	parameter ENCR_LAT  = 5*F_LAT+1,
	parameter SBOX_WIDTH 	= 8,
	parameter DATA_WIDTH 	= 256
)(
	input clk,
	input reset_n,

	input sbox_valid,
	input [7:0] sbox_out,

//	input key_tvalid,
	input key_valid,
	input [KEY_SIZE-1:0] key,

    input crypto_trigger,
	input tvalid,
	input [DATA_WIDTH-1:0] plaintext,
	input [DATA_WIDTH-1:0] iv,

	output reg valid,
	output reg [DATA_WIDTH-1:0] ciphertext
);

reg [KEY_SIZE-1:0] K[0:ROUND-1];
reg [2:0] cnt;
integer i;
always@(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
        cnt <= 0;
        for(i = 0; i < ROUND; i = i+1) K[i] <= 0;
    end else if(key_valid && cnt != ROUND) begin
        K[cnt] <= key;
        cnt <= cnt + 1;
    end else if(cnt == ROUND) begin
        cnt <= 0;
    end
end

reg [DATA_WIDTH-1:0] counter;
reg encr_tvalid;
wire encr_valid;
wire [DATA_WIDTH-1:0] encr_out;

feistel_encrypt #(
    .ROUND(ROUND),
    .F_LAT(F_LAT),
    .SBOX_WIDTH(SBOX_WIDTH),
    .KEY_SIZE(KEY_SIZE),
    .DATA_WIDTH(DATA_WIDTH)
) feistel_encrypt_u (
    .clk(clk),
    .reset_n(reset_n),

    .sbox_out(sbox_out),
    .sbox_valid(sbox_valid),

    .key_valid(key_valid),
    .K0(K[0]), .K1(K[1]), .K2(K[2]), .K3(K[3]), .K4(K[4]),

    .tvalid(encr_tvalid),
    .plaintext(counter),

    .valid(encr_valid),
    .ciphertext(encr_out)
);
     
//reg is_first_block;
reg [DATA_WIDTH-1:0] plaintext_t[0:ENCR_LAT];
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		encr_tvalid <= 0;
		counter <= 0;
		for(i = 0; i < ENCR_LAT+1; i = i+1) plaintext_t[i] <= 0;
	end else begin
	    if(crypto_trigger) begin
	        counter <= iv;
			encr_tvalid <= 1;
			plaintext_t[0] <= plaintext;
	    end else if(tvalid) begin
			encr_tvalid <= 1;
			counter <= counter + 1;
			plaintext_t[0] <= plaintext;
		end else begin
			encr_tvalid <= 0;
		end

		for(i = 1; i < ENCR_LAT+1; i = i+1) plaintext_t[i] <= plaintext_t[i-1];
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		valid <= 0;
		ciphertext <= 0;
	end else if(encr_valid) begin
		valid <= 1;
		ciphertext <= plaintext_t[ENCR_LAT] ^ encr_out;
	end else begin
		valid <= 0;
	end
end

endmodule
