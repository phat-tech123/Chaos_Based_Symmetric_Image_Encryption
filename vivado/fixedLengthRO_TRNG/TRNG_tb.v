`timescale 1ns / 1ps

module tb_TRNG_Top();

    // 1. Khai báo các tín hiệu kết nối với module
    reg clk;
    reg trng_enable;
    wire random_out;

    // 2. Gọi module TRNG_Top (Instantiate Unit Under Test - UUT)
    TRNG_Top uut (
        .clk(clk),
        .trng_enable(trng_enable),
        .random_out(random_out)
    );

    // 3. Tạo xung Clock 24MHz (Chu kỳ ~ 41.67ns -> Bán chu kỳ ~ 20.83ns)
    initial begin
        clk = 0;
        forever #20 clk = ~clk;
    end

    // 4. Kịch bản mô phỏng (Stimulus)
    initial begin
        // Khởi tạo ban đầu: Tắt TRNG
        trng_enable = 0;
        $display("--- BAT DAU MO PHONG TRNG ---");
        
        // Đợi 100ns cho hệ thống ổn định
        #100;

        // Bật TRNG
        $display("[%0t] Bat tin hieu trng_enable = 1", $time);
        trng_enable = 1;

        // Để hệ thống chạy và tạo số ngẫu nhiên trong 5000ns (5 micro-giây)
        #5000;

        // Tắt TRNG
        $display("[%0t] Tat tin hieu trng_enable = 0", $time);
        trng_enable = 0;

        // Đợi thêm 100ns rồi kết thúc mô phỏng
        #10000;
        $display("--- KET THUC MO PHONG ---");
        $finish;
    end

    // 5. Theo dõi và in giá trị random_out ra console mỗi khi có sườn lên của clock
    always @(posedge clk) begin
        if (trng_enable) begin
            $display("Time: %0t | random_out = %b", $time, random_out);
        end
    end

endmodule
