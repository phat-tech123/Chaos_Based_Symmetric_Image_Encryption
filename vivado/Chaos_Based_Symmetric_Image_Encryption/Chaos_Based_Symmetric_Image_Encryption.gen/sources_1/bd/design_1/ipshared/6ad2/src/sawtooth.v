module sawtooth#(
	parameter PRECISION = 32
)(
	input clk,
	input reset_n,
	input sawtooth_tvalid,
	input [PRECISION-1:0] x,
	input [PRECISION-1:0] epsilon,
	output reg sawtooth_valid,
	output reg [PRECISION-1:0] result
);

reg [PRECISION-1:0] div_a_op, div_b_op;
reg [PRECISION-1:0] mul_a_op_1, mul_b_op_1;
reg [PRECISION-1:0] add_a_op_1, add_b_op_1;
reg [PRECISION-1:0] add_a_op_2, add_b_op_2;

wire [PRECISION-1:0] div_out;
wire [PRECISION-1:0] mul_out_1;
wire [PRECISION-1:0] add_out_1;
wire [PRECISION-1:0] add_out_2;

wire div_out_valid; reg div_tvalid;
floating_point_div div (
  .aclk(clk),
  .s_axis_a_tvalid(div_tvalid), .s_axis_a_tdata(div_a_op), 
  .s_axis_b_tvalid(div_tvalid), .s_axis_b_tdata(div_b_op), 
  .m_axis_result_tvalid(div_out_valid), .m_axis_result_tdata(div_out)
);
wire add_out_valid_1; reg add_tvalid_1;
floating_point_add add_1 (
  .aclk(clk),                       
  .s_axis_a_tvalid(add_tvalid_1), .s_axis_a_tdata(add_a_op_1), 
  .s_axis_b_tvalid(add_tvalid_1), .s_axis_b_tdata(add_b_op_1),
  .m_axis_result_tvalid(add_out_valid_1), .m_axis_result_tdata(add_out_1) 
);
wire mul_out_valid_1; reg mul_tvalid_1;
floating_point_mul mul_1 (
  .aclk(clk), 
  .s_axis_a_tvalid(mul_tvalid_1), .s_axis_a_tdata(mul_a_op_1),
  .s_axis_b_tvalid(mul_tvalid_1), .s_axis_b_tdata(mul_b_op_1),  
  .m_axis_result_tvalid(mul_out_valid_1), .m_axis_result_tdata(mul_out_1) 
);
wire add_out_valid_2; reg add_tvalid_2;
floating_point_add add_2 (
  .aclk(clk),                       
  .s_axis_a_tvalid(add_tvalid_2), .s_axis_a_tdata(add_a_op_2), 
  .s_axis_b_tvalid(add_tvalid_2), .s_axis_b_tdata(add_b_op_2),
  .m_axis_result_tvalid(add_out_valid_2), .m_axis_result_tdata(add_out_2) 
);

reg [PRECISION-1:0] x_r[0:47];
reg [PRECISION-1:0] L_r[0:18];

// Fix timing 1
reg [PRECISION-1:0] half_r;
reg half_valid;

// Fix timing 2
reg [PRECISION-1:0] floor_r;
reg floor_valid;

// Fix timing 3
reg [PRECISION-1:0] add_out_2_r;
reg odd_r;
reg odd_valid;

integer i;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		div_a_op 	<= 0;
		div_b_op 	<= 0;
		add_a_op_1 	<= 0;
		add_b_op_1 	<= 0;
		mul_a_op_1 	<= 0;
		mul_b_op_1 	<= 0;
		add_a_op_2 	<= 0;
		add_b_op_2 	<= 0;
		div_tvalid 	<= 0;
		add_tvalid_1 	<= 0;
		mul_tvalid_1 	<= 0;
		add_tvalid_2 	<= 0;
		sawtooth_valid  <= 0;
		result      	<= 0;
		half_r <= 0;
		half_valid <= 0;
		floor_r <= 0;
		floor_valid <= 0;
		add_out_2_r <= 0;
		odd_r <= 0;
		odd_valid <= 0;
		
		for(i = 0; i < 48; i = i+1) x_r[i] <= 0;
		for(i = 0; i < 19; i = i+1) L_r[i] <= 0;
        
	end else begin
		//-------------- pass down reg ------------//
		for(i = 0; i < 47; i = i+1) x_r[i+1] <= x_r[i];
		for(i = 0; i < 18; i = i+1) L_r[i+1] <= L_r[i];

		//------------------ div ------------------//
		if(sawtooth_tvalid) begin
			div_a_op 	<= x;
			div_b_op 	<= epsilon;
			div_tvalid 	<= 1;
		end else begin
			div_tvalid 	<= 0;
		end

		x_r[0] 		<= x;

		//------------------ add ------------------//
		if(div_out_valid) begin
			add_a_op_1 	<= 32'h3f800000;
			add_b_op_1 	<= div_out;      
			add_tvalid_1 	<= 1;
		end else begin
			add_tvalid_1 	<= 0;
		end

		//------------------ *0.5 ------------------//
        if(add_out_valid_1) begin
            half_r <= mul_half(add_out_1);
            half_valid <= 1;
        end else begin
            half_valid <= 0;
        end
        
		//------------------ floor ------------------//
        if (half_valid) begin
            floor_r <= floor(half_r);
            floor_valid <= 1;
        end else begin
            floor_valid <= 0;
        end
        
		//------------------ mul ------------------//
		if(floor_valid) begin
			L_r[0] 		<= floor_r;
			mul_a_op_1 	<= floor_r;
			mul_b_op_1 	<= mul_neg2(epsilon);
			mul_tvalid_1 	<= 1;
		end else begin
			mul_tvalid_1 	<= 0;
		end

		//------------------ add ------------------//
		if(mul_out_valid_1) begin
			add_a_op_2 	<= x_r[47];
			add_b_op_2 	<= (mul_out_valid_1) ? mul_out_1 : 0;
			add_tvalid_2 	<= 1;
		end else begin
			add_tvalid_2 	<= 0;
		end
        
        if(add_out_valid_2) begin
			odd_r <= is_ood(L_r[18]);
			add_out_2_r <= add_out_2;
			odd_valid <= 1;
		end else begin
			odd_valid <= 0;
		end

		//------------------ mul ------------------//
		if(odd_valid) begin
			result 	<= odd_r ? {~add_out_2_r[31], add_out_2_r[30:0]} : add_out_2_r;
			sawtooth_valid <= 1;
		end else begin
			sawtooth_valid <= 0;
		end
	end
end

function [31:0] floor(input [31:0] x);
    reg sign;
    reg [7:0] exp;
    reg [22:0] frac;
    reg [23:0] mant;
    integer shift;

    begin
        sign = x[31];
        exp  = x[30:23];
        frac = x[22:0];

        // |x| < 1.0
        if (exp < 8'd127) begin
            floor = sign ? 32'hBF800000 : 32'h00000000;
        end
        // already integer
        else if (exp >= 8'd150) begin
            floor = x;
        end
        else begin
            shift = 150 - exp;                 // 0..23
            mant  = {1'b1, frac};
            mant  = (mant >> shift) << shift; // truncate
            floor = {sign, exp, mant[22:0]};
        end
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
