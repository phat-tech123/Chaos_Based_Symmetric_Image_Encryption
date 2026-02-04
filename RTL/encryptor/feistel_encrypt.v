//module feistel_encrypt#(
//	parameter ROUND = 5,
//	parameter F_LAT = 6,
//	parameter SBOX_WIDTH = 8,
//	parameter KEY_SIZE   = 128,
//	parameter DATA_WIDTH = 256
//)(
//	input clk,
//	input reset_n,

//	input [SBOX_WIDTH-1:0] sbox_out,   
//	input sbox_valid,

//    input key_valid,
//	input [KEY_SIZE-1:0] K0,
//	input [KEY_SIZE-1:0] K1,
//	input [KEY_SIZE-1:0] K2,
//	input [KEY_SIZE-1:0] K3,
//	input [KEY_SIZE-1:0] K4,

//	input tvalid,
//	input [DATA_WIDTH-1:0] plaintext,

//	output reg valid,
//	output reg [DATA_WIDTH-1:0] ciphertext
//);

//localparam HALF = DATA_WIDTH/2; //128

//reg [HALF-1:0] L_reg[0:ROUND-1][0:F_LAT-1];
//reg [HALF-1:0] R_reg[0:ROUND-1][0:F_LAT-1];
//reg F_valid_t[0:ROUND-1];
//reg tvalid_temp;
//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		L_reg[0][0] <= 0;
//		R_reg[0][0] <= 0;
//		F_valid_t[0] <= 0;
//	end else if(tvalid) begin
//        L_reg[0][0] <= plaintext[DATA_WIDTH-1:HALF];
//        R_reg[0][0] <= plaintext[HALF-1:0];
//		F_valid_t[0] <= 1;
//    end else begin 
//		F_valid_t[0] <= 0;
//    end
        
//end

//wire [KEY_SIZE-1:0] K[0:ROUND-1];
//assign K[0] = K0;
//assign K[1] = K1;
//assign K[2] = K2;
//assign K[3] = K3;
//assign K[4] = K4;

//reg F_tvalid[0:ROUND-1];
//reg [HALF-1:0] F_state_in[0:ROUND-1];
//wire [HALF-1:0] F_state_out[0:ROUND-1];
//wire F_valid[0:ROUND-1];
//genvar i;
//integer j, k;
//generate    
//	for(i = 0; i < ROUND; i = i+1) begin : ROUND_LOOP
//		F f_inst(
//			.clk(clk),
//			.reset_n(reset_n),
//			.tvalid(F_tvalid[i]),
//			.sbox_out(sbox_out),
//			.sbox_valid(sbox_valid),
//			.state_in(F_state_in[i]),
//			.round_key(K[i]),
//			.state_out(F_state_out[i]),
//			.valid(F_valid[i])
//		);
//        end
    
//	  for (i = 0; i < ROUND; i = i+1) begin : RND
//        always @(posedge clk or negedge reset_n) begin
//            if (!reset_n) begin
//                F_tvalid[i] <= 0;
//                F_state_in[i] <= 0;
//            end else begin
//                if (F_valid_t[i]) begin
//                    F_state_in[i] <= R_reg[i][0];
//                    F_tvalid[i] <= 1;
//                end else begin
//                    F_tvalid[i] <= 0;
//                end
//                for(k = 0; k < ROUND; k = k+1) begin
//                    for(j = 1; j < F_LAT; j = j+1) begin
//                        L_reg[k][j] <= L_reg[k][j-1];
//                        R_reg[k][j] <= R_reg[k][j-1];
//                    end
//                end
//            end
//        end
//	end
//	 for (i = 0; i < ROUND-1; i = i+1) begin : R
//            always @(posedge clk or negedge reset_n) begin
//                if (!reset_n) begin
//                    F_valid_t[i+1] <= 0;
////                    R_reg[i+1][0] <= 0;
////                    L_reg[i+1][0] <= 0;
//                end else if (F_valid[i]) begin
//                    F_valid_t[i+1] <= 1;
//                    R_reg[i+1][0] <= L_reg[i][F_LAT-1] ^ F_state_out[i];
//                    L_reg[i+1][0] <= R_reg[i][F_LAT-1];
//                end else begin
//                    F_valid_t[i+1] <= 0;
//                end
//            end 
//         end
//endgenerate

//always@(posedge clk or negedge reset_n) begin
//	if(!reset_n) begin
//		valid <= 0;
//		ciphertext <= 0;
//	end else if(F_valid[ROUND-1]) begin
//		valid <= 1;
//		ciphertext <= {L_reg[ROUND-1][F_LAT-1] ^ F_state_out[ROUND-1], R_reg[ROUND-1][F_LAT-1]};
//	end else begin
//		valid <= 0;
//	end
//end

