module FP_adder#(
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

// Stage 1: align
wire signed [EXPONENT:0] expo_unbiased_a = $signed({1'b0, expo_a}) - $signed(BIAS);
wire signed [EXPONENT:0] expo_unbiased_b = $signed({1'b0, expo_b}) - $signed(BIAS);
wire [FRACTION+3:0] mant_a = {1'b1, frac_a, 3'b000}; 	//including the guard bit, the round bit, the sticky bit
wire [FRACTION+3:0] mant_b = {1'b1, frac_b, 3'b000}; 	//including the guard bit, the round bit, the sticky bit

wire a_gt_b = (expo_unbiased_a > expo_unbiased_b) ? 1 : 0;
wire [EXPONENT:0] expo_diff = (a_gt_b) ? expo_unbiased_a - expo_unbiased_b : expo_unbiased_b - expo_unbiased_a; 

wire signed [EXPONENT:0] expo_larger, expo_norm, expo_shift;
wire [FRACTION+3:0] mant_norm_t, mant_shift_t;
wire [FRACTION+3:0] mant_norm, mant_shift; 	
wire sign_norm, sign_shift;
wire sign_res;
 	
assign expo_larger 	= (a_gt_b) ? expo_unbiased_a : expo_unbiased_b; 					

assign mant_norm_t 	= (a_gt_b) ? mant_a : mant_b; 
assign mant_shift_t 	= ((a_gt_b ? mant_b : mant_a) >> expo_diff) | {{(FRACTION+3){1'b0}}, !(expo_diff < 3)};

assign sign_norm 	= (a_gt_b) ? sign_a : sign_b;
assign sign_shift 	= (a_gt_b) ? sign_b : sign_a;

assign mant_norm 	= (sign_norm)  ? ~mant_norm_t  + 1'b1 : mant_norm_t;
assign mant_shift 	= (sign_shift) ? ~mant_shift_t + 1'b1 : mant_shift_t;

assign sign_res 	= (sign_norm  && sign_shift ||
			   sign_norm  && mant_norm_t > mant_shift_t || 
			   sign_shift && mant_shift_t > mant_norm_t) ? 1 : 0; 

reg [2 + 1 + EXPONENT + 1 + (FRACTION + 1 + 3)*2 - 1 : 0] align;
always @(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		align <= 0;
	end else begin
		align <= { sign_norm, sign_shift, sign_res, expo_larger, mant_norm, mant_shift };
	end
end

// Stage 2: add/sub mantissa
wire sign_s1, sign_norm_s1, sign_shift_s1;
wire signed [EXPONENT:0] expo_s1;
wire [FRACTION+3:0] mant_norm_s1, mant_shift_s1; 	
wire [FRACTION+3+1:0] mant_sum; 		//including carry bit  

assign {sign_norm_s1, sign_shift_s1, sign_s1, expo_s1, mant_norm_s1, mant_shift_s1} = align;
assign mant_sum = mant_norm_s1 + mant_shift_s1;  

reg [2 + 1 + (EXPONENT+1) + (FRACTION+3+1+1) - 1 : 0] add_significands;
always @(posedge clk or negedge reset_n) begin
    	if (!reset_n)
        	add_significands <= 0;
    	else 
        	add_significands <= {sign_norm_s1, sign_shift_s1, sign_s1, expo_s1, (sign_s1) ? ~mant_sum + 1'b1 : mant_sum};

end

// Stage 3: normalize
wire sign_s2, sign_norm_s2, sign_shift_s2;
wire signed [EXPONENT:0] expo_s2;
wire [FRACTION+3+1:0] mant_sum_s2;
assign {sign_norm_s2, sign_shift_s2, sign_s2, expo_s2, mant_sum_s2} = add_significands;

reg signed [EXPONENT:0] expo_s2_r;
reg [FRACTION+3+1:0] mant_sum_s2_r;

reg [1 + (EXPONENT+1) + (FRACTION+3+1+1) - 1 : 0] normalize;
integer i;
always @(posedge clk or negedge reset_n) begin
    	if (!reset_n) begin
        	normalize <= 0;
    	end else begin
        	mant_sum_s2_r 	= mant_sum_s2;
        	expo_s2_r 	= expo_s2;

		if (mant_sum_s2[FRACTION+3+1] && sign_norm_s2 == sign_shift_s2) begin  	//OVERFLOW
			mant_sum_s2_r = mant_sum_s2_r >> 1;
			expo_s2_r = expo_s2_r + 1;
		end 

		for (i = 0; i < FRACTION+1+3; i = i + 1) begin 				//UNDERFLOW
			if (mant_sum_s2_r[FRACTION+3] == 0 && mant_sum_s2_r != 0) begin
				mant_sum_s2_r = mant_sum_s2_r << 1;
				expo_s2_r = expo_s2_r - 1;
			end
		end
		
        	normalize = {sign_s2, expo_s2_r, mant_sum_s2_r};
    	end
end

// Stage 4: rounding 
wire sign_s3;
wire signed [EXPONENT:0] expo_s3;
wire [FRACTION+3+1:0] mant_sum_s3;

assign {sign_s3, expo_s3, mant_sum_s3} = normalize;

wire [EXPONENT-1:0] expo_rounded;
wire [FRACTION-1:0] mant_rounded;
assign mant_rounded = mant_sum_s3[FRACTION+3-1:3]; 
assign expo_rounded = expo_s3[EXPONENT-1:0] + BIAS;

always @(posedge clk or negedge reset_n) begin
    	if (!reset_n) begin
        	result <= 0;
    	end else begin
        	result <= {sign_s3, expo_rounded, mant_rounded};
    	end
end

endmodule
