//`include "./../FP_adder/FP_adder.v"
//`include "./../FP_div/FP_div.v"
//`include "./../FP_mul/FP_mul.v"

module sawtooth#(
	parameter PRECISION = 32
)(
	input clk,
	input reset_n,
	input [PRECISION-1:0] x,
	input [PRECISION-1:0] epsilon,
	output reg [PRECISION-1:0] result
);

parameter S1 	= 0;
parameter S2 	= 1;
parameter S3 	= 2;
parameter S4 	= 3;
parameter S5 	= 4;
parameter S6 	= 5;
parameter S7 	= 6;
parameter DONE 	= 7;
parameter STOP 	= 8;
parameter IDLE  = 9;

reg [2:0] counter;
reg [3:0] state;

reg [PRECISION-1:0] L;
reg [PRECISION-1:0] div_a_op, div_b_op, mul_a_op, mul_b_op, add_a_op, add_b_op;
wire [PRECISION-1:0] div_out, mul_out, add_out;

FP_div #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) div(
	.clk(clk), .reset_n(reset_n),
	.a_operand(div_a_op), .b_operand(div_b_op), 
	.result(div_out)
);

FP_mul #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) mul(
	.clk(clk), .reset_n(reset_n),
	.a_operand(mul_a_op), .b_operand(mul_b_op), 
	.result(mul_out)
);

FP_adder #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) add(
	.clk(clk), .reset_n(reset_n),
	.a_operand(add_a_op),  .b_operand(add_b_op), 
	.result(add_out)
);

always@(posedge clk or negedge reset_n) begin 
	if(!reset_n) begin
		state 	<= IDLE;
		counter <= 0;
	end else if (state == IDLE) begin
		state 	<= S1;
	end else if ( counter == 3'd1 && (state == S3 || state == S4 || state == DONE) ) begin
		counter <= 0;
		case(state)
			S3: state <= S4;
			S4: state <= S5;
			DONE: state <= STOP;
		endcase
	end else if ( counter == 3'd5) begin
		counter <= 0;
		case(state)
			S1: state <= S2;
			S2: state <= S3;
			S5: state <= S6;
			S6: state <= S7;
			S7: state <= DONE;
			STOP: state <= STOP;
			default: state <= state;
		endcase
	end else begin
		counter <= counter + 1;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		L 		<= 0;
		div_a_op 	<= 0;
		div_b_op 	<= 0;
		mul_a_op 	<= 0;
		mul_b_op 	<= 0;
		add_a_op 	<= 0;
		add_b_op 	<= 0;
		result      	<= 0;
	end else begin
		case(state)
			// Stage 1 : x/epsilon (5 clk)
			S1: begin
				div_a_op 	<= x;
				div_b_op 	<= epsilon;
			end

			// Stage 2 : x/epsilon + 1.0 (5 clk)
			S2: begin
				add_a_op 	<= 32'h3f800000; //1.0
				add_b_op 	<= div_out;
			end

			// Stage 3 : (x/epsilon + 1.0) / 2.0 = (x/epsilon + 1.0) * 0.5 (1 clk)
			S3: begin
				L 		<= mul_half(add_out);
			end

			// Stage 4 : L = floor((x/epsilon + 1.0) * 0.5) (1clk)
			S4: begin 
				L 		<= floor(L);
			end

			// Stage 6 : -2*L*epsilon (5 clk)
			S5: begin
				mul_a_op 	<= mul_neg2(L);
				mul_b_op 	<= epsilon;
			end

			// Stage 7 : x + (-2*L*epsilon) (5 clk)
			S6: begin
				add_a_op 	<= x;
				add_b_op 	<= mul_out;
			end

			// Stage 8 : pow(-1.0, l) * (x - 2 * l * epsilon) (5 clk)
			S7: begin
				mul_a_op 	<= (is_ood(L)) ? 32'hbf800000 : 32'h3f800000;
				mul_b_op 	<= add_out;
			end
			
			DONE: begin
				result 		<= mul_out;
			end

			STOP: begin
				result <= result;
			end
		endcase

	end
end

function signed [31:0] floor(input [31:0] x);
	reg sign;
	reg [7:0] exponent;
	reg [22:0] fraction;
	reg [31:0] result;
	integer E, frac_bits;
	reg [23:0] mantissa;
	reg [23:0] mask;

	begin
		sign     = x[31];
		exponent = x[30:23];
		fraction = x[22:0];

		if (exponent < 127) begin
			if (sign)
				result = 32'hBF800000; // -1.0
			else
				result = 32'h00000000; // 0.0
		end
		else if (exponent >= 150) begin
			result = x;
		end
		else begin
			E = exponent - 127;
			mantissa = {1'b1, fraction}; // 1.f
			frac_bits = 23 - E;

			mask = ~((1 << frac_bits) - 1);
			mantissa = mantissa & mask;

			if (sign && ((x[22:0] & ~mask) != 0))
				mantissa = mantissa + (1 << frac_bits);

			result = {sign, exponent, mantissa[22:0]};
		end

		floor = result;
	end
endfunction

function is_ood(input [PRECISION-1:0] x);
	reg [7:0] exponent;
    	reg [22:0] fraction;
    	reg [23:0] mantissa;
    	integer int_bits;
    	reg [23:0] shifted;

	begin
		exponent = x[30:23];
		fraction = x[22:0];
		mantissa = {1'b1, fraction};       
		int_bits = exponent - 127;

		if (exponent < 127)
			is_ood = 1'b0;    
		else if (int_bits >= 24)
			is_ood = 1'b0;  
		else begin
			shifted = mantissa >> (23 - int_bits); 
			is_ood = shifted[0];           
		end
	end
endfunction

function [31:0] mul_half(input [31:0] x);
	reg sign;
    	reg [7:0] exponent;
    	reg [22:0] fraction;

    	begin
        	sign = x[31];
        	exponent = x[30:23];
        	fraction = x[22:0];

        	if (exponent == 8'd0) begin
            		fraction = fraction >> 1;
            		mul_half = {sign, exponent, fraction};
        	end else if (exponent == 8'd1) begin
            		exponent = 8'd0;
            		fraction = ({1'b1, fraction} >> 1);
            		mul_half = {sign, exponent, fraction[22:0]};
        	end else begin
            		exponent = exponent - 8'd1;
            		mul_half = {sign, exponent, fraction};
        	end
    	end
endfunction

function [31:0] mul_neg2(input [31:0] x);
	reg sign;
	reg [7:0] exponent;
	reg [22:0] fraction;

    	begin
        	sign = ~x[31];       
        	exponent = x[30:23];
        	fraction = x[22:0];

        	if (exponent == 8'd255) begin
            		mul_neg2 = x;
        	end else if (exponent == 8'd0) begin
            		exponent = 8'd1;
            		fraction = fraction << 1;
            		mul_neg2 = {sign, exponent, fraction};
        	end else begin
            		exponent = exponent + 8'd1;
            		mul_neg2 = {sign, exponent, fraction};
        	end
    	end
endfunction

endmodule
