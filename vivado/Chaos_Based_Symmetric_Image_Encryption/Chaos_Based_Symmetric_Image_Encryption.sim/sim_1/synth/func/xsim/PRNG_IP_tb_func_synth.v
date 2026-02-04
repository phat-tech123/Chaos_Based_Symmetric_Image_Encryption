// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sun Jan 25 12:03:02 2026
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/vinhphat-josh/Repos/Chaos_Based_Symmetric_Image_Encryption/vivado/Chaos_Based_Symmetric_Image_Encryption/Chaos_Based_Symmetric_Image_Encryption.sim/sim_1/synth/func/xsim/PRNG_IP_tb_func_synth.v
// Design      : TRNG_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* keep_hierarchy = "yes" *) 
module RingOscillator
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__32
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__33
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__34
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__35
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__36
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__37
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__38
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__39
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__40
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__41
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__42
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__43
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__44
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__45
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__46
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__47
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__48
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__49
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__50
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__51
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__52
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__53
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__54
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__55
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__56
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__57
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__58
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__59
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__60
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__61
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* ORIG_REF_NAME = "RingOscillator" *) (* keep_hierarchy = "yes" *) 
module RingOscillator__62
   (delay_cfg,
    enable,
    RO_bit);
  input [2:0]delay_cfg;
  input enable;
  output RO_bit;

  wire RO_bit;
  wire and_out;
  wire [2:0]delay_cfg;
  wire enable;
  wire inv1_out;
  wire inv2_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    AND_GATE
       (.I0(RO_bit),
        .I1(enable),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(and_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV1
       (.I0(and_out),
        .I1(delay_cfg[1]),
        .I2(delay_cfg[2]),
        .I3(delay_cfg[0]),
        .O(inv1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV2
       (.I0(inv1_out),
        .I1(delay_cfg[2]),
        .I2(delay_cfg[0]),
        .I3(delay_cfg[1]),
        .O(inv2_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  (* KEEP = "true" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    INV3
       (.I0(inv2_out),
        .I1(delay_cfg[0]),
        .I2(delay_cfg[1]),
        .I3(delay_cfg[2]),
        .O(RO_bit));
endmodule

(* NotValidForBitStream *)
module TRNG_top
   (clk,
    reset_n,
    read_req,
    random_byte,
    data_ready);
  input clk;
  input reset_n;
  input read_req;
  output [7:0]random_byte;
  output data_ready;

  wire bit_cnt;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire ctrl_n_4;
  wire ctrl_n_5;
  wire ctrl_n_6;
  wire ctrl_n_7;
  wire ctrl_n_8;
  wire ctrl_n_9;
  wire current_state;
  wire [7:0]data_out;
  wire data_ready;
  wire data_ready_OBUF;
  wire [2:0]delay_cfg;
  wire enable_fifo;
  wire enable_pp;
  wire enable_shift;
  wire fifo_n_2;
  wire fifo_n_4;
  wire fifo_n_5;
  wire first_bit_captured;
  wire p_0_in;
  wire [0:0]p_0_in1_in;
  wire pp_bit;
  wire [7:0]random_byte;
  wire [7:0]random_byte_OBUF;
  wire read_req;
  wire read_req_IBUF;
  wire reset_n;
  wire reset_n_IBUF;
  wire vn_n_2;
  wire write_pending;

  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  trng_core core
       (.CLK(clk_IBUF_BUFG),
        .Q(delay_cfg),
        .enable(enable_pp),
        .p_0_in1_in(p_0_in1_in));
  control_logic ctrl
       (.CLK(clk_IBUF_BUFG),
        .E(enable_shift),
        .Q({ctrl_n_5,ctrl_n_6,ctrl_n_7}),
        .\bit_cnt_reg[0]_0 (ctrl_n_4),
        .\bit_cnt_reg[2]_0 (ctrl_n_8),
        .\bit_cnt_reg[2]_1 (bit_cnt),
        .current_state(current_state),
        .\delay_cfg_reg[2]_0 (delay_cfg),
        .enable(enable_pp),
        .enable_fifo(enable_fifo),
        .enable_fifo_reg_0(fifo_n_2),
        .enable_ro_reg_0(ctrl_n_9),
        .enable_shift_reg_0(vn_n_2),
        .p_0_in(p_0_in),
        .p_0_in1_in(p_0_in1_in),
        .write_pending(write_pending),
        .write_pending_reg_0(fifo_n_4),
        .write_pending_reg_1(fifo_n_5));
  OBUF data_ready_OBUF_inst
       (.I(data_ready_OBUF),
        .O(data_ready));
  fifo_8bit fifo
       (.CLK(clk_IBUF_BUFG),
        .Q({ctrl_n_5,ctrl_n_6,ctrl_n_7}),
        .\bit_cnt_reg[2] (ctrl_n_4),
        .current_state(current_state),
        .\data_out_reg[7]_0 (random_byte_OBUF),
        .data_ready_OBUF(data_ready_OBUF),
        .enable_fifo(enable_fifo),
        .first_bit_captured(first_bit_captured),
        .\mem_reg[63][7]_0 (data_out),
        .p_0_in(p_0_in),
        .p_0_in1_in(p_0_in1_in),
        .read_req_IBUF(read_req_IBUF),
        .reset_n(fifo_n_4),
        .reset_n_IBUF(reset_n_IBUF),
        .write_pending(write_pending),
        .write_pending_reg(bit_cnt),
        .write_pending_reg_0(fifo_n_2),
        .write_pending_reg_1(fifo_n_5),
        .write_pending_reg_2(ctrl_n_8));
  OBUF \random_byte_OBUF[0]_inst 
       (.I(random_byte_OBUF[0]),
        .O(random_byte[0]));
  OBUF \random_byte_OBUF[1]_inst 
       (.I(random_byte_OBUF[1]),
        .O(random_byte[1]));
  OBUF \random_byte_OBUF[2]_inst 
       (.I(random_byte_OBUF[2]),
        .O(random_byte[2]));
  OBUF \random_byte_OBUF[3]_inst 
       (.I(random_byte_OBUF[3]),
        .O(random_byte[3]));
  OBUF \random_byte_OBUF[4]_inst 
       (.I(random_byte_OBUF[4]),
        .O(random_byte[4]));
  OBUF \random_byte_OBUF[5]_inst 
       (.I(random_byte_OBUF[5]),
        .O(random_byte[5]));
  OBUF \random_byte_OBUF[6]_inst 
       (.I(random_byte_OBUF[6]),
        .O(random_byte[6]));
  OBUF \random_byte_OBUF[7]_inst 
       (.I(random_byte_OBUF[7]),
        .O(random_byte[7]));
  IBUF read_req_IBUF_inst
       (.I(read_req),
        .O(read_req_IBUF));
  IBUF reset_n_IBUF_inst
       (.I(reset_n),
        .O(reset_n_IBUF));
  shift_reg_8 shreg
       (.CLK(clk_IBUF_BUFG),
        .D(pp_bit),
        .E(enable_shift),
        .Q(data_out),
        .\data_out_reg[0]_0 (fifo_n_4));
  Von_Neumann_Corrector vn
       (.CLK(clk_IBUF_BUFG),
        .D(pp_bit),
        .current_state(current_state),
        .current_state_reg_0(vn_n_2),
        .current_state_reg_1(ctrl_n_9),
        .enable(enable_pp),
        .first_bit_captured(first_bit_captured),
        .first_bit_captured_reg_0(fifo_n_4),
        .p_0_in(p_0_in),
        .p_0_in1_in(p_0_in1_in),
        .write_pending(write_pending));
endmodule

module Von_Neumann_Corrector
   (current_state,
    first_bit_captured,
    current_state_reg_0,
    D,
    current_state_reg_1,
    CLK,
    first_bit_captured_reg_0,
    p_0_in,
    p_0_in1_in,
    write_pending,
    enable);
  output current_state;
  output first_bit_captured;
  output current_state_reg_0;
  output [0:0]D;
  input current_state_reg_1;
  input CLK;
  input first_bit_captured_reg_0;
  input p_0_in;
  input [0:0]p_0_in1_in;
  input write_pending;
  input enable;

  wire CLK;
  wire [0:0]D;
  wire current_state;
  wire current_state_reg_0;
  wire current_state_reg_1;
  wire enable;
  wire first_bit_captured;
  wire first_bit_captured_i_1_n_0;
  wire first_bit_captured_reg_0;
  wire p_0_in;
  wire [0:0]p_0_in1_in;
  wire write_pending;

  FDCE #(
    .INIT(1'b0)) 
    current_state_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(first_bit_captured_reg_0),
        .D(current_state_reg_1),
        .Q(current_state));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_out[0]_i_1 
       (.I0(p_0_in1_in),
        .I1(first_bit_captured),
        .I2(current_state),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000880)) 
    enable_shift_i_1
       (.I0(current_state),
        .I1(p_0_in),
        .I2(first_bit_captured),
        .I3(p_0_in1_in),
        .I4(write_pending),
        .O(current_state_reg_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    first_bit_captured_i_1
       (.I0(p_0_in1_in),
        .I1(enable),
        .I2(current_state),
        .I3(first_bit_captured),
        .O(first_bit_captured_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    first_bit_captured_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(first_bit_captured_reg_0),
        .D(first_bit_captured_i_1_n_0),
        .Q(first_bit_captured));
endmodule

module control_logic
   (enable,
    E,
    enable_fifo,
    write_pending,
    \bit_cnt_reg[0]_0 ,
    Q,
    \bit_cnt_reg[2]_0 ,
    enable_ro_reg_0,
    \delay_cfg_reg[2]_0 ,
    p_0_in,
    CLK,
    write_pending_reg_0,
    enable_shift_reg_0,
    enable_fifo_reg_0,
    write_pending_reg_1,
    current_state,
    p_0_in1_in,
    \bit_cnt_reg[2]_1 );
  output enable;
  output [0:0]E;
  output enable_fifo;
  output write_pending;
  output \bit_cnt_reg[0]_0 ;
  output [2:0]Q;
  output \bit_cnt_reg[2]_0 ;
  output enable_ro_reg_0;
  output [2:0]\delay_cfg_reg[2]_0 ;
  input p_0_in;
  input CLK;
  input write_pending_reg_0;
  input enable_shift_reg_0;
  input enable_fifo_reg_0;
  input write_pending_reg_1;
  input current_state;
  input [0:0]p_0_in1_in;
  input [0:0]\bit_cnt_reg[2]_1 ;

  wire CLK;
  wire [0:0]E;
  wire [2:0]Q;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt_reg[0]_0 ;
  wire \bit_cnt_reg[2]_0 ;
  wire [0:0]\bit_cnt_reg[2]_1 ;
  wire current_state;
  wire [2:0]\delay_cfg_reg[2]_0 ;
  wire enable;
  wire enable_fifo;
  wire enable_fifo_reg_0;
  wire enable_ro_reg_0;
  wire enable_shift_reg_0;
  wire p_0_in;
  wire [0:0]p_0_in1_in;
  wire write_pending;
  wire write_pending_reg_0;
  wire write_pending_reg_1;

  LUT2 #(
    .INIT(4'h1)) 
    \bit_cnt[0]_i_1 
       (.I0(Q[0]),
        .I1(write_pending),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \bit_cnt[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(write_pending),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \bit_cnt[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(write_pending),
        .O(\bit_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \bit_cnt[2]_i_5 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\bit_cnt_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(CLK),
        .CE(\bit_cnt_reg[2]_1 ),
        .CLR(write_pending_reg_0),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(CLK),
        .CE(\bit_cnt_reg[2]_1 ),
        .CLR(write_pending_reg_0),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(CLK),
        .CE(\bit_cnt_reg[2]_1 ),
        .CLR(write_pending_reg_0),
        .D(\bit_cnt[2]_i_2_n_0 ),
        .Q(Q[2]));
  LUT2 #(
    .INIT(4'h6)) 
    current_state_i_1
       (.I0(enable),
        .I1(current_state),
        .O(enable_ro_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    \delay_cfg_reg[0] 
       (.C(CLK),
        .CE(p_0_in),
        .CLR(write_pending_reg_0),
        .D(p_0_in1_in),
        .Q(\delay_cfg_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_cfg_reg[1] 
       (.C(CLK),
        .CE(p_0_in),
        .CLR(write_pending_reg_0),
        .D(\delay_cfg_reg[2]_0 [0]),
        .Q(\delay_cfg_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \delay_cfg_reg[2] 
       (.C(CLK),
        .CE(p_0_in),
        .CLR(write_pending_reg_0),
        .D(\delay_cfg_reg[2]_0 [1]),
        .Q(\delay_cfg_reg[2]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    enable_fifo_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(write_pending_reg_0),
        .D(enable_fifo_reg_0),
        .Q(enable_fifo));
  FDCE #(
    .INIT(1'b0)) 
    enable_ro_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(write_pending_reg_0),
        .D(p_0_in),
        .Q(enable));
  FDCE #(
    .INIT(1'b0)) 
    enable_shift_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(write_pending_reg_0),
        .D(enable_shift_reg_0),
        .Q(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    write_pending_i_4
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\bit_cnt_reg[2]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    write_pending_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(write_pending_reg_0),
        .D(write_pending_reg_1),
        .Q(write_pending));
endmodule

module fifo_8bit
   (write_pending_reg,
    p_0_in,
    write_pending_reg_0,
    data_ready_OBUF,
    reset_n,
    write_pending_reg_1,
    \data_out_reg[7]_0 ,
    write_pending,
    p_0_in1_in,
    first_bit_captured,
    current_state,
    enable_fifo,
    reset_n_IBUF,
    read_req_IBUF,
    \bit_cnt_reg[2] ,
    Q,
    write_pending_reg_2,
    \mem_reg[63][7]_0 ,
    CLK);
  output [0:0]write_pending_reg;
  output p_0_in;
  output write_pending_reg_0;
  output data_ready_OBUF;
  output reset_n;
  output write_pending_reg_1;
  output [7:0]\data_out_reg[7]_0 ;
  input write_pending;
  input [0:0]p_0_in1_in;
  input first_bit_captured;
  input current_state;
  input enable_fifo;
  input reset_n_IBUF;
  input read_req_IBUF;
  input \bit_cnt_reg[2] ;
  input [2:0]Q;
  input write_pending_reg_2;
  input [7:0]\mem_reg[63][7]_0 ;
  input CLK;

  wire CLK;
  wire [2:0]Q;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire \bit_cnt[2]_i_4_n_0 ;
  wire \bit_cnt_reg[2] ;
  wire [6:0]count;
  wire \count[6]_i_1_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire \count[6]_i_4_n_0 ;
  wire \count[6]_i_5_n_0 ;
  wire \count[6]_i_6_n_0 ;
  wire \count[6]_i_7_n_0 ;
  wire \count[6]_i_8_n_0 ;
  wire \count[6]_i_9_n_0 ;
  wire [6:0]count_reg;
  wire \count_reg[6]_i_2_n_3 ;
  wire \count_reg[6]_i_2_n_4 ;
  wire \count_reg[6]_i_2_n_5 ;
  wire \count_reg[6]_i_2_n_6 ;
  wire \count_reg[6]_i_2_n_7 ;
  wire current_state;
  wire \data_out[0]_i_14_n_0 ;
  wire \data_out[0]_i_15_n_0 ;
  wire \data_out[0]_i_16_n_0 ;
  wire \data_out[0]_i_17_n_0 ;
  wire \data_out[0]_i_18_n_0 ;
  wire \data_out[0]_i_19_n_0 ;
  wire \data_out[0]_i_1__0_n_0 ;
  wire \data_out[0]_i_20_n_0 ;
  wire \data_out[0]_i_21_n_0 ;
  wire \data_out[0]_i_22_n_0 ;
  wire \data_out[0]_i_23_n_0 ;
  wire \data_out[0]_i_24_n_0 ;
  wire \data_out[0]_i_25_n_0 ;
  wire \data_out[0]_i_26_n_0 ;
  wire \data_out[0]_i_27_n_0 ;
  wire \data_out[0]_i_28_n_0 ;
  wire \data_out[0]_i_29_n_0 ;
  wire \data_out[1]_i_14_n_0 ;
  wire \data_out[1]_i_15_n_0 ;
  wire \data_out[1]_i_16_n_0 ;
  wire \data_out[1]_i_17_n_0 ;
  wire \data_out[1]_i_18_n_0 ;
  wire \data_out[1]_i_19_n_0 ;
  wire \data_out[1]_i_1_n_0 ;
  wire \data_out[1]_i_20_n_0 ;
  wire \data_out[1]_i_21_n_0 ;
  wire \data_out[1]_i_22_n_0 ;
  wire \data_out[1]_i_23_n_0 ;
  wire \data_out[1]_i_24_n_0 ;
  wire \data_out[1]_i_25_n_0 ;
  wire \data_out[1]_i_26_n_0 ;
  wire \data_out[1]_i_27_n_0 ;
  wire \data_out[1]_i_28_n_0 ;
  wire \data_out[1]_i_29_n_0 ;
  wire \data_out[2]_i_14_n_0 ;
  wire \data_out[2]_i_15_n_0 ;
  wire \data_out[2]_i_16_n_0 ;
  wire \data_out[2]_i_17_n_0 ;
  wire \data_out[2]_i_18_n_0 ;
  wire \data_out[2]_i_19_n_0 ;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[2]_i_20_n_0 ;
  wire \data_out[2]_i_21_n_0 ;
  wire \data_out[2]_i_22_n_0 ;
  wire \data_out[2]_i_23_n_0 ;
  wire \data_out[2]_i_24_n_0 ;
  wire \data_out[2]_i_25_n_0 ;
  wire \data_out[2]_i_26_n_0 ;
  wire \data_out[2]_i_27_n_0 ;
  wire \data_out[2]_i_28_n_0 ;
  wire \data_out[2]_i_29_n_0 ;
  wire \data_out[3]_i_14_n_0 ;
  wire \data_out[3]_i_15_n_0 ;
  wire \data_out[3]_i_16_n_0 ;
  wire \data_out[3]_i_17_n_0 ;
  wire \data_out[3]_i_18_n_0 ;
  wire \data_out[3]_i_19_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[3]_i_20_n_0 ;
  wire \data_out[3]_i_21_n_0 ;
  wire \data_out[3]_i_22_n_0 ;
  wire \data_out[3]_i_23_n_0 ;
  wire \data_out[3]_i_24_n_0 ;
  wire \data_out[3]_i_25_n_0 ;
  wire \data_out[3]_i_26_n_0 ;
  wire \data_out[3]_i_27_n_0 ;
  wire \data_out[3]_i_28_n_0 ;
  wire \data_out[3]_i_29_n_0 ;
  wire \data_out[4]_i_14_n_0 ;
  wire \data_out[4]_i_15_n_0 ;
  wire \data_out[4]_i_16_n_0 ;
  wire \data_out[4]_i_17_n_0 ;
  wire \data_out[4]_i_18_n_0 ;
  wire \data_out[4]_i_19_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[4]_i_20_n_0 ;
  wire \data_out[4]_i_21_n_0 ;
  wire \data_out[4]_i_22_n_0 ;
  wire \data_out[4]_i_23_n_0 ;
  wire \data_out[4]_i_24_n_0 ;
  wire \data_out[4]_i_25_n_0 ;
  wire \data_out[4]_i_26_n_0 ;
  wire \data_out[4]_i_27_n_0 ;
  wire \data_out[4]_i_28_n_0 ;
  wire \data_out[4]_i_29_n_0 ;
  wire \data_out[5]_i_14_n_0 ;
  wire \data_out[5]_i_15_n_0 ;
  wire \data_out[5]_i_16_n_0 ;
  wire \data_out[5]_i_17_n_0 ;
  wire \data_out[5]_i_18_n_0 ;
  wire \data_out[5]_i_19_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[5]_i_20_n_0 ;
  wire \data_out[5]_i_21_n_0 ;
  wire \data_out[5]_i_22_n_0 ;
  wire \data_out[5]_i_23_n_0 ;
  wire \data_out[5]_i_24_n_0 ;
  wire \data_out[5]_i_25_n_0 ;
  wire \data_out[5]_i_26_n_0 ;
  wire \data_out[5]_i_27_n_0 ;
  wire \data_out[5]_i_28_n_0 ;
  wire \data_out[5]_i_29_n_0 ;
  wire \data_out[6]_i_14_n_0 ;
  wire \data_out[6]_i_15_n_0 ;
  wire \data_out[6]_i_16_n_0 ;
  wire \data_out[6]_i_17_n_0 ;
  wire \data_out[6]_i_18_n_0 ;
  wire \data_out[6]_i_19_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[6]_i_20_n_0 ;
  wire \data_out[6]_i_21_n_0 ;
  wire \data_out[6]_i_22_n_0 ;
  wire \data_out[6]_i_23_n_0 ;
  wire \data_out[6]_i_24_n_0 ;
  wire \data_out[6]_i_25_n_0 ;
  wire \data_out[6]_i_26_n_0 ;
  wire \data_out[6]_i_27_n_0 ;
  wire \data_out[6]_i_28_n_0 ;
  wire \data_out[6]_i_29_n_0 ;
  wire \data_out[7]_i_15_n_0 ;
  wire \data_out[7]_i_16_n_0 ;
  wire \data_out[7]_i_17_n_0 ;
  wire \data_out[7]_i_18_n_0 ;
  wire \data_out[7]_i_19_n_0 ;
  wire \data_out[7]_i_20_n_0 ;
  wire \data_out[7]_i_21_n_0 ;
  wire \data_out[7]_i_22_n_0 ;
  wire \data_out[7]_i_23_n_0 ;
  wire \data_out[7]_i_24_n_0 ;
  wire \data_out[7]_i_25_n_0 ;
  wire \data_out[7]_i_26_n_0 ;
  wire \data_out[7]_i_27_n_0 ;
  wire \data_out[7]_i_28_n_0 ;
  wire \data_out[7]_i_29_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_30_n_0 ;
  wire \data_out_reg[0]_i_10_n_0 ;
  wire \data_out_reg[0]_i_11_n_0 ;
  wire \data_out_reg[0]_i_12_n_0 ;
  wire \data_out_reg[0]_i_13_n_0 ;
  wire \data_out_reg[0]_i_2_n_0 ;
  wire \data_out_reg[0]_i_3_n_0 ;
  wire \data_out_reg[0]_i_4_n_0 ;
  wire \data_out_reg[0]_i_5_n_0 ;
  wire \data_out_reg[0]_i_6_n_0 ;
  wire \data_out_reg[0]_i_7_n_0 ;
  wire \data_out_reg[0]_i_8_n_0 ;
  wire \data_out_reg[0]_i_9_n_0 ;
  wire \data_out_reg[1]_i_10_n_0 ;
  wire \data_out_reg[1]_i_11_n_0 ;
  wire \data_out_reg[1]_i_12_n_0 ;
  wire \data_out_reg[1]_i_13_n_0 ;
  wire \data_out_reg[1]_i_2_n_0 ;
  wire \data_out_reg[1]_i_3_n_0 ;
  wire \data_out_reg[1]_i_4_n_0 ;
  wire \data_out_reg[1]_i_5_n_0 ;
  wire \data_out_reg[1]_i_6_n_0 ;
  wire \data_out_reg[1]_i_7_n_0 ;
  wire \data_out_reg[1]_i_8_n_0 ;
  wire \data_out_reg[1]_i_9_n_0 ;
  wire \data_out_reg[2]_i_10_n_0 ;
  wire \data_out_reg[2]_i_11_n_0 ;
  wire \data_out_reg[2]_i_12_n_0 ;
  wire \data_out_reg[2]_i_13_n_0 ;
  wire \data_out_reg[2]_i_2_n_0 ;
  wire \data_out_reg[2]_i_3_n_0 ;
  wire \data_out_reg[2]_i_4_n_0 ;
  wire \data_out_reg[2]_i_5_n_0 ;
  wire \data_out_reg[2]_i_6_n_0 ;
  wire \data_out_reg[2]_i_7_n_0 ;
  wire \data_out_reg[2]_i_8_n_0 ;
  wire \data_out_reg[2]_i_9_n_0 ;
  wire \data_out_reg[3]_i_10_n_0 ;
  wire \data_out_reg[3]_i_11_n_0 ;
  wire \data_out_reg[3]_i_12_n_0 ;
  wire \data_out_reg[3]_i_13_n_0 ;
  wire \data_out_reg[3]_i_2_n_0 ;
  wire \data_out_reg[3]_i_3_n_0 ;
  wire \data_out_reg[3]_i_4_n_0 ;
  wire \data_out_reg[3]_i_5_n_0 ;
  wire \data_out_reg[3]_i_6_n_0 ;
  wire \data_out_reg[3]_i_7_n_0 ;
  wire \data_out_reg[3]_i_8_n_0 ;
  wire \data_out_reg[3]_i_9_n_0 ;
  wire \data_out_reg[4]_i_10_n_0 ;
  wire \data_out_reg[4]_i_11_n_0 ;
  wire \data_out_reg[4]_i_12_n_0 ;
  wire \data_out_reg[4]_i_13_n_0 ;
  wire \data_out_reg[4]_i_2_n_0 ;
  wire \data_out_reg[4]_i_3_n_0 ;
  wire \data_out_reg[4]_i_4_n_0 ;
  wire \data_out_reg[4]_i_5_n_0 ;
  wire \data_out_reg[4]_i_6_n_0 ;
  wire \data_out_reg[4]_i_7_n_0 ;
  wire \data_out_reg[4]_i_8_n_0 ;
  wire \data_out_reg[4]_i_9_n_0 ;
  wire \data_out_reg[5]_i_10_n_0 ;
  wire \data_out_reg[5]_i_11_n_0 ;
  wire \data_out_reg[5]_i_12_n_0 ;
  wire \data_out_reg[5]_i_13_n_0 ;
  wire \data_out_reg[5]_i_2_n_0 ;
  wire \data_out_reg[5]_i_3_n_0 ;
  wire \data_out_reg[5]_i_4_n_0 ;
  wire \data_out_reg[5]_i_5_n_0 ;
  wire \data_out_reg[5]_i_6_n_0 ;
  wire \data_out_reg[5]_i_7_n_0 ;
  wire \data_out_reg[5]_i_8_n_0 ;
  wire \data_out_reg[5]_i_9_n_0 ;
  wire \data_out_reg[6]_i_10_n_0 ;
  wire \data_out_reg[6]_i_11_n_0 ;
  wire \data_out_reg[6]_i_12_n_0 ;
  wire \data_out_reg[6]_i_13_n_0 ;
  wire \data_out_reg[6]_i_2_n_0 ;
  wire \data_out_reg[6]_i_3_n_0 ;
  wire \data_out_reg[6]_i_4_n_0 ;
  wire \data_out_reg[6]_i_5_n_0 ;
  wire \data_out_reg[6]_i_6_n_0 ;
  wire \data_out_reg[6]_i_7_n_0 ;
  wire \data_out_reg[6]_i_8_n_0 ;
  wire \data_out_reg[6]_i_9_n_0 ;
  wire [7:0]\data_out_reg[7]_0 ;
  wire \data_out_reg[7]_i_10_n_0 ;
  wire \data_out_reg[7]_i_11_n_0 ;
  wire \data_out_reg[7]_i_12_n_0 ;
  wire \data_out_reg[7]_i_13_n_0 ;
  wire \data_out_reg[7]_i_14_n_0 ;
  wire \data_out_reg[7]_i_3_n_0 ;
  wire \data_out_reg[7]_i_4_n_0 ;
  wire \data_out_reg[7]_i_5_n_0 ;
  wire \data_out_reg[7]_i_6_n_0 ;
  wire \data_out_reg[7]_i_7_n_0 ;
  wire \data_out_reg[7]_i_8_n_0 ;
  wire \data_out_reg[7]_i_9_n_0 ;
  wire data_ready_OBUF;
  wire data_ready_OBUF_inst_i_2_n_0;
  wire enable_fifo;
  wire first_bit_captured;
  wire \mem[0][7]_i_1_n_0 ;
  wire \mem[10][7]_i_1_n_0 ;
  wire \mem[11][7]_i_1_n_0 ;
  wire \mem[12][7]_i_1_n_0 ;
  wire \mem[13][7]_i_1_n_0 ;
  wire \mem[14][7]_i_1_n_0 ;
  wire \mem[15][7]_i_1_n_0 ;
  wire \mem[16][7]_i_1_n_0 ;
  wire \mem[17][7]_i_1_n_0 ;
  wire \mem[18][7]_i_1_n_0 ;
  wire \mem[19][7]_i_1_n_0 ;
  wire \mem[1][7]_i_1_n_0 ;
  wire \mem[20][7]_i_1_n_0 ;
  wire \mem[21][7]_i_1_n_0 ;
  wire \mem[22][7]_i_1_n_0 ;
  wire \mem[23][7]_i_1_n_0 ;
  wire \mem[24][7]_i_1_n_0 ;
  wire \mem[25][7]_i_1_n_0 ;
  wire \mem[26][7]_i_1_n_0 ;
  wire \mem[27][7]_i_1_n_0 ;
  wire \mem[28][7]_i_1_n_0 ;
  wire \mem[29][7]_i_1_n_0 ;
  wire \mem[2][7]_i_1_n_0 ;
  wire \mem[30][7]_i_1_n_0 ;
  wire \mem[31][7]_i_1_n_0 ;
  wire \mem[32][7]_i_1_n_0 ;
  wire \mem[33][7]_i_1_n_0 ;
  wire \mem[34][7]_i_1_n_0 ;
  wire \mem[35][7]_i_1_n_0 ;
  wire \mem[36][7]_i_1_n_0 ;
  wire \mem[37][7]_i_1_n_0 ;
  wire \mem[38][7]_i_1_n_0 ;
  wire \mem[39][7]_i_1_n_0 ;
  wire \mem[3][7]_i_1_n_0 ;
  wire \mem[40][7]_i_1_n_0 ;
  wire \mem[41][7]_i_1_n_0 ;
  wire \mem[42][7]_i_1_n_0 ;
  wire \mem[43][7]_i_1_n_0 ;
  wire \mem[44][7]_i_1_n_0 ;
  wire \mem[45][7]_i_1_n_0 ;
  wire \mem[46][7]_i_1_n_0 ;
  wire \mem[47][7]_i_1_n_0 ;
  wire \mem[48][7]_i_1_n_0 ;
  wire \mem[49][7]_i_1_n_0 ;
  wire \mem[4][7]_i_1_n_0 ;
  wire \mem[50][7]_i_1_n_0 ;
  wire \mem[51][7]_i_1_n_0 ;
  wire \mem[52][7]_i_1_n_0 ;
  wire \mem[53][7]_i_1_n_0 ;
  wire \mem[54][7]_i_1_n_0 ;
  wire \mem[54][7]_i_2_n_0 ;
  wire \mem[55][7]_i_1_n_0 ;
  wire \mem[55][7]_i_2_n_0 ;
  wire \mem[56][7]_i_1_n_0 ;
  wire \mem[57][7]_i_1_n_0 ;
  wire \mem[58][7]_i_1_n_0 ;
  wire \mem[59][7]_i_1_n_0 ;
  wire \mem[5][7]_i_1_n_0 ;
  wire \mem[60][7]_i_1_n_0 ;
  wire \mem[61][7]_i_1_n_0 ;
  wire \mem[62][7]_i_1_n_0 ;
  wire \mem[62][7]_i_2_n_0 ;
  wire \mem[63][7]_i_1_n_0 ;
  wire \mem[63][7]_i_2_n_0 ;
  wire \mem[6][7]_i_1_n_0 ;
  wire \mem[7][7]_i_1_n_0 ;
  wire \mem[8][7]_i_1_n_0 ;
  wire \mem[9][7]_i_1_n_0 ;
  wire [7:0]\mem_reg[0] ;
  wire [7:0]\mem_reg[10] ;
  wire [7:0]\mem_reg[11] ;
  wire [7:0]\mem_reg[12] ;
  wire [7:0]\mem_reg[13] ;
  wire [7:0]\mem_reg[14] ;
  wire [7:0]\mem_reg[15] ;
  wire [7:0]\mem_reg[16] ;
  wire [7:0]\mem_reg[17] ;
  wire [7:0]\mem_reg[18] ;
  wire [7:0]\mem_reg[19] ;
  wire [7:0]\mem_reg[1] ;
  wire [7:0]\mem_reg[20] ;
  wire [7:0]\mem_reg[21] ;
  wire [7:0]\mem_reg[22] ;
  wire [7:0]\mem_reg[23] ;
  wire [7:0]\mem_reg[24] ;
  wire [7:0]\mem_reg[25] ;
  wire [7:0]\mem_reg[26] ;
  wire [7:0]\mem_reg[27] ;
  wire [7:0]\mem_reg[28] ;
  wire [7:0]\mem_reg[29] ;
  wire [7:0]\mem_reg[2] ;
  wire [7:0]\mem_reg[30] ;
  wire [7:0]\mem_reg[31] ;
  wire [7:0]\mem_reg[32] ;
  wire [7:0]\mem_reg[33] ;
  wire [7:0]\mem_reg[34] ;
  wire [7:0]\mem_reg[35] ;
  wire [7:0]\mem_reg[36] ;
  wire [7:0]\mem_reg[37] ;
  wire [7:0]\mem_reg[38] ;
  wire [7:0]\mem_reg[39] ;
  wire [7:0]\mem_reg[3] ;
  wire [7:0]\mem_reg[40] ;
  wire [7:0]\mem_reg[41] ;
  wire [7:0]\mem_reg[42] ;
  wire [7:0]\mem_reg[43] ;
  wire [7:0]\mem_reg[44] ;
  wire [7:0]\mem_reg[45] ;
  wire [7:0]\mem_reg[46] ;
  wire [7:0]\mem_reg[47] ;
  wire [7:0]\mem_reg[48] ;
  wire [7:0]\mem_reg[49] ;
  wire [7:0]\mem_reg[4] ;
  wire [7:0]\mem_reg[50] ;
  wire [7:0]\mem_reg[51] ;
  wire [7:0]\mem_reg[52] ;
  wire [7:0]\mem_reg[53] ;
  wire [7:0]\mem_reg[54] ;
  wire [7:0]\mem_reg[55] ;
  wire [7:0]\mem_reg[56] ;
  wire [7:0]\mem_reg[57] ;
  wire [7:0]\mem_reg[58] ;
  wire [7:0]\mem_reg[59] ;
  wire [7:0]\mem_reg[5] ;
  wire [7:0]\mem_reg[60] ;
  wire [7:0]\mem_reg[61] ;
  wire [7:0]\mem_reg[62] ;
  wire [7:0]\mem_reg[63] ;
  wire [7:0]\mem_reg[63][7]_0 ;
  wire [7:0]\mem_reg[6] ;
  wire [7:0]\mem_reg[7] ;
  wire [7:0]\mem_reg[8] ;
  wire [7:0]\mem_reg[9] ;
  wire p_0_in;
  wire [0:0]p_0_in1_in;
  wire [0:0]p_0_in_1;
  wire [5:1]p_0_in__0;
  wire [1:1]p_0_in__0_0;
  wire [5:0]p_0_in__0__0;
  wire [5:0]rd_ptr_reg;
  wire read_req_IBUF;
  wire reset_n;
  wire reset_n_IBUF;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire [5:0]wr_ptr_reg;
  wire write_pending;
  wire write_pending_i_2_n_0;
  wire write_pending_i_3_n_0;
  wire [0:0]write_pending_reg;
  wire write_pending_reg_0;
  wire write_pending_reg_1;
  wire write_pending_reg_2;
  wire [7:5]\NLW_count_reg[6]_i_2_CO_UNCONNECTED ;
  wire [7:6]\NLW_count_reg[6]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8BB8888888888888)) 
    \bit_cnt[2]_i_1 
       (.I0(p_0_in),
        .I1(write_pending),
        .I2(p_0_in1_in),
        .I3(first_bit_captured),
        .I4(\bit_cnt[2]_i_3_n_0 ),
        .I5(current_state),
        .O(write_pending_reg));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \bit_cnt[2]_i_3 
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(\bit_cnt[2]_i_4_n_0 ),
        .I4(count_reg[6]),
        .I5(\bit_cnt_reg[2] ),
        .O(\bit_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFFF0EEEEEEE)) 
    \bit_cnt[2]_i_4 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(count_reg[0]),
        .O(\bit_cnt[2]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(count[0]));
  LUT4 #(
    .INIT(16'h3DE0)) 
    \count[6]_i_1 
       (.I0(count_reg[6]),
        .I1(data_ready_OBUF_inst_i_2_n_0),
        .I2(read_req_IBUF),
        .I3(enable_fifo),
        .O(\count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \count[6]_i_3 
       (.I0(count_reg[6]),
        .I1(data_ready_OBUF_inst_i_2_n_0),
        .I2(enable_fifo),
        .O(\count[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_4 
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .O(\count[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_5 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .O(\count[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_6 
       (.I0(count_reg[3]),
        .I1(count_reg[4]),
        .O(\count[6]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_7 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .O(\count[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_8 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .O(\count[6]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hD02F)) 
    \count[6]_i_9 
       (.I0(count_reg[6]),
        .I1(data_ready_OBUF_inst_i_2_n_0),
        .I2(enable_fifo),
        .I3(count_reg[1]),
        .O(\count[6]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(reset_n),
        .D(count[0]),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(reset_n),
        .D(count[1]),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(reset_n),
        .D(count[2]),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(reset_n),
        .D(count[3]),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(reset_n),
        .D(count[4]),
        .Q(count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(reset_n),
        .D(count[5]),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(reset_n),
        .D(count[6]),
        .Q(count_reg[6]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 #(
    .CARRY_TYPE("SINGLE_CY8")) 
    \count_reg[6]_i_2 
       (.CI(count_reg[0]),
        .CI_TOP(1'b0),
        .CO({\NLW_count_reg[6]_i_2_CO_UNCONNECTED [7:5],\count_reg[6]_i_2_n_3 ,\count_reg[6]_i_2_n_4 ,\count_reg[6]_i_2_n_5 ,\count_reg[6]_i_2_n_6 ,\count_reg[6]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,count_reg[4:1],\count[6]_i_3_n_0 }),
        .O({\NLW_count_reg[6]_i_2_O_UNCONNECTED [7:6],count[6:1]}),
        .S({1'b0,1'b0,\count[6]_i_4_n_0 ,\count[6]_i_5_n_0 ,\count[6]_i_6_n_0 ,\count[6]_i_7_n_0 ,\count[6]_i_8_n_0 ,\count[6]_i_9_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_14 
       (.I0(\mem_reg[51] [0]),
        .I1(\mem_reg[50] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[49] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[48] [0]),
        .O(\data_out[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_15 
       (.I0(\mem_reg[55] [0]),
        .I1(\mem_reg[54] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[53] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[52] [0]),
        .O(\data_out[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_16 
       (.I0(\mem_reg[59] [0]),
        .I1(\mem_reg[58] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[57] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[56] [0]),
        .O(\data_out[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_17 
       (.I0(\mem_reg[63] [0]),
        .I1(\mem_reg[62] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[61] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[60] [0]),
        .O(\data_out[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_18 
       (.I0(\mem_reg[35] [0]),
        .I1(\mem_reg[34] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[33] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[32] [0]),
        .O(\data_out[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_19 
       (.I0(\mem_reg[39] [0]),
        .I1(\mem_reg[38] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[37] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[36] [0]),
        .O(\data_out[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_1__0 
       (.I0(\data_out_reg[0]_i_2_n_0 ),
        .I1(\data_out_reg[0]_i_3_n_0 ),
        .I2(rd_ptr_reg[5]),
        .I3(\data_out_reg[0]_i_4_n_0 ),
        .I4(rd_ptr_reg[4]),
        .I5(\data_out_reg[0]_i_5_n_0 ),
        .O(\data_out[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_20 
       (.I0(\mem_reg[43] [0]),
        .I1(\mem_reg[42] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[41] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[40] [0]),
        .O(\data_out[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_21 
       (.I0(\mem_reg[47] [0]),
        .I1(\mem_reg[46] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[45] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[44] [0]),
        .O(\data_out[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_22 
       (.I0(\mem_reg[19] [0]),
        .I1(\mem_reg[18] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[17] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[16] [0]),
        .O(\data_out[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_23 
       (.I0(\mem_reg[23] [0]),
        .I1(\mem_reg[22] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[21] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[20] [0]),
        .O(\data_out[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_24 
       (.I0(\mem_reg[27] [0]),
        .I1(\mem_reg[26] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[25] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[24] [0]),
        .O(\data_out[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_25 
       (.I0(\mem_reg[31] [0]),
        .I1(\mem_reg[30] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[29] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[28] [0]),
        .O(\data_out[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_26 
       (.I0(\mem_reg[3] [0]),
        .I1(\mem_reg[2] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[1] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[0] [0]),
        .O(\data_out[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_27 
       (.I0(\mem_reg[7] [0]),
        .I1(\mem_reg[6] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[5] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[4] [0]),
        .O(\data_out[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_28 
       (.I0(\mem_reg[11] [0]),
        .I1(\mem_reg[10] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[9] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[8] [0]),
        .O(\data_out[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_29 
       (.I0(\mem_reg[15] [0]),
        .I1(\mem_reg[14] [0]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[13] [0]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[12] [0]),
        .O(\data_out[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_1 
       (.I0(\data_out_reg[1]_i_2_n_0 ),
        .I1(\data_out_reg[1]_i_3_n_0 ),
        .I2(rd_ptr_reg[5]),
        .I3(\data_out_reg[1]_i_4_n_0 ),
        .I4(rd_ptr_reg[4]),
        .I5(\data_out_reg[1]_i_5_n_0 ),
        .O(\data_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_14 
       (.I0(\mem_reg[51] [1]),
        .I1(\mem_reg[50] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[49] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[48] [1]),
        .O(\data_out[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_15 
       (.I0(\mem_reg[55] [1]),
        .I1(\mem_reg[54] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[53] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[52] [1]),
        .O(\data_out[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_16 
       (.I0(\mem_reg[59] [1]),
        .I1(\mem_reg[58] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[57] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[56] [1]),
        .O(\data_out[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_17 
       (.I0(\mem_reg[63] [1]),
        .I1(\mem_reg[62] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[61] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[60] [1]),
        .O(\data_out[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_18 
       (.I0(\mem_reg[35] [1]),
        .I1(\mem_reg[34] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[33] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[32] [1]),
        .O(\data_out[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_19 
       (.I0(\mem_reg[39] [1]),
        .I1(\mem_reg[38] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[37] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[36] [1]),
        .O(\data_out[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_20 
       (.I0(\mem_reg[43] [1]),
        .I1(\mem_reg[42] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[41] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[40] [1]),
        .O(\data_out[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_21 
       (.I0(\mem_reg[47] [1]),
        .I1(\mem_reg[46] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[45] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[44] [1]),
        .O(\data_out[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_22 
       (.I0(\mem_reg[19] [1]),
        .I1(\mem_reg[18] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[17] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[16] [1]),
        .O(\data_out[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_23 
       (.I0(\mem_reg[23] [1]),
        .I1(\mem_reg[22] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[21] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[20] [1]),
        .O(\data_out[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_24 
       (.I0(\mem_reg[27] [1]),
        .I1(\mem_reg[26] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[25] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[24] [1]),
        .O(\data_out[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_25 
       (.I0(\mem_reg[31] [1]),
        .I1(\mem_reg[30] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[29] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[28] [1]),
        .O(\data_out[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_26 
       (.I0(\mem_reg[3] [1]),
        .I1(\mem_reg[2] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[1] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[0] [1]),
        .O(\data_out[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_27 
       (.I0(\mem_reg[7] [1]),
        .I1(\mem_reg[6] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[5] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[4] [1]),
        .O(\data_out[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_28 
       (.I0(\mem_reg[11] [1]),
        .I1(\mem_reg[10] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[9] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[8] [1]),
        .O(\data_out[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_29 
       (.I0(\mem_reg[15] [1]),
        .I1(\mem_reg[14] [1]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[13] [1]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[12] [1]),
        .O(\data_out[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_1 
       (.I0(\data_out_reg[2]_i_2_n_0 ),
        .I1(\data_out_reg[2]_i_3_n_0 ),
        .I2(rd_ptr_reg[5]),
        .I3(\data_out_reg[2]_i_4_n_0 ),
        .I4(rd_ptr_reg[4]),
        .I5(\data_out_reg[2]_i_5_n_0 ),
        .O(\data_out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_14 
       (.I0(\mem_reg[51] [2]),
        .I1(\mem_reg[50] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[49] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[48] [2]),
        .O(\data_out[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_15 
       (.I0(\mem_reg[55] [2]),
        .I1(\mem_reg[54] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[53] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[52] [2]),
        .O(\data_out[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_16 
       (.I0(\mem_reg[59] [2]),
        .I1(\mem_reg[58] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[57] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[56] [2]),
        .O(\data_out[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_17 
       (.I0(\mem_reg[63] [2]),
        .I1(\mem_reg[62] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[61] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[60] [2]),
        .O(\data_out[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_18 
       (.I0(\mem_reg[35] [2]),
        .I1(\mem_reg[34] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[33] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[32] [2]),
        .O(\data_out[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_19 
       (.I0(\mem_reg[39] [2]),
        .I1(\mem_reg[38] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[37] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[36] [2]),
        .O(\data_out[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_20 
       (.I0(\mem_reg[43] [2]),
        .I1(\mem_reg[42] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[41] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[40] [2]),
        .O(\data_out[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_21 
       (.I0(\mem_reg[47] [2]),
        .I1(\mem_reg[46] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[45] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[44] [2]),
        .O(\data_out[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_22 
       (.I0(\mem_reg[19] [2]),
        .I1(\mem_reg[18] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[17] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[16] [2]),
        .O(\data_out[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_23 
       (.I0(\mem_reg[23] [2]),
        .I1(\mem_reg[22] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[21] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[20] [2]),
        .O(\data_out[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_24 
       (.I0(\mem_reg[27] [2]),
        .I1(\mem_reg[26] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[25] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[24] [2]),
        .O(\data_out[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_25 
       (.I0(\mem_reg[31] [2]),
        .I1(\mem_reg[30] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[29] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[28] [2]),
        .O(\data_out[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_26 
       (.I0(\mem_reg[3] [2]),
        .I1(\mem_reg[2] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[1] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[0] [2]),
        .O(\data_out[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_27 
       (.I0(\mem_reg[7] [2]),
        .I1(\mem_reg[6] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[5] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[4] [2]),
        .O(\data_out[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_28 
       (.I0(\mem_reg[11] [2]),
        .I1(\mem_reg[10] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[9] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[8] [2]),
        .O(\data_out[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_29 
       (.I0(\mem_reg[15] [2]),
        .I1(\mem_reg[14] [2]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[13] [2]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[12] [2]),
        .O(\data_out[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_1 
       (.I0(\data_out_reg[3]_i_2_n_0 ),
        .I1(\data_out_reg[3]_i_3_n_0 ),
        .I2(rd_ptr_reg[5]),
        .I3(\data_out_reg[3]_i_4_n_0 ),
        .I4(rd_ptr_reg[4]),
        .I5(\data_out_reg[3]_i_5_n_0 ),
        .O(\data_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_14 
       (.I0(\mem_reg[51] [3]),
        .I1(\mem_reg[50] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[49] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[48] [3]),
        .O(\data_out[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_15 
       (.I0(\mem_reg[55] [3]),
        .I1(\mem_reg[54] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[53] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[52] [3]),
        .O(\data_out[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_16 
       (.I0(\mem_reg[59] [3]),
        .I1(\mem_reg[58] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[57] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[56] [3]),
        .O(\data_out[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_17 
       (.I0(\mem_reg[63] [3]),
        .I1(\mem_reg[62] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[61] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[60] [3]),
        .O(\data_out[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_18 
       (.I0(\mem_reg[35] [3]),
        .I1(\mem_reg[34] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[33] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[32] [3]),
        .O(\data_out[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_19 
       (.I0(\mem_reg[39] [3]),
        .I1(\mem_reg[38] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[37] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[36] [3]),
        .O(\data_out[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_20 
       (.I0(\mem_reg[43] [3]),
        .I1(\mem_reg[42] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[41] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[40] [3]),
        .O(\data_out[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_21 
       (.I0(\mem_reg[47] [3]),
        .I1(\mem_reg[46] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[45] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[44] [3]),
        .O(\data_out[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_22 
       (.I0(\mem_reg[19] [3]),
        .I1(\mem_reg[18] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[17] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[16] [3]),
        .O(\data_out[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_23 
       (.I0(\mem_reg[23] [3]),
        .I1(\mem_reg[22] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[21] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[20] [3]),
        .O(\data_out[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_24 
       (.I0(\mem_reg[27] [3]),
        .I1(\mem_reg[26] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[25] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[24] [3]),
        .O(\data_out[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_25 
       (.I0(\mem_reg[31] [3]),
        .I1(\mem_reg[30] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[29] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[28] [3]),
        .O(\data_out[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_26 
       (.I0(\mem_reg[3] [3]),
        .I1(\mem_reg[2] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[1] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[0] [3]),
        .O(\data_out[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_27 
       (.I0(\mem_reg[7] [3]),
        .I1(\mem_reg[6] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[5] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[4] [3]),
        .O(\data_out[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_28 
       (.I0(\mem_reg[11] [3]),
        .I1(\mem_reg[10] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[9] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[8] [3]),
        .O(\data_out[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_29 
       (.I0(\mem_reg[15] [3]),
        .I1(\mem_reg[14] [3]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[13] [3]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[12] [3]),
        .O(\data_out[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_1 
       (.I0(\data_out_reg[4]_i_2_n_0 ),
        .I1(\data_out_reg[4]_i_3_n_0 ),
        .I2(rd_ptr_reg[5]),
        .I3(\data_out_reg[4]_i_4_n_0 ),
        .I4(rd_ptr_reg[4]),
        .I5(\data_out_reg[4]_i_5_n_0 ),
        .O(\data_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_14 
       (.I0(\mem_reg[51] [4]),
        .I1(\mem_reg[50] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[49] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[48] [4]),
        .O(\data_out[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_15 
       (.I0(\mem_reg[55] [4]),
        .I1(\mem_reg[54] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[53] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[52] [4]),
        .O(\data_out[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_16 
       (.I0(\mem_reg[59] [4]),
        .I1(\mem_reg[58] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[57] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[56] [4]),
        .O(\data_out[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_17 
       (.I0(\mem_reg[63] [4]),
        .I1(\mem_reg[62] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[61] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[60] [4]),
        .O(\data_out[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_18 
       (.I0(\mem_reg[35] [4]),
        .I1(\mem_reg[34] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[33] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[32] [4]),
        .O(\data_out[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_19 
       (.I0(\mem_reg[39] [4]),
        .I1(\mem_reg[38] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[37] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[36] [4]),
        .O(\data_out[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_20 
       (.I0(\mem_reg[43] [4]),
        .I1(\mem_reg[42] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[41] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[40] [4]),
        .O(\data_out[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_21 
       (.I0(\mem_reg[47] [4]),
        .I1(\mem_reg[46] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[45] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[44] [4]),
        .O(\data_out[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_22 
       (.I0(\mem_reg[19] [4]),
        .I1(\mem_reg[18] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[17] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[16] [4]),
        .O(\data_out[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_23 
       (.I0(\mem_reg[23] [4]),
        .I1(\mem_reg[22] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[21] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[20] [4]),
        .O(\data_out[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_24 
       (.I0(\mem_reg[27] [4]),
        .I1(\mem_reg[26] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[25] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[24] [4]),
        .O(\data_out[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_25 
       (.I0(\mem_reg[31] [4]),
        .I1(\mem_reg[30] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[29] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[28] [4]),
        .O(\data_out[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_26 
       (.I0(\mem_reg[3] [4]),
        .I1(\mem_reg[2] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[1] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[0] [4]),
        .O(\data_out[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_27 
       (.I0(\mem_reg[7] [4]),
        .I1(\mem_reg[6] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[5] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[4] [4]),
        .O(\data_out[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_28 
       (.I0(\mem_reg[11] [4]),
        .I1(\mem_reg[10] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[9] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[8] [4]),
        .O(\data_out[4]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_29 
       (.I0(\mem_reg[15] [4]),
        .I1(\mem_reg[14] [4]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[13] [4]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[12] [4]),
        .O(\data_out[4]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_1 
       (.I0(\data_out_reg[5]_i_2_n_0 ),
        .I1(\data_out_reg[5]_i_3_n_0 ),
        .I2(rd_ptr_reg[5]),
        .I3(\data_out_reg[5]_i_4_n_0 ),
        .I4(rd_ptr_reg[4]),
        .I5(\data_out_reg[5]_i_5_n_0 ),
        .O(\data_out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_14 
       (.I0(\mem_reg[51] [5]),
        .I1(\mem_reg[50] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[49] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[48] [5]),
        .O(\data_out[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_15 
       (.I0(\mem_reg[55] [5]),
        .I1(\mem_reg[54] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[53] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[52] [5]),
        .O(\data_out[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_16 
       (.I0(\mem_reg[59] [5]),
        .I1(\mem_reg[58] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[57] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[56] [5]),
        .O(\data_out[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_17 
       (.I0(\mem_reg[63] [5]),
        .I1(\mem_reg[62] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[61] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[60] [5]),
        .O(\data_out[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_18 
       (.I0(\mem_reg[35] [5]),
        .I1(\mem_reg[34] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[33] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[32] [5]),
        .O(\data_out[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_19 
       (.I0(\mem_reg[39] [5]),
        .I1(\mem_reg[38] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[37] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[36] [5]),
        .O(\data_out[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_20 
       (.I0(\mem_reg[43] [5]),
        .I1(\mem_reg[42] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[41] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[40] [5]),
        .O(\data_out[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_21 
       (.I0(\mem_reg[47] [5]),
        .I1(\mem_reg[46] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[45] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[44] [5]),
        .O(\data_out[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_22 
       (.I0(\mem_reg[19] [5]),
        .I1(\mem_reg[18] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[17] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[16] [5]),
        .O(\data_out[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_23 
       (.I0(\mem_reg[23] [5]),
        .I1(\mem_reg[22] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[21] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[20] [5]),
        .O(\data_out[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_24 
       (.I0(\mem_reg[27] [5]),
        .I1(\mem_reg[26] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[25] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[24] [5]),
        .O(\data_out[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_25 
       (.I0(\mem_reg[31] [5]),
        .I1(\mem_reg[30] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[29] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[28] [5]),
        .O(\data_out[5]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_26 
       (.I0(\mem_reg[3] [5]),
        .I1(\mem_reg[2] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[1] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[0] [5]),
        .O(\data_out[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_27 
       (.I0(\mem_reg[7] [5]),
        .I1(\mem_reg[6] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[5] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[4] [5]),
        .O(\data_out[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_28 
       (.I0(\mem_reg[11] [5]),
        .I1(\mem_reg[10] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[9] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[8] [5]),
        .O(\data_out[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_29 
       (.I0(\mem_reg[15] [5]),
        .I1(\mem_reg[14] [5]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[13] [5]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[12] [5]),
        .O(\data_out[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_1 
       (.I0(\data_out_reg[6]_i_2_n_0 ),
        .I1(\data_out_reg[6]_i_3_n_0 ),
        .I2(rd_ptr_reg[5]),
        .I3(\data_out_reg[6]_i_4_n_0 ),
        .I4(rd_ptr_reg[4]),
        .I5(\data_out_reg[6]_i_5_n_0 ),
        .O(\data_out[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_14 
       (.I0(\mem_reg[51] [6]),
        .I1(\mem_reg[50] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[49] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[48] [6]),
        .O(\data_out[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_15 
       (.I0(\mem_reg[55] [6]),
        .I1(\mem_reg[54] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[53] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[52] [6]),
        .O(\data_out[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_16 
       (.I0(\mem_reg[59] [6]),
        .I1(\mem_reg[58] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[57] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[56] [6]),
        .O(\data_out[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_17 
       (.I0(\mem_reg[63] [6]),
        .I1(\mem_reg[62] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[61] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[60] [6]),
        .O(\data_out[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_18 
       (.I0(\mem_reg[35] [6]),
        .I1(\mem_reg[34] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[33] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[32] [6]),
        .O(\data_out[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_19 
       (.I0(\mem_reg[39] [6]),
        .I1(\mem_reg[38] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[37] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[36] [6]),
        .O(\data_out[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_20 
       (.I0(\mem_reg[43] [6]),
        .I1(\mem_reg[42] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[41] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[40] [6]),
        .O(\data_out[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_21 
       (.I0(\mem_reg[47] [6]),
        .I1(\mem_reg[46] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[45] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[44] [6]),
        .O(\data_out[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_22 
       (.I0(\mem_reg[19] [6]),
        .I1(\mem_reg[18] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[17] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[16] [6]),
        .O(\data_out[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_23 
       (.I0(\mem_reg[23] [6]),
        .I1(\mem_reg[22] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[21] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[20] [6]),
        .O(\data_out[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_24 
       (.I0(\mem_reg[27] [6]),
        .I1(\mem_reg[26] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[25] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[24] [6]),
        .O(\data_out[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_25 
       (.I0(\mem_reg[31] [6]),
        .I1(\mem_reg[30] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[29] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[28] [6]),
        .O(\data_out[6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_26 
       (.I0(\mem_reg[3] [6]),
        .I1(\mem_reg[2] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[1] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[0] [6]),
        .O(\data_out[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_27 
       (.I0(\mem_reg[7] [6]),
        .I1(\mem_reg[6] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[5] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[4] [6]),
        .O(\data_out[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_28 
       (.I0(\mem_reg[11] [6]),
        .I1(\mem_reg[10] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[9] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[8] [6]),
        .O(\data_out[6]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_29 
       (.I0(\mem_reg[15] [6]),
        .I1(\mem_reg[14] [6]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[13] [6]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[12] [6]),
        .O(\data_out[6]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_out[7]_i_1 
       (.I0(count_reg[6]),
        .I1(data_ready_OBUF_inst_i_2_n_0),
        .I2(read_req_IBUF),
        .O(p_0_in_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_15 
       (.I0(\mem_reg[51] [7]),
        .I1(\mem_reg[50] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[49] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[48] [7]),
        .O(\data_out[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_16 
       (.I0(\mem_reg[55] [7]),
        .I1(\mem_reg[54] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[53] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[52] [7]),
        .O(\data_out[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_17 
       (.I0(\mem_reg[59] [7]),
        .I1(\mem_reg[58] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[57] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[56] [7]),
        .O(\data_out[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_18 
       (.I0(\mem_reg[63] [7]),
        .I1(\mem_reg[62] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[61] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[60] [7]),
        .O(\data_out[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_19 
       (.I0(\mem_reg[35] [7]),
        .I1(\mem_reg[34] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[33] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[32] [7]),
        .O(\data_out[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_2 
       (.I0(\data_out_reg[7]_i_3_n_0 ),
        .I1(\data_out_reg[7]_i_4_n_0 ),
        .I2(rd_ptr_reg[5]),
        .I3(\data_out_reg[7]_i_5_n_0 ),
        .I4(rd_ptr_reg[4]),
        .I5(\data_out_reg[7]_i_6_n_0 ),
        .O(\data_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_20 
       (.I0(\mem_reg[39] [7]),
        .I1(\mem_reg[38] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[37] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[36] [7]),
        .O(\data_out[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_21 
       (.I0(\mem_reg[43] [7]),
        .I1(\mem_reg[42] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[41] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[40] [7]),
        .O(\data_out[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_22 
       (.I0(\mem_reg[47] [7]),
        .I1(\mem_reg[46] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[45] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[44] [7]),
        .O(\data_out[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_23 
       (.I0(\mem_reg[19] [7]),
        .I1(\mem_reg[18] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[17] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[16] [7]),
        .O(\data_out[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_24 
       (.I0(\mem_reg[23] [7]),
        .I1(\mem_reg[22] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[21] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[20] [7]),
        .O(\data_out[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_25 
       (.I0(\mem_reg[27] [7]),
        .I1(\mem_reg[26] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[25] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[24] [7]),
        .O(\data_out[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_26 
       (.I0(\mem_reg[31] [7]),
        .I1(\mem_reg[30] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[29] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[28] [7]),
        .O(\data_out[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_27 
       (.I0(\mem_reg[3] [7]),
        .I1(\mem_reg[2] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[1] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[0] [7]),
        .O(\data_out[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_28 
       (.I0(\mem_reg[7] [7]),
        .I1(\mem_reg[6] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[5] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[4] [7]),
        .O(\data_out[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_29 
       (.I0(\mem_reg[11] [7]),
        .I1(\mem_reg[10] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[9] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[8] [7]),
        .O(\data_out[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_30 
       (.I0(\mem_reg[15] [7]),
        .I1(\mem_reg[14] [7]),
        .I2(rd_ptr_reg[1]),
        .I3(\mem_reg[13] [7]),
        .I4(rd_ptr_reg[0]),
        .I5(\mem_reg[12] [7]),
        .O(\data_out[7]_i_30_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(\data_out[0]_i_1__0_n_0 ),
        .Q(\data_out_reg[7]_0 [0]));
  MUXF7 \data_out_reg[0]_i_10 
       (.I0(\data_out[0]_i_22_n_0 ),
        .I1(\data_out[0]_i_23_n_0 ),
        .O(\data_out_reg[0]_i_10_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[0]_i_11 
       (.I0(\data_out[0]_i_24_n_0 ),
        .I1(\data_out[0]_i_25_n_0 ),
        .O(\data_out_reg[0]_i_11_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[0]_i_12 
       (.I0(\data_out[0]_i_26_n_0 ),
        .I1(\data_out[0]_i_27_n_0 ),
        .O(\data_out_reg[0]_i_12_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[0]_i_13 
       (.I0(\data_out[0]_i_28_n_0 ),
        .I1(\data_out[0]_i_29_n_0 ),
        .O(\data_out_reg[0]_i_13_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF8 \data_out_reg[0]_i_2 
       (.I0(\data_out_reg[0]_i_6_n_0 ),
        .I1(\data_out_reg[0]_i_7_n_0 ),
        .O(\data_out_reg[0]_i_2_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[0]_i_3 
       (.I0(\data_out_reg[0]_i_8_n_0 ),
        .I1(\data_out_reg[0]_i_9_n_0 ),
        .O(\data_out_reg[0]_i_3_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[0]_i_4 
       (.I0(\data_out_reg[0]_i_10_n_0 ),
        .I1(\data_out_reg[0]_i_11_n_0 ),
        .O(\data_out_reg[0]_i_4_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[0]_i_5 
       (.I0(\data_out_reg[0]_i_12_n_0 ),
        .I1(\data_out_reg[0]_i_13_n_0 ),
        .O(\data_out_reg[0]_i_5_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF7 \data_out_reg[0]_i_6 
       (.I0(\data_out[0]_i_14_n_0 ),
        .I1(\data_out[0]_i_15_n_0 ),
        .O(\data_out_reg[0]_i_6_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[0]_i_7 
       (.I0(\data_out[0]_i_16_n_0 ),
        .I1(\data_out[0]_i_17_n_0 ),
        .O(\data_out_reg[0]_i_7_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[0]_i_8 
       (.I0(\data_out[0]_i_18_n_0 ),
        .I1(\data_out[0]_i_19_n_0 ),
        .O(\data_out_reg[0]_i_8_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[0]_i_9 
       (.I0(\data_out[0]_i_20_n_0 ),
        .I1(\data_out[0]_i_21_n_0 ),
        .O(\data_out_reg[0]_i_9_n_0 ),
        .S(rd_ptr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(\data_out[1]_i_1_n_0 ),
        .Q(\data_out_reg[7]_0 [1]));
  MUXF7 \data_out_reg[1]_i_10 
       (.I0(\data_out[1]_i_22_n_0 ),
        .I1(\data_out[1]_i_23_n_0 ),
        .O(\data_out_reg[1]_i_10_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[1]_i_11 
       (.I0(\data_out[1]_i_24_n_0 ),
        .I1(\data_out[1]_i_25_n_0 ),
        .O(\data_out_reg[1]_i_11_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[1]_i_12 
       (.I0(\data_out[1]_i_26_n_0 ),
        .I1(\data_out[1]_i_27_n_0 ),
        .O(\data_out_reg[1]_i_12_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[1]_i_13 
       (.I0(\data_out[1]_i_28_n_0 ),
        .I1(\data_out[1]_i_29_n_0 ),
        .O(\data_out_reg[1]_i_13_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF8 \data_out_reg[1]_i_2 
       (.I0(\data_out_reg[1]_i_6_n_0 ),
        .I1(\data_out_reg[1]_i_7_n_0 ),
        .O(\data_out_reg[1]_i_2_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[1]_i_3 
       (.I0(\data_out_reg[1]_i_8_n_0 ),
        .I1(\data_out_reg[1]_i_9_n_0 ),
        .O(\data_out_reg[1]_i_3_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[1]_i_4 
       (.I0(\data_out_reg[1]_i_10_n_0 ),
        .I1(\data_out_reg[1]_i_11_n_0 ),
        .O(\data_out_reg[1]_i_4_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[1]_i_5 
       (.I0(\data_out_reg[1]_i_12_n_0 ),
        .I1(\data_out_reg[1]_i_13_n_0 ),
        .O(\data_out_reg[1]_i_5_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF7 \data_out_reg[1]_i_6 
       (.I0(\data_out[1]_i_14_n_0 ),
        .I1(\data_out[1]_i_15_n_0 ),
        .O(\data_out_reg[1]_i_6_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[1]_i_7 
       (.I0(\data_out[1]_i_16_n_0 ),
        .I1(\data_out[1]_i_17_n_0 ),
        .O(\data_out_reg[1]_i_7_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[1]_i_8 
       (.I0(\data_out[1]_i_18_n_0 ),
        .I1(\data_out[1]_i_19_n_0 ),
        .O(\data_out_reg[1]_i_8_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[1]_i_9 
       (.I0(\data_out[1]_i_20_n_0 ),
        .I1(\data_out[1]_i_21_n_0 ),
        .O(\data_out_reg[1]_i_9_n_0 ),
        .S(rd_ptr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(\data_out_reg[7]_0 [2]));
  MUXF7 \data_out_reg[2]_i_10 
       (.I0(\data_out[2]_i_22_n_0 ),
        .I1(\data_out[2]_i_23_n_0 ),
        .O(\data_out_reg[2]_i_10_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[2]_i_11 
       (.I0(\data_out[2]_i_24_n_0 ),
        .I1(\data_out[2]_i_25_n_0 ),
        .O(\data_out_reg[2]_i_11_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[2]_i_12 
       (.I0(\data_out[2]_i_26_n_0 ),
        .I1(\data_out[2]_i_27_n_0 ),
        .O(\data_out_reg[2]_i_12_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[2]_i_13 
       (.I0(\data_out[2]_i_28_n_0 ),
        .I1(\data_out[2]_i_29_n_0 ),
        .O(\data_out_reg[2]_i_13_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF8 \data_out_reg[2]_i_2 
       (.I0(\data_out_reg[2]_i_6_n_0 ),
        .I1(\data_out_reg[2]_i_7_n_0 ),
        .O(\data_out_reg[2]_i_2_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[2]_i_3 
       (.I0(\data_out_reg[2]_i_8_n_0 ),
        .I1(\data_out_reg[2]_i_9_n_0 ),
        .O(\data_out_reg[2]_i_3_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[2]_i_4 
       (.I0(\data_out_reg[2]_i_10_n_0 ),
        .I1(\data_out_reg[2]_i_11_n_0 ),
        .O(\data_out_reg[2]_i_4_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[2]_i_5 
       (.I0(\data_out_reg[2]_i_12_n_0 ),
        .I1(\data_out_reg[2]_i_13_n_0 ),
        .O(\data_out_reg[2]_i_5_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF7 \data_out_reg[2]_i_6 
       (.I0(\data_out[2]_i_14_n_0 ),
        .I1(\data_out[2]_i_15_n_0 ),
        .O(\data_out_reg[2]_i_6_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[2]_i_7 
       (.I0(\data_out[2]_i_16_n_0 ),
        .I1(\data_out[2]_i_17_n_0 ),
        .O(\data_out_reg[2]_i_7_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[2]_i_8 
       (.I0(\data_out[2]_i_18_n_0 ),
        .I1(\data_out[2]_i_19_n_0 ),
        .O(\data_out_reg[2]_i_8_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[2]_i_9 
       (.I0(\data_out[2]_i_20_n_0 ),
        .I1(\data_out[2]_i_21_n_0 ),
        .O(\data_out_reg[2]_i_9_n_0 ),
        .S(rd_ptr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(\data_out_reg[7]_0 [3]));
  MUXF7 \data_out_reg[3]_i_10 
       (.I0(\data_out[3]_i_22_n_0 ),
        .I1(\data_out[3]_i_23_n_0 ),
        .O(\data_out_reg[3]_i_10_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[3]_i_11 
       (.I0(\data_out[3]_i_24_n_0 ),
        .I1(\data_out[3]_i_25_n_0 ),
        .O(\data_out_reg[3]_i_11_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[3]_i_12 
       (.I0(\data_out[3]_i_26_n_0 ),
        .I1(\data_out[3]_i_27_n_0 ),
        .O(\data_out_reg[3]_i_12_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[3]_i_13 
       (.I0(\data_out[3]_i_28_n_0 ),
        .I1(\data_out[3]_i_29_n_0 ),
        .O(\data_out_reg[3]_i_13_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF8 \data_out_reg[3]_i_2 
       (.I0(\data_out_reg[3]_i_6_n_0 ),
        .I1(\data_out_reg[3]_i_7_n_0 ),
        .O(\data_out_reg[3]_i_2_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[3]_i_3 
       (.I0(\data_out_reg[3]_i_8_n_0 ),
        .I1(\data_out_reg[3]_i_9_n_0 ),
        .O(\data_out_reg[3]_i_3_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[3]_i_4 
       (.I0(\data_out_reg[3]_i_10_n_0 ),
        .I1(\data_out_reg[3]_i_11_n_0 ),
        .O(\data_out_reg[3]_i_4_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[3]_i_5 
       (.I0(\data_out_reg[3]_i_12_n_0 ),
        .I1(\data_out_reg[3]_i_13_n_0 ),
        .O(\data_out_reg[3]_i_5_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF7 \data_out_reg[3]_i_6 
       (.I0(\data_out[3]_i_14_n_0 ),
        .I1(\data_out[3]_i_15_n_0 ),
        .O(\data_out_reg[3]_i_6_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[3]_i_7 
       (.I0(\data_out[3]_i_16_n_0 ),
        .I1(\data_out[3]_i_17_n_0 ),
        .O(\data_out_reg[3]_i_7_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[3]_i_8 
       (.I0(\data_out[3]_i_18_n_0 ),
        .I1(\data_out[3]_i_19_n_0 ),
        .O(\data_out_reg[3]_i_8_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[3]_i_9 
       (.I0(\data_out[3]_i_20_n_0 ),
        .I1(\data_out[3]_i_21_n_0 ),
        .O(\data_out_reg[3]_i_9_n_0 ),
        .S(rd_ptr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(\data_out_reg[7]_0 [4]));
  MUXF7 \data_out_reg[4]_i_10 
       (.I0(\data_out[4]_i_22_n_0 ),
        .I1(\data_out[4]_i_23_n_0 ),
        .O(\data_out_reg[4]_i_10_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[4]_i_11 
       (.I0(\data_out[4]_i_24_n_0 ),
        .I1(\data_out[4]_i_25_n_0 ),
        .O(\data_out_reg[4]_i_11_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[4]_i_12 
       (.I0(\data_out[4]_i_26_n_0 ),
        .I1(\data_out[4]_i_27_n_0 ),
        .O(\data_out_reg[4]_i_12_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[4]_i_13 
       (.I0(\data_out[4]_i_28_n_0 ),
        .I1(\data_out[4]_i_29_n_0 ),
        .O(\data_out_reg[4]_i_13_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF8 \data_out_reg[4]_i_2 
       (.I0(\data_out_reg[4]_i_6_n_0 ),
        .I1(\data_out_reg[4]_i_7_n_0 ),
        .O(\data_out_reg[4]_i_2_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[4]_i_3 
       (.I0(\data_out_reg[4]_i_8_n_0 ),
        .I1(\data_out_reg[4]_i_9_n_0 ),
        .O(\data_out_reg[4]_i_3_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[4]_i_4 
       (.I0(\data_out_reg[4]_i_10_n_0 ),
        .I1(\data_out_reg[4]_i_11_n_0 ),
        .O(\data_out_reg[4]_i_4_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[4]_i_5 
       (.I0(\data_out_reg[4]_i_12_n_0 ),
        .I1(\data_out_reg[4]_i_13_n_0 ),
        .O(\data_out_reg[4]_i_5_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF7 \data_out_reg[4]_i_6 
       (.I0(\data_out[4]_i_14_n_0 ),
        .I1(\data_out[4]_i_15_n_0 ),
        .O(\data_out_reg[4]_i_6_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[4]_i_7 
       (.I0(\data_out[4]_i_16_n_0 ),
        .I1(\data_out[4]_i_17_n_0 ),
        .O(\data_out_reg[4]_i_7_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[4]_i_8 
       (.I0(\data_out[4]_i_18_n_0 ),
        .I1(\data_out[4]_i_19_n_0 ),
        .O(\data_out_reg[4]_i_8_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[4]_i_9 
       (.I0(\data_out[4]_i_20_n_0 ),
        .I1(\data_out[4]_i_21_n_0 ),
        .O(\data_out_reg[4]_i_9_n_0 ),
        .S(rd_ptr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(\data_out_reg[7]_0 [5]));
  MUXF7 \data_out_reg[5]_i_10 
       (.I0(\data_out[5]_i_22_n_0 ),
        .I1(\data_out[5]_i_23_n_0 ),
        .O(\data_out_reg[5]_i_10_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[5]_i_11 
       (.I0(\data_out[5]_i_24_n_0 ),
        .I1(\data_out[5]_i_25_n_0 ),
        .O(\data_out_reg[5]_i_11_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[5]_i_12 
       (.I0(\data_out[5]_i_26_n_0 ),
        .I1(\data_out[5]_i_27_n_0 ),
        .O(\data_out_reg[5]_i_12_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[5]_i_13 
       (.I0(\data_out[5]_i_28_n_0 ),
        .I1(\data_out[5]_i_29_n_0 ),
        .O(\data_out_reg[5]_i_13_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF8 \data_out_reg[5]_i_2 
       (.I0(\data_out_reg[5]_i_6_n_0 ),
        .I1(\data_out_reg[5]_i_7_n_0 ),
        .O(\data_out_reg[5]_i_2_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[5]_i_3 
       (.I0(\data_out_reg[5]_i_8_n_0 ),
        .I1(\data_out_reg[5]_i_9_n_0 ),
        .O(\data_out_reg[5]_i_3_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[5]_i_4 
       (.I0(\data_out_reg[5]_i_10_n_0 ),
        .I1(\data_out_reg[5]_i_11_n_0 ),
        .O(\data_out_reg[5]_i_4_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[5]_i_5 
       (.I0(\data_out_reg[5]_i_12_n_0 ),
        .I1(\data_out_reg[5]_i_13_n_0 ),
        .O(\data_out_reg[5]_i_5_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF7 \data_out_reg[5]_i_6 
       (.I0(\data_out[5]_i_14_n_0 ),
        .I1(\data_out[5]_i_15_n_0 ),
        .O(\data_out_reg[5]_i_6_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[5]_i_7 
       (.I0(\data_out[5]_i_16_n_0 ),
        .I1(\data_out[5]_i_17_n_0 ),
        .O(\data_out_reg[5]_i_7_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[5]_i_8 
       (.I0(\data_out[5]_i_18_n_0 ),
        .I1(\data_out[5]_i_19_n_0 ),
        .O(\data_out_reg[5]_i_8_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[5]_i_9 
       (.I0(\data_out[5]_i_20_n_0 ),
        .I1(\data_out[5]_i_21_n_0 ),
        .O(\data_out_reg[5]_i_9_n_0 ),
        .S(rd_ptr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(\data_out_reg[7]_0 [6]));
  MUXF7 \data_out_reg[6]_i_10 
       (.I0(\data_out[6]_i_22_n_0 ),
        .I1(\data_out[6]_i_23_n_0 ),
        .O(\data_out_reg[6]_i_10_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[6]_i_11 
       (.I0(\data_out[6]_i_24_n_0 ),
        .I1(\data_out[6]_i_25_n_0 ),
        .O(\data_out_reg[6]_i_11_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[6]_i_12 
       (.I0(\data_out[6]_i_26_n_0 ),
        .I1(\data_out[6]_i_27_n_0 ),
        .O(\data_out_reg[6]_i_12_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[6]_i_13 
       (.I0(\data_out[6]_i_28_n_0 ),
        .I1(\data_out[6]_i_29_n_0 ),
        .O(\data_out_reg[6]_i_13_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF8 \data_out_reg[6]_i_2 
       (.I0(\data_out_reg[6]_i_6_n_0 ),
        .I1(\data_out_reg[6]_i_7_n_0 ),
        .O(\data_out_reg[6]_i_2_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[6]_i_3 
       (.I0(\data_out_reg[6]_i_8_n_0 ),
        .I1(\data_out_reg[6]_i_9_n_0 ),
        .O(\data_out_reg[6]_i_3_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[6]_i_4 
       (.I0(\data_out_reg[6]_i_10_n_0 ),
        .I1(\data_out_reg[6]_i_11_n_0 ),
        .O(\data_out_reg[6]_i_4_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[6]_i_5 
       (.I0(\data_out_reg[6]_i_12_n_0 ),
        .I1(\data_out_reg[6]_i_13_n_0 ),
        .O(\data_out_reg[6]_i_5_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF7 \data_out_reg[6]_i_6 
       (.I0(\data_out[6]_i_14_n_0 ),
        .I1(\data_out[6]_i_15_n_0 ),
        .O(\data_out_reg[6]_i_6_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[6]_i_7 
       (.I0(\data_out[6]_i_16_n_0 ),
        .I1(\data_out[6]_i_17_n_0 ),
        .O(\data_out_reg[6]_i_7_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[6]_i_8 
       (.I0(\data_out[6]_i_18_n_0 ),
        .I1(\data_out[6]_i_19_n_0 ),
        .O(\data_out_reg[6]_i_8_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[6]_i_9 
       (.I0(\data_out[6]_i_20_n_0 ),
        .I1(\data_out[6]_i_21_n_0 ),
        .O(\data_out_reg[6]_i_9_n_0 ),
        .S(rd_ptr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(\data_out[7]_i_2_n_0 ),
        .Q(\data_out_reg[7]_0 [7]));
  MUXF7 \data_out_reg[7]_i_10 
       (.I0(\data_out[7]_i_21_n_0 ),
        .I1(\data_out[7]_i_22_n_0 ),
        .O(\data_out_reg[7]_i_10_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[7]_i_11 
       (.I0(\data_out[7]_i_23_n_0 ),
        .I1(\data_out[7]_i_24_n_0 ),
        .O(\data_out_reg[7]_i_11_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[7]_i_12 
       (.I0(\data_out[7]_i_25_n_0 ),
        .I1(\data_out[7]_i_26_n_0 ),
        .O(\data_out_reg[7]_i_12_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[7]_i_13 
       (.I0(\data_out[7]_i_27_n_0 ),
        .I1(\data_out[7]_i_28_n_0 ),
        .O(\data_out_reg[7]_i_13_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[7]_i_14 
       (.I0(\data_out[7]_i_29_n_0 ),
        .I1(\data_out[7]_i_30_n_0 ),
        .O(\data_out_reg[7]_i_14_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF8 \data_out_reg[7]_i_3 
       (.I0(\data_out_reg[7]_i_7_n_0 ),
        .I1(\data_out_reg[7]_i_8_n_0 ),
        .O(\data_out_reg[7]_i_3_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[7]_i_4 
       (.I0(\data_out_reg[7]_i_9_n_0 ),
        .I1(\data_out_reg[7]_i_10_n_0 ),
        .O(\data_out_reg[7]_i_4_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[7]_i_5 
       (.I0(\data_out_reg[7]_i_11_n_0 ),
        .I1(\data_out_reg[7]_i_12_n_0 ),
        .O(\data_out_reg[7]_i_5_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF8 \data_out_reg[7]_i_6 
       (.I0(\data_out_reg[7]_i_13_n_0 ),
        .I1(\data_out_reg[7]_i_14_n_0 ),
        .O(\data_out_reg[7]_i_6_n_0 ),
        .S(rd_ptr_reg[3]));
  MUXF7 \data_out_reg[7]_i_7 
       (.I0(\data_out[7]_i_15_n_0 ),
        .I1(\data_out[7]_i_16_n_0 ),
        .O(\data_out_reg[7]_i_7_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[7]_i_8 
       (.I0(\data_out[7]_i_17_n_0 ),
        .I1(\data_out[7]_i_18_n_0 ),
        .O(\data_out_reg[7]_i_8_n_0 ),
        .S(rd_ptr_reg[2]));
  MUXF7 \data_out_reg[7]_i_9 
       (.I0(\data_out[7]_i_19_n_0 ),
        .I1(\data_out[7]_i_20_n_0 ),
        .O(\data_out_reg[7]_i_9_n_0 ),
        .S(rd_ptr_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    data_ready_OBUF_inst_i_1
       (.I0(data_ready_OBUF_inst_i_2_n_0),
        .I1(count_reg[6]),
        .O(data_ready_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    data_ready_OBUF_inst_i_2
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(count_reg[5]),
        .O(data_ready_OBUF_inst_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    enable_fifo_i_1
       (.I0(p_0_in),
        .I1(write_pending),
        .O(write_pending_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    enable_ro_i_1
       (.I0(data_ready_OBUF_inst_i_2_n_0),
        .I1(count_reg[6]),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    enable_ro_i_2
       (.I0(reset_n_IBUF),
        .O(reset_n));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[0][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[10][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[10][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[11][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[11][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[12][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[12][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[13][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[13][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[14][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[14][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[15][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[15][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \mem[16][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[16][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \mem[17][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[17][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \mem[18][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[18][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \mem[19][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[19][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[1][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[20][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[20][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[21][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[21][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[22][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[22][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[23][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[23][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \mem[24][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[24][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \mem[25][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[25][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \mem[26][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[26][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \mem[27][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[27][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[28][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[28][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \mem[29][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[29][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[2][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[30][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[30][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \mem[31][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[31][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \mem[32][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[32][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \mem[33][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[33][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem[34][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[34][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem[35][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[35][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \mem[36][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[36][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \mem[37][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[37][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \mem[38][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[38][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \mem[39][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[39][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \mem[3][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \mem[40][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[40][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \mem[41][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[41][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem[42][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[42][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \mem[43][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[43][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \mem[44][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[44][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \mem[45][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[45][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \mem[46][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[46][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \mem[47][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[47][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \mem[48][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[48][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \mem[49][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[49][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[4][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \mem[50][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[50][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \mem[51][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[51][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \mem[52][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[52][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \mem[53][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[53][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mem[54][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[54][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040440000)) 
    \mem[54][7]_i_2 
       (.I0(wr_ptr_reg[0]),
        .I1(enable_fifo),
        .I2(data_ready_OBUF_inst_i_2_n_0),
        .I3(count_reg[6]),
        .I4(reset_n_IBUF),
        .I5(wr_ptr_reg[3]),
        .O(\mem[54][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mem[55][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[55][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080880000)) 
    \mem[55][7]_i_2 
       (.I0(wr_ptr_reg[0]),
        .I1(enable_fifo),
        .I2(data_ready_OBUF_inst_i_2_n_0),
        .I3(count_reg[6]),
        .I4(reset_n_IBUF),
        .I5(wr_ptr_reg[3]),
        .O(\mem[55][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \mem[56][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[56][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \mem[57][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[57][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \mem[58][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[58][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \mem[59][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[59][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \mem[5][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \mem[60][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[60][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \mem[61][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[61][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mem[62][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[62][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4044000000000000)) 
    \mem[62][7]_i_2 
       (.I0(wr_ptr_reg[0]),
        .I1(enable_fifo),
        .I2(data_ready_OBUF_inst_i_2_n_0),
        .I3(count_reg[6]),
        .I4(reset_n_IBUF),
        .I5(wr_ptr_reg[3]),
        .O(\mem[62][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \mem[63][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[63][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8088000000000000)) 
    \mem[63][7]_i_2 
       (.I0(wr_ptr_reg[0]),
        .I1(enable_fifo),
        .I2(data_ready_OBUF_inst_i_2_n_0),
        .I3(count_reg[6]),
        .I4(reset_n_IBUF),
        .I5(wr_ptr_reg[3]),
        .O(\mem[63][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[6][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[54][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \mem[7][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[55][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[7][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[8][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[62][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[8][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem[9][7]_i_1 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(\mem[63][7]_i_2_n_0 ),
        .I3(wr_ptr_reg[1]),
        .I4(wr_ptr_reg[5]),
        .O(\mem[9][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][0] 
       (.C(CLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][1] 
       (.C(CLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][2] 
       (.C(CLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][3] 
       (.C(CLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][4] 
       (.C(CLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][5] 
       (.C(CLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][6] 
       (.C(CLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[0][7] 
       (.C(CLK),
        .CE(\mem[0][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][0] 
       (.C(CLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[10] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][1] 
       (.C(CLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[10] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][2] 
       (.C(CLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[10] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][3] 
       (.C(CLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[10] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][4] 
       (.C(CLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[10] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][5] 
       (.C(CLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[10] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][6] 
       (.C(CLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[10] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[10][7] 
       (.C(CLK),
        .CE(\mem[10][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[10] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][0] 
       (.C(CLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[11] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][1] 
       (.C(CLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[11] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][2] 
       (.C(CLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[11] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][3] 
       (.C(CLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[11] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][4] 
       (.C(CLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[11] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][5] 
       (.C(CLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[11] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][6] 
       (.C(CLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[11] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[11][7] 
       (.C(CLK),
        .CE(\mem[11][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[11] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][0] 
       (.C(CLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[12] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][1] 
       (.C(CLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[12] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][2] 
       (.C(CLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[12] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][3] 
       (.C(CLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[12] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][4] 
       (.C(CLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[12] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][5] 
       (.C(CLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[12] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][6] 
       (.C(CLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[12] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[12][7] 
       (.C(CLK),
        .CE(\mem[12][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[12] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][0] 
       (.C(CLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[13] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][1] 
       (.C(CLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[13] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][2] 
       (.C(CLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[13] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][3] 
       (.C(CLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[13] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][4] 
       (.C(CLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[13] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][5] 
       (.C(CLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[13] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][6] 
       (.C(CLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[13] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[13][7] 
       (.C(CLK),
        .CE(\mem[13][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[13] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][0] 
       (.C(CLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[14] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][1] 
       (.C(CLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[14] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][2] 
       (.C(CLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[14] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][3] 
       (.C(CLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[14] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][4] 
       (.C(CLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[14] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][5] 
       (.C(CLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[14] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][6] 
       (.C(CLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[14] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[14][7] 
       (.C(CLK),
        .CE(\mem[14][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[14] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][0] 
       (.C(CLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[15] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][1] 
       (.C(CLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[15] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][2] 
       (.C(CLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[15] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][3] 
       (.C(CLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[15] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][4] 
       (.C(CLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[15] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][5] 
       (.C(CLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[15] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][6] 
       (.C(CLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[15] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[15][7] 
       (.C(CLK),
        .CE(\mem[15][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[15] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[16][0] 
       (.C(CLK),
        .CE(\mem[16][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[16] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[16][1] 
       (.C(CLK),
        .CE(\mem[16][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[16] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[16][2] 
       (.C(CLK),
        .CE(\mem[16][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[16] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[16][3] 
       (.C(CLK),
        .CE(\mem[16][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[16] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[16][4] 
       (.C(CLK),
        .CE(\mem[16][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[16] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[16][5] 
       (.C(CLK),
        .CE(\mem[16][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[16] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[16][6] 
       (.C(CLK),
        .CE(\mem[16][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[16] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[16][7] 
       (.C(CLK),
        .CE(\mem[16][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[16] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[17][0] 
       (.C(CLK),
        .CE(\mem[17][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[17] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[17][1] 
       (.C(CLK),
        .CE(\mem[17][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[17] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[17][2] 
       (.C(CLK),
        .CE(\mem[17][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[17] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[17][3] 
       (.C(CLK),
        .CE(\mem[17][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[17] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[17][4] 
       (.C(CLK),
        .CE(\mem[17][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[17] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[17][5] 
       (.C(CLK),
        .CE(\mem[17][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[17] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[17][6] 
       (.C(CLK),
        .CE(\mem[17][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[17] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[17][7] 
       (.C(CLK),
        .CE(\mem[17][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[17] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[18][0] 
       (.C(CLK),
        .CE(\mem[18][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[18] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[18][1] 
       (.C(CLK),
        .CE(\mem[18][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[18] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[18][2] 
       (.C(CLK),
        .CE(\mem[18][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[18] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[18][3] 
       (.C(CLK),
        .CE(\mem[18][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[18] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[18][4] 
       (.C(CLK),
        .CE(\mem[18][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[18] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[18][5] 
       (.C(CLK),
        .CE(\mem[18][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[18] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[18][6] 
       (.C(CLK),
        .CE(\mem[18][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[18] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[18][7] 
       (.C(CLK),
        .CE(\mem[18][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[18] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[19][0] 
       (.C(CLK),
        .CE(\mem[19][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[19] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[19][1] 
       (.C(CLK),
        .CE(\mem[19][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[19] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[19][2] 
       (.C(CLK),
        .CE(\mem[19][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[19] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[19][3] 
       (.C(CLK),
        .CE(\mem[19][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[19] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[19][4] 
       (.C(CLK),
        .CE(\mem[19][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[19] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[19][5] 
       (.C(CLK),
        .CE(\mem[19][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[19] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[19][6] 
       (.C(CLK),
        .CE(\mem[19][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[19] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[19][7] 
       (.C(CLK),
        .CE(\mem[19][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[19] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][0] 
       (.C(CLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][1] 
       (.C(CLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][2] 
       (.C(CLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][3] 
       (.C(CLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][4] 
       (.C(CLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][5] 
       (.C(CLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[1] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][6] 
       (.C(CLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[1] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[1][7] 
       (.C(CLK),
        .CE(\mem[1][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[1] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[20][0] 
       (.C(CLK),
        .CE(\mem[20][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[20] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[20][1] 
       (.C(CLK),
        .CE(\mem[20][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[20] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[20][2] 
       (.C(CLK),
        .CE(\mem[20][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[20] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[20][3] 
       (.C(CLK),
        .CE(\mem[20][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[20] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[20][4] 
       (.C(CLK),
        .CE(\mem[20][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[20] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[20][5] 
       (.C(CLK),
        .CE(\mem[20][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[20] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[20][6] 
       (.C(CLK),
        .CE(\mem[20][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[20] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[20][7] 
       (.C(CLK),
        .CE(\mem[20][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[20] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[21][0] 
       (.C(CLK),
        .CE(\mem[21][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[21] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[21][1] 
       (.C(CLK),
        .CE(\mem[21][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[21] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[21][2] 
       (.C(CLK),
        .CE(\mem[21][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[21] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[21][3] 
       (.C(CLK),
        .CE(\mem[21][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[21] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[21][4] 
       (.C(CLK),
        .CE(\mem[21][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[21] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[21][5] 
       (.C(CLK),
        .CE(\mem[21][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[21] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[21][6] 
       (.C(CLK),
        .CE(\mem[21][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[21] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[21][7] 
       (.C(CLK),
        .CE(\mem[21][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[21] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[22][0] 
       (.C(CLK),
        .CE(\mem[22][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[22] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[22][1] 
       (.C(CLK),
        .CE(\mem[22][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[22] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[22][2] 
       (.C(CLK),
        .CE(\mem[22][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[22] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[22][3] 
       (.C(CLK),
        .CE(\mem[22][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[22] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[22][4] 
       (.C(CLK),
        .CE(\mem[22][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[22] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[22][5] 
       (.C(CLK),
        .CE(\mem[22][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[22] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[22][6] 
       (.C(CLK),
        .CE(\mem[22][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[22] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[22][7] 
       (.C(CLK),
        .CE(\mem[22][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[22] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[23][0] 
       (.C(CLK),
        .CE(\mem[23][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[23] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[23][1] 
       (.C(CLK),
        .CE(\mem[23][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[23] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[23][2] 
       (.C(CLK),
        .CE(\mem[23][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[23] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[23][3] 
       (.C(CLK),
        .CE(\mem[23][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[23] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[23][4] 
       (.C(CLK),
        .CE(\mem[23][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[23] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[23][5] 
       (.C(CLK),
        .CE(\mem[23][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[23] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[23][6] 
       (.C(CLK),
        .CE(\mem[23][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[23] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[23][7] 
       (.C(CLK),
        .CE(\mem[23][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[23] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[24][0] 
       (.C(CLK),
        .CE(\mem[24][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[24] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[24][1] 
       (.C(CLK),
        .CE(\mem[24][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[24] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[24][2] 
       (.C(CLK),
        .CE(\mem[24][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[24] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[24][3] 
       (.C(CLK),
        .CE(\mem[24][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[24] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[24][4] 
       (.C(CLK),
        .CE(\mem[24][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[24] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[24][5] 
       (.C(CLK),
        .CE(\mem[24][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[24] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[24][6] 
       (.C(CLK),
        .CE(\mem[24][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[24] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[24][7] 
       (.C(CLK),
        .CE(\mem[24][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[24] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[25][0] 
       (.C(CLK),
        .CE(\mem[25][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[25] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[25][1] 
       (.C(CLK),
        .CE(\mem[25][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[25] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[25][2] 
       (.C(CLK),
        .CE(\mem[25][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[25] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[25][3] 
       (.C(CLK),
        .CE(\mem[25][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[25] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[25][4] 
       (.C(CLK),
        .CE(\mem[25][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[25] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[25][5] 
       (.C(CLK),
        .CE(\mem[25][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[25] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[25][6] 
       (.C(CLK),
        .CE(\mem[25][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[25] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[25][7] 
       (.C(CLK),
        .CE(\mem[25][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[25] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[26][0] 
       (.C(CLK),
        .CE(\mem[26][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[26] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[26][1] 
       (.C(CLK),
        .CE(\mem[26][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[26] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[26][2] 
       (.C(CLK),
        .CE(\mem[26][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[26] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[26][3] 
       (.C(CLK),
        .CE(\mem[26][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[26] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[26][4] 
       (.C(CLK),
        .CE(\mem[26][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[26] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[26][5] 
       (.C(CLK),
        .CE(\mem[26][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[26] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[26][6] 
       (.C(CLK),
        .CE(\mem[26][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[26] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[26][7] 
       (.C(CLK),
        .CE(\mem[26][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[26] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[27][0] 
       (.C(CLK),
        .CE(\mem[27][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[27] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[27][1] 
       (.C(CLK),
        .CE(\mem[27][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[27] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[27][2] 
       (.C(CLK),
        .CE(\mem[27][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[27] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[27][3] 
       (.C(CLK),
        .CE(\mem[27][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[27] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[27][4] 
       (.C(CLK),
        .CE(\mem[27][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[27] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[27][5] 
       (.C(CLK),
        .CE(\mem[27][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[27] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[27][6] 
       (.C(CLK),
        .CE(\mem[27][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[27] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[27][7] 
       (.C(CLK),
        .CE(\mem[27][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[27] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[28][0] 
       (.C(CLK),
        .CE(\mem[28][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[28] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[28][1] 
       (.C(CLK),
        .CE(\mem[28][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[28] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[28][2] 
       (.C(CLK),
        .CE(\mem[28][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[28] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[28][3] 
       (.C(CLK),
        .CE(\mem[28][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[28] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[28][4] 
       (.C(CLK),
        .CE(\mem[28][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[28] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[28][5] 
       (.C(CLK),
        .CE(\mem[28][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[28] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[28][6] 
       (.C(CLK),
        .CE(\mem[28][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[28] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[28][7] 
       (.C(CLK),
        .CE(\mem[28][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[28] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[29][0] 
       (.C(CLK),
        .CE(\mem[29][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[29] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[29][1] 
       (.C(CLK),
        .CE(\mem[29][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[29] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[29][2] 
       (.C(CLK),
        .CE(\mem[29][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[29] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[29][3] 
       (.C(CLK),
        .CE(\mem[29][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[29] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[29][4] 
       (.C(CLK),
        .CE(\mem[29][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[29] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[29][5] 
       (.C(CLK),
        .CE(\mem[29][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[29] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[29][6] 
       (.C(CLK),
        .CE(\mem[29][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[29] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[29][7] 
       (.C(CLK),
        .CE(\mem[29][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[29] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][0] 
       (.C(CLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][1] 
       (.C(CLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][2] 
       (.C(CLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][3] 
       (.C(CLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][4] 
       (.C(CLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][5] 
       (.C(CLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][6] 
       (.C(CLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[2] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[2][7] 
       (.C(CLK),
        .CE(\mem[2][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[2] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[30][0] 
       (.C(CLK),
        .CE(\mem[30][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[30] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[30][1] 
       (.C(CLK),
        .CE(\mem[30][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[30] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[30][2] 
       (.C(CLK),
        .CE(\mem[30][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[30] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[30][3] 
       (.C(CLK),
        .CE(\mem[30][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[30] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[30][4] 
       (.C(CLK),
        .CE(\mem[30][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[30] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[30][5] 
       (.C(CLK),
        .CE(\mem[30][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[30] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[30][6] 
       (.C(CLK),
        .CE(\mem[30][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[30] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[30][7] 
       (.C(CLK),
        .CE(\mem[30][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[30] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][0] 
       (.C(CLK),
        .CE(\mem[31][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[31] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][1] 
       (.C(CLK),
        .CE(\mem[31][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[31] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][2] 
       (.C(CLK),
        .CE(\mem[31][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[31] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][3] 
       (.C(CLK),
        .CE(\mem[31][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[31] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][4] 
       (.C(CLK),
        .CE(\mem[31][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[31] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][5] 
       (.C(CLK),
        .CE(\mem[31][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[31] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][6] 
       (.C(CLK),
        .CE(\mem[31][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[31] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[31][7] 
       (.C(CLK),
        .CE(\mem[31][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[31] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[32][0] 
       (.C(CLK),
        .CE(\mem[32][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[32] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[32][1] 
       (.C(CLK),
        .CE(\mem[32][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[32] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[32][2] 
       (.C(CLK),
        .CE(\mem[32][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[32] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[32][3] 
       (.C(CLK),
        .CE(\mem[32][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[32] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[32][4] 
       (.C(CLK),
        .CE(\mem[32][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[32] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[32][5] 
       (.C(CLK),
        .CE(\mem[32][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[32] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[32][6] 
       (.C(CLK),
        .CE(\mem[32][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[32] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[32][7] 
       (.C(CLK),
        .CE(\mem[32][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[32] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[33][0] 
       (.C(CLK),
        .CE(\mem[33][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[33] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[33][1] 
       (.C(CLK),
        .CE(\mem[33][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[33] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[33][2] 
       (.C(CLK),
        .CE(\mem[33][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[33] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[33][3] 
       (.C(CLK),
        .CE(\mem[33][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[33] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[33][4] 
       (.C(CLK),
        .CE(\mem[33][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[33] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[33][5] 
       (.C(CLK),
        .CE(\mem[33][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[33] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[33][6] 
       (.C(CLK),
        .CE(\mem[33][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[33] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[33][7] 
       (.C(CLK),
        .CE(\mem[33][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[33] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[34][0] 
       (.C(CLK),
        .CE(\mem[34][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[34] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[34][1] 
       (.C(CLK),
        .CE(\mem[34][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[34] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[34][2] 
       (.C(CLK),
        .CE(\mem[34][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[34] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[34][3] 
       (.C(CLK),
        .CE(\mem[34][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[34] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[34][4] 
       (.C(CLK),
        .CE(\mem[34][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[34] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[34][5] 
       (.C(CLK),
        .CE(\mem[34][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[34] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[34][6] 
       (.C(CLK),
        .CE(\mem[34][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[34] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[34][7] 
       (.C(CLK),
        .CE(\mem[34][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[34] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[35][0] 
       (.C(CLK),
        .CE(\mem[35][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[35] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[35][1] 
       (.C(CLK),
        .CE(\mem[35][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[35] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[35][2] 
       (.C(CLK),
        .CE(\mem[35][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[35] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[35][3] 
       (.C(CLK),
        .CE(\mem[35][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[35] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[35][4] 
       (.C(CLK),
        .CE(\mem[35][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[35] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[35][5] 
       (.C(CLK),
        .CE(\mem[35][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[35] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[35][6] 
       (.C(CLK),
        .CE(\mem[35][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[35] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[35][7] 
       (.C(CLK),
        .CE(\mem[35][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[35] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[36][0] 
       (.C(CLK),
        .CE(\mem[36][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[36] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[36][1] 
       (.C(CLK),
        .CE(\mem[36][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[36] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[36][2] 
       (.C(CLK),
        .CE(\mem[36][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[36] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[36][3] 
       (.C(CLK),
        .CE(\mem[36][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[36] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[36][4] 
       (.C(CLK),
        .CE(\mem[36][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[36] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[36][5] 
       (.C(CLK),
        .CE(\mem[36][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[36] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[36][6] 
       (.C(CLK),
        .CE(\mem[36][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[36] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[36][7] 
       (.C(CLK),
        .CE(\mem[36][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[36] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[37][0] 
       (.C(CLK),
        .CE(\mem[37][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[37] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[37][1] 
       (.C(CLK),
        .CE(\mem[37][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[37] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[37][2] 
       (.C(CLK),
        .CE(\mem[37][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[37] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[37][3] 
       (.C(CLK),
        .CE(\mem[37][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[37] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[37][4] 
       (.C(CLK),
        .CE(\mem[37][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[37] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[37][5] 
       (.C(CLK),
        .CE(\mem[37][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[37] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[37][6] 
       (.C(CLK),
        .CE(\mem[37][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[37] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[37][7] 
       (.C(CLK),
        .CE(\mem[37][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[37] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[38][0] 
       (.C(CLK),
        .CE(\mem[38][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[38] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[38][1] 
       (.C(CLK),
        .CE(\mem[38][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[38] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[38][2] 
       (.C(CLK),
        .CE(\mem[38][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[38] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[38][3] 
       (.C(CLK),
        .CE(\mem[38][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[38] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[38][4] 
       (.C(CLK),
        .CE(\mem[38][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[38] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[38][5] 
       (.C(CLK),
        .CE(\mem[38][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[38] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[38][6] 
       (.C(CLK),
        .CE(\mem[38][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[38] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[38][7] 
       (.C(CLK),
        .CE(\mem[38][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[38] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[39][0] 
       (.C(CLK),
        .CE(\mem[39][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[39] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[39][1] 
       (.C(CLK),
        .CE(\mem[39][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[39] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[39][2] 
       (.C(CLK),
        .CE(\mem[39][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[39] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[39][3] 
       (.C(CLK),
        .CE(\mem[39][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[39] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[39][4] 
       (.C(CLK),
        .CE(\mem[39][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[39] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[39][5] 
       (.C(CLK),
        .CE(\mem[39][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[39] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[39][6] 
       (.C(CLK),
        .CE(\mem[39][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[39] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[39][7] 
       (.C(CLK),
        .CE(\mem[39][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[39] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][0] 
       (.C(CLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][1] 
       (.C(CLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][2] 
       (.C(CLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][3] 
       (.C(CLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][4] 
       (.C(CLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[3] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][5] 
       (.C(CLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[3] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][6] 
       (.C(CLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[3] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[3][7] 
       (.C(CLK),
        .CE(\mem[3][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[3] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[40][0] 
       (.C(CLK),
        .CE(\mem[40][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[40] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[40][1] 
       (.C(CLK),
        .CE(\mem[40][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[40] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[40][2] 
       (.C(CLK),
        .CE(\mem[40][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[40] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[40][3] 
       (.C(CLK),
        .CE(\mem[40][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[40] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[40][4] 
       (.C(CLK),
        .CE(\mem[40][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[40] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[40][5] 
       (.C(CLK),
        .CE(\mem[40][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[40] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[40][6] 
       (.C(CLK),
        .CE(\mem[40][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[40] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[40][7] 
       (.C(CLK),
        .CE(\mem[40][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[40] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[41][0] 
       (.C(CLK),
        .CE(\mem[41][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[41] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[41][1] 
       (.C(CLK),
        .CE(\mem[41][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[41] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[41][2] 
       (.C(CLK),
        .CE(\mem[41][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[41] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[41][3] 
       (.C(CLK),
        .CE(\mem[41][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[41] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[41][4] 
       (.C(CLK),
        .CE(\mem[41][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[41] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[41][5] 
       (.C(CLK),
        .CE(\mem[41][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[41] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[41][6] 
       (.C(CLK),
        .CE(\mem[41][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[41] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[41][7] 
       (.C(CLK),
        .CE(\mem[41][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[41] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[42][0] 
       (.C(CLK),
        .CE(\mem[42][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[42] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[42][1] 
       (.C(CLK),
        .CE(\mem[42][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[42] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[42][2] 
       (.C(CLK),
        .CE(\mem[42][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[42] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[42][3] 
       (.C(CLK),
        .CE(\mem[42][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[42] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[42][4] 
       (.C(CLK),
        .CE(\mem[42][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[42] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[42][5] 
       (.C(CLK),
        .CE(\mem[42][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[42] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[42][6] 
       (.C(CLK),
        .CE(\mem[42][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[42] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[42][7] 
       (.C(CLK),
        .CE(\mem[42][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[42] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[43][0] 
       (.C(CLK),
        .CE(\mem[43][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[43] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[43][1] 
       (.C(CLK),
        .CE(\mem[43][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[43] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[43][2] 
       (.C(CLK),
        .CE(\mem[43][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[43] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[43][3] 
       (.C(CLK),
        .CE(\mem[43][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[43] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[43][4] 
       (.C(CLK),
        .CE(\mem[43][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[43] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[43][5] 
       (.C(CLK),
        .CE(\mem[43][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[43] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[43][6] 
       (.C(CLK),
        .CE(\mem[43][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[43] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[43][7] 
       (.C(CLK),
        .CE(\mem[43][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[43] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[44][0] 
       (.C(CLK),
        .CE(\mem[44][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[44] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[44][1] 
       (.C(CLK),
        .CE(\mem[44][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[44] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[44][2] 
       (.C(CLK),
        .CE(\mem[44][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[44] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[44][3] 
       (.C(CLK),
        .CE(\mem[44][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[44] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[44][4] 
       (.C(CLK),
        .CE(\mem[44][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[44] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[44][5] 
       (.C(CLK),
        .CE(\mem[44][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[44] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[44][6] 
       (.C(CLK),
        .CE(\mem[44][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[44] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[44][7] 
       (.C(CLK),
        .CE(\mem[44][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[44] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[45][0] 
       (.C(CLK),
        .CE(\mem[45][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[45] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[45][1] 
       (.C(CLK),
        .CE(\mem[45][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[45] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[45][2] 
       (.C(CLK),
        .CE(\mem[45][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[45] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[45][3] 
       (.C(CLK),
        .CE(\mem[45][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[45] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[45][4] 
       (.C(CLK),
        .CE(\mem[45][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[45] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[45][5] 
       (.C(CLK),
        .CE(\mem[45][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[45] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[45][6] 
       (.C(CLK),
        .CE(\mem[45][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[45] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[45][7] 
       (.C(CLK),
        .CE(\mem[45][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[45] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[46][0] 
       (.C(CLK),
        .CE(\mem[46][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[46] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[46][1] 
       (.C(CLK),
        .CE(\mem[46][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[46] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[46][2] 
       (.C(CLK),
        .CE(\mem[46][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[46] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[46][3] 
       (.C(CLK),
        .CE(\mem[46][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[46] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[46][4] 
       (.C(CLK),
        .CE(\mem[46][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[46] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[46][5] 
       (.C(CLK),
        .CE(\mem[46][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[46] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[46][6] 
       (.C(CLK),
        .CE(\mem[46][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[46] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[46][7] 
       (.C(CLK),
        .CE(\mem[46][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[46] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[47][0] 
       (.C(CLK),
        .CE(\mem[47][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[47] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[47][1] 
       (.C(CLK),
        .CE(\mem[47][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[47] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[47][2] 
       (.C(CLK),
        .CE(\mem[47][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[47] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[47][3] 
       (.C(CLK),
        .CE(\mem[47][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[47] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[47][4] 
       (.C(CLK),
        .CE(\mem[47][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[47] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[47][5] 
       (.C(CLK),
        .CE(\mem[47][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[47] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[47][6] 
       (.C(CLK),
        .CE(\mem[47][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[47] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[47][7] 
       (.C(CLK),
        .CE(\mem[47][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[47] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[48][0] 
       (.C(CLK),
        .CE(\mem[48][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[48] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[48][1] 
       (.C(CLK),
        .CE(\mem[48][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[48] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[48][2] 
       (.C(CLK),
        .CE(\mem[48][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[48] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[48][3] 
       (.C(CLK),
        .CE(\mem[48][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[48] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[48][4] 
       (.C(CLK),
        .CE(\mem[48][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[48] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[48][5] 
       (.C(CLK),
        .CE(\mem[48][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[48] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[48][6] 
       (.C(CLK),
        .CE(\mem[48][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[48] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[48][7] 
       (.C(CLK),
        .CE(\mem[48][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[48] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[49][0] 
       (.C(CLK),
        .CE(\mem[49][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[49] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[49][1] 
       (.C(CLK),
        .CE(\mem[49][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[49] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[49][2] 
       (.C(CLK),
        .CE(\mem[49][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[49] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[49][3] 
       (.C(CLK),
        .CE(\mem[49][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[49] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[49][4] 
       (.C(CLK),
        .CE(\mem[49][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[49] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[49][5] 
       (.C(CLK),
        .CE(\mem[49][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[49] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[49][6] 
       (.C(CLK),
        .CE(\mem[49][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[49] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[49][7] 
       (.C(CLK),
        .CE(\mem[49][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[49] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][0] 
       (.C(CLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][1] 
       (.C(CLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][2] 
       (.C(CLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[4] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][3] 
       (.C(CLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[4] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][4] 
       (.C(CLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[4] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][5] 
       (.C(CLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[4] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][6] 
       (.C(CLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[4] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[4][7] 
       (.C(CLK),
        .CE(\mem[4][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[4] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[50][0] 
       (.C(CLK),
        .CE(\mem[50][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[50] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[50][1] 
       (.C(CLK),
        .CE(\mem[50][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[50] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[50][2] 
       (.C(CLK),
        .CE(\mem[50][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[50] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[50][3] 
       (.C(CLK),
        .CE(\mem[50][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[50] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[50][4] 
       (.C(CLK),
        .CE(\mem[50][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[50] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[50][5] 
       (.C(CLK),
        .CE(\mem[50][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[50] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[50][6] 
       (.C(CLK),
        .CE(\mem[50][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[50] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[50][7] 
       (.C(CLK),
        .CE(\mem[50][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[50] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[51][0] 
       (.C(CLK),
        .CE(\mem[51][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[51] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[51][1] 
       (.C(CLK),
        .CE(\mem[51][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[51] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[51][2] 
       (.C(CLK),
        .CE(\mem[51][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[51] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[51][3] 
       (.C(CLK),
        .CE(\mem[51][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[51] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[51][4] 
       (.C(CLK),
        .CE(\mem[51][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[51] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[51][5] 
       (.C(CLK),
        .CE(\mem[51][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[51] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[51][6] 
       (.C(CLK),
        .CE(\mem[51][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[51] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[51][7] 
       (.C(CLK),
        .CE(\mem[51][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[51] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[52][0] 
       (.C(CLK),
        .CE(\mem[52][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[52] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[52][1] 
       (.C(CLK),
        .CE(\mem[52][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[52] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[52][2] 
       (.C(CLK),
        .CE(\mem[52][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[52] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[52][3] 
       (.C(CLK),
        .CE(\mem[52][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[52] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[52][4] 
       (.C(CLK),
        .CE(\mem[52][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[52] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[52][5] 
       (.C(CLK),
        .CE(\mem[52][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[52] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[52][6] 
       (.C(CLK),
        .CE(\mem[52][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[52] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[52][7] 
       (.C(CLK),
        .CE(\mem[52][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[52] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[53][0] 
       (.C(CLK),
        .CE(\mem[53][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[53] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[53][1] 
       (.C(CLK),
        .CE(\mem[53][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[53] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[53][2] 
       (.C(CLK),
        .CE(\mem[53][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[53] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[53][3] 
       (.C(CLK),
        .CE(\mem[53][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[53] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[53][4] 
       (.C(CLK),
        .CE(\mem[53][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[53] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[53][5] 
       (.C(CLK),
        .CE(\mem[53][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[53] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[53][6] 
       (.C(CLK),
        .CE(\mem[53][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[53] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[53][7] 
       (.C(CLK),
        .CE(\mem[53][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[53] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[54][0] 
       (.C(CLK),
        .CE(\mem[54][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[54] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[54][1] 
       (.C(CLK),
        .CE(\mem[54][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[54] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[54][2] 
       (.C(CLK),
        .CE(\mem[54][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[54] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[54][3] 
       (.C(CLK),
        .CE(\mem[54][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[54] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[54][4] 
       (.C(CLK),
        .CE(\mem[54][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[54] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[54][5] 
       (.C(CLK),
        .CE(\mem[54][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[54] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[54][6] 
       (.C(CLK),
        .CE(\mem[54][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[54] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[54][7] 
       (.C(CLK),
        .CE(\mem[54][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[54] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[55][0] 
       (.C(CLK),
        .CE(\mem[55][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[55] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[55][1] 
       (.C(CLK),
        .CE(\mem[55][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[55] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[55][2] 
       (.C(CLK),
        .CE(\mem[55][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[55] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[55][3] 
       (.C(CLK),
        .CE(\mem[55][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[55] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[55][4] 
       (.C(CLK),
        .CE(\mem[55][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[55] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[55][5] 
       (.C(CLK),
        .CE(\mem[55][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[55] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[55][6] 
       (.C(CLK),
        .CE(\mem[55][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[55] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[55][7] 
       (.C(CLK),
        .CE(\mem[55][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[55] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[56][0] 
       (.C(CLK),
        .CE(\mem[56][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[56] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[56][1] 
       (.C(CLK),
        .CE(\mem[56][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[56] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[56][2] 
       (.C(CLK),
        .CE(\mem[56][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[56] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[56][3] 
       (.C(CLK),
        .CE(\mem[56][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[56] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[56][4] 
       (.C(CLK),
        .CE(\mem[56][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[56] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[56][5] 
       (.C(CLK),
        .CE(\mem[56][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[56] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[56][6] 
       (.C(CLK),
        .CE(\mem[56][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[56] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[56][7] 
       (.C(CLK),
        .CE(\mem[56][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[56] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[57][0] 
       (.C(CLK),
        .CE(\mem[57][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[57] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[57][1] 
       (.C(CLK),
        .CE(\mem[57][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[57] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[57][2] 
       (.C(CLK),
        .CE(\mem[57][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[57] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[57][3] 
       (.C(CLK),
        .CE(\mem[57][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[57] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[57][4] 
       (.C(CLK),
        .CE(\mem[57][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[57] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[57][5] 
       (.C(CLK),
        .CE(\mem[57][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[57] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[57][6] 
       (.C(CLK),
        .CE(\mem[57][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[57] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[57][7] 
       (.C(CLK),
        .CE(\mem[57][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[57] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[58][0] 
       (.C(CLK),
        .CE(\mem[58][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[58] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[58][1] 
       (.C(CLK),
        .CE(\mem[58][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[58] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[58][2] 
       (.C(CLK),
        .CE(\mem[58][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[58] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[58][3] 
       (.C(CLK),
        .CE(\mem[58][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[58] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[58][4] 
       (.C(CLK),
        .CE(\mem[58][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[58] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[58][5] 
       (.C(CLK),
        .CE(\mem[58][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[58] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[58][6] 
       (.C(CLK),
        .CE(\mem[58][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[58] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[58][7] 
       (.C(CLK),
        .CE(\mem[58][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[58] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[59][0] 
       (.C(CLK),
        .CE(\mem[59][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[59] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[59][1] 
       (.C(CLK),
        .CE(\mem[59][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[59] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[59][2] 
       (.C(CLK),
        .CE(\mem[59][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[59] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[59][3] 
       (.C(CLK),
        .CE(\mem[59][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[59] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[59][4] 
       (.C(CLK),
        .CE(\mem[59][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[59] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[59][5] 
       (.C(CLK),
        .CE(\mem[59][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[59] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[59][6] 
       (.C(CLK),
        .CE(\mem[59][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[59] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[59][7] 
       (.C(CLK),
        .CE(\mem[59][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[59] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][0] 
       (.C(CLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][1] 
       (.C(CLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][2] 
       (.C(CLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[5] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][3] 
       (.C(CLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[5] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][4] 
       (.C(CLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[5] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][5] 
       (.C(CLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[5] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][6] 
       (.C(CLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[5] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[5][7] 
       (.C(CLK),
        .CE(\mem[5][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[5] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[60][0] 
       (.C(CLK),
        .CE(\mem[60][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[60] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[60][1] 
       (.C(CLK),
        .CE(\mem[60][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[60] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[60][2] 
       (.C(CLK),
        .CE(\mem[60][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[60] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[60][3] 
       (.C(CLK),
        .CE(\mem[60][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[60] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[60][4] 
       (.C(CLK),
        .CE(\mem[60][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[60] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[60][5] 
       (.C(CLK),
        .CE(\mem[60][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[60] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[60][6] 
       (.C(CLK),
        .CE(\mem[60][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[60] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[60][7] 
       (.C(CLK),
        .CE(\mem[60][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[60] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[61][0] 
       (.C(CLK),
        .CE(\mem[61][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[61] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[61][1] 
       (.C(CLK),
        .CE(\mem[61][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[61] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[61][2] 
       (.C(CLK),
        .CE(\mem[61][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[61] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[61][3] 
       (.C(CLK),
        .CE(\mem[61][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[61] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[61][4] 
       (.C(CLK),
        .CE(\mem[61][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[61] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[61][5] 
       (.C(CLK),
        .CE(\mem[61][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[61] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[61][6] 
       (.C(CLK),
        .CE(\mem[61][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[61] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[61][7] 
       (.C(CLK),
        .CE(\mem[61][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[61] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[62][0] 
       (.C(CLK),
        .CE(\mem[62][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[62] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[62][1] 
       (.C(CLK),
        .CE(\mem[62][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[62] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[62][2] 
       (.C(CLK),
        .CE(\mem[62][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[62] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[62][3] 
       (.C(CLK),
        .CE(\mem[62][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[62] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[62][4] 
       (.C(CLK),
        .CE(\mem[62][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[62] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[62][5] 
       (.C(CLK),
        .CE(\mem[62][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[62] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[62][6] 
       (.C(CLK),
        .CE(\mem[62][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[62] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[62][7] 
       (.C(CLK),
        .CE(\mem[62][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[62] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[63][0] 
       (.C(CLK),
        .CE(\mem[63][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[63] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[63][1] 
       (.C(CLK),
        .CE(\mem[63][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[63] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[63][2] 
       (.C(CLK),
        .CE(\mem[63][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[63] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[63][3] 
       (.C(CLK),
        .CE(\mem[63][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[63] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[63][4] 
       (.C(CLK),
        .CE(\mem[63][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[63] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[63][5] 
       (.C(CLK),
        .CE(\mem[63][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[63] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[63][6] 
       (.C(CLK),
        .CE(\mem[63][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[63] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[63][7] 
       (.C(CLK),
        .CE(\mem[63][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[63] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][0] 
       (.C(CLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[6] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][1] 
       (.C(CLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[6] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][2] 
       (.C(CLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[6] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][3] 
       (.C(CLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[6] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][4] 
       (.C(CLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[6] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][5] 
       (.C(CLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[6] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][6] 
       (.C(CLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[6] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[6][7] 
       (.C(CLK),
        .CE(\mem[6][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[6] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][0] 
       (.C(CLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[7] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][1] 
       (.C(CLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[7] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][2] 
       (.C(CLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[7] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][3] 
       (.C(CLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[7] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][4] 
       (.C(CLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[7] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][5] 
       (.C(CLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[7] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][6] 
       (.C(CLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[7] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[7][7] 
       (.C(CLK),
        .CE(\mem[7][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[7] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][0] 
       (.C(CLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[8] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][1] 
       (.C(CLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[8] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][2] 
       (.C(CLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[8] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][3] 
       (.C(CLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[8] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][4] 
       (.C(CLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[8] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][5] 
       (.C(CLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[8] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][6] 
       (.C(CLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[8] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[8][7] 
       (.C(CLK),
        .CE(\mem[8][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[8] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][0] 
       (.C(CLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [0]),
        .Q(\mem_reg[9] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][1] 
       (.C(CLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [1]),
        .Q(\mem_reg[9] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][2] 
       (.C(CLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [2]),
        .Q(\mem_reg[9] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][3] 
       (.C(CLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [3]),
        .Q(\mem_reg[9] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][4] 
       (.C(CLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [4]),
        .Q(\mem_reg[9] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][5] 
       (.C(CLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [5]),
        .Q(\mem_reg[9] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][6] 
       (.C(CLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [6]),
        .Q(\mem_reg[9] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mem_reg[9][7] 
       (.C(CLK),
        .CE(\mem[9][7]_i_1_n_0 ),
        .D(\mem_reg[63][7]_0 [7]),
        .Q(\mem_reg[9] [7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr[0]_i_1 
       (.I0(rd_ptr_reg[0]),
        .O(p_0_in__0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr[1]_i_1 
       (.I0(rd_ptr_reg[0]),
        .I1(rd_ptr_reg[1]),
        .O(p_0_in__0__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_ptr[2]_i_1 
       (.I0(rd_ptr_reg[1]),
        .I1(rd_ptr_reg[0]),
        .I2(rd_ptr_reg[2]),
        .O(p_0_in__0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_ptr[3]_i_1 
       (.I0(rd_ptr_reg[2]),
        .I1(rd_ptr_reg[0]),
        .I2(rd_ptr_reg[1]),
        .I3(rd_ptr_reg[3]),
        .O(p_0_in__0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_ptr[4]_i_1 
       (.I0(rd_ptr_reg[3]),
        .I1(rd_ptr_reg[1]),
        .I2(rd_ptr_reg[0]),
        .I3(rd_ptr_reg[2]),
        .I4(rd_ptr_reg[4]),
        .O(p_0_in__0__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rd_ptr[5]_i_1 
       (.I0(rd_ptr_reg[4]),
        .I1(rd_ptr_reg[2]),
        .I2(rd_ptr_reg[0]),
        .I3(rd_ptr_reg[1]),
        .I4(rd_ptr_reg[3]),
        .I5(rd_ptr_reg[5]),
        .O(p_0_in__0__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[0] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(p_0_in__0__0[0]),
        .Q(rd_ptr_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[1] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(p_0_in__0__0[1]),
        .Q(rd_ptr_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[2] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(p_0_in__0__0[2]),
        .Q(rd_ptr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[3] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(p_0_in__0__0[3]),
        .Q(rd_ptr_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[4] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(p_0_in__0__0[4]),
        .Q(rd_ptr_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rd_ptr_reg[5] 
       (.C(CLK),
        .CE(p_0_in_1),
        .CLR(reset_n),
        .D(p_0_in__0__0[5]),
        .Q(rd_ptr_reg[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr[0]_i_1 
       (.I0(wr_ptr_reg[0]),
        .O(\wr_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[1]_i_1 
       (.I0(wr_ptr_reg[0]),
        .I1(wr_ptr_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[2]_i_1 
       (.I0(wr_ptr_reg[1]),
        .I1(wr_ptr_reg[0]),
        .I2(wr_ptr_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[3]_i_1 
       (.I0(wr_ptr_reg[1]),
        .I1(wr_ptr_reg[0]),
        .I2(wr_ptr_reg[2]),
        .I3(wr_ptr_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \wr_ptr[4]_i_1 
       (.I0(wr_ptr_reg[1]),
        .I1(wr_ptr_reg[3]),
        .I2(wr_ptr_reg[0]),
        .I3(wr_ptr_reg[2]),
        .I4(wr_ptr_reg[4]),
        .O(p_0_in__0[4]));
  LUT3 #(
    .INIT(8'hD0)) 
    \wr_ptr[5]_i_1 
       (.I0(count_reg[6]),
        .I1(data_ready_OBUF_inst_i_2_n_0),
        .I2(enable_fifo),
        .O(p_0_in__0_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \wr_ptr[5]_i_2 
       (.I0(wr_ptr_reg[4]),
        .I1(wr_ptr_reg[2]),
        .I2(wr_ptr_reg[0]),
        .I3(wr_ptr_reg[3]),
        .I4(wr_ptr_reg[1]),
        .I5(wr_ptr_reg[5]),
        .O(p_0_in__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[0] 
       (.C(CLK),
        .CE(p_0_in__0_0),
        .CLR(reset_n),
        .D(\wr_ptr[0]_i_1_n_0 ),
        .Q(wr_ptr_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[1] 
       (.C(CLK),
        .CE(p_0_in__0_0),
        .CLR(reset_n),
        .D(p_0_in__0[1]),
        .Q(wr_ptr_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[2] 
       (.C(CLK),
        .CE(p_0_in__0_0),
        .CLR(reset_n),
        .D(p_0_in__0[2]),
        .Q(wr_ptr_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[3] 
       (.C(CLK),
        .CE(p_0_in__0_0),
        .CLR(reset_n),
        .D(p_0_in__0[3]),
        .Q(wr_ptr_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[4] 
       (.C(CLK),
        .CE(p_0_in__0_0),
        .CLR(reset_n),
        .D(p_0_in__0[4]),
        .Q(wr_ptr_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \wr_ptr_reg[5] 
       (.C(CLK),
        .CE(p_0_in__0_0),
        .CLR(reset_n),
        .D(p_0_in__0[5]),
        .Q(wr_ptr_reg[5]));
  LUT6 #(
    .INIT(64'h4774444444444444)) 
    write_pending_i_1
       (.I0(p_0_in),
        .I1(write_pending),
        .I2(p_0_in1_in),
        .I3(first_bit_captured),
        .I4(write_pending_i_2_n_0),
        .I5(current_state),
        .O(write_pending_reg_1));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    write_pending_i_2
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(write_pending_i_3_n_0),
        .I4(count_reg[6]),
        .I5(write_pending_reg_2),
        .O(write_pending_i_2_n_0));
  LUT6 #(
    .INIT(64'hF0000000E0000000)) 
    write_pending_i_3
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(count_reg[0]),
        .O(write_pending_i_3_n_0));
endmodule

module shift_reg_8
   (Q,
    E,
    CLK,
    \data_out_reg[0]_0 ,
    D);
  output [7:0]Q;
  input [0:0]E;
  input CLK;
  input \data_out_reg[0]_0 ;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire \data_out_reg[0]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[0]_0 ),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[0]_0 ),
        .D(Q[0]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[0]_0 ),
        .D(Q[1]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[0]_0 ),
        .D(Q[2]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[0]_0 ),
        .D(Q[3]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[0]_0 ),
        .D(Q[4]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[0]_0 ),
        .D(Q[5]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\data_out_reg[0]_0 ),
        .D(Q[6]),
        .Q(Q[7]));
endmodule

module trng_core
   (p_0_in1_in,
    Q,
    enable,
    CLK);
  output [0:0]p_0_in1_in;
  input [2:0]Q;
  input enable;
  input CLK;

  wire CLK;
  wire [2:0]Q;
  wire enable;
  wire [0:0]p_0_in1_in;
  wire [31:0]p_32_out;
  wire raw_bit_i_1_n_0;
  wire raw_bit_i_2_n_0;
  wire raw_bit_i_3_n_0;
  wire raw_bit_i_4_n_0;
  wire raw_bit_i_5_n_0;
  wire raw_bit_i_6_n_0;
  wire raw_bit_i_7_n_0;
  wire [31:0]ro_sampled;

  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__32 \genblk1[0].ro_i 
       (.RO_bit(p_32_out[0]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__42 \genblk1[10].ro_i 
       (.RO_bit(p_32_out[10]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__43 \genblk1[11].ro_i 
       (.RO_bit(p_32_out[11]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__44 \genblk1[12].ro_i 
       (.RO_bit(p_32_out[12]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__45 \genblk1[13].ro_i 
       (.RO_bit(p_32_out[13]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__46 \genblk1[14].ro_i 
       (.RO_bit(p_32_out[14]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__47 \genblk1[15].ro_i 
       (.RO_bit(p_32_out[15]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__48 \genblk1[16].ro_i 
       (.RO_bit(p_32_out[16]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__49 \genblk1[17].ro_i 
       (.RO_bit(p_32_out[17]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__50 \genblk1[18].ro_i 
       (.RO_bit(p_32_out[18]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__51 \genblk1[19].ro_i 
       (.RO_bit(p_32_out[19]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__33 \genblk1[1].ro_i 
       (.RO_bit(p_32_out[1]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__52 \genblk1[20].ro_i 
       (.RO_bit(p_32_out[20]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__53 \genblk1[21].ro_i 
       (.RO_bit(p_32_out[21]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__54 \genblk1[22].ro_i 
       (.RO_bit(p_32_out[22]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__55 \genblk1[23].ro_i 
       (.RO_bit(p_32_out[23]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__56 \genblk1[24].ro_i 
       (.RO_bit(p_32_out[24]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__57 \genblk1[25].ro_i 
       (.RO_bit(p_32_out[25]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__58 \genblk1[26].ro_i 
       (.RO_bit(p_32_out[26]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__59 \genblk1[27].ro_i 
       (.RO_bit(p_32_out[27]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__60 \genblk1[28].ro_i 
       (.RO_bit(p_32_out[28]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__61 \genblk1[29].ro_i 
       (.RO_bit(p_32_out[29]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__34 \genblk1[2].ro_i 
       (.RO_bit(p_32_out[2]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__62 \genblk1[30].ro_i 
       (.RO_bit(p_32_out[30]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator \genblk1[31].ro_i 
       (.RO_bit(p_32_out[31]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__35 \genblk1[3].ro_i 
       (.RO_bit(p_32_out[3]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__36 \genblk1[4].ro_i 
       (.RO_bit(p_32_out[4]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__37 \genblk1[5].ro_i 
       (.RO_bit(p_32_out[5]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__38 \genblk1[6].ro_i 
       (.RO_bit(p_32_out[6]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__39 \genblk1[7].ro_i 
       (.RO_bit(p_32_out[7]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__40 \genblk1[8].ro_i 
       (.RO_bit(p_32_out[8]),
        .delay_cfg(Q),
        .enable(enable));
  (* KEEP_HIERARCHY = "yes" *) 
  RingOscillator__41 \genblk1[9].ro_i 
       (.RO_bit(p_32_out[9]),
        .delay_cfg(Q),
        .enable(enable));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    raw_bit_i_1
       (.I0(raw_bit_i_2_n_0),
        .I1(raw_bit_i_3_n_0),
        .I2(raw_bit_i_4_n_0),
        .I3(raw_bit_i_5_n_0),
        .I4(raw_bit_i_6_n_0),
        .I5(raw_bit_i_7_n_0),
        .O(raw_bit_i_1_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    raw_bit_i_2
       (.I0(ro_sampled[27]),
        .I1(ro_sampled[26]),
        .I2(ro_sampled[30]),
        .I3(ro_sampled[31]),
        .I4(ro_sampled[28]),
        .I5(ro_sampled[29]),
        .O(raw_bit_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    raw_bit_i_3
       (.I0(ro_sampled[0]),
        .I1(ro_sampled[1]),
        .O(raw_bit_i_3_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    raw_bit_i_4
       (.I0(ro_sampled[8]),
        .I1(ro_sampled[9]),
        .I2(ro_sampled[13]),
        .I3(ro_sampled[12]),
        .I4(ro_sampled[11]),
        .I5(ro_sampled[10]),
        .O(raw_bit_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    raw_bit_i_5
       (.I0(ro_sampled[2]),
        .I1(ro_sampled[3]),
        .I2(ro_sampled[7]),
        .I3(ro_sampled[6]),
        .I4(ro_sampled[5]),
        .I5(ro_sampled[4]),
        .O(raw_bit_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    raw_bit_i_6
       (.I0(ro_sampled[21]),
        .I1(ro_sampled[20]),
        .I2(ro_sampled[24]),
        .I3(ro_sampled[25]),
        .I4(ro_sampled[22]),
        .I5(ro_sampled[23]),
        .O(raw_bit_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    raw_bit_i_7
       (.I0(ro_sampled[14]),
        .I1(ro_sampled[15]),
        .I2(ro_sampled[18]),
        .I3(ro_sampled[19]),
        .I4(ro_sampled[16]),
        .I5(ro_sampled[17]),
        .O(raw_bit_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    raw_bit_reg
       (.C(CLK),
        .CE(1'b1),
        .D(raw_bit_i_1_n_0),
        .Q(p_0_in1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[0]),
        .Q(ro_sampled[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[10]),
        .Q(ro_sampled[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[11]),
        .Q(ro_sampled[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[12]),
        .Q(ro_sampled[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[13]),
        .Q(ro_sampled[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[14]),
        .Q(ro_sampled[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[15]),
        .Q(ro_sampled[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[16]),
        .Q(ro_sampled[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[17]),
        .Q(ro_sampled[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[18]),
        .Q(ro_sampled[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[19]),
        .Q(ro_sampled[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[1]),
        .Q(ro_sampled[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[20]),
        .Q(ro_sampled[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[21]),
        .Q(ro_sampled[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[22]),
        .Q(ro_sampled[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[23]),
        .Q(ro_sampled[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[24]),
        .Q(ro_sampled[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[25]),
        .Q(ro_sampled[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[26]),
        .Q(ro_sampled[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[27]),
        .Q(ro_sampled[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[28]),
        .Q(ro_sampled[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[29]),
        .Q(ro_sampled[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[2]),
        .Q(ro_sampled[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[30]),
        .Q(ro_sampled[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[31]),
        .Q(ro_sampled[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[3]),
        .Q(ro_sampled[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[4]),
        .Q(ro_sampled[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[5]),
        .Q(ro_sampled[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[6]),
        .Q(ro_sampled[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[7]),
        .Q(ro_sampled[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[8]),
        .Q(ro_sampled[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ro_sampled_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_32_out[9]),
        .Q(ro_sampled[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
