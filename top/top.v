module top#(
	parameter PRECISION = 32,
	parameter BIT_WIDTH = 8
)(
	input clk,
	input reset_n,
	input tvalid
);

reg PRNG_tvalid;
wire PRNG_valid;
wire [PRECISION-1:0] pseudoRandomNumber_out[0:2];
PRNG #(.PRECISION(32)) PRNG_inst(
	.clk(clk),
	.reset_n(reset_n),
	.tvalid(PRNG_tvalid),
	.valid(PRNG_valid),
	.pseudoRandomNumber1(pseudoRandomNumber_out[0]),
	.pseudoRandomNumber2(pseudoRandomNumber_out[1]),
	.pseudoRandomNumber3(pseudoRandomNumber_out[2])
);

reg sbox_gen_tvalid;
reg [PRECISION-1:0] pseudoRandomNumber_in[0:2];
wire sbox_gen_valid;
wire [BIT_WIDTH-1:0] V_out;
sbox_generator #(.PRECISION(32), .EXTRACT_WIDTH(23), .MIX_WIDTH(8)) sbox_generator_inst(
	.clk(clk),
	.reset_n(reset_n),
	.tvalid(sbox_gen_tvalid),
	.pseudoRandomNumber1(pseudoRandomNumber_in[0]),
	.pseudoRandomNumber2(pseudoRandomNumber_in[1]),
	.pseudoRandomNumber3(pseudoRandomNumber_in[2]),
	.valid(sbox_gen_valid),
	.V_out(V_out)
);

integer i;

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		PRNG_tvalid <= 0;
	end else if(tvalid) begin
		PRNG_tvalid <= 1;
	end else begin
		PRNG_tvalid <= 0;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		sbox_gen_tvalid <= 0;
		for(i = 0; i < 3; i = i+1) pseudoRandomNumber_in[i] <= 0;
	end else if(PRNG_valid) begin
		sbox_gen_tvalid <= 1;
		for(i = 0; i < 3; i = i+1) pseudoRandomNumber_in[i] <= pseudoRandomNumber_out[i];
	end else begin
		sbox_gen_tvalid <= 0;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		sbox_tvalid <= 0;
		V_in <= 0;
	end else if(sbox_gen_valid) begin
		sbox_tvalid <= 1;
		V_in <= V_out;
	end else begin
		sbox_tvalid <= 0;
	end
end
endmodule
