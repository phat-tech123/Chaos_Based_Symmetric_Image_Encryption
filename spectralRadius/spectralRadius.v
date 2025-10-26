module spectralRadius#( //Using Power Method
	parameter PRECISION 	= 32,
	parameter ITER 		= 100,
	parameter EPS 		= 1e-9,
	parameter DIMENSION 	= 3
)(
	input clk,
	input reset_n,
	input [PRECISION-1:0] A00, A01, A02,
	input [PRECISION-1:0] A10, A11, A12,
	input [PRECISION-1:0] A20, A21, A22,
	output [PRECISION-1:0] max_eigenvalue
);

parameter S0 = 0;
parameter S1 = 1;
parameter S2 = 2;
parameter S3 = 3;
parameter S4 = 4;
parameter S5 = 5;
parameter S6 = 6;
parameter S7 = 7;
parameter S8 = 8;
parameter S9 = 9;
parameter S10 = 10;
parameter S11 = 11;
parameter S12 = 12;
parameter S13 = 13;
parameter S14 = 14;
parameter S15 = 15;
parameter S16 = 16;
parameter S17 = 17;
parameter S18 = 18;
parameter S19 = 19;
parameter S20 = 20;
parameter S21 = 21;
parameter S22 = 22;
parameter S23 = 23;

parameter DONE = 24;
parameter STOP = 25;

// Floating point multipiler 
reg [PRECISION-1:0] mul_a_op_1, mul_b_op_1, mul_a_op_2, mul_b_op_2, mul_a_op_3, mul_b_op_3;
wire [PRECISION-1:0] mul_out_1, mul_out_2, mul_out_3;
FP_mul #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) mul_1(
	.clk(clk), .reset_n(reset_n),
	.a_operand(mul_a_op_1), .b_operand(mul_b_op_1), 
	.result(mul_out_1)
);
FP_mul #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) mul_2(
	.clk(clk), .reset_n(reset_n),
	.a_operand(mul_a_op_2), .b_operand(mul_b_op_2), 
	.result(mul_out_2)
);
FP_mul #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) mul_3(
	.clk(clk), .reset_n(reset_n),
	.a_operand(mul_a_op_3), .b_operand(mul_b_op_3), 
	.result(mul_out_3)
);

// Floating point addition
reg [PRECISION-1:0] add_a_op_1, add_b_op_1, add_a_op_2, add_b_op_2, add_a_op_3, add_b_op_3;
wire [PRECISION-1:0] add_out_1, add_out_2, add_out_3;
FP_adder #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) add_1(
	.clk(clk), .reset_n(reset_n),
	.a_operand(add_a_op_1), .b_operand(add_b_op_1), 
	.result(add_out_1)
);
FP_adder #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) add_2(
	.clk(clk), .reset_n(reset_n),
	.a_operand(add_a_op_2), .b_operand(add_b_op_2), 
	.result(add_out_2)
);
FP_adder #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) add_3(
	.clk(clk), .reset_n(reset_n),
	.a_operand(add_a_op_3), .b_operand(add_b_op_3), 
	.result(add_out_3)
);

// Floating point divider
reg [PRECISION-1:0] div_a_op_1, div_b_op_1, div_a_op_2, div_b_op_2, div_a_op_3, div_b_op_3;
wire [PRECISION-1:0] div_out_1, div_out_2, div_out_3;
FP_div #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) div_1(
	.clk(clk), .reset_n(reset_n),
	.a_operand(div_a_op_1), .b_operand(div_b_op_1), 
	.result(div_out_1)
);
FP_div #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) div_2(
	.clk(clk), .reset_n(reset_n),
	.a_operand(div_a_op_2), .b_operand(div_b_op_2), 
	.result(div_out_2)
);
FP_div #(.PRECISION(32), .EXPONENT(8), .FRACTION(23), .BIAS(127)) div_3(
	.clk(clk), .reset_n(reset_n),
	.a_operand(div_a_op_3), .b_operand(div_b_op_3), 
	.result(div_out_3)
);

reg [PRECISION-1:0] mul_out_t1, mul_out_t2, mul_out_t3;
reg [PRECISION-1:0] ini_vector[DIMENSION-1:0];
reg [PRECISION-1:0] out_vector[DIMENSION-1:0];
reg [PRECISION-1:0] prev, max, compare;
reg [4:0] state;
reg [10:0] counter;

always@(posedge clk or negedge) begin
	if(!reset_n) begin
		state <= S0;
	else if (state == S23) begin
		if(counter == ITER || compare < EPS) begin
			state <= DONE;
		end else begin
			state <= S1;
			counter <= counter + 1;
		end
	end else if (state == DONE || state == STOP) begin
		state <= STOP;
	end else begin
		state <= state + 1;
	end
