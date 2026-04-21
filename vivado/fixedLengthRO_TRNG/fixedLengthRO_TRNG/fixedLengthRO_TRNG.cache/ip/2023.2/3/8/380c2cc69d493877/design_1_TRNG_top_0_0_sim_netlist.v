// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Mar 31 12:29:50 2026
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_TRNG_top_0_0_sim_netlist.v
// Design      : design_1_TRNG_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO
   (D,
    out,
    enable,
    in,
    Q);
  output [0:0]D;
  output out;
  input enable;
  input in;
  input [2:0]Q;

  wire [0:0]D;
  wire [2:0]Q;
  wire enable;
  wire in;
  wire out;
  wire z0;
  wire z1;
  wire z2;

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
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(out));
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[0]_i_1 
       (.I0(enable),
        .I1(out),
        .O(D));
endmodule

(* ORIG_REF_NAME = "RO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_0
   (D,
    out,
    enable,
    in,
    Q);
  output [0:0]D;
  output out;
  input enable;
  input in;
  input [2:0]Q;

  wire [0:0]D;
  wire [2:0]Q;
  wire enable;
  wire in;
  wire out;
  wire z0;
  wire z1;
  wire z2;

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
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(out));
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[1]_i_1 
       (.I0(enable),
        .I1(out),
        .O(D));
endmodule

(* ORIG_REF_NAME = "RO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_1
   (D,
    out,
    enable,
    in,
    Q);
  output [0:0]D;
  output out;
  input enable;
  input in;
  input [2:0]Q;

  wire [0:0]D;
  wire [2:0]Q;
  wire enable;
  wire in;
  wire out;
  wire z0;
  wire z1;
  wire z2;

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
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(out));
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[2]_i_1 
       (.I0(enable),
        .I1(out),
        .O(D));
endmodule

(* ORIG_REF_NAME = "RO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_2
   (D,
    out,
    enable,
    in,
    Q);
  output [0:0]D;
  output out;
  input enable;
  input in;
  input [2:0]Q;

  wire [0:0]D;
  wire [2:0]Q;
  wire enable;
  wire in;
  wire out;
  wire z0;
  wire z1;
  wire z2;

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
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(out));
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[3]_i_1 
       (.I0(enable),
        .I1(out),
        .O(D));
endmodule

(* ORIG_REF_NAME = "RO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_3
   (D,
    out,
    enable,
    in,
    Q);
  output [0:0]D;
  output out;
  input enable;
  input in;
  input [2:0]Q;

  wire [0:0]D;
  wire [2:0]Q;
  wire enable;
  wire in;
  wire out;
  wire z0;
  wire z1;
  wire z2;

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
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(out));
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[4]_i_1 
       (.I0(enable),
        .I1(out),
        .O(D));
endmodule

(* ORIG_REF_NAME = "RO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_4
   (D,
    out,
    enable,
    in,
    Q);
  output [0:0]D;
  output out;
  input enable;
  input in;
  input [2:0]Q;

  wire [0:0]D;
  wire [2:0]Q;
  wire enable;
  wire in;
  wire out;
  wire z0;
  wire z1;
  wire z2;

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
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(out));
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[5]_i_1 
       (.I0(enable),
        .I1(out),
        .O(D));
endmodule

(* ORIG_REF_NAME = "RO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_5
   (D,
    out,
    enable,
    in,
    Q);
  output [0:0]D;
  output out;
  input enable;
  input in;
  input [2:0]Q;

  wire [0:0]D;
  wire [2:0]Q;
  wire enable;
  wire in;
  wire out;
  wire z0;
  wire z1;
  wire z2;

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
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(out));
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[6]_i_1 
       (.I0(enable),
        .I1(out),
        .O(D));
endmodule

