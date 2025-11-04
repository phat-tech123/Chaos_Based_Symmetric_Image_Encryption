module controller(
    input clk,
    input rst,
    input done_sbox,
    input seen_flag,
    output reg enable_extract,
    output reg enable_mix,
    output reg enable_seen,
    output reg enable_count,
);

reg [2:0] state;

localparam EXTRACT = 3'b000,
           MIX    = 3'b001,
           SEEN   = 3'b010,
           COUNT  = 3'b011,
           BUILD  = 3'b100,
           DONE   = 3'b101;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= EXTRACT;
    end else begin

        enable_extract <= 1'b0;
        enable_mix <= 1'b0;
        enable_count <= 1'b0;
        enable <= 1'b0;
        enable_write <= 1'b0;
        enable_build <= 1'b0;

        case (state)
            EXTRACT: begin
                enable_extract <= 1'b1;
                state <= MIX;
            end
            MIX: begin
                enable_mix <= 1'b1;
                state <= SEEN;
            end
            SEEN: begin
                enable_seen <= 1'b1;
                state <= COUNT;
            end
            COUNT: begin
                enable_count <= 1'b1;
                state <= BUILD;
            end
            BUILD: begin
                enable_build <= 1'b1;
                if (done_sbox) begin
                    state <= DONE;
                end else begin
                    state <= EXTRACT;
                end
            end
            DONE: begin
                // Remain in DONE state
                state <= DONE;
            end

            default: state <= EXTRACT;
        endcase
    end
end

endmodule