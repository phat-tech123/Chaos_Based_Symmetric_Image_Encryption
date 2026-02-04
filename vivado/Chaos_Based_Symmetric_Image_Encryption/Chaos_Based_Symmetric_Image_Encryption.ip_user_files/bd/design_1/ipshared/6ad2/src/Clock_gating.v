module clock_gater(
	input clk,
	input enable,
	output clk_out
);

reg enable_r;
always@(clk or enable) begin
	if(~clk) begin
		enable_r <= enable;
	end
end

assign clk_out = enable_r & clk;
endmodule
//module clock_gater(
//    input clk,
//    input enable,
//    output clk_out
//);

//    // Dùng Primitive của Xilinx để clock đi vào mạng Global Clock Tree
//    // Đảm bảo Timing chuẩn xác ở 400MHz
//    BUFGCE #(
//        .CE_TYPE("SYNC"),      
//        .IS_CE_INVERTED(1'b0), 
//        .IS_I_INVERTED(1'b0) 
//    ) bufgce_inst (
//        .O(clk_out),   // Output nối ra ngoài
//        .CE(enable),   // Logic điều khiển (mul_busy) nối vào đây
//        .I(clk)        // Clock gốc
//    );

//endmodule