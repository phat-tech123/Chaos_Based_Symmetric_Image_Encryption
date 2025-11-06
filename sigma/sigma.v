module sigma#(
	parameter PRECISION = 32
)(
	input clk,
	input reset_n,
	input [PRECISION-1:0] err,
	input [PRECISION-1:0] A00, A01, A02,
	input [PRECISION-1:0] A10, A11, A12,
	input [PRECISION-1:0] A20, A21, A22,
	output reg valid,
	output reg [PRECISION-1:0] sigma
);

wire add_valid_1, add_valid_2, add_valid_3;
reg [PRECISION-1:0] add_a_op_1, add_b_op_1, add_a_op_2, add_b_op_2, add_a_op_3, add_b_op_3;
wire [PRECISION-1:0] add_out_1, add_out_2, add_out_3;
reg add_tvalid_1, add_tvalid_2, add_tvalid_3;
floating_point_add add_1 (
  .aclk(clk),           
  .s_axis_a_tvalid(add_tvalid_1), .s_axis_a_tdata(add_a_op_1),         
  .s_axis_b_tvalid(add_tvalid_1), .s_axis_b_tdata(add_b_op_1),        
  .m_axis_result_tvalid(add_valid_1), .m_axis_result_tdata(add_out_1)   
);
floating_point_add add_2 (
  .aclk(clk),           
  .s_axis_a_tvalid(add_tvalid_2), .s_axis_a_tdata(add_a_op_2),         
  .s_axis_b_tvalid(add_tvalid_2), .s_axis_b_tdata(add_b_op_2),        
  .m_axis_result_tvalid(add_valid_2), .m_axis_result_tdata(add_out_2)   
);
floating_point_add add_3 (
  .aclk(clk),           
  .s_axis_a_tvalid(add_tvalid_3), .s_axis_a_tdata(add_a_op_3),         
  .s_axis_b_tvalid(add_tvalid_3), .s_axis_b_tdata(add_b_op_3),        
  .m_axis_result_tvalid(add_valid_3), .m_axis_result_tdata(add_out_3)   
);

wire mul_valid_1, sqrt_valid; 
reg [PRECISION-1:0] mul_a_op_1, mul_b_op_1, sqrt_op;
wire [PRECISION-1:0] mul_out_1, sqrt_out;
reg mul_tvalid_1, sqrt_tvalid;
floating_point_mul mul_1 (
  .aclk(clk),        
  .s_axis_a_tvalid(mul_tvalid_1), .s_axis_a_tdata(mul_a_op_1),   
  .s_axis_b_tvalid(mul_tvalid_1), .s_axis_b_tdata(mul_b_op_1), 
  .m_axis_result_tvalid(mul_valid_1), .m_axis_result_tdata(mul_out_1)
);
floating_point_sqrt sqrt (
  .aclk(clk),                                 
  .s_axis_a_tvalid(sqrt_tvalid),            
  .s_axis_a_tdata(sqrt_op),            
  .m_axis_result_tvalid(sqrt_valid), 
  .m_axis_result_tdata(sqrt_out)   
);

localparam IDLE = 0;
localparam S1 	= 1;
localparam S2 	= 2;
localparam S3 	= 3;
localparam S4 	= 4;
localparam S5 	= 5;
localparam S6 	= 6;
localparam S7 	= 7;
localparam DONE = 8;
reg [3:0] state;
always @(posedge clk or negedge reset_n) begin
	if (!reset_n) begin 
		valid <= 0;
		state <= IDLE;
		sqrt_tvalid  <= 1'b0;
		mul_tvalid_1 <= 1'b0;
		add_tvalid_1 <= 1'b0;
		add_tvalid_2 <= 1'b0;
		add_tvalid_3 <= 1'b0;
  	end else begin 
		case (state)
			IDLE: begin
				valid <= 0;
				state <= S1;
				add_tvalid_1 <= 1'b1;
				add_tvalid_2 <= 1'b1;
				add_tvalid_3 <= 1'b1;
			end
			S1: begin
				add_tvalid_1 <= 1'b0;
				add_tvalid_2 <= 1'b0;
				add_tvalid_3 <= 1'b0;
				if(add_valid_1 && add_valid_2 && add_valid_3) begin
					state <= S2;
					add_tvalid_1 <= 1'b1;
					add_tvalid_2 <= 1'b1;
					add_tvalid_3 <= 1'b1;
				end
			end

			S2: begin
				add_tvalid_1 <= 1'b0;
				add_tvalid_2 <= 1'b0;
				add_tvalid_3 <= 1'b0;
				if(add_valid_1 && add_valid_2 && add_valid_3) begin
					state <= S3;
				end
			end
			S3: begin
				state <= S4;
				add_tvalid_1 <= 1'b1;
				mul_tvalid_1 <= 1'b1;
			end
			S4: begin
				add_tvalid_1 <= 1'b0;
				if(add_valid_1 && mul_valid_1) begin 
					mul_tvalid_1 <= 1'b0;
					state <= S5;
					sqrt_tvalid <= 1'b1;
				end
			end
			S5: begin
				sqrt_tvalid <= 1'b0;
				if(sqrt_valid) begin
					state <= S6;
					add_tvalid_2 <= 1'b1;
				end
			end
			S6: begin
				add_tvalid_2 <= 1'b0;
				if(add_valid_2) begin
					state <= S7;
					add_tvalid_3 <= 1'b1;
				end
			end
			S7: begin 
				add_tvalid_3 <= 1'b0;
				if(add_valid_3) begin
					state <= DONE;
					valid <= 1'b1;
				end
			end
			DONE: 	state <= DONE;

			default: state <= state;
  		endcase
	end
