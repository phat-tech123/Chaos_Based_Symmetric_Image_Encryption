module sbox_generator#(
	parameter SIZE = 256,
    parameter PRECISION = 32,
	parameter EXTRACT_WIDTH = 23,
	parameter MIX_WIDTH = 8
)(
	input clk, 
	input reset_n,
	input tvalid,
	input [PRECISION-1:0] pseudoRandomNumber1,
	input [PRECISION-1:0] pseudoRandomNumber2,
	input [PRECISION-1:0] pseudoRandomNumber3,

    output reg done_sbox,
	output reg valid,
	output reg [MIX_WIDTH-1:0] V_out
);

reg extract_tvalid;
reg [PRECISION-1:0] val[0:2];
wire extract_valid;
wire [EXTRACT_WIDTH-1:0] ex[0:2];
extractor extractor(
	.clk(clk),
	.reset_n(reset_n),
	.enable_extract(extract_tvalid),
	.val1(val[0]),
	.val2(val[1]),
	.val3(val[2]),
	.valid_extract(extract_valid),
	.ex1(ex[0]),
	.ex2(ex[1]),
	.ex3(ex[2])
);

reg mixer_tvalid;
reg [EXTRACT_WIDTH-1:0] ex_in[0:2];
wire mixer_valid;
wire [MIX_WIDTH-1:0] V;
mixer mixer(
	.clk(clk),
	.reset_n(reset_n),
	.tvalid(mixer_tvalid),
	.ex1(ex_in[0]),
	.ex2(ex_in[1]),
	.ex3(ex_in[2]),
	.valid(mixer_valid),
	.V(V)
);

integer i;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		extract_tvalid <= 0;
		for(i = 0; i < 3; i = i+1) val[i] <= 0;
	end else if(tvalid) begin
		extract_tvalid 	<= 1;
		val[0] 		<= pseudoRandomNumber1;
		val[1] 		<= pseudoRandomNumber2;
		val[2] 		<= pseudoRandomNumber3;
	end else begin
		extract_tvalid <= 0;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		mixer_tvalid <= 0;
		for(i = 0; i < 3; i = i+1) ex_in[i] <= 0;
	end else if(extract_valid) begin
		mixer_tvalid 	<= 1;
		for(i = 0; i < 3; i = i+1) ex_in[i] <= ex[i];
	end else begin
		mixer_tvalid 	<= 0;
	end
end

reg used [0:SIZE-1];
reg done_sbox_d;
reg [MIX_WIDTH-1:0] index;
always@(posedge clk or negedge reset_n) begin
    	if(!reset_n) begin
        	index <= 0;
        	valid <= 0;
        	V_out <= 0;
            done_sbox_d <= 0;
        	for(i = 0; i < SIZE; i = i + 1) begin
			used[i] <= 0;
		end

	end else if(mixer_valid && !used[V] && index < SIZE) begin
		used[V] <= 1;
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
