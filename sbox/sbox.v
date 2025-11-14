module sbox#(
	parameter SIZE = 256,
	parameter BIT_WIDTH = 8
)(
	input clk,
	input reset_n,
	input tvalid,
	input [BIT_WIDTH-1:0] V,
	output done_sbox
);

reg used[0:SIZE-1];
reg [BIT_WIDTH-1:0] sbox_mem[0:SIZE-1];
reg [BIT_WIDTH-1:0] index;

integer i;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		index <= 0;
		for(i = 0; i < SIZE; i = i+1) begin
			used[i] 	<= 0;
			sbox_mem[i] 	<= 0;
		end
	end else if(tvalid && !used[V] && index < SIZE) begin
		sbox_mem[index] <= V;
		used[V] 	<= 1;
		index 		<= index + 1;
	end else begin
		index <= index;
	end
end

assign done_sbox = (index == SIZE) ? 1 : 0;

endmodule
