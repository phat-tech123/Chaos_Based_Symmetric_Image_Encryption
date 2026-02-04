module trng_core (
	input clk,
	input enable,
	input [2:0] delay_cfg,
	output reg raw_bit
);

wire [31:0] ro_raw;
reg  [31:0] ro_sampled;
genvar i;
generate 
	for(i = 0; i < 32; i = i+1) begin
		RingOscillator ro_i(
			.delay_cfg(delay_cfg),
			.enable(enable),
			.RO_bit(ro_raw[i])
		);
	end
endgenerate

integer j;
always@(posedge clk) begin
	for(j = 0; j < 32; j = j+1) begin
		ro_sampled[j] <= ro_raw[j];
	end
end

always@(posedge clk) begin
	raw_bit <= ^ro_sampled;
end

endmodule
