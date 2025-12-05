module feistel_encrypt#(
	parameter ROUND = 5,
	parameter F_LAT = 6,
	parameter SBOX_WIDTH = 8,
	parameter KEY_SIZE   = 128,
	parameter DATA_WIDTH = 256
)(
	input clk,
	input reset_n,

	input [SBOX_WIDTH-1:0] sbox_out,   
	input sbox_valid,

	input [KEY_SIZE-1:0] K0,
	input [KEY_SIZE-1:0] K1,
	input [KEY_SIZE-1:0] K2,
	input [KEY_SIZE-1:0] K3,
	input [KEY_SIZE-1:0] K4,

	input tvalid,
	input [DATA_WIDTH-1:0] plaintext,

	output reg valid,
	output reg [DATA_WIDTH-1:0] ciphertext
);

localparam HALF = DATA_WIDTH/2; //128

reg [HALF-1:0] L_reg[0:ROUND][0:F_LAT-1];
reg [HALF-1:0] R_reg[0:ROUND][0:F_LAT-1];
reg F_valid_t[0:ROUND];
reg tvalid_temp;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		L_reg[0][0] <= 0;
		R_reg[0][0] <= 0;
		F_valid_t[0] <= 0;
	end else if(tvalid) begin
        L_reg[0][0] <= plaintext[DATA_WIDTH-1:HALF];
        R_reg[0][0] <= plaintext[HALF-1:0];
		F_valid_t[0] <= 1;
    end else begin 
		F_valid_t[0] <= 0;
    end
        
end

wire [KEY_SIZE-1:0] K[0:ROUND-1];
assign K[0] = K0;
assign K[1] = K1;
assign K[2] = K2;
assign K[3] = K3;
assign K[4] = K4;

reg F_tvalid[0:ROUND-1];
reg [HALF-1:0] F_state_in[0:ROUND-1];
wire [HALF-1:0] F_state_out[0:ROUND-1];
wire F_valid[0:ROUND-1];
genvar i;
integer j, k;
generate    
	for(i = 0; i < ROUND; i = i+1) begin : ROUND_LOOP
		F f_inst(
			.clk(clk),
			.reset_n(reset_n),
			.tvalid(F_tvalid[i]),
			.sbox_out(sbox_out),
			.sbox_valid(sbox_valid),
			.state_in(F_state_in[i]),
			.round_key(K[i]),
			.state_out(F_state_out[i]),
			.valid(F_valid[i])
		);
        end
    
	  for (i = 0; i < ROUND; i = i+1) begin : RND
        always @(posedge clk or negedge reset_n) begin
            if (!reset_n) begin
                F_tvalid[i] <= 0;
                F_state_in[i] <= 0;
            end else begin
                if (F_valid_t[i]) begin
                    F_state_in[i] <= R_reg[i][0];
                    F_tvalid[i] <= 1;
                end else begin
                    F_tvalid[i] <= 0;
                end
                for(k = 0; k < ROUND+1; k = k+1) begin
                    for(j = 1; j < F_LAT; j = j+1) begin
                        L_reg[k][j] <= L_reg[k][j-1];
                        R_reg[k][j] <= R_reg[k][j-1];
                    end
                end
            end
        end
	end
	 for (i = 0; i < ROUND; i = i+1) begin : R
            always @(posedge clk or negedge reset_n) begin
                if (!reset_n) begin
                    F_valid_t[i+1] <= 0;
                    R_reg[i+1][0] <= 0;
                    L_reg[i+1][0] <= 0;
                end else if (F_valid[i]) begin
                    F_valid_t[i+1] <= 1;
                    R_reg[i+1][0] <= L_reg[i][F_LAT-1] ^ F_state_out[i];
                    L_reg[i+1][0] <= R_reg[i][F_LAT-1];
                end else begin
                    F_valid_t[i+1] <= 0;
                end
            end 
         end
endgenerate

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		valid <= 0;
		ciphertext <= 0;
	end else if(F_valid_t[ROUND]) begin
		valid <= 1;
		ciphertext <= {L_reg[ROUND][0], R_reg[ROUND][0]};
	end else begin
		valid <= 0;
	end
end

endmodule



/*
module feistel_encrypt#(
	parameter ROUND = 5,
	parameter SBOX_WIDTH = 8,
	parameter KEY_SIZE   = 128,
	parameter DATA_WIDTH = 256
)(
	input clk,
	input reset_n,

	input [SBOX_WIDTH-1:0] sbox_out,   
	input sbox_valid,

	input [KEY_SIZE-1:0] K0,
	input [KEY_SIZE-1:0] K1,
	input [KEY_SIZE-1:0] K2,
	input [KEY_SIZE-1:0] K3,
	input [KEY_SIZE-1:0] K4,

	input tvalid,
	input [DATA_WIDTH-1:0] plaintext,

	output reg valid,
	output reg [DATA_WIDTH-1:0] ciphertext
);

localparam HALF = DATA_WIDTH/2; //128
reg [HALF-1:0] L_reg[0:ROUND];
reg [HALF-1:0] R_reg[0:ROUND];
reg [HALF-1:0] L_reg_temp;
reg tvalid_temp;
always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		L_reg[0] <= 0;
		R_reg[0] <= 0;
		L_reg_temp <= 0;
		tvalid_temp <= 0;
	end else if(tvalid) begin
		L_reg[0] <= plaintext[DATA_WIDTH-1:HALF];
		R_reg[0] <= plaintext[HALF-1:0];
		L_reg_temp <= plaintext[DATA_WIDTH-1:HALF];
		tvalid_temp <= 1;
	end else begin
	   tvalid_temp <= 0;
	end
end

reg F_tvalid[0:ROUND-1];
reg [HALF-1:0] F_state_in[0:ROUND-1];

wire [KEY_SIZE-1:0] K[0:ROUND-1];
assign K[0] = K0;
assign K[1] = K1;
assign K[2] = K2;
assign K[3] = K3;
assign K[4] = K4;

wire [HALF-1:0] F_state_out[0:ROUND-1];
wire F_valid[0:ROUND-1];
assign F_state_out[0] = L_reg_temp;
assign F_valid[0] = tvalid_temp;

genvar i;
generate    
	for(i = 0; i < ROUND; i = i+1) begin : ROUND_LOOP
		F f_inst(
			.clk(clk),
			.reset_n(reset_n),
			.tvalid(F_tvalid[i]),
			.sbox_out(sbox_out),
			.sbox_valid(sbox_valid),
			.state_in(F_state_in[i]),
			.round_key(K[i]),
			.state_out(F_state_out[i+1]),
			.valid(F_valid[i+1])
		);
        end
    
	  for (i = 0; i < ROUND; i = i+1) begin : RND
        always @(posedge clk or negedge reset_n) begin
            if (!reset_n) begin
                L_reg[i+1] <= 0;
                R_reg[i+1] <= 0;
                F_tvalid[i] <= 0;
                F_state_in[i] <= 0;
            end else if (F_valid[i]) begin
                F_tvalid[i] <= 1;
                F_state_in[i] <= R_reg[i];
                R_reg[i+1] <= L_reg[i] ^ F_state_out[i];
                L_reg[i+1] <= R_reg[i];
            end else begin
                F_tvalid[i] <= 0;
            end
        end
	end
endgenerate

always@(posedge clk or negedge reset_n) begin
	if(!reset_n) begin
		valid <= 0;
		ciphertext <= 0;
	end else if(F_valid[ROUND]) begin
		valid <= 1;
		ciphertext <= {L_reg[ROUND], R_reg[ROUND]};
	end else begin
		valid <= 0;
	end
end
*/

//endmodule