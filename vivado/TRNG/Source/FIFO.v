module FIFO #(
	parameter AWIDTH = 10, DWIDTH = 8
	)(
	input clk, srst,
	input wr_en, rd_en,
	input [DWIDTH-1:0] din, 
	output reg [DWIDTH-1:0] dout, 
	output full, empty, 
	output wr_rst_busy, rd_rst_busy
);

reg [AWIDTH-1:0] w_ptr, r_ptr;
reg [DWIDTH-1:0] fifo[(1 << AWIDTH)-1:0];

always @(posedge clk or negedge srst) begin
	if (!srst) begin
		w_ptr <= 0;
		r_ptr <= 0;
		dout <= 0;
	end else begin
	
		if (wr_en && !full) begin
			fifo[w_ptr] <= din;
			w_ptr <= w_ptr + 1;
		end
		
		if (rd_en && !empty) begin
			dout <= fifo[r_ptr];
			r_ptr <= r_ptr + 1;
		end
	end
end

assign full = ((w_ptr + 1) == r_ptr);
assign empty = (w_ptr == r_ptr); 

assign wr_rst_busy = (w_ptr != r_ptr); 
assign rd_rst_busy = (r_ptr != w_ptr); 

endmodule
