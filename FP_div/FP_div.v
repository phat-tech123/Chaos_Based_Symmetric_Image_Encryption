module FP_div#(
	parameter PRECISION = 32,
	parameter EXPONENT  = 8,
	parameter FRACTION  = 23,
	parameter BIAS 	    = 127
)(
	input clk,
	input reset_n,
	input   [PRECISION-1:0] a_operand, 		//format of IEEE-754 standard
	input   [PRECISION-1:0] b_operand, 		//format of IEEE-754 standard
	output reg [PRECISION-1:0] result 		//format of IEEE-754 standard 
);

//---------------------------- EXTRACT ----------------------------//
reg sign_a;
reg [EXPONENT-1:0] expo_a;
reg [FRACTION-1:0] frac_a;
reg sign_b;
reg [EXPONENT-1:0] expo_b;
reg [FRACTION-1:0] frac_b;

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin 
		sign_a <= 0;
		expo_a <= 0;
		frac_a <= 0;
		sign_b <= 0;
		expo_b <= 0;
		frac_b <= 0;
	end else begin	
		sign_a <= a_operand[PRECISION-1];
		expo_a <= a_operand[PRECISION-2 : PRECISION-EXPONENT-1];
		frac_a <= a_operand[FRACTION-1:0];
		sign_b <= b_operand[PRECISION-1];
		expo_b <= b_operand[PRECISION-2 : PRECISION-EXPONENT-1];
		frac_b <= b_operand[FRACTION-1:0];
	end
end
//---------------------------- EXTRACT ----------------------------//

// Stage 1: Add exponents and determine sign
wire [FRACTION+3:0] mant_a = {1'b1, frac_a, 3'b000}; 	//including the guard bit, the round bit, the sticky bit
wire [FRACTION+3:0] mant_b = {1'b1, frac_b, 3'b000}; 	//including the guard bit, the round bit, the sticky bit
wire sign_res = sign_a ^ sign_b;
wire signed [EXPONENT:0] expo_diff = ($signed({1'b0, expo_a}) - $signed(BIAS)) - ($signed({1'b0, expo_b}) - $signed(BIAS));

reg [1 + (EXPONENT+1) + (FRACTION+3+1)*2 - 1 : 0] minus_expo_deter_sign;

always@(posedge clk or negedge reset_n) begin
	if(!reset_n)
		minus_expo_deter_sign <= 0;
	else
		minus_expo_deter_sign <= {sign_res, expo_diff, mant_a, mant_b};
end

// Stage 2: Divide significands
wire sign_res_s1;
wire signed [EXPONENT:0] expo_diff_s1;
wire [FRACTION+3:0] mant_a_s1; 	//dividend
wire [FRACTION+3:0] mant_b_s1; 	//divisor
assign {sign_res_s1, expo_diff_s1, mant_a_s1, mant_b_s1} = minus_expo_deter_sign;

reg [2*(FRACTION+3+1)-1:0] divisor;
reg [2*(FRACTION+3+1)-1:0] remainder;
reg [FRACTION+3:0] quotient;


reg [1 + (EXPONENT+1) + (FRACTION+3+1) - 1 : 0] div_significands;
integer i;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n)
		div_significands <= 0;
	else begin
		divisor   = {{(FRACTION+3+1){1'b0}}, mant_b_s1};
		remainder = {{(FRACTION+3+1){1'b0}}, mant_a_s1};
		quotient  = 0;

		for(i = 0; i < FRACTION + 3 + 1; i = i+1) begin
			if(remainder >= divisor) begin
				remainder = remainder - divisor;
				quotient = (quotient << 1) | 1'b1;
			end else begin
				quotient = (quotient << 1) | 1'b0;
			end
			divisor = divisor >> 1;
		end

		div_significands <= {sign_res_s1, expo_diff_s1, quotient};
	end
end

// Stage 3: normalize
wire sign_res_s2;
wire signed [EXPONENT:0] expo_diff_s2;
wire [FRACTION+3:0] mant_res_s2;

assign {sign_res_s2, expo_diff_s2, mant_res_s2} = div_significands;

reg signed [EXPONENT:0] expo_diff_s2_r;
reg [FRACTION+3:0] mant_res_s2_r;

reg [1 + (EXPONENT+1) + (FRACTION+3+1) - 1 : 0] normalize;
//integer j;
always @(posedge clk or negedge reset_n) begin
    	if (!reset_n) begin
		normalize <= 0;
    	end else begin
            	mant_res_s2_r 	 = mant_res_s2;
            	expo_diff_s2_r = expo_diff_s2;
        
            	for(i = 0; i < FRACTION+3+1; i = i+1) begin 	//UNDERFLOW
                	if(mant_res_s2_r[FRACTION+3] == 0 && mant_res_s2_r != 0) begin
                    		mant_res_s2_r = mant_res_s2_r << 1;
                    		expo_diff_s2_r = expo_diff_s2_r - 1;
                	end
		end

        	normalize = {sign_res_s2, expo_diff_s2_r, mant_res_s2_r};
    	end
end

// Stage 4: rounding 
wire sign_res_s3;
wire signed [EXPONENT:0] expo_diff_s3;
wire [FRACTION+3:0] mant_res_s3;

assign {sign_res_s3, expo_diff_s3, mant_res_s3} = normalize;

wire [FRACTION-1:0] mant_rounded;
assign mant_rounded = mant_res_s3[FRACTION+3-1:3];

wire [EXPONENT-1:0] expo_rounded;
assign expo_rounded = expo_diff_s3[EXPONENT-1:0] + BIAS;

always @(posedge clk or negedge reset_n) begin
    	if (!reset_n) begin
        	result <= 0;
    	end else begin
        	result <= {sign_res_s3, expo_rounded, mant_rounded};
	end
end

endmodule
