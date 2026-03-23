module control_logic(
    input  wire clk,
    input  wire reset_n,

    // Status inputs
    input  wire raw_bit,
    input  wire pp_done,
    input  wire pp_valid,
    input  wire fifo_full,
    input  wire fifo_empty,

    // Control outputs
    output reg [2:0] delay_cfg,
    output reg       enable_ro,
    output reg       enable_pp,
    output reg       enable_shift,
    output reg       enable_fifo,
    output reg       bit_select
);

    reg [2:0] bit_cnt;
    reg       write_pending;

    always @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            delay_cfg     <= 3'd0;
            enable_ro     <= 0;
            enable_pp     <= 0;
            enable_shift  <= 0;
            enable_fifo   <= 0;
            bit_select    <= 0;
            bit_cnt       <= 3'd0;
            write_pending <= 0;
        end else begin
            enable_fifo   <= 0;
            enable_shift  <= 0;

            if(!fifo_full) begin
                enable_ro <= 1;
                enable_pp <= 1;
                delay_cfg <= {delay_cfg[1:0], raw_bit};
            end else begin
                enable_ro <= 0;
                enable_pp <= 0;
            end

            // --- Logic Select ---
            bit_select <= pp_valid; 

            if (!fifo_full) begin
                if (write_pending) begin
                    enable_fifo   <= 1; 
                    write_pending <= 0; 
                    bit_cnt       <= 0; 
                end else if (pp_done) begin
                    enable_shift <= 1; 
                    
                    if (bit_cnt == 3'd7) begin
                        write_pending <= 1; 
                    end else begin
                        bit_cnt <= bit_cnt + 1;
                    end
                end
            end
        end
    end

endmodule
