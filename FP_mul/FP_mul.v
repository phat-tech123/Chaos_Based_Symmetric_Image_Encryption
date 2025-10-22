module FP_mul#(
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
wire [FRACTION:0] mant_a = {1'b1, frac_a};
wire [FRACTION:0] mant_b = {1'b1, frac_b};
wire sign_res = sign_a ^ sign_b;
wire signed [EXPONENT:0] expo_sum = $signed({1'b0, expo_a}) - $signed(BIAS) + $signed({1'b0, expo_b}) - $signed(BIAS);

reg [1 + (EXPONENT+1) + (FRACTION+1)*2 - 1 : 0] add_expo_deter_sign;

always@(posedge clk or negedge reset_n) begin
	if(!reset_n)
		add_expo_deter_sign <= 0;
	else
		add_expo_deter_sign <= {sign_res, expo_sum, mant_a, mant_b};
end

// Stage 2: Multiply significands
wire sign_res_s1;
wire signed [EXPONENT:0] expo_sum_s1;
wire [FRACTION:0] mant_a_s1;
wire [FRACTION:0] mant_b_s1;
assign {sign_res_s1, expo_sum_s1, mant_a_s1, mant_b_s1} = add_expo_deter_sign;

wire [2*(FRACTION+1)-1:0] mant_res = mant_a_s1 * mant_b_s1;

reg [1 + (EXPONENT+1) + 2*(FRACTION+1) - 1 : 0] mul_significands;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n)
		mul_significands <= 0;
	else
		mul_significands <= {sign_res_s1, expo_sum_s1, mant_res};
end

// Stage 3: normalize
wire sign_res_s2;
wire signed [EXPONENT:0] expo_sum_s2;
wire [2*(FRACTION+1)-1:0] mant_res_s2;

assign {sign_res_s2, expo_sum_s2, mant_res_s2} = mul_significands;

reg signed [EXPONENT:0] expo_sum_s2_r;
reg [2*(FRACTION+1)-1:0] mant_res_s2_r;

reg [1 + (EXPONENT+1) + (FRACTION+1)*2+1 - 1 : 0] normalize;
integer i;
always @(posedge clk or negedge reset_n) begin
	if (!reset_n) begin
        	normalize <= 0;
    	end else begin
            	mant_res_s2_r 	 = mant_res_s2;
            	expo_sum_s2_r = expo_sum_s2;
        
            	if (mant_res_s2_r[2*(FRACTION+1)-1] == 1) begin 		//OVERFLOW
                	mant_res_s2_r = mant_res_s2_r >> 1;
                	expo_sum_s2_r = expo_sum_s2_r + 1;
           	end 
        
            	for(i = 0; i < 2*FRACTION; i = i+1) begin 			//UNDERFLOW
                	if(mant_res_s2_r[2*FRACTION] == 0 && mant_res_s2_r != 0) begin
                    		mant_res_s2_r = mant_res_s2_r << 1;
                    		expo_sum_s2_r = expo_sum_s2_r - 1;
                	end
		end

        	normalize = {sign_res_s2, expo_sum_s2_r, mant_res_s2_r};
    	end
end

// Stage 4: rounding 
wire sign_res_s3;
wire signed [EXPONENT:0] expo_sum_s3;
wire [2*(FRACTION+1)-1:0] mant_res_s3;

assign {sign_res_s3, expo_sum_s3, mant_res_s3} = normalize;

wire [FRACTION-1:0] mant_rounded;
assign mant_rounded = mant_res_s3[2*(FRACTION)-1 : (FRACTION)];

wire [EXPONENT-1:0] expo_rounded;
assign expo_rounded = expo_sum_s3[EXPONENT-1:0] + BIAS;

always @(posedge clk or negedge reset_n) begin
    	if (!reset_n) begin
        	result <= 0;
    	end else begin
        	result <= {sign_res_s3, expo_rounded, mant_rounded};
	end
end
endmodule
