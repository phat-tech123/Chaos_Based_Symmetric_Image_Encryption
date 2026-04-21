module TRNG_Module(
    input  wire en,
    input  wire clk, 
    input  wire clr,
    output wire rand_num
);
    wire [7:0] ro_outs;

    // Khởi tạo 8 Ring Oscillators với số lượng cổng đảo là SỐ NGUYÊN TỐ
    // Tần số của chúng sẽ không bao giờ là bội số của nhau -> Tránh Khóa pha
    RO_Core #(.LENGTH(3))  ro0 (.enable(en), .ro_out(ro_outs[0]));
    RO_Core #(.LENGTH(5))  ro1 (.enable(en), .ro_out(ro_outs[1]));
    RO_Core #(.LENGTH(7))  ro2 (.enable(en), .ro_out(ro_outs[2]));
    RO_Core #(.LENGTH(11)) ro3 (.enable(en), .ro_out(ro_outs[3]));
    RO_Core #(.LENGTH(13)) ro4 (.enable(en), .ro_out(ro_outs[4]));
    RO_Core #(.LENGTH(17)) ro5 (.enable(en), .ro_out(ro_outs[5]));
    RO_Core #(.LENGTH(19)) ro6 (.enable(en), .ro_out(ro_outs[6]));
    RO_Core #(.LENGTH(23)) ro7 (.enable(en), .ro_out(ro_outs[7]));

    // XOR tất cả các dao động tự do lại với nhau để dồn nhiễu (Jitter)
    (* DONT_TOUCH = "TRUE" *) wire xor_sum;
    assign xor_sum = ^ro_outs; 

    // Lấy mẫu (Sampling) tín hiệu hỗn loạn bằng D Flip-Flop
    reg sampled_bit;
    always @(posedge clk or posedge clr) begin
        if (clr) begin
            sampled_bit <= 1'b0;
        end else if (en) begin
            sampled_bit <= xor_sum;
        end
    end

    assign rand_num = sampled_bit;

endmodule