end

reg [PRECISION-1:0] norm_inf_manual;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		add_a_op_1 <= 0; add_b_op_1 <= 0;
		add_a_op_2 <= 0; add_b_op_2 <= 0;
		add_a_op_3 <= 0; add_b_op_3 <= 0;
		mul_a_op_1 <= 0; mul_b_op_1 <= 0;
		sqrt_op <= 0; norm_inf_manual <= 0;
		sigma <= 0;
	end else begin
		case(state) 
			IDLE: begin
				sigma <= 0;
			end

			S1: begin
				add_a_op_1 <= A00; add_b_op_1 <= A01; 
				add_a_op_2 <= A10; add_b_op_2 <= A11;
				add_a_op_3 <= A20; add_b_op_3 <= A21;
			end

			S2: begin
				add_a_op_1 <= A02; add_b_op_1 <= add_out_1; 
				add_a_op_2 <= A12; add_b_op_2 <= add_out_2; 
				add_a_op_3 <= A22; add_b_op_3 <= add_out_3; 
			end

			S3: begin
				norm_inf_manual <= find_max(add_out_1, add_out_2, add_out_3);
			end

			S4: begin
				mul_a_op_1 <= 32'h40400000; mul_b_op_1 <= norm_inf_manual;
				add_a_op_1 <= 32'h3f800000; add_b_op_1 <= norm_inf_manual;
			end

			S5: begin
				sqrt_op <= add_out_1;
			end

			S6: begin
				add_a_op_2 <= 32'h3f800000; add_b_op_2 <= sqrt_out;
			end

			S7: begin
				add_a_op_3 <= err; add_b_op_3 <= (fp_gt(mul_out_1, add_out_2)) ? mul_out_1 : add_out_2;
			end

			DONE: begin
				sigma <= add_out_3;
			end

			default: begin
                    		add_a_op_1 <= add_a_op_1;
                    		add_b_op_1 <= add_b_op_1;
                    		add_a_op_2 <= add_a_op_2;
                    		add_b_op_2 <= add_b_op_2;
                    		add_a_op_3 <= add_a_op_3;
                    		add_b_op_3 <= add_b_op_3;
                	end
		endcase
	end
end

function fp_gt;
	input [31:0] a;
	input [31:0] b;
	reg a_sign, b_sign;
	reg [7:0] a_exp, b_exp;
	reg [22:0] a_frac;
	reg [22:0] b_frac;

    	begin
		a_sign = a[31];
		b_sign = b[31];
		a_exp  = a[30:23];
		b_exp  = b[30:23];
		a_frac = a[22:0];
		b_frac = b[22:0];

		if (a_sign != b_sign) 		fp_gt = (a_sign == 0); 
		else if (a_exp != b_exp) 	fp_gt = (a_sign == 0) ? (a_exp > b_exp) : (a_exp < b_exp);
		else 				fp_gt = (a_sign == 0) ? (a_frac > b_frac) : (a_frac < b_frac);
    	end
endfunction

function [31:0] find_max;
	input [31:0] a;
	input [31:0] b;
	input [31:0] c;
    	reg [31:0] temp_max;

    	begin
        	if (fp_gt(a, b)) 	temp_max = a;
        	else 			temp_max = b;

        	if (fp_gt(temp_max, c)) find_max = temp_max;
        	else 			find_max = c;
    	end
endfunction

endmodule
