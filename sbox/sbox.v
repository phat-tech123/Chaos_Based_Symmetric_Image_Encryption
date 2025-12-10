module sbox#(
	parameter SIZE = 256,
	parameter BIT_WIDTH = 8
)(
	input clk,
	input reset_n,
	input tvalid,
	input [BIT_WIDTH-1:0] V,

	output reg valid,
	output reg [BIT_WIDTH-1:0] V_out,
	output reg done_sbox
);

reg used [0:SIZE-1];
reg [BIT_WIDTH-1:0] sbox_mem [0:SIZE-1];
reg done_sbox_d;
reg [BIT_WIDTH-1:0] index;

integer i;
always @(posedge clk or negedge reset_n) begin
    	if(!reset_n) begin
        	index <= 0;
        	valid <= 0;
        	V_out <= 0;
            done_sbox_d <= 0;
        	for(i = 0; i < SIZE; i = i + 1) begin
			used[i] <= 0;
			sbox_mem[i] <= 0;
		end

	end else if(tvalid && !used[V] && index < SIZE) begin
		used[V] <= 1;
		sbox_mem[index] <= V;
		V_out <= V;
		valid <= 1;
		index <= index + 1;
		if(index == SIZE-1) begin
			done_sbox_d <= 1;
		end
	end else begin
        done_sbox_d <= 0;
		valid <= 0;
	end
end

always@(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
        done_sbox <= 0;
    end else begin 
        done_sbox <= done_sbox_d;
    end
end

endmodule

