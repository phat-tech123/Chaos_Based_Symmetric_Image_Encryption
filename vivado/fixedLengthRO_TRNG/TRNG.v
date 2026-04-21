`timescale 1ns / 1ps

module TRNG (
    input  wire clk,   
    input  wire reset_n,    
    input  wire trng_enable,
    output wire random_out
);

(* ALLOW_COMBINATORIAL_LOOPS = "TRUE", DONT_TOUCH = "TRUE" *) wire [7:0] ro_feedback;
reg [2:0] pdl_ctrl[7:0]; 
reg [7:0] ro_sampled; 
reg final_bit;
wire xor_sum;

genvar i;
generate 
    for(i = 0; i < 8; i = i + 1) begin : RO_GEN
        RO #(
            .chainLength(4)
        ) my_ro_inst (
            .in(ro_feedback[i]),     
            .enable(trng_enable), 
            .pdl(pdl_ctrl[i]),
            .out(ro_feedback[i])     
        );
    end
endgenerate 

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        ro_sampled <= 8'd0;
    end else if (trng_enable) begin
        ro_sampled <= ro_feedback; 
    end else begin
        ro_sampled <= 8'd0;
    end
end

assign xor_sum = ^ro_sampled; 

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        final_bit <= 1'b0;
    end else if (trng_enable) begin
        final_bit <= xor_sum;
    end else begin
        final_bit <= 1'b0;
    end
end

integer j;
always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        for (j = 0; j < 8; j = j + 1) begin
            pdl_ctrl[j] <= j[2:0]; 
        end
    end else if (trng_enable) begin
        for (j = 0; j < 8; j = j + 1) begin
            pdl_ctrl[j] <= pdl_ctrl[j] + ro_sampled[j];
        end
    end
end

assign random_out = final_bit;

endmodule