//endmodule

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

    input key_valid,
    input [KEY_SIZE-1:0] K0, K1, K2, K3, K4,

    input tvalid,
    input [DATA_WIDTH-1:0] plaintext,

    output reg valid,
    output reg [DATA_WIDTH-1:0] ciphertext
);

localparam HALF = DATA_WIDTH/2; // 128

// --- 1. Pipeline Registers (SRL Candidates) ---
// Using attributes to guide Vivado to use SRL16/32
(* srl_style = "reg_srl_reg" *) reg [HALF-1:0] L_reg[0:ROUND-1][0:F_LAT-1];
(* srl_style = "reg_srl_reg" *) reg [HALF-1:0] R_reg[0:ROUND-1][0:F_LAT-1];

// Valid signals for inter-stage control
reg F_valid_t[0:ROUND-1];

// Key Mapping
wire [KEY_SIZE-1:0] K[0:ROUND-1];
assign K[0] = K0; assign K[1] = K1; assign K[2] = K2; assign K[3] = K3; assign K[4] = K4;

// ---------------------------------------------------------
// 2. INPUT STAGE (Load Data into Round 0)
// ---------------------------------------------------------
// Control Path (Valid Signal - With Reset)
always@(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
        F_valid_t[0] <= 0;
    end else if(tvalid) begin
        F_valid_t[0] <= 1;
    end else begin 
        F_valid_t[0] <= 0;
    end
end

// Data Path (Data Loading - No Reset)
always@(posedge clk) begin
    if(tvalid) begin
        L_reg[0][0] <= plaintext[DATA_WIDTH-1:HALF];
        R_reg[0][0] <= plaintext[HALF-1:0];
    end
end

// ---------------------------------------------------------
// 3. PIPELINE GENERATION
// ---------------------------------------------------------
reg F_tvalid[0:ROUND-1];
reg [HALF-1:0] F_state_in[0:ROUND-1];
wire [HALF-1:0] F_state_out[0:ROUND-1];
wire F_valid[0:ROUND-1];

genvar i;
integer j;

generate    
    for(i = 0; i < ROUND; i = i+1) begin : ROUND_LOGIC
        
        // --- A. Function F Instance ---
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

        // --- B. Internal Pipeline Delay (Shift Register) ---
        // Strictly Synchronous, No Reset -> Infers SRL
        always @(posedge clk) begin
            for(j = 1; j < F_LAT; j = j+1) begin
                L_reg[i][j] <= L_reg[i][j-1];
                R_reg[i][j] <= R_reg[i][j-1];
            end
        end

        // --- C. Function F Input Control ---
        // Control (Reset)
        always @(posedge clk or negedge reset_n) begin
            if (!reset_n) begin
                F_tvalid[i]   <= 0;
            end else begin
                if (F_valid_t[i]) F_tvalid[i] <= 1;
                else              F_tvalid[i] <= 0;
            end
        end

        // Data (No Reset)
        always @(posedge clk) begin
            if (F_valid_t[i]) begin
                F_state_in[i] <= R_reg[i][0];
            end
        end
        
    end // End Loop

    // --- D. Inter-Stage Connection (Round i -> Round i+1) ---
    for (i = 0; i < ROUND-1; i = i+1) begin : CONNECT_LOGIC
        
        // Control Path (Reset)
        always @(posedge clk or negedge reset_n) begin
            if (!reset_n) begin
                F_valid_t[i+1] <= 0;
            end else if (F_valid[i]) begin
                F_valid_t[i+1] <= 1;
            end else begin
                F_valid_t[i+1] <= 0;
            end
        end 

        // Data Path (No Reset)
        always @(posedge clk) begin
            if (F_valid[i]) begin
                // L[i+1] comes from R[i] (delayed)
                L_reg[i+1][0]  <= R_reg[i][F_LAT-1]; 
                // R[i+1] comes from L[i] (delayed) XOR F_out
                R_reg[i+1][0]  <= L_reg[i][F_LAT-1] ^ F_state_out[i];
            end
        end
    end

endgenerate

// ---------------------------------------------------------
// 4. OUTPUT STAGE
// ---------------------------------------------------------
always@(posedge clk or negedge reset_n) begin
    if(!reset_n) begin
        valid <= 0;
        ciphertext <= 0;
    end else if(F_valid[ROUND-1]) begin
        valid <= 1;
        ciphertext <= {L_reg[ROUND-1][F_LAT-1] ^ F_state_out[ROUND-1], R_reg[ROUND-1][F_LAT-1]};
    end else begin
        valid <= 0;
    end
end

endmodule