end

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		mul_a_op_1 <= 0;
		mul_b_op_1 <= 0;
		mul_a_op_2 <= 0;
		mul_b_op_2 <= 0;
		mul_a_op_3 <= 0;
		mul_b_op_3 <= 0;
		ini_vector[0] <= 32'h3f800000;
		ini_vector[1] <= 32'h3f800000;
		ini_vector[2] <= 32'h3f800000;
		out_vector[0] <= 32'h0;
		out_vector[1] <= 32'h0;
		out_vector[2] <= 32'h0;
		counter       <= 0;	
	end else begin
		case(state) 
			S0: begin // A[0][0] * init_vector[0] & A[0][1] * init_vector[1] & A[0][2] * init_vector[2];
				mul_a_op_1 <= A00;
				mul_b_op_1 <= ini_vector[0];
				mul_a_op_2 <= A01;
				mul_b_op_2 <= ini_vector[1];
				mul_a_op_3 <= A02;
				mul_b_op_3 <= ini_vector[2];
			end

			S1: begin // A[1][0] * init_vector[0] & A[1][1] * init_vector[1] & A[1][2] * init_vector[2];
				mul_a_op_1 <= A10;
				mul_b_op_1 <= ini_vector[0];
				mul_a_op_2 <= A11;
				mul_b_op_2 <= ini_vector[1];
				mul_a_op_3 <= A12;
				mul_b_op_3 <= ini_vector[2];
			end

			S2: begin // A[2][0] * init_vector[0] & A[2][1] * init_vector[1] & A[2][2] * init_vector[2];
				mul_a_op_1 <= A20;
				mul_b_op_1 <= ini_vector[0];
				mul_a_op_2 <= A21;
				mul_b_op_2 <= ini_vector[1];
				mul_a_op_3 <= A22;
				mul_b_op_3 <= ini_vector[2];
			end

			S3: begin // Waiting
			end
			S4: begin // Waiting
			end

			S5: begin //Got the ouput for the first multipilers
				add_a_op_1 <= mul_out_1;	
				add_b_op_1 <= mul_out_2;	
				mul_out_t1 <= mul_out_3;
			end

			S6: begin //Got the ouput for the second multipilers
				add_a_op_1 <= mul_out_1;	
				add_b_op_1 <= mul_out_2;	
				mul_out_t2 <= mul_out_3;
			end

			S7: begin //Got the ouput for the third multipilers
				add_a_op_1 <= mul_out_1;	
				add_b_op_1 <= mul_out_2;	
				mul_out_t3 <= mul_out_3;
			end

			S8: begin // Waiting
			end
			S9: begin // Waiting
			end

			S10: begin
				add_a_op_2 <= add_out_1;
				add_b_op_2 <= mul_out_t1;
			end

			S11: begin
				add_a_op_2 <= add_out_1;
				add_b_op_2 <= mul_out_t2;
			end

			S12: begin
				add_a_op_2 <= add_out_1;
				add_b_op_2 <= mul_out_t3;
			end

			S13: begin // Waiting
			end
			S14: begin // Waiting
			end

			S15: begin 
				out_vector[0] 	<= add_out_1;
				max 	   	<= add_out_1;
			end

			S16: begin
				out_vector[1] 	<= add_out_1;
				max 		<= (fp_gt(add_out_1, max)) ? add_out_1 : max;
			end

			S17: begin 
				out_vector[2] 	<= add_out_1;
				max 		<= (fp_gt(add_out_1, max)) ? add_out_1 : max;
			end

			S18: begin
				div_a_op_1 	<= out_vector[0];
				div_b_op_1 	<= max;
				div_a_op_2 	<= out_vector[1];
				div_b_op_2 	<= max;
				div_a_op_3 	<= out_vector[2];
				div_b_op_3 	<= max;

				add_a_op_3 	<= max;
				add_b_op_3 	<= {~prev[31], prev{30:0}};

			end

			S19: begin // Waiting
			end
			S20: begin // Waiting
			end
			S21: begin // Waiting
			end
			S22: begin // Waiting
			end

			S23: begin 
				ini_vector[0] 	<= div_out_1;
				ini_vector[1] 	<= div_out_2;
				ini_vector[2] 	<= div_out_3;

				compare 	<= add_out_3;

				prev 		<= max;
			end

			DONE: begin
				result 		<= prev;
			end

			STOP: begin
				result 		<= result;
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

        if (a_sign != b_sign) 
            fp_gt = (a_sign == 0); 
        else if (a_exp != b_exp)
            fp_gt = (a_sign == 0) ? (a_exp > b_exp) : (a_exp < b_exp);
        else
            fp_gt = (a_sign == 0) ? (a_frac > b_frac) : (a_frac < b_frac);
    end
endfunction
endmodule
