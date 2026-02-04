module controller (
    // 1. SYSTEM SIGNALS
    input wire clk,
    input wire reset_n,

    // 2. COMMAND INTERFACE
    input wire [1:0] op_mode,     
    input wire cmd_start,       

    // 3. STATUS INPUTS
    input wire trng_valid,        
    input wire sbox_done,         
    input wire key_gen_done,    
    input wire is_first_block,   
    input wire is_last_block,     

    // 4. AXI STREAM HANDSHAKE SIGNALS 
    input wire s_axis_tvalid, 
    input wire m_axis_tready,
    
    // 5. CONTROL OUTPUTS
    output wire s_axis_tready,        //fix
    output reg sbox_gen_trigger,
    output reg key_gen_trigger,    
    output reg crypto_trigger, 
    
    // 6. STATUS OUTPUTS 
    output reg [2:0] status_state 
);
    typedef enum logic [2:0] {
        S_IDLE      = 3'd0,
        S_WAIT_TRNG = 3'd1,
        S_GEN_SBOX  = 3'd2,
        S_GEN_KEY   = 3'd3,
        S_WAIT_DATA = 3'd4, // Trạng thái chờ quan trọng nhất
        S_DO_CRYPTO = 3'd5
    } state_t;

    state_t current_state, next_state;

    // 1. Current State Logic
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) current_state <= S_IDLE;
        else          current_state <= next_state;
    end

    // 2. Next State Logic
    always @(*) begin
        next_state = current_state;
        case (current_state)
            S_IDLE: begin
                if (cmd_start) begin
                    case (op_mode)
                        2'b01: next_state = S_WAIT_TRNG; 
                        2'b10: next_state = S_GEN_KEY;   
                        2'b11: next_state = S_WAIT_DATA; 
                        default: next_state = S_IDLE;
                    endcase
                end
            end

            S_WAIT_TRNG: begin
                if (trng_valid) next_state = S_GEN_SBOX;
            end

            S_GEN_SBOX: begin
                if (sbox_done) next_state = S_GEN_KEY; 
            end

            S_GEN_KEY: begin
                if (key_gen_done) next_state = S_WAIT_DATA;
            end
            
            S_WAIT_DATA: begin
                if (cmd_start) begin
                    case (op_mode)
                        2'b01: next_state = S_WAIT_TRNG; 
                        2'b10: next_state = S_GEN_KEY;   
                        2'b11: next_state = S_WAIT_DATA; 
                        default: next_state = S_IDLE;
                    endcase
                end else if (s_axis_tvalid && m_axis_tready) next_state = S_DO_CRYPTO;
            end

            S_DO_CRYPTO: begin
                if(s_axis_tvalid && is_last_block && m_axis_tready) begin 
                    next_state = S_WAIT_DATA; 
                end
            end
            
            default: next_state = S_IDLE;
        endcase
    end
    
    // 3. Output Trigger Logic 
    assign s_axis_tready = ((current_state == S_WAIT_DATA) || (current_state == S_DO_CRYPTO))  && m_axis_tready;
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            sbox_gen_trigger <= 0; 
            key_gen_trigger <= 0; 
            crypto_trigger <= 0;
        end else begin
            // Trigger logic
            if (current_state == S_WAIT_TRNG && next_state == S_GEN_SBOX) begin
                sbox_gen_trigger <= 1;
            end else begin
                sbox_gen_trigger <= 0; 
            end

            if (current_state != S_GEN_KEY && next_state == S_GEN_KEY)  begin
                key_gen_trigger <= 1; 
            end else begin
                key_gen_trigger <= 0; 
            end
            
            if (current_state == S_WAIT_DATA && s_axis_tvalid && is_first_block) begin
                crypto_trigger <= 1;
            end else begin
                crypto_trigger <= 0;
            end
            
        end
    end

    // Output status
    always @(posedge clk) status_state <= current_state;

endmodule


//module controller (
//    // 1. SYSTEM SIGNALS
//    input wire clk,
//    input wire reset_n,

//    // 2. COMMAND INTERFACE (use for IDLE state)
//    input wire [1:0] op_mode,     // 00: Idle, 01: Full-unit, 10: Rekey, 11: Encrypt
//    input wire cmd_start,      

//    // 3. STATUS INPUTS (use for other states)
//    input wire trng_valid,        
//    input wire sbox_done,         
//    input wire key_gen_done,    
//    input wire crypto_done,   

//    // 4. CONTROL OUTPUTS
//    output reg sbox_gen_trigger,
//    output reg key_gen_trigger,   
//    output reg crypto_trigger, 
    
    

//    // STATUS OUTPUTS 
//    output reg [2:0] status_state // For debugging
//);
//    typedef enum logic [2:0] {
//        S_IDLE      = 3'd0,
//        S_WAIT_TRNG = 3'd1,
//        S_GEN_SBOX  = 3'd2,
//        S_GEN_KEY   = 3'd3,
//        S_DO_CRYPTO = 3'd4
//    } state_t;

//    state_t current_state, next_state;
//    // 1. Current State Logic
//    always @(posedge clk or negedge reset_n) begin
//        if (!reset_n) current_state <= S_IDLE;
//        else          current_state <= next_state;
//    end

//    // 2. Next State Logic
//    always @(*) begin
//        next_state = current_state;
//        case (current_state)
//            S_IDLE: begin
//                if (cmd_start) begin
//                    case (op_mode)
//                        2'b01: next_state = S_WAIT_TRNG; // Mode 1: FULL-UNIT
//                        2'b10: next_state = S_GEN_KEY;   // Mode 2: Gen Key then Encrypt
//                        2'b11: next_state = S_DO_CRYPTO; // Mode 3: Only Encrypt with current keys and sbox
//                        default: next_state = S_IDLE;
//                    endcase
//                end
//            end

//            S_WAIT_TRNG: begin
//                if (trng_valid) next_state = S_GEN_SBOX;
//            end

//            S_GEN_SBOX: begin
//                if (sbox_done) next_state = S_GEN_KEY; 
//            end

//            S_GEN_KEY: begin
//                if (key_gen_done) next_state = S_DO_CRYPTO;
//            end

//            S_DO_CRYPTO: begin
//                if(crypto_done) begin
//                    next_state = S_IDLE;
//                end
//            end
            
//            default: next_state = S_IDLE;
//        endcase
//    end

//    // 3. Output Trigger Logic 
//    always @(posedge clk or negedge reset_n) begin
//        if (!reset_n) begin
//            sbox_gen_trigger <= 0; 
//            key_gen_trigger <= 0; 
//            crypto_trigger <= 0;
//        end else begin
//            // Reset triggers
//            sbox_gen_trigger <= 0; 
//            key_gen_trigger <= 0; 
//            crypto_trigger <= 0;

//            // Trigger PRNG/Sbox
//            if (current_state == S_WAIT_TRNG && next_state == S_GEN_SBOX) begin
//                sbox_gen_trigger <= 1;
//            end

//            // Trigger Key Gen
//            if ((current_state == S_GEN_SBOX && next_state == S_GEN_KEY) || 
//                (current_state == S_IDLE && next_state == S_GEN_KEY)) begin
//                key_gen_trigger <= 1;
//            end

//            // Trigger Crypto
//            if ((current_state == S_GEN_KEY && next_state == S_DO_CRYPTO) || 
//                (current_state == S_IDLE && next_state == S_DO_CRYPTO)) begin
//                crypto_trigger <= 1;
//            end
            
//        end
//    end

//    // Output status
//    always @(posedge clk) status_state <= current_state;

//endmodule