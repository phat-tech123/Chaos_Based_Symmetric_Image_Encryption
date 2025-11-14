module ParamMem #(
    parameter PRECISION = 32
)(
    input clk,
    output reg [PRECISION-1:0] A00,
    output reg [PRECISION-1:0] A01,
    output reg [PRECISION-1:0] A02,
    output reg [PRECISION-1:0] A10,
    output reg [PRECISION-1:0] A11,
    output reg [PRECISION-1:0] A12,
    output reg [PRECISION-1:0] A20,
    output reg [PRECISION-1:0] A21,
    output reg [PRECISION-1:0] A22,

    output reg [PRECISION-1:0] x0,
    output reg [PRECISION-1:0] x1,
    output reg [PRECISION-1:0] x2
);

always@(posedge clk) begin
	// Hardcode test value
	A00 <= 0;            // 0
	A01 <= 32'h3f000000; // 1/2
	A02 <= 32'h3d4ccccd; // 1/20
	A10 <= 32'h3eaaaaab; // 1/3
	A11 <= 0;            // 0
	A12 <= 32'h3eaaaaab; // 1/3
	A20 <= 32'h3d4ccccd; // 1/20
	A21 <= 32'h3f000000; // 1/2
	A22 <= 0;            //0
	x0  <= 32'h3dcccccd; // 0.1
	x1  <= 32'h3c23d70a; // 0.01
	x2  <= 0;            // 0
end
endmodule
