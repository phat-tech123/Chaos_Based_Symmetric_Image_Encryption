module crypto_engine_core #(
    parameter PRECISION      = 32,
    parameter SBOX_SIZE      = 256,
    parameter EXTRACT_WIDTH  = 23,
    parameter MIX_WIDTH      = 8,
    parameter ROUND          = 5,
    parameter KEY_SIZE       = 128,
    parameter DATA_WIDTH     = 256,
    parameter F_LAT          = 6,
    parameter ENCR_LAT       = 5*6+1
)(
    input wire clk,
    input wire reset_n,
    
    // ============================================================
    // 1. COMMAND INTERFACE
    // ============================================================
    input wire [1:0] op_mode,   // 00: IDLE, 01: FULL_INIT, 10: RE_KEY, 11: ENCRYPT
    input wire cmd_start,
    
    // Config inputs (Parameters & TRNG)
    input wire trng_valid,  
    input wire [PRECISION-1:0] trng_x0, trng_x1, trng_x2,
    input wire [DATA_WIDTH-1:0] iv,
    
    input wire [PRECISION-1:0] user_sigma,
    input wire [PRECISION-1:0] user_A00, user_A01, user_A02,
    input wire [PRECISION-1:0] user_A10, user_A11, user_A12,
    input wire [PRECISION-1:0] user_A20, user_A21, user_A22,
    
    // Key Input
    input wire [KEY_SIZE-1:0] user_key,
    
    // Status Output
//    output wire [2:0] status_state,
    
    // ============================================================
    // 2. DATA STREAM INTERFACE (Mode 3)
    // ============================================================
    
    // --------------------------------------------------------
    // Slave Interface 
    // --------------------------------------------------------
    input  wire                  s_axis_tvalid, 
    output wire                  s_axis_tready,  
    input  wire [DATA_WIDTH-1:0] s_axis_tdata,   
    input  wire                  s_axis_tlast,   

    // --------------------------------------------------------
    // Master Interface
    // --------------------------------------------------------
    output wire                  m_axis_tvalid, 
    input  wire                  m_axis_tready, 
    output wire [DATA_WIDTH-1:0] m_axis_tdata, 
    output wire                  m_axis_tlast   
);

    // Controller Trigger Signals
    wire sbox_gen_trigger;
    wire key_gen_trigger;
    wire crypto_trigger;

    // Feedback Status Signals (From Sub-modules to Controller)
    wire sbox_done_sig;
    wire key_gen_done_sig;

    // Data Flow Signals
    wire prng_data_valid;
    wire [PRECISION-1:0] rng1, rng2, rng3;
    
    wire sbox_stream_valid;
    wire [MIX_WIDTH-1:0] sbox_stream_data;
    
    wire key_gen_valid;
    wire [KEY_SIZE-1:0] key_round;
    
    wire [2:0] status_state;
    
    reg is_first_block_internal;
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            is_first_block_internal <= 1; 
        end else if (s_axis_tvalid && s_axis_tready) begin
            if (s_axis_tlast) 
                is_first_block_internal <= 1; 
            else 
                is_first_block_internal <= 0; 
        end
    end
    // ============================================================
    // 1. CONTROLLER INSTANTIATION
    // ============================================================
    controller u_controller (
        .clk(clk),
        .reset_n(reset_n),
        
        // Command Interface
        .op_mode(op_mode),
        .cmd_start(cmd_start),
        
        // Status Inputs
        .trng_valid(trng_valid),
        .sbox_done(sbox_done_sig),
        .key_gen_done(key_gen_done_sig),
        .is_first_block(is_first_block_internal),  
        .is_last_block(s_axis_tlast), 
        
        .s_axis_tvalid(s_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .s_axis_tready(s_axis_tready),
        
        // Control Outputs
        .sbox_gen_trigger(sbox_gen_trigger), 
        .key_gen_trigger(key_gen_trigger),
        .crypto_trigger(crypto_trigger),
        // Status Output
        .status_state(status_state)
    );

    // ============================================================
    // 2. PRNG MODULE & SBOX GENERATOR MODULE
    // ============================================================
    wire prng_sbox_clk_enable = sbox_gen_trigger | (status_state == 3'd2); // S_GEN_SBOX

    // 2. Tạo Clock Gated an toàn
    wire gated_clk;
     BUFGCE u_bufgce (
        .O(gated_clk),
        .I(clk), 
        .CE(prng_sbox_clk_enable)  
    );
    
    PRNG #(.PRECISION(PRECISION)) u_prng (
        .clk(gated_clk), 
        .reset_n(reset_n), 
        .tvalid(sbox_gen_trigger), 
        .x0(trng_x0), .x1(trng_x1), .x2(trng_x2),
        
        // Parameters from User (Software Config)
        .A00(user_A00), .A01(user_A01), .A02(user_A02),
        .A10(user_A10), .A11(user_A11), .A12(user_A12),
        .A20(user_A20), .A21(user_A21), .A22(user_A22),
        .sigma_in(user_sigma),
        
        // Outputs
        .valid(prng_data_valid),
        .pseudoRandomNumber1(rng1), 
        .pseudoRandomNumber2(rng2), 
        .pseudoRandomNumber3(rng3)
    );

    sbox_generator #(
        .SIZE(SBOX_SIZE), .PRECISION(PRECISION),
        .EXTRACT_WIDTH(EXTRACT_WIDTH), .MIX_WIDTH(MIX_WIDTH)
    ) u_sbox_gen (
        .clk(gated_clk), 
        .reset_n(reset_n),
        
        // Input stream from PRNG
        .tvalid(prng_data_valid),
        .pseudoRandomNumber1(rng1), 
        .pseudoRandomNumber2(rng2), 
        .pseudoRandomNumber3(rng3),
        
        // Outputs
        .done_sbox(sbox_done_sig), // To Controller
        .valid(sbox_stream_valid), 
        .V_out(sbox_stream_data)
    );

    // ============================================================
    // 4. KEY GENERATOR MODULE
    // ============================================================
    key_generator #(
        .V_SIZE(MIX_WIDTH), .KEY_SIZE(KEY_SIZE), .ROUND(ROUND)
    ) u_key_gen (
        .clk(clk), 
        .reset_n(reset_n),
        
        .initial_key(user_key),
        
        .sbox_valid(sbox_stream_valid), 
        .V_out(sbox_stream_data), 
        
        .tvalid(key_gen_trigger), 
        
        // Outputs
        .valid(key_gen_valid),
        .key(key_round),
        .done_key(key_gen_done_sig) // To Controller
    );

    // ============================================================
    // 5. ENCRYPTOR MODULE
    // ============================================================
    reg is_last_block_out [0:ENCR_LAT+2];
    integer i;
    always@(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            for(i = 0; i < ENCR_LAT+3; i = i + 1) is_last_block_out[i] <= 0;
        end else begin
            is_last_block_out[0] <= s_axis_tlast;
            for(i = 1; i < ENCR_LAT+3; i = i + 1) is_last_block_out[i] <= is_last_block_out[i-1];
        end
    end
    assign m_axis_tlast = is_last_block_out[ENCR_LAT+2];
    reg [DATA_WIDTH-1:0] plaintext_delayed;
    reg s_axis_tvalid_delayed;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            s_axis_tvalid_delayed <= 0;
            plaintext_delayed   <= 0;
        end else begin 
            plaintext_delayed   <= s_axis_tdata; 
            s_axis_tvalid_delayed <= s_axis_tvalid;  
        end
    end
    
    CTR_feistel_encrypt #(
        .ROUND(ROUND), .KEY_SIZE(KEY_SIZE), .F_LAT(F_LAT), 
        .ENCR_LAT(ENCR_LAT), .SBOX_WIDTH(MIX_WIDTH), .DATA_WIDTH(DATA_WIDTH)
    ) u_encryptor (
        .clk(clk), 
        .reset_n(reset_n),
        
        .sbox_valid(sbox_stream_valid), 
        .sbox_out(sbox_stream_data),
        
        .key_valid(key_gen_valid), 
        .key(key_round),
        
        .crypto_trigger(crypto_trigger),
        .tvalid(s_axis_tvalid_delayed), 
        .plaintext(plaintext_delayed), 
        .iv(iv),
        
        // Outputs
        .valid(m_axis_tvalid), 
        .ciphertext(m_axis_tdata)
    );
endmodule