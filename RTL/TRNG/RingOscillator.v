(* KEEP_HIERARCHY = "YES" *)
module RingOscillator(
    input [2:0] delay_cfg,
    input enable,
    output RO_bit
);

wire and_out, inv1_out, inv2_out, inv3_out;

// SỬA ĐỔI QUAN TRỌNG: INIT đổi từ 8000 sang 8888
// Logic: O = I1 (enable) & I0 (feedback). 
// I2, I3 (delay_cfg) bị bỏ qua về mặt logic nhưng vẫn ảnh hưởng routing delay.
(* KEEP = "TRUE", DONT_TOUCH = "TRUE" *)
LUT4 #(
    .INIT(16'h8888) 
) AND_GATE (
    .O(and_out),   
    .I0(inv3_out),     // Feedback input
    .I1(enable),       // Enable control
    .I2(delay_cfg[2]), // Dummy load for delay variation
    .I3(delay_cfg[0])  // Dummy load for delay variation
);

// Các Inverter giữ nguyên INIT=5555 (Logic NOT I0)
// 5555 = 0101_0101_0101_0101 -> Khi I0=0 thì Out=1, I0=1 thì Out=0.
// I1, I2, I3 bị bỏ qua logic.
(* KEEP = "TRUE", DONT_TOUCH = "TRUE" *)
LUT4 #( .INIT(16'h5555) ) INV1 (
    .O(inv1_out), .I0(and_out), .I1(delay_cfg[1]), .I2(delay_cfg[2]), .I3(delay_cfg[0])
);

(* KEEP = "TRUE", DONT_TOUCH = "TRUE" *)
LUT4 #( .INIT(16'h5555) ) INV2 (
    .O(inv2_out), .I0(inv1_out), .I1(delay_cfg[2]), .I2(delay_cfg[0]), .I3(delay_cfg[1])
);

(* KEEP = "TRUE", DONT_TOUCH = "TRUE" *)
LUT4 #( .INIT(16'h5555) ) INV3 (
    .O(inv3_out), .I0(inv2_out), .I1(delay_cfg[0]), .I2(delay_cfg[1]), .I3(delay_cfg[2])
);

assign RO_bit = inv3_out;

endmodule


//(* KEEP_HIERARCHY = "YES" *)
//module RingOscillator(
//	input [2:0] delay_cfg,
//	input enable,
//	output RO_bit
//);

//wire and_out, inv1_out, inv2_out, inv3_out;

//(* KEEP = "TRUE", DONT_TOUCH = "TRUE" *)
//LUT4 #(
//	.INIT(16'h8000)  // Specify LUT Contents
//) AND (
//	.O(and_out),   // LUT general output
//	.I0(inv3_out), // LUT input
//	.I1(enable), // LUT input
//	.I2(delay_cfg[2]), // LUT input
//	.I3(delay_cfg[0])  // LUT input
//);

//(* KEEP = "TRUE", DONT_TOUCH = "TRUE" *)
//LUT4 #(
//	.INIT(16'h5555)  // Specify LUT Contents
//) INV1 (
//	.O(inv1_out),   // LUT general output
//	.I0(and_out), // LUT input
//	.I1(delay_cfg[1]), // LUT input
//	.I2(delay_cfg[2]), // LUT input
//	.I3(delay_cfg[0])  // LUT input
//);

//(* KEEP = "TRUE", DONT_TOUCH = "TRUE" *)
//LUT4 #(
//	.INIT(16'h5555)  // Specify LUT Contents
//) INV2 (
//	.O(inv2_out),   // LUT general output
//	.I0(inv1_out), // LUT input
//	.I1(delay_cfg[2]), // lut input
//	.I2(delay_cfg[0]), // lut input
//	.I3(delay_cfg[1])  // lut input
//);

//(* KEEP = "TRUE", DONT_TOUCH = "TRUE" *)
//LUT4 #(
//	.INIT(16'h5555)  // Specify LUT Contents
//) INV3 (
//	.O(inv3_out),   // LUT general output
//	.I0(inv2_out), // LUT input
//	.I1(delay_cfg[0]), // lut input
//	.I2(delay_cfg[1]), // lut input
//	.I3(delay_cfg[2])  // lut input
//);

//assign RO_bit = inv3_out;

//endmodule
