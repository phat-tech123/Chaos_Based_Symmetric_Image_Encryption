`include "./../FP_adder/FP_adder.v"
`include "./../FP_div/FP_div.v"
`include "./../FP_mul/FP_mul.v"

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
parameter S8 	= 7;
parameter DONE 	= 8;
parameter STOP 	= 9;

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
		state 	<= S1;
		counter <= 0;
	end else if (counter == 3'd4) begin
		counter <= 0;
		case(state)
			S1: state <= S2;
			S2: state <= S3;
			S3: state <= S4;
			S4: state <= S5;
			S5: state <= S6;
			S6: state <= S7;
			S7: state <= S8;
			S8: state <= DONE;
			DONE: state <= STOP;
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
			// Stage 1 : x/epsilon
			S1: begin
				div_a_op 	<= x;
				div_b_op 	<= epsilon;
				mul_a_op 	<= mul_a_op;
				mul_b_op 	<= mul_b_op;
				add_a_op 	<= add_a_op;
				add_b_op 	<= add_b_op;
			end

			// Stage 2 : x/epsilon + 1.0
			S2: begin
				div_a_op 	<= div_a_op;
				div_b_op 	<= div_b_op;
				mul_a_op 	<= mul_a_op;
				mul_b_op 	<= mul_b_op;
				add_a_op 	<= 32'h3f800000; //1.0
				add_b_op 	<= div_out;
			end

			// Stage 3 : (x/epsilon + 1.0) / 2.0 = (x/epsilon + 1.0) * 0.5 
			S3: begin
				div_a_op 	<= div_a_op;
				div_b_op 	<= div_b_op;
				mul_a_op 	<= add_out; 
				mul_b_op 	<= 32'h3f000000; //0.5
				add_a_op 	<= add_a_op;
				add_b_op 	<= add_b_op;
			end

			// Stage 4 : L = floor((x/epsilon + 1.0) * 0.5) 
			S4: begin 
				L 		<= floor(mul_out);
				div_a_op 	<= div_a_op;
				div_b_op 	<= div_b_op;
				mul_a_op 	<= mul_a_op;
				mul_b_op 	<= mul_b_op;
				add_a_op 	<= add_a_op;
				add_b_op 	<= add_b_op;
			end

			// Stage 5 : -2*L
			S5: begin
				div_a_op 	<= div_a_op;
				div_b_op 	<= div_b_op;
				mul_a_op 	<= 32'hc0000000; //-2.0
				mul_b_op 	<= L;
				add_a_op 	<= add_a_op;
				add_b_op 	<= add_b_op;
			end

			// Stage 6 : -2*L*epsilon
			S6: begin
				div_a_op 	<= div_a_op;
				div_b_op 	<= div_b_op;
				mul_a_op 	<= mul_out;
				mul_b_op 	<= epsilon;
				add_a_op 	<= add_a_op;
				add_b_op 	<= add_b_op;
			end

			// Stage 7 : x + (-2*L*epsilon)
			S7: begin
				div_a_op 	<= div_a_op;
				div_b_op 	<= div_b_op;
				mul_a_op 	<= mul_a_op;
				mul_b_op 	<= mul_b_op;
				add_a_op 	<= x;
				add_b_op 	<= mul_out;
			end

			// Stage 8 : pow(-1.0, l) * (x - 2 * l * epsilon)
			S8: begin
				div_a_op 	<= div_a_op;
				div_b_op 	<= div_b_op;
				mul_a_op 	<= (is_ood(L)) ? 32'hbf800000 : 32'h3f800000;
				mul_b_op 	<= add_out;
				add_a_op 	<= add_a_op;
				add_b_op 	<= add_b_op;
			end
			
			DONE: begin
				div_a_op 	<= div_a_op;
				div_b_op 	<= div_b_op;
				mul_a_op 	<= mul_a_op;
				mul_b_op 	<= mul_a_op;
				add_a_op 	<= add_a_op;
				add_b_op 	<= add_b_op;
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

function add_1(input [PRECISION-1:0] x);
	reg sign;
	reg [7:0] exponent;
	reg [23:0] mant;

	begin
		sign = x[31];
		exponent = x[30:23];
		mant = {1'b1, x[22:0]};

		mant = mant + 24'h800000; // add 1.0

		if(mant[23]) begin 	// OVERFLOW
			mant = mant >> 1;
			exponent = exponent + 1;
		end

		add_1 = {sign, exponent, mant[22:0]};
	end

endfunction

endmodule
