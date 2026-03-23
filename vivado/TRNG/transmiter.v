module uart_tx (
    input  wire        clk,
    input  wire        rst,
    input  wire        clken,     // 1 pulse per bit time
    input  wire [7:0]  data_in,
    input  wire        tx_en,      // start transmit
    output reg         tx,
    output wire        tx_busy
);

    localparam IDLE  = 2'b00;
    localparam START = 2'b01;
    localparam DATA  = 2'b10;
    localparam STOP  = 2'b11;

    reg [1:0] state;
    reg [7:0] data;
    reg [2:0] bit_pos;

    always @(posedge clk) begin
        if (rst) begin
            state   <= IDLE;
            tx      <= 1'b1;
            bit_pos <= 3'd0;
        end else begin
            case (state)
                IDLE: begin
                    tx <= 1'b1;
                    if (tx_en) begin
                        data    <= data_in;
                        bit_pos <= 3'd0;
                        state   <= START;
                    end
                end

                START: begin
                    if (clken) begin
                        tx    <= 1'b0;   // start bit
                        state <= DATA;
                    end
                end

                DATA: begin
                    if (clken) begin
                        tx <= data[bit_pos];
                        if (bit_pos == 3'd7)
                            state <= STOP;
                        else
                            bit_pos <= bit_pos + 1;
                    end
                end

                STOP: begin
                    if (clken) begin
                        tx    <= 1'b1;   // stop bit
                        state <= IDLE;
                    end
                end
            endcase
        end
    end

    assign tx_busy = (state != IDLE);

endmodule

