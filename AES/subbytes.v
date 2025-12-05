module subbytes#(
	parameter SBOX_WIDTH = 8,
	parameter SBOX_DEPTH = 256,
	parameter DATA_WIDTH = 128
)(
	input clk,
	input reset_n,

	input sbox_valid, 
	input [SBOX_WIDTH-1:0]  sbox_out,

	input tvalid,
	input [DATA_WIDTH-1:0] in,     

	output reg valid,
	output reg [DATA_WIDTH-1:0] out     
);

// 256-byte S-box memory
reg [SBOX_WIDTH-1:0] sbox_mem [0:SBOX_DEPTH-1];

reg [7:0] index;
reg sbox_ready;

integer i;
// =======================================
// PHASE 1 : BUILDING SBOX
// =======================================
always @(posedge clk or negedge reset_n) begin
    	if (!reset_n) begin
        	index <= 0;
        	sbox_ready <= 0;
        	for(i = 0; i < SBOX_DEPTH; i=i+1) sbox_mem[i] <= 0;
    	end else if (sbox_valid && !sbox_ready) begin
        	sbox_mem[index] <= sbox_out;
        	index <= index + 1;

        	if (index == SBOX_DEPTH - 1) sbox_ready <= 1;
    end
end
// =======================================
// PHASE 2 : LOOKUP 128-bit
// =======================================
always @(posedge clk or negedge reset_n) begin
	if (!reset_n) begin
		valid 	<= 0;
		out 	<= 0;
	end else if (tvalid && sbox_ready) begin
		valid <= 1;
		for (i = 0; i < DATA_WIDTH/8; i = i + 1) out[i*8 +: 8] <= sbox_mem[in[i*8 +: 8]];
	end else begin
		valid <= 0;
        out     <= out;
	end
end

endmodule
