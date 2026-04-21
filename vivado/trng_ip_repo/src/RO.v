`timescale 1ns / 1ps

// 1. Module RO tham số hóa độ dài (Prime Length)
module RO_Core #(parameter LENGTH = 3) (
    input wire enable,
    output wire ro_out
);
    // Bắt buộc giữ thuộc tính này để Vivado không tối ưu hóa vòng lặp
    (* ALLOW_COMBINATORIAL_LOOPS = "TRUE", DONT_TOUCH = "TRUE" *) wire [LENGTH-1:0] delay_chain;

    genvar i;
    generate
        for (i = 0; i < LENGTH; i = i + 1) begin : ro_stages
            if (i == 0) begin
                // Cổng NAND để điều khiển bật/tắt dao động
                assign delay_chain[0] = ~(enable & delay_chain[LENGTH-1]);
            end else begin
                // Các cổng NOT cấu thành vòng
                assign delay_chain[i] = ~delay_chain[i-1];
            end
        end
    endgenerate

    assign ro_out = delay_chain[LENGTH-1];
endmodule
