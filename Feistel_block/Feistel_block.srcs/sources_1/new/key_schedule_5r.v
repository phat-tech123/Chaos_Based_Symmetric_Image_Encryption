`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2025 10:51:23 PM
// Design Name: 
// Module Name: key_schedule_5r
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module key_schedule_5r#(
	parameter ROUND = 5,
	parameter KEY_SIZE = 128
)(
	input clk, reset_n,
	input tvalid,
	input [KEY_SIZE-1:0] key,
	output reg valid,
	output reg [KEY_SIZE-1:0] K0,
	output reg [KEY_SIZE-1:0] K1,
	output reg [KEY_SIZE-1:0] K2,
	output reg [KEY_SIZE-1:0] K3,
	output reg [KEY_SIZE-1:0] K4
);

reg [KEY_SIZE-1:0] K[0:ROUND-1];
reg [2:0] index = 0;

integer i;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		for(i = 0; i < ROUND; i = i+1) K[i] <= 0;
	end else if(index < ROUND) begin
	K[index] <= key;
	end else begin
		index <= index;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		index <= 0;
	end else if(tvalid) begin
		index <= index + 1;
	end else begin
		index <= (index < ROUND) ? index : ROUND+1;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		K0 	<= 0;
		K1 	<= 0;
		K2 	<= 0;
		K3 	<= 0;
		K4 	<= 0;
		valid 	<= 0;
	end else if(index == ROUND) begin
		K0 	<= K[0];
		K1 	<= K[1];
		K2 	<= K[2];
		K3 	<= K[3];
		K4 	<= K[4];
		valid 	<= 1;
	end else begin
		valid 	<= 0;
	end
end
endmodule
