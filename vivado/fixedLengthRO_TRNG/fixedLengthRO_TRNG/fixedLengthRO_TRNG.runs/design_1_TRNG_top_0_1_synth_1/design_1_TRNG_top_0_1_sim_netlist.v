// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Apr  8 10:02:17 2026
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_TRNG_top_0_1_sim_netlist.v
// Design      : design_1_TRNG_top_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* I_AND = "16'b1000100010001000" *) (* I_NOT = "16'b0101010101010101" *) (* chainLength = "4" *) 
(* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO
   (in,
    enable,
    pdl,
    out);
  input in;
  input enable;
  input [2:0]pdl;
  output out;

  wire enable;
  wire in;
  wire [2:0]pdl;
  wire z0;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z1;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z2;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z3;

  assign out = z3;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    LUT4_and
       (.I0(in),
        .I1(enable),
        .I2(1'b0),
        .I3(1'b0),
        .O(z0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(pdl[0]),
        .I2(pdl[1]),
        .I3(pdl[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(pdl[2]),
        .I2(pdl[0]),
        .I3(pdl[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(pdl[1]),
        .I2(pdl[2]),
        .I3(pdl[0]),
        .O(z3));
endmodule

(* I_AND = "16'b1000100010001000" *) (* I_NOT = "16'b0101010101010101" *) (* ORIG_REF_NAME = "RO" *) 
(* chainLength = "4" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__1
   (in,
    enable,
    pdl,
    out);
  input in;
  input enable;
  input [2:0]pdl;
  output out;

  wire enable;
  wire in;
  wire [2:0]pdl;
  wire z0;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z1;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z2;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z3;

  assign out = z3;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    LUT4_and
       (.I0(in),
        .I1(enable),
        .I2(1'b0),
        .I3(1'b0),
        .O(z0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(pdl[0]),
        .I2(pdl[1]),
        .I3(pdl[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(pdl[2]),
        .I2(pdl[0]),
        .I3(pdl[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(pdl[1]),
        .I2(pdl[2]),
        .I3(pdl[0]),
        .O(z3));
endmodule

(* I_AND = "16'b1000100010001000" *) (* I_NOT = "16'b0101010101010101" *) (* ORIG_REF_NAME = "RO" *) 
(* chainLength = "4" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__2
   (in,
    enable,
    pdl,
    out);
  input in;
  input enable;
  input [2:0]pdl;
  output out;

  wire enable;
  wire in;
  wire [2:0]pdl;
  wire z0;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z1;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z2;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z3;

  assign out = z3;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    LUT4_and
       (.I0(in),
        .I1(enable),
        .I2(1'b0),
        .I3(1'b0),
        .O(z0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(pdl[0]),
        .I2(pdl[1]),
        .I3(pdl[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(pdl[2]),
        .I2(pdl[0]),
        .I3(pdl[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(pdl[1]),
        .I2(pdl[2]),
        .I3(pdl[0]),
        .O(z3));
endmodule

(* I_AND = "16'b1000100010001000" *) (* I_NOT = "16'b0101010101010101" *) (* ORIG_REF_NAME = "RO" *) 
(* chainLength = "4" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__3
   (in,
    enable,
    pdl,
    out);
  input in;
  input enable;
  input [2:0]pdl;
  output out;

  wire enable;
  wire in;
  wire [2:0]pdl;
  wire z0;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z1;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z2;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z3;

  assign out = z3;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    LUT4_and
       (.I0(in),
        .I1(enable),
        .I2(1'b0),
        .I3(1'b0),
        .O(z0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(pdl[0]),
        .I2(pdl[1]),
        .I3(pdl[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(pdl[2]),
        .I2(pdl[0]),
        .I3(pdl[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(pdl[1]),
        .I2(pdl[2]),
        .I3(pdl[0]),
        .O(z3));
endmodule

(* I_AND = "16'b1000100010001000" *) (* I_NOT = "16'b0101010101010101" *) (* ORIG_REF_NAME = "RO" *) 
(* chainLength = "4" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__4
   (in,
    enable,
    pdl,
    out);
  input in;
  input enable;
  input [2:0]pdl;
  output out;

  wire enable;
  wire in;
  wire [2:0]pdl;
  wire z0;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z1;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z2;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z3;

  assign out = z3;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    LUT4_and
       (.I0(in),
        .I1(enable),
        .I2(1'b0),
        .I3(1'b0),
        .O(z0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(pdl[0]),
        .I2(pdl[1]),
        .I3(pdl[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(pdl[2]),
        .I2(pdl[0]),
        .I3(pdl[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(pdl[1]),
        .I2(pdl[2]),
        .I3(pdl[0]),
        .O(z3));
endmodule

(* I_AND = "16'b1000100010001000" *) (* I_NOT = "16'b0101010101010101" *) (* ORIG_REF_NAME = "RO" *) 
(* chainLength = "4" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__5
   (in,
    enable,
    pdl,
    out);
  input in;
  input enable;
  input [2:0]pdl;
  output out;

  wire enable;
  wire in;
  wire [2:0]pdl;
  wire z0;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z1;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z2;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z3;

  assign out = z3;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    LUT4_and
       (.I0(in),
        .I1(enable),
        .I2(1'b0),
        .I3(1'b0),
        .O(z0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(pdl[0]),
        .I2(pdl[1]),
        .I3(pdl[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(pdl[2]),
        .I2(pdl[0]),
        .I3(pdl[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(pdl[1]),
        .I2(pdl[2]),
        .I3(pdl[0]),
        .O(z3));
endmodule

(* I_AND = "16'b1000100010001000" *) (* I_NOT = "16'b0101010101010101" *) (* ORIG_REF_NAME = "RO" *) 
(* chainLength = "4" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__6
   (in,
    enable,
    pdl,
    out);
  input in;
  input enable;
  input [2:0]pdl;
  output out;

  wire enable;
  wire in;
  wire [2:0]pdl;
  wire z0;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z1;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z2;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z3;

  assign out = z3;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    LUT4_and
       (.I0(in),
        .I1(enable),
        .I2(1'b0),
        .I3(1'b0),
        .O(z0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(pdl[0]),
        .I2(pdl[1]),
        .I3(pdl[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(pdl[2]),
        .I2(pdl[0]),
        .I3(pdl[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(pdl[1]),
        .I2(pdl[2]),
        .I3(pdl[0]),
        .O(z3));
endmodule

(* I_AND = "16'b1000100010001000" *) (* I_NOT = "16'b0101010101010101" *) (* ORIG_REF_NAME = "RO" *) 
(* chainLength = "4" *) (* keep_hierarchy = "soft" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__7
   (in,
    enable,
    pdl,
    out);
  input in;
  input enable;
  input [2:0]pdl;
  output out;

  wire enable;
  wire in;
  wire [2:0]pdl;
  wire z0;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z1;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z2;
  (* DONT_TOUCH *) (* MARK_DEBUG *) wire z3;

  assign out = z3;
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8888)) 
    LUT4_and
       (.I0(in),
        .I1(enable),
        .I2(1'b0),
        .I3(1'b0),
        .O(z0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(pdl[0]),
        .I2(pdl[1]),
        .I3(pdl[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(pdl[2]),
        .I2(pdl[0]),
        .I3(pdl[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(pdl[1]),
        .I2(pdl[2]),
        .I3(pdl[0]),
        .O(z3));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG
   (D,
    enable,
    aclk,
    aresetn);
  output [0:0]D;
  input enable;
  input aclk;
  input aresetn;

  wire [0:0]D;
  wire aclk;
  wire aresetn;
  wire enable;
  wire final_bit;
  wire final_bit_i_2_n_0;
  wire in;
  wire [2:0]p_0_in;
  wire [2:0]p_0_in__0;
  wire [2:0]p_0_in__1;
  wire [2:0]p_0_in__2;
  wire [2:0]p_0_in__3;
  wire [2:0]p_0_in__4;
  wire [2:0]p_0_in__5;
  wire [2:0]p_0_in__6;
  wire [2:0]\pdl_ctrl_reg[0]_0 ;
  wire [2:0]\pdl_ctrl_reg[1]_1 ;
  wire [2:0]\pdl_ctrl_reg[2]_2 ;
  wire [2:0]\pdl_ctrl_reg[3]_3 ;
  wire [2:0]\pdl_ctrl_reg[4]_4 ;
  wire [2:0]\pdl_ctrl_reg[5]_5 ;
  wire [2:0]\pdl_ctrl_reg[6]_6 ;
  wire [2:0]\pdl_ctrl_reg[7]_7 ;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) (* MARK_DEBUG *) wire [7:0]ro_feedback;
  wire \ro_sampled[0]_i_1_n_0 ;
  wire \ro_sampled[1]_i_1_n_0 ;
  wire \ro_sampled[2]_i_1_n_0 ;
  wire \ro_sampled[3]_i_1_n_0 ;
  wire \ro_sampled[4]_i_1_n_0 ;
  wire \ro_sampled[5]_i_1_n_0 ;
  wire \ro_sampled[6]_i_1_n_0 ;
  wire \ro_sampled[7]_i_1_n_0 ;
  wire \ro_sampled[7]_i_2_n_0 ;
  wire \ro_sampled_reg_n_0_[0] ;
  wire \ro_sampled_reg_n_0_[2] ;
  wire \ro_sampled_reg_n_0_[3] ;
  wire \ro_sampled_reg_n_0_[4] ;
  wire \ro_sampled_reg_n_0_[5] ;
  wire \ro_sampled_reg_n_0_[6] ;
  wire \ro_sampled_reg_n_0_[7] ;

  (* I_AND = "16'b1000100010001000" *) 
  (* I_NOT = "16'b0101010101010101" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* chainLength = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__1 \RO_GEN[0].my_ro_inst 
       (.enable(enable),
        .in(ro_feedback[0]),
        .out(ro_feedback[0]),
        .pdl(\pdl_ctrl_reg[0]_0 ));
  (* I_AND = "16'b1000100010001000" *) 
  (* I_NOT = "16'b0101010101010101" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* chainLength = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__2 \RO_GEN[1].my_ro_inst 
       (.enable(enable),
        .in(ro_feedback[1]),
        .out(ro_feedback[1]),
        .pdl(\pdl_ctrl_reg[1]_1 ));
  (* I_AND = "16'b1000100010001000" *) 
  (* I_NOT = "16'b0101010101010101" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* chainLength = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__3 \RO_GEN[2].my_ro_inst 
       (.enable(enable),
        .in(ro_feedback[2]),
        .out(ro_feedback[2]),
        .pdl(\pdl_ctrl_reg[2]_2 ));
  (* I_AND = "16'b1000100010001000" *) 
  (* I_NOT = "16'b0101010101010101" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* chainLength = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__4 \RO_GEN[3].my_ro_inst 
       (.enable(enable),
        .in(ro_feedback[3]),
        .out(ro_feedback[3]),
        .pdl(\pdl_ctrl_reg[3]_3 ));
  (* I_AND = "16'b1000100010001000" *) 
  (* I_NOT = "16'b0101010101010101" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* chainLength = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__5 \RO_GEN[4].my_ro_inst 
       (.enable(enable),
        .in(ro_feedback[4]),
        .out(ro_feedback[4]),
        .pdl(\pdl_ctrl_reg[4]_4 ));
  (* I_AND = "16'b1000100010001000" *) 
  (* I_NOT = "16'b0101010101010101" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* chainLength = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__6 \RO_GEN[5].my_ro_inst 
       (.enable(enable),
        .in(ro_feedback[5]),
        .out(ro_feedback[5]),
        .pdl(\pdl_ctrl_reg[5]_5 ));
  (* I_AND = "16'b1000100010001000" *) 
  (* I_NOT = "16'b0101010101010101" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* chainLength = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO__7 \RO_GEN[6].my_ro_inst 
       (.enable(enable),
        .in(ro_feedback[6]),
        .out(ro_feedback[6]),
        .pdl(\pdl_ctrl_reg[6]_6 ));
  (* I_AND = "16'b1000100010001000" *) 
  (* I_NOT = "16'b0101010101010101" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* chainLength = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO \RO_GEN[7].my_ro_inst 
       (.enable(enable),
        .in(ro_feedback[7]),
        .out(ro_feedback[7]),
        .pdl(\pdl_ctrl_reg[7]_7 ));
  LUT6 #(
    .INIT(64'h9669699600000000)) 
    final_bit_i_1
       (.I0(final_bit_i_2_n_0),
        .I1(\ro_sampled_reg_n_0_[6] ),
        .I2(\ro_sampled_reg_n_0_[7] ),
        .I3(\ro_sampled_reg_n_0_[4] ),
        .I4(\ro_sampled_reg_n_0_[5] ),
        .I5(enable),
        .O(final_bit));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    final_bit_i_2
       (.I0(in),
        .I1(\ro_sampled_reg_n_0_[0] ),
        .I2(\ro_sampled_reg_n_0_[3] ),
        .I3(\ro_sampled_reg_n_0_[2] ),
        .O(final_bit_i_2_n_0));
  FDCE final_bit_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(final_bit),
        .Q(D));
  LUT2 #(
    .INIT(4'h6)) 
    \pdl_ctrl[0][0]_i_1 
       (.I0(\pdl_ctrl_reg[0]_0 [0]),
        .I1(\ro_sampled_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pdl_ctrl[0][1]_i_1 
       (.I0(\ro_sampled_reg_n_0_[0] ),
        .I1(\pdl_ctrl_reg[0]_0 [0]),
        .I2(\pdl_ctrl_reg[0]_0 [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pdl_ctrl[0][2]_i_1 
       (.I0(\pdl_ctrl_reg[0]_0 [1]),
        .I1(\pdl_ctrl_reg[0]_0 [0]),
        .I2(\ro_sampled_reg_n_0_[0] ),
        .I3(\pdl_ctrl_reg[0]_0 [2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pdl_ctrl[1][0]_i_1 
       (.I0(\pdl_ctrl_reg[1]_1 [0]),
        .I1(in),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pdl_ctrl[1][1]_i_1 
       (.I0(in),
        .I1(\pdl_ctrl_reg[1]_1 [0]),
        .I2(\pdl_ctrl_reg[1]_1 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pdl_ctrl[1][2]_i_1 
       (.I0(\pdl_ctrl_reg[1]_1 [1]),
        .I1(\pdl_ctrl_reg[1]_1 [0]),
        .I2(in),
        .I3(\pdl_ctrl_reg[1]_1 [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pdl_ctrl[2][0]_i_1 
       (.I0(\pdl_ctrl_reg[2]_2 [0]),
        .I1(\ro_sampled_reg_n_0_[2] ),
        .O(p_0_in__1[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \pdl_ctrl[2][1]_i_1 
       (.I0(\ro_sampled_reg_n_0_[2] ),
        .I1(\pdl_ctrl_reg[2]_2 [0]),
        .I2(\pdl_ctrl_reg[2]_2 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pdl_ctrl[2][2]_i_1 
       (.I0(\pdl_ctrl_reg[2]_2 [1]),
        .I1(\pdl_ctrl_reg[2]_2 [0]),
        .I2(\ro_sampled_reg_n_0_[2] ),
        .I3(\pdl_ctrl_reg[2]_2 [2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pdl_ctrl[3][0]_i_1 
       (.I0(\pdl_ctrl_reg[3]_3 [0]),
        .I1(\ro_sampled_reg_n_0_[3] ),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pdl_ctrl[3][1]_i_1 
       (.I0(\ro_sampled_reg_n_0_[3] ),
        .I1(\pdl_ctrl_reg[3]_3 [0]),
        .I2(\pdl_ctrl_reg[3]_3 [1]),
        .O(p_0_in__2[1]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \pdl_ctrl[3][2]_i_1 
       (.I0(\pdl_ctrl_reg[3]_3 [1]),
        .I1(\pdl_ctrl_reg[3]_3 [0]),
        .I2(\ro_sampled_reg_n_0_[3] ),
        .I3(\pdl_ctrl_reg[3]_3 [2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pdl_ctrl[4][0]_i_1 
       (.I0(\pdl_ctrl_reg[4]_4 [0]),
        .I1(\ro_sampled_reg_n_0_[4] ),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pdl_ctrl[4][1]_i_1 
       (.I0(\ro_sampled_reg_n_0_[4] ),
        .I1(\pdl_ctrl_reg[4]_4 [0]),
        .I2(\pdl_ctrl_reg[4]_4 [1]),
        .O(p_0_in__3[1]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \pdl_ctrl[4][2]_i_1 
       (.I0(\pdl_ctrl_reg[4]_4 [1]),
        .I1(\pdl_ctrl_reg[4]_4 [0]),
        .I2(\ro_sampled_reg_n_0_[4] ),
        .I3(\pdl_ctrl_reg[4]_4 [2]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pdl_ctrl[5][0]_i_1 
       (.I0(\pdl_ctrl_reg[5]_5 [0]),
        .I1(\ro_sampled_reg_n_0_[5] ),
        .O(p_0_in__4[0]));
  LUT3 #(
    .INIT(8'h78)) 
    \pdl_ctrl[5][1]_i_1 
       (.I0(\ro_sampled_reg_n_0_[5] ),
        .I1(\pdl_ctrl_reg[5]_5 [0]),
        .I2(\pdl_ctrl_reg[5]_5 [1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pdl_ctrl[5][2]_i_1 
       (.I0(\pdl_ctrl_reg[5]_5 [1]),
        .I1(\pdl_ctrl_reg[5]_5 [0]),
        .I2(\ro_sampled_reg_n_0_[5] ),
        .I3(\pdl_ctrl_reg[5]_5 [2]),
        .O(p_0_in__4[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \pdl_ctrl[6][0]_i_1 
       (.I0(\pdl_ctrl_reg[6]_6 [0]),
        .I1(\ro_sampled_reg_n_0_[6] ),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pdl_ctrl[6][1]_i_1 
       (.I0(\ro_sampled_reg_n_0_[6] ),
        .I1(\pdl_ctrl_reg[6]_6 [0]),
        .I2(\pdl_ctrl_reg[6]_6 [1]),
        .O(p_0_in__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pdl_ctrl[6][2]_i_1 
       (.I0(\pdl_ctrl_reg[6]_6 [1]),
        .I1(\pdl_ctrl_reg[6]_6 [0]),
        .I2(\ro_sampled_reg_n_0_[6] ),
        .I3(\pdl_ctrl_reg[6]_6 [2]),
        .O(p_0_in__5[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \pdl_ctrl[7][0]_i_1 
       (.I0(\pdl_ctrl_reg[7]_7 [0]),
        .I1(\ro_sampled_reg_n_0_[7] ),
        .O(p_0_in__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pdl_ctrl[7][1]_i_1 
       (.I0(\ro_sampled_reg_n_0_[7] ),
        .I1(\pdl_ctrl_reg[7]_7 [0]),
        .I2(\pdl_ctrl_reg[7]_7 [1]),
        .O(p_0_in__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pdl_ctrl[7][2]_i_1 
       (.I0(\pdl_ctrl_reg[7]_7 [1]),
        .I1(\pdl_ctrl_reg[7]_7 [0]),
        .I2(\ro_sampled_reg_n_0_[7] ),
        .I3(\pdl_ctrl_reg[7]_7 [2]),
        .O(p_0_in__6[2]));
  FDCE \pdl_ctrl_reg[0][0] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\pdl_ctrl_reg[0]_0 [0]));
  FDCE \pdl_ctrl_reg[0][1] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\pdl_ctrl_reg[0]_0 [1]));
  FDCE \pdl_ctrl_reg[0][2] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\pdl_ctrl_reg[0]_0 [2]));
  FDPE \pdl_ctrl_reg[1][0] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__0[0]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[1]_1 [0]));
  FDCE \pdl_ctrl_reg[1][1] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\pdl_ctrl_reg[1]_1 [1]));
  FDCE \pdl_ctrl_reg[1][2] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\pdl_ctrl_reg[1]_1 [2]));
  FDCE \pdl_ctrl_reg[2][0] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(\pdl_ctrl_reg[2]_2 [0]));
  FDPE \pdl_ctrl_reg[2][1] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__1[1]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[2]_2 [1]));
  FDCE \pdl_ctrl_reg[2][2] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(\pdl_ctrl_reg[2]_2 [2]));
  FDPE \pdl_ctrl_reg[3][0] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__2[0]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[3]_3 [0]));
  FDPE \pdl_ctrl_reg[3][1] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__2[1]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[3]_3 [1]));
  FDCE \pdl_ctrl_reg[3][2] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in__2[2]),
        .Q(\pdl_ctrl_reg[3]_3 [2]));
  FDCE \pdl_ctrl_reg[4][0] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in__3[0]),
        .Q(\pdl_ctrl_reg[4]_4 [0]));
  FDCE \pdl_ctrl_reg[4][1] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in__3[1]),
        .Q(\pdl_ctrl_reg[4]_4 [1]));
  FDPE \pdl_ctrl_reg[4][2] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__3[2]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[4]_4 [2]));
  FDPE \pdl_ctrl_reg[5][0] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__4[0]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[5]_5 [0]));
  FDCE \pdl_ctrl_reg[5][1] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in__4[1]),
        .Q(\pdl_ctrl_reg[5]_5 [1]));
  FDPE \pdl_ctrl_reg[5][2] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__4[2]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[5]_5 [2]));
  FDCE \pdl_ctrl_reg[6][0] 
       (.C(aclk),
        .CE(enable),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(p_0_in__5[0]),
        .Q(\pdl_ctrl_reg[6]_6 [0]));
  FDPE \pdl_ctrl_reg[6][1] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__5[1]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[6]_6 [1]));
  FDPE \pdl_ctrl_reg[6][2] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__5[2]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[6]_6 [2]));
  FDPE \pdl_ctrl_reg[7][0] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__6[0]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[7]_7 [0]));
  FDPE \pdl_ctrl_reg[7][1] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__6[1]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[7]_7 [1]));
  FDPE \pdl_ctrl_reg[7][2] 
       (.C(aclk),
        .CE(enable),
        .D(p_0_in__6[2]),
        .PRE(\ro_sampled[7]_i_2_n_0 ),
        .Q(\pdl_ctrl_reg[7]_7 [2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[0]_i_1 
       (.I0(enable),
        .I1(ro_feedback[0]),
        .O(\ro_sampled[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[1]_i_1 
       (.I0(enable),
        .I1(ro_feedback[1]),
        .O(\ro_sampled[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[2]_i_1 
       (.I0(enable),
        .I1(ro_feedback[2]),
        .O(\ro_sampled[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[3]_i_1 
       (.I0(enable),
        .I1(ro_feedback[3]),
        .O(\ro_sampled[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[4]_i_1 
       (.I0(enable),
        .I1(ro_feedback[4]),
        .O(\ro_sampled[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[5]_i_1 
       (.I0(enable),
        .I1(ro_feedback[5]),
        .O(\ro_sampled[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[6]_i_1 
       (.I0(enable),
        .I1(ro_feedback[6]),
        .O(\ro_sampled[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[7]_i_1 
       (.I0(enable),
        .I1(ro_feedback[7]),
        .O(\ro_sampled[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ro_sampled[7]_i_2 
       (.I0(aresetn),
        .O(\ro_sampled[7]_i_2_n_0 ));
  FDCE \ro_sampled_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(\ro_sampled[0]_i_1_n_0 ),
        .Q(\ro_sampled_reg_n_0_[0] ));
  FDCE \ro_sampled_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(\ro_sampled[1]_i_1_n_0 ),
        .Q(in));
  FDCE \ro_sampled_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(\ro_sampled[2]_i_1_n_0 ),
        .Q(\ro_sampled_reg_n_0_[2] ));
  FDCE \ro_sampled_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(\ro_sampled[3]_i_1_n_0 ),
        .Q(\ro_sampled_reg_n_0_[3] ));
  FDCE \ro_sampled_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(\ro_sampled[4]_i_1_n_0 ),
        .Q(\ro_sampled_reg_n_0_[4] ));
  FDCE \ro_sampled_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(\ro_sampled[5]_i_1_n_0 ),
        .Q(\ro_sampled_reg_n_0_[5] ));
  FDCE \ro_sampled_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(\ro_sampled[6]_i_1_n_0 ),
        .Q(\ro_sampled_reg_n_0_[6] ));
  FDCE \ro_sampled_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\ro_sampled[7]_i_2_n_0 ),
        .D(\ro_sampled[7]_i_1_n_0 ),
        .Q(\ro_sampled_reg_n_0_[7] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG_top
   (aclk,
    aresetn,
    enable,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready);
  input aclk;
  input aresetn;
  input enable;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire [4:0]bit_cnt_reg;
  wire [14:1]data0;
  wire enable;
  wire [31:0]m_axis_tdata;
  wire \m_axis_tdata[31]_i_2_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tlast_i_4_n_0;
  wire m_axis_tlast_i_5_n_0;
  wire m_axis_tlast_i_6_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire [31:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire shift_reg0;
  wire shift_reg02_out;
  wire [14:0]word_cnt;
  wire word_cnt0;
  wire \word_cnt_reg[12]_i_2_n_0 ;
  wire \word_cnt_reg[12]_i_2_n_1 ;
  wire \word_cnt_reg[12]_i_2_n_2 ;
  wire \word_cnt_reg[12]_i_2_n_3 ;
  wire \word_cnt_reg[14]_i_3_n_3 ;
  wire \word_cnt_reg[4]_i_2_n_0 ;
  wire \word_cnt_reg[4]_i_2_n_1 ;
  wire \word_cnt_reg[4]_i_2_n_2 ;
  wire \word_cnt_reg[4]_i_2_n_3 ;
  wire \word_cnt_reg[8]_i_2_n_0 ;
  wire \word_cnt_reg[8]_i_2_n_1 ;
  wire \word_cnt_reg[8]_i_2_n_2 ;
  wire \word_cnt_reg[8]_i_2_n_3 ;
  wire \word_cnt_reg_n_0_[0] ;
  wire \word_cnt_reg_n_0_[10] ;
  wire \word_cnt_reg_n_0_[11] ;
  wire \word_cnt_reg_n_0_[12] ;
  wire \word_cnt_reg_n_0_[13] ;
  wire \word_cnt_reg_n_0_[14] ;
  wire \word_cnt_reg_n_0_[1] ;
  wire \word_cnt_reg_n_0_[2] ;
  wire \word_cnt_reg_n_0_[3] ;
  wire \word_cnt_reg_n_0_[4] ;
  wire \word_cnt_reg_n_0_[5] ;
  wire \word_cnt_reg_n_0_[6] ;
  wire \word_cnt_reg_n_0_[7] ;
  wire \word_cnt_reg_n_0_[8] ;
  wire \word_cnt_reg_n_0_[9] ;
  wire [3:1]\NLW_word_cnt_reg[14]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_word_cnt_reg[14]_i_3_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[0]_i_1 
       (.I0(bit_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt_reg[0]),
        .I1(bit_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt_reg[1]),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_cnt[3]_i_1 
       (.I0(bit_cnt_reg[2]),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[1]),
        .I3(bit_cnt_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bit_cnt[4]_i_1 
       (.I0(bit_cnt_reg[3]),
        .I1(bit_cnt_reg[1]),
        .I2(bit_cnt_reg[0]),
        .I3(bit_cnt_reg[2]),
        .I4(bit_cnt_reg[4]),
        .O(p_0_in__0[4]));
  FDRE \bit_cnt_reg[0] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in__0[0]),
        .Q(bit_cnt_reg[0]),
        .R(shift_reg0));
  FDRE \bit_cnt_reg[1] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in__0[1]),
        .Q(bit_cnt_reg[1]),
        .R(shift_reg0));
  FDRE \bit_cnt_reg[2] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in__0[2]),
        .Q(bit_cnt_reg[2]),
        .R(shift_reg0));
  FDRE \bit_cnt_reg[3] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in__0[3]),
        .Q(bit_cnt_reg[3]),
        .R(shift_reg0));
  FDRE \bit_cnt_reg[4] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in__0[4]),
        .Q(bit_cnt_reg[4]),
        .R(shift_reg0));
  LUT2 #(
    .INIT(4'h7)) 
    \m_axis_tdata[31]_i_1 
       (.I0(aresetn),
        .I1(enable),
        .O(shift_reg0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_axis_tdata[31]_i_2 
       (.I0(bit_cnt_reg[4]),
        .I1(shift_reg02_out),
        .I2(bit_cnt_reg[3]),
        .I3(bit_cnt_reg[1]),
        .I4(bit_cnt_reg[0]),
        .I5(bit_cnt_reg[2]),
        .O(\m_axis_tdata[31]_i_2_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(m_axis_tdata[0]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(m_axis_tdata[10]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(m_axis_tdata[11]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[12]),
        .Q(m_axis_tdata[12]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[13]),
        .Q(m_axis_tdata[13]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[14]),
        .Q(m_axis_tdata[14]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[15]),
        .Q(m_axis_tdata[15]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[16]),
        .Q(m_axis_tdata[16]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[17]),
        .Q(m_axis_tdata[17]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[18]),
        .Q(m_axis_tdata[18]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[19]),
        .Q(m_axis_tdata[19]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(m_axis_tdata[1]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[20]),
        .Q(m_axis_tdata[20]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[21]),
        .Q(m_axis_tdata[21]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[22]),
        .Q(m_axis_tdata[22]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[23]),
        .Q(m_axis_tdata[23]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[24]),
        .Q(m_axis_tdata[24]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[25]),
        .Q(m_axis_tdata[25]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[26]),
        .Q(m_axis_tdata[26]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[27]),
        .Q(m_axis_tdata[27]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[28]),
        .Q(m_axis_tdata[28]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[29] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[29]),
        .Q(m_axis_tdata[29]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(m_axis_tdata[2]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[30] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[30]),
        .Q(m_axis_tdata[30]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[31] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[31]),
        .Q(m_axis_tdata[31]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(m_axis_tdata[3]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(m_axis_tdata[4]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(m_axis_tdata[5]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(m_axis_tdata[6]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(m_axis_tdata[7]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(m_axis_tdata[8]),
        .R(shift_reg0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(m_axis_tdata[9]),
        .R(shift_reg0));
  LUT6 #(
    .INIT(64'h0000000002FE0202)) 
    m_axis_tlast_i_1
       (.I0(m_axis_tlast),
        .I1(word_cnt0),
        .I2(m_axis_tlast_i_2_n_0),
        .I3(m_axis_tlast_i_3_n_0),
        .I4(\m_axis_tdata[31]_i_2_n_0 ),
        .I5(shift_reg0),
        .O(m_axis_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    m_axis_tlast_i_2
       (.I0(m_axis_tvalid),
        .I1(bit_cnt_reg[4]),
        .I2(bit_cnt_reg[3]),
        .I3(bit_cnt_reg[1]),
        .I4(bit_cnt_reg[0]),
        .I5(bit_cnt_reg[2]),
        .O(m_axis_tlast_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    m_axis_tlast_i_3
       (.I0(m_axis_tlast_i_4_n_0),
        .I1(m_axis_tlast_i_5_n_0),
        .I2(\word_cnt_reg_n_0_[14] ),
        .I3(\word_cnt_reg_n_0_[13] ),
        .I4(\word_cnt_reg_n_0_[0] ),
        .I5(m_axis_tlast_i_6_n_0),
        .O(m_axis_tlast_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_i_4
       (.I0(\word_cnt_reg_n_0_[6] ),
        .I1(\word_cnt_reg_n_0_[5] ),
        .I2(\word_cnt_reg_n_0_[8] ),
        .I3(\word_cnt_reg_n_0_[7] ),
        .O(m_axis_tlast_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    m_axis_tlast_i_5
       (.I0(\word_cnt_reg_n_0_[2] ),
        .I1(\word_cnt_reg_n_0_[1] ),
        .I2(\word_cnt_reg_n_0_[4] ),
        .I3(\word_cnt_reg_n_0_[3] ),
        .O(m_axis_tlast_i_5_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    m_axis_tlast_i_6
       (.I0(\word_cnt_reg_n_0_[9] ),
        .I1(\word_cnt_reg_n_0_[10] ),
        .I2(\word_cnt_reg_n_0_[12] ),
        .I3(\word_cnt_reg_n_0_[11] ),
        .O(m_axis_tlast_i_6_n_0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAE000000)) 
    m_axis_tvalid_i_1
       (.I0(\m_axis_tdata[31]_i_2_n_0 ),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .I3(enable),
        .I4(aresetn),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \shift_reg[30]_i_1 
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .O(shift_reg02_out));
  FDRE \shift_reg_reg[0] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[0]),
        .Q(p_0_in[1]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[10] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[10]),
        .Q(p_0_in[11]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[11] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[11]),
        .Q(p_0_in[12]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[12] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[12]),
        .Q(p_0_in[13]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[13] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[13]),
        .Q(p_0_in[14]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[14] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[14]),
        .Q(p_0_in[15]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[15] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[15]),
        .Q(p_0_in[16]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[16] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[16]),
        .Q(p_0_in[17]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[17] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[17]),
        .Q(p_0_in[18]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[18] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[18]),
        .Q(p_0_in[19]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[19] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[19]),
        .Q(p_0_in[20]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[1] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[1]),
        .Q(p_0_in[2]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[20] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[20]),
        .Q(p_0_in[21]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[21] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[21]),
        .Q(p_0_in[22]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[22] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[22]),
        .Q(p_0_in[23]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[23] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[23]),
        .Q(p_0_in[24]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[24] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[24]),
        .Q(p_0_in[25]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[25] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[25]),
        .Q(p_0_in[26]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[26] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[26]),
        .Q(p_0_in[27]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[27] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[27]),
        .Q(p_0_in[28]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[28] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[28]),
        .Q(p_0_in[29]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[29] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[29]),
        .Q(p_0_in[30]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[2] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[2]),
        .Q(p_0_in[3]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[30] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[30]),
        .Q(p_0_in[31]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[3] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[3]),
        .Q(p_0_in[4]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[4] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[4]),
        .Q(p_0_in[5]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[5] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[5]),
        .Q(p_0_in[6]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[6] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[6]),
        .Q(p_0_in[7]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[7] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[7]),
        .Q(p_0_in[8]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[8] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[8]),
        .Q(p_0_in[9]),
        .R(shift_reg0));
  FDRE \shift_reg_reg[9] 
       (.C(aclk),
        .CE(shift_reg02_out),
        .D(p_0_in[9]),
        .Q(p_0_in[10]),
        .R(shift_reg0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG trng_core_inst
       (.D(p_0_in[0]),
        .aclk(aclk),
        .aresetn(aresetn),
        .enable(enable));
  LUT1 #(
    .INIT(2'h1)) 
    \word_cnt[0]_i_1 
       (.I0(\word_cnt_reg_n_0_[0] ),
        .O(word_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[10]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[10]),
        .O(word_cnt[10]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[11]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[11]),
        .O(word_cnt[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[12]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[12]),
        .O(word_cnt[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[13]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[13]),
        .O(word_cnt[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[14]_i_1 
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(word_cnt0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[14]_i_2 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[14]),
        .O(word_cnt[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[1]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[1]),
        .O(word_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[2]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[2]),
        .O(word_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[3]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[3]),
        .O(word_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[4]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[4]),
        .O(word_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[5]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[5]),
        .O(word_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[6]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[6]),
        .O(word_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[7]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[7]),
        .O(word_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[8]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[8]),
        .O(word_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[9]_i_1 
       (.I0(m_axis_tlast_i_3_n_0),
        .I1(data0[9]),
        .O(word_cnt[9]));
  FDRE \word_cnt_reg[0] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[0]),
        .Q(\word_cnt_reg_n_0_[0] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[10] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[10]),
        .Q(\word_cnt_reg_n_0_[10] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[11] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[11]),
        .Q(\word_cnt_reg_n_0_[11] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[12] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[12]),
        .Q(\word_cnt_reg_n_0_[12] ),
        .R(shift_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \word_cnt_reg[12]_i_2 
       (.CI(\word_cnt_reg[8]_i_2_n_0 ),
        .CO({\word_cnt_reg[12]_i_2_n_0 ,\word_cnt_reg[12]_i_2_n_1 ,\word_cnt_reg[12]_i_2_n_2 ,\word_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\word_cnt_reg_n_0_[12] ,\word_cnt_reg_n_0_[11] ,\word_cnt_reg_n_0_[10] ,\word_cnt_reg_n_0_[9] }));
  FDRE \word_cnt_reg[13] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[13]),
        .Q(\word_cnt_reg_n_0_[13] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[14] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[14]),
        .Q(\word_cnt_reg_n_0_[14] ),
        .R(shift_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \word_cnt_reg[14]_i_3 
       (.CI(\word_cnt_reg[12]_i_2_n_0 ),
        .CO({\NLW_word_cnt_reg[14]_i_3_CO_UNCONNECTED [3:1],\word_cnt_reg[14]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_word_cnt_reg[14]_i_3_O_UNCONNECTED [3:2],data0[14:13]}),
        .S({1'b0,1'b0,\word_cnt_reg_n_0_[14] ,\word_cnt_reg_n_0_[13] }));
  FDRE \word_cnt_reg[1] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[1]),
        .Q(\word_cnt_reg_n_0_[1] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[2] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[2]),
        .Q(\word_cnt_reg_n_0_[2] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[3] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[3]),
        .Q(\word_cnt_reg_n_0_[3] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[4] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[4]),
        .Q(\word_cnt_reg_n_0_[4] ),
        .R(shift_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \word_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\word_cnt_reg[4]_i_2_n_0 ,\word_cnt_reg[4]_i_2_n_1 ,\word_cnt_reg[4]_i_2_n_2 ,\word_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\word_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\word_cnt_reg_n_0_[4] ,\word_cnt_reg_n_0_[3] ,\word_cnt_reg_n_0_[2] ,\word_cnt_reg_n_0_[1] }));
  FDRE \word_cnt_reg[5] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[5]),
        .Q(\word_cnt_reg_n_0_[5] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[6] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[6]),
        .Q(\word_cnt_reg_n_0_[6] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[7] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[7]),
        .Q(\word_cnt_reg_n_0_[7] ),
        .R(shift_reg0));
  FDRE \word_cnt_reg[8] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[8]),
        .Q(\word_cnt_reg_n_0_[8] ),
        .R(shift_reg0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \word_cnt_reg[8]_i_2 
       (.CI(\word_cnt_reg[4]_i_2_n_0 ),
        .CO({\word_cnt_reg[8]_i_2_n_0 ,\word_cnt_reg[8]_i_2_n_1 ,\word_cnt_reg[8]_i_2_n_2 ,\word_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\word_cnt_reg_n_0_[8] ,\word_cnt_reg_n_0_[7] ,\word_cnt_reg_n_0_[6] ,\word_cnt_reg_n_0_[5] }));
  FDRE \word_cnt_reg[9] 
       (.C(aclk),
        .CE(word_cnt0),
        .D(word_cnt[9]),
        .Q(\word_cnt_reg_n_0_[9] ),
        .R(shift_reg0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_TRNG_top_0_1,TRNG_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "TRNG_top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    enable,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    m_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 24000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire enable;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .enable(enable),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid));
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
