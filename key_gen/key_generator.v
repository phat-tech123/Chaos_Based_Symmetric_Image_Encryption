module key_generator#(
	parameter V_SIZE = 8,
	parameter KEY_SIZE = 128,
	parameter ROUND = 5
)(
	input clk, reset_n,
	input [KEY_SIZE-1:0] initial_key,

	input sbox_valid,
	input [V_SIZE-1:0] V_out,

	input sbox_done,

	output reg valid,
	output reg [KEY_SIZE-1:0] key,
	output reg done_key
);

reg [KEY_SIZE-1:0] RCONST[0:4];
initial begin
	RCONST[0] = 128'h7AF39C1255EEB961C4882D21E712F84B;
	RCONST[1] = 128'hE91A447F08D93C6FE0B7AC1D3F22998C;
	RCONST[2] = 128'h4B8D1F0EFA77C20539D6258BB74493A1;
	RCONST[3] = 128'h99F63C2910ADEB883302197DA5FE6614;
	RCONST[4] = 128'h12C5E99ABBA0451F7F8D4C1E3360AA78;
end

reg sb_tvalid;
reg [KEY_SIZE-1:0] key_in;
wire sb_valid;
wire [KEY_SIZE-1:0] key_out;

subbytes #(.SBOX_WIDTH(8), .SBOX_DEPTH(256), .DATA_WIDTH(128)) u_sub (
	.clk(clk),
	.reset_n(reset_n),

	.sbox_valid(sbox_valid),
	.sbox_out(V_out),

	.tvalid(sb_tvalid),
	.in(key_in),

	.valid(sb_valid),
	.out(key_out)
);

reg [2:0] r;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		sb_tvalid <= 0;
		key_in <= 0;
	end else if(sbox_done) begin
		sb_tvalid <= 1;
		key_in <= initial_key;
	end else if(valid && r < ROUND) begin
		sb_tvalid <= 1;
		key_in <= key;
	end else begin
		sb_tvalid <= 0;
	end
end

reg done_key_d;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		valid 	<= 0;
		key 	<= 0;
		r 	<= 0;
		done_key_d <= 0;
	end else if(sb_valid) begin
		valid 	<= 1;
		key 	<= rot_word(key_out) ^ RCONST[r];
		r 	<= r + 1;
		if(r == ROUND - 1) done_key_d <= 1;
	end else begin
	   done_key_d <= 0;
		valid 	<= 0;
	end
end

always@(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
        done_key<= 0;
    end else begin 
        done_key <= done_key_d;
    end
end
function [KEY_SIZE-1:0] rot_word;
	input [KEY_SIZE-1:0] key;   // 128-bit

	begin
    		rot_word = { key[KEY_SIZE-1-4*8 : 0], 
				key[KEY_SIZE-1 : KEY_SIZE-4*8] };
	end
endfunction


endmodule
