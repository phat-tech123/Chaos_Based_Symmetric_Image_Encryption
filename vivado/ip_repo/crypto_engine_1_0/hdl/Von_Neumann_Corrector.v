module Von_Neumann_Corrector(
    input  wire clk,
    input  wire reset_n,
    input  wire enable,      
    input  wire raw_bit,
    output reg  valid,         
    output reg  processed_bit 
);

    // Định nghĩa trạng thái
    localparam S_WAIT_FIRST = 1'b0;
    localparam S_WAIT_SECOND = 1'b1;

    reg current_state, next_state;
    reg first_bit_captured; 
    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            current_state <= S_WAIT_FIRST;
            first_bit_captured <= 1'b0;
        end else if (enable) begin
            current_state <= next_state;
            if (current_state == S_WAIT_FIRST) begin
                first_bit_captured <= raw_bit;
            end
        end
    end

    // --- 2. Combinational Logic (Next State & Output) ---
    always @(*) begin
        // Giá trị mặc định để tránh Latch
        next_state    = current_state;
        valid         = 1'b0;
        processed_bit = 1'b0;

        case (current_state)
            S_WAIT_FIRST: begin
                next_state = S_WAIT_SECOND;
            end

            S_WAIT_SECOND: begin
                next_state = S_WAIT_FIRST; 
                
                if (first_bit_captured != raw_bit) begin
                    // Nếu 2 bit khác nhau -> Valid
                    valid = 1'b1;
                    
                    processed_bit = first_bit_captured; 
                end
            end
        endcase
    end

endmodule