(* ORIG_REF_NAME = "RO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_6
   (D,
    out,
    enable,
    in,
    Q);
  output [0:0]D;
  output out;
  input enable;
  input in;
  input [2:0]Q;

  wire [0:0]D;
  wire [2:0]Q;
  wire enable;
  wire in;
  wire out;
  wire z0;
  wire z1;
  wire z2;

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
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not1
       (.I0(z0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(z1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not2
       (.I0(z1),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(z2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h5555)) 
    LUT4_not3
       (.I0(z2),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(out));
  LUT2 #(
    .INIT(4'h8)) 
    \ro_sampled[7]_i_1 
       (.I0(enable),
        .I1(out),
        .O(D));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG
   (p_0_in,
    aresetn_0,
    aclk,
    enable,
    aresetn);
  output [0:0]p_0_in;
  output aresetn_0;
  input aclk;
  input enable;
  input aresetn;

  wire \RO_GEN[0].my_ro_inst_n_0 ;
  wire \RO_GEN[1].my_ro_inst_n_0 ;
  wire \RO_GEN[2].my_ro_inst_n_0 ;
  wire \RO_GEN[3].my_ro_inst_n_0 ;
  wire \RO_GEN[4].my_ro_inst_n_0 ;
  wire \RO_GEN[5].my_ro_inst_n_0 ;
  wire \RO_GEN[6].my_ro_inst_n_0 ;
  wire \RO_GEN[7].my_ro_inst_n_0 ;
  wire aclk;
  wire aresetn;
  wire aresetn_0;
  wire enable;
  wire final_bit_i_1_n_0;
  wire final_bit_i_2_n_0;
  wire [0:0]p_0_in;
  wire [2:0]p_0_in__0;
  wire [2:0]pdl_ctrl_reg;
  (* ALLOW_COMBINATORIAL_LOOPS *) (* DONT_TOUCH *) wire [7:0]ro_feedback;
  wire [7:0]ro_sampled;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO \RO_GEN[0].my_ro_inst 
       (.D(\RO_GEN[0].my_ro_inst_n_0 ),
        .Q(pdl_ctrl_reg),
        .enable(enable),
        .in(ro_feedback[0]),
        .out(ro_feedback[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_0 \RO_GEN[1].my_ro_inst 
       (.D(\RO_GEN[1].my_ro_inst_n_0 ),
        .Q(pdl_ctrl_reg),
        .enable(enable),
        .in(ro_feedback[1]),
        .out(ro_feedback[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_1 \RO_GEN[2].my_ro_inst 
       (.D(\RO_GEN[2].my_ro_inst_n_0 ),
        .Q(pdl_ctrl_reg),
        .enable(enable),
        .in(ro_feedback[2]),
        .out(ro_feedback[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_2 \RO_GEN[3].my_ro_inst 
       (.D(\RO_GEN[3].my_ro_inst_n_0 ),
        .Q(pdl_ctrl_reg),
        .enable(enable),
        .in(ro_feedback[3]),
        .out(ro_feedback[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_3 \RO_GEN[4].my_ro_inst 
       (.D(\RO_GEN[4].my_ro_inst_n_0 ),
        .Q(pdl_ctrl_reg),
        .enable(enable),
        .in(ro_feedback[4]),
        .out(ro_feedback[4]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_4 \RO_GEN[5].my_ro_inst 
       (.D(\RO_GEN[5].my_ro_inst_n_0 ),
        .Q(pdl_ctrl_reg),
        .enable(enable),
        .in(ro_feedback[5]),
        .out(ro_feedback[5]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_5 \RO_GEN[6].my_ro_inst 
       (.D(\RO_GEN[6].my_ro_inst_n_0 ),
        .Q(pdl_ctrl_reg),
        .enable(enable),
        .in(ro_feedback[6]),
        .out(ro_feedback[6]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_6 \RO_GEN[7].my_ro_inst 
       (.D(\RO_GEN[7].my_ro_inst_n_0 ),
        .Q(pdl_ctrl_reg),
        .enable(enable),
        .in(ro_feedback[7]),
        .out(ro_feedback[7]));
  LUT6 #(
    .INIT(64'h9669699600000000)) 
    final_bit_i_1
       (.I0(final_bit_i_2_n_0),
        .I1(ro_sampled[1]),
        .I2(ro_sampled[0]),
        .I3(ro_sampled[5]),
        .I4(ro_sampled[4]),
        .I5(enable),
        .O(final_bit_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    final_bit_i_2
       (.I0(ro_sampled[3]),
        .I1(ro_sampled[2]),
        .I2(ro_sampled[7]),
        .I3(ro_sampled[6]),
        .O(final_bit_i_2_n_0));
  FDCE final_bit_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(final_bit_i_1_n_0),
        .Q(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[31]_i_2 
       (.I0(aresetn),
        .O(aresetn_0));
  LUT2 #(
    .INIT(4'h6)) 
    \pdl_ctrl[0]_i_1 
       (.I0(p_0_in),
        .I1(pdl_ctrl_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pdl_ctrl[1]_i_1 
       (.I0(p_0_in),
        .I1(pdl_ctrl_reg[0]),
        .I2(pdl_ctrl_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pdl_ctrl[2]_i_1 
       (.I0(pdl_ctrl_reg[2]),
        .I1(p_0_in),
        .I2(pdl_ctrl_reg[0]),
        .I3(pdl_ctrl_reg[1]),
        .O(p_0_in__0[2]));
  FDCE \pdl_ctrl_reg[0] 
       (.C(aclk),
        .CE(enable),
        .CLR(aresetn_0),
        .D(p_0_in__0[0]),
        .Q(pdl_ctrl_reg[0]));
  FDCE \pdl_ctrl_reg[1] 
       (.C(aclk),
        .CE(enable),
        .CLR(aresetn_0),
        .D(p_0_in__0[1]),
        .Q(pdl_ctrl_reg[1]));
  FDCE \pdl_ctrl_reg[2] 
       (.C(aclk),
        .CE(enable),
        .CLR(aresetn_0),
        .D(p_0_in__0[2]),
        .Q(pdl_ctrl_reg[2]));
  FDCE \ro_sampled_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\RO_GEN[0].my_ro_inst_n_0 ),
        .Q(ro_sampled[0]));
  FDCE \ro_sampled_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\RO_GEN[1].my_ro_inst_n_0 ),
        .Q(ro_sampled[1]));
  FDCE \ro_sampled_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\RO_GEN[2].my_ro_inst_n_0 ),
        .Q(ro_sampled[2]));
  FDCE \ro_sampled_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\RO_GEN[3].my_ro_inst_n_0 ),
        .Q(ro_sampled[3]));
  FDCE \ro_sampled_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\RO_GEN[4].my_ro_inst_n_0 ),
        .Q(ro_sampled[4]));
  FDCE \ro_sampled_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\RO_GEN[5].my_ro_inst_n_0 ),
        .Q(ro_sampled[5]));
  FDCE \ro_sampled_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\RO_GEN[6].my_ro_inst_n_0 ),
        .Q(ro_sampled[6]));
  FDCE \ro_sampled_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(aresetn_0),
        .D(\RO_GEN[7].my_ro_inst_n_0 ),
        .Q(ro_sampled[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG_top
   (m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast,
    enable,
    aclk,
    m_axis_tready,
    aresetn);
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
  input enable;
  input aclk;
  input m_axis_tready;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire [4:0]bit_cnt_reg;
  wire enable;
  wire [31:0]m_axis_tdata;
  wire \m_axis_tdata[31]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tlast_i_2_n_0;
  wire m_axis_tlast_i_3_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire [31:0]p_0_in;
  wire [4:0]p_0_in__1;
  wire [6:0]p_1_in;
  wire trng_core_inst_n_1;
  wire [7:0]word_cnt;
  wire \word_cnt[1]_i_1_n_0 ;
  wire \word_cnt[2]_i_1_n_0 ;
  wire \word_cnt[4]_i_1_n_0 ;
  wire \word_cnt[5]_i_2_n_0 ;
  wire \word_cnt[7]_i_1_n_0 ;
  wire \word_cnt[7]_i_2_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bit_cnt[0]_i_1 
       (.I0(enable),
        .I1(bit_cnt_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt_reg[1]),
        .I1(bit_cnt_reg[0]),
        .I2(enable),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \bit_cnt[2]_i_1 
       (.I0(enable),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[1]),
        .I3(bit_cnt_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \bit_cnt[3]_i_1 
       (.I0(bit_cnt_reg[2]),
        .I1(bit_cnt_reg[1]),
        .I2(bit_cnt_reg[0]),
        .I3(bit_cnt_reg[3]),
        .I4(enable),
        .O(\bit_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \bit_cnt[4]_i_1 
       (.I0(enable),
        .I1(bit_cnt_reg[3]),
        .I2(bit_cnt_reg[0]),
        .I3(bit_cnt_reg[1]),
        .I4(bit_cnt_reg[2]),
        .I5(bit_cnt_reg[4]),
        .O(p_0_in__1[4]));
  FDCE \bit_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in__1[0]),
        .Q(bit_cnt_reg[0]));
  FDCE \bit_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(trng_core_inst_n_1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(bit_cnt_reg[1]));
  FDCE \bit_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in__1[2]),
        .Q(bit_cnt_reg[2]));
  FDCE \bit_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(trng_core_inst_n_1),
        .D(\bit_cnt[3]_i_1_n_0 ),
        .Q(bit_cnt_reg[3]));
  FDCE \bit_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in__1[4]),
        .Q(bit_cnt_reg[4]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_axis_tdata[31]_i_1 
       (.I0(bit_cnt_reg[3]),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[1]),
        .I3(bit_cnt_reg[2]),
        .I4(bit_cnt_reg[4]),
        .I5(enable),
        .O(\m_axis_tdata[31]_i_1_n_0 ));
  FDCE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[0]),
        .Q(m_axis_tdata[0]));
  FDCE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[10]),
        .Q(m_axis_tdata[10]));
  FDCE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[11]),
        .Q(m_axis_tdata[11]));
  FDCE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[12]),
        .Q(m_axis_tdata[12]));
  FDCE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[13]),
        .Q(m_axis_tdata[13]));
  FDCE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[14]),
        .Q(m_axis_tdata[14]));
  FDCE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[15]),
        .Q(m_axis_tdata[15]));
  FDCE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[16]),
        .Q(m_axis_tdata[16]));
  FDCE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[17]),
        .Q(m_axis_tdata[17]));
  FDCE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[18]),
        .Q(m_axis_tdata[18]));
  FDCE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[19]),
        .Q(m_axis_tdata[19]));
  FDCE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[1]),
        .Q(m_axis_tdata[1]));
  FDCE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[20]),
        .Q(m_axis_tdata[20]));
  FDCE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[21]),
        .Q(m_axis_tdata[21]));
  FDCE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[22]),
        .Q(m_axis_tdata[22]));
  FDCE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[23]),
        .Q(m_axis_tdata[23]));
  FDCE \m_axis_tdata_reg[24] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[24]),
        .Q(m_axis_tdata[24]));
  FDCE \m_axis_tdata_reg[25] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[25]),
        .Q(m_axis_tdata[25]));
  FDCE \m_axis_tdata_reg[26] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[26]),
        .Q(m_axis_tdata[26]));
  FDCE \m_axis_tdata_reg[27] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[27]),
        .Q(m_axis_tdata[27]));
  FDCE \m_axis_tdata_reg[28] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[28]),
        .Q(m_axis_tdata[28]));
  FDCE \m_axis_tdata_reg[29] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[29]),
        .Q(m_axis_tdata[29]));
  FDCE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[2]),
        .Q(m_axis_tdata[2]));
  FDCE \m_axis_tdata_reg[30] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[30]),
        .Q(m_axis_tdata[30]));
  FDCE \m_axis_tdata_reg[31] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[31]),
        .Q(m_axis_tdata[31]));
  FDCE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[3]),
        .Q(m_axis_tdata[3]));
  FDCE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[4]),
        .Q(m_axis_tdata[4]));
  FDCE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[5]),
        .Q(m_axis_tdata[5]));
  FDCE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[6]),
        .Q(m_axis_tdata[6]));
  FDCE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[7]),
        .Q(m_axis_tdata[7]));
  FDCE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[8]),
        .Q(m_axis_tdata[8]));
  FDCE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[9]),
        .Q(m_axis_tdata[9]));
  LUT6 #(
    .INIT(64'h200020FF20002000)) 
    m_axis_tlast_i_1
       (.I0(word_cnt[6]),
        .I1(m_axis_tlast_i_2_n_0),
        .I2(word_cnt[7]),
        .I3(\m_axis_tdata[31]_i_1_n_0 ),
        .I4(m_axis_tlast_i_3_n_0),
        .I5(m_axis_tlast),
        .O(m_axis_tlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    m_axis_tlast_i_2
       (.I0(word_cnt[1]),
        .I1(word_cnt[0]),
        .I2(word_cnt[3]),
        .I3(word_cnt[2]),
        .I4(word_cnt[4]),
        .I5(word_cnt[5]),
        .O(m_axis_tlast_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_i_3
       (.I0(m_axis_tready),
        .I1(m_axis_tvalid),
        .O(m_axis_tlast_i_3_n_0));
  FDCE m_axis_tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(trng_core_inst_n_1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    m_axis_tvalid_i_1
       (.I0(\m_axis_tdata[31]_i_1_n_0 ),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .O(m_axis_tvalid_i_1_n_0));
  FDCE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .CLR(trng_core_inst_n_1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid));
  FDCE \shift_reg_reg[0] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[0]),
        .Q(p_0_in[1]));
  FDCE \shift_reg_reg[10] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[10]),
        .Q(p_0_in[11]));
  FDCE \shift_reg_reg[11] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[11]),
        .Q(p_0_in[12]));
  FDCE \shift_reg_reg[12] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[12]),
        .Q(p_0_in[13]));
  FDCE \shift_reg_reg[13] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[13]),
        .Q(p_0_in[14]));
  FDCE \shift_reg_reg[14] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[14]),
        .Q(p_0_in[15]));
  FDCE \shift_reg_reg[15] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[15]),
        .Q(p_0_in[16]));
  FDCE \shift_reg_reg[16] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[16]),
        .Q(p_0_in[17]));
  FDCE \shift_reg_reg[17] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[17]),
        .Q(p_0_in[18]));
  FDCE \shift_reg_reg[18] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[18]),
        .Q(p_0_in[19]));
  FDCE \shift_reg_reg[19] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[19]),
        .Q(p_0_in[20]));
  FDCE \shift_reg_reg[1] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[1]),
        .Q(p_0_in[2]));
  FDCE \shift_reg_reg[20] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[20]),
        .Q(p_0_in[21]));
  FDCE \shift_reg_reg[21] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[21]),
        .Q(p_0_in[22]));
  FDCE \shift_reg_reg[22] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[22]),
        .Q(p_0_in[23]));
  FDCE \shift_reg_reg[23] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[23]),
        .Q(p_0_in[24]));
  FDCE \shift_reg_reg[24] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[24]),
        .Q(p_0_in[25]));
  FDCE \shift_reg_reg[25] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[25]),
        .Q(p_0_in[26]));
  FDCE \shift_reg_reg[26] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[26]),
        .Q(p_0_in[27]));
  FDCE \shift_reg_reg[27] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[27]),
        .Q(p_0_in[28]));
  FDCE \shift_reg_reg[28] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[28]),
        .Q(p_0_in[29]));
  FDCE \shift_reg_reg[29] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[29]),
        .Q(p_0_in[30]));
  FDCE \shift_reg_reg[2] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[2]),
        .Q(p_0_in[3]));
  FDCE \shift_reg_reg[30] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[30]),
        .Q(p_0_in[31]));
  FDCE \shift_reg_reg[3] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[3]),
        .Q(p_0_in[4]));
  FDCE \shift_reg_reg[4] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[4]),
        .Q(p_0_in[5]));
  FDCE \shift_reg_reg[5] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[5]),
        .Q(p_0_in[6]));
  FDCE \shift_reg_reg[6] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[6]),
        .Q(p_0_in[7]));
  FDCE \shift_reg_reg[7] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[7]),
        .Q(p_0_in[8]));
  FDCE \shift_reg_reg[8] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[8]),
        .Q(p_0_in[9]));
  FDCE \shift_reg_reg[9] 
       (.C(aclk),
        .CE(enable),
        .CLR(trng_core_inst_n_1),
        .D(p_0_in[9]),
        .Q(p_0_in[10]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG trng_core_inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .aresetn_0(trng_core_inst_n_1),
        .enable(enable),
        .p_0_in(p_0_in[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \word_cnt[0]_i_1 
       (.I0(enable),
        .I1(word_cnt[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \word_cnt[1]_i_1 
       (.I0(word_cnt[1]),
        .I1(word_cnt[0]),
        .I2(enable),
        .O(\word_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \word_cnt[2]_i_1 
       (.I0(word_cnt[0]),
        .I1(word_cnt[1]),
        .I2(word_cnt[2]),
        .I3(enable),
        .O(\word_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \word_cnt[3]_i_1 
       (.I0(enable),
        .I1(word_cnt[2]),
        .I2(word_cnt[1]),
        .I3(word_cnt[0]),
        .I4(word_cnt[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \word_cnt[4]_i_1 
       (.I0(word_cnt[1]),
        .I1(word_cnt[0]),
        .I2(word_cnt[3]),
        .I3(word_cnt[2]),
        .I4(word_cnt[4]),
        .I5(enable),
        .O(\word_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \word_cnt[5]_i_1 
       (.I0(enable),
        .I1(word_cnt[4]),
        .I2(word_cnt[2]),
        .I3(word_cnt[3]),
        .I4(\word_cnt[5]_i_2_n_0 ),
        .I5(word_cnt[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \word_cnt[5]_i_2 
       (.I0(word_cnt[0]),
        .I1(word_cnt[1]),
        .O(\word_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \word_cnt[6]_i_1 
       (.I0(enable),
        .I1(m_axis_tlast_i_2_n_0),
        .I2(word_cnt[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \word_cnt[7]_i_1 
       (.I0(bit_cnt_reg[3]),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[1]),
        .I3(bit_cnt_reg[2]),
        .I4(bit_cnt_reg[4]),
        .I5(enable),
        .O(\word_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hD200)) 
    \word_cnt[7]_i_2 
       (.I0(word_cnt[6]),
        .I1(m_axis_tlast_i_2_n_0),
        .I2(word_cnt[7]),
        .I3(enable),
        .O(\word_cnt[7]_i_2_n_0 ));
  FDCE \word_cnt_reg[0] 
       (.C(aclk),
        .CE(\word_cnt[7]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_1_in[0]),
        .Q(word_cnt[0]));
  FDCE \word_cnt_reg[1] 
       (.C(aclk),
        .CE(\word_cnt[7]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(\word_cnt[1]_i_1_n_0 ),
        .Q(word_cnt[1]));
  FDCE \word_cnt_reg[2] 
       (.C(aclk),
        .CE(\word_cnt[7]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(\word_cnt[2]_i_1_n_0 ),
        .Q(word_cnt[2]));
  FDCE \word_cnt_reg[3] 
       (.C(aclk),
        .CE(\word_cnt[7]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_1_in[3]),
        .Q(word_cnt[3]));
  FDCE \word_cnt_reg[4] 
       (.C(aclk),
        .CE(\word_cnt[7]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(\word_cnt[4]_i_1_n_0 ),
        .Q(word_cnt[4]));
  FDCE \word_cnt_reg[5] 
       (.C(aclk),
        .CE(\word_cnt[7]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_1_in[5]),
        .Q(word_cnt[5]));
  FDCE \word_cnt_reg[6] 
       (.C(aclk),
        .CE(\word_cnt[7]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(p_1_in[6]),
        .Q(word_cnt[6]));
  FDCE \word_cnt_reg[7] 
       (.C(aclk),
        .CE(\word_cnt[7]_i_1_n_0 ),
        .CLR(trng_core_inst_n_1),
        .D(\word_cnt[7]_i_2_n_0 ),
        .Q(word_cnt[7]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_TRNG_top_0_0,TRNG_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;

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
