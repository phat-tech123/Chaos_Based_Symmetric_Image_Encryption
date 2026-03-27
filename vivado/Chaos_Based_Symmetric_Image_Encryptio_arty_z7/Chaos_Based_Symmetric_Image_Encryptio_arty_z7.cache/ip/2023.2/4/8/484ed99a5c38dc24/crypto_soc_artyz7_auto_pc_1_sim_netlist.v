// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 25 10:00:20 2026
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ crypto_soc_artyz7_auto_pc_1_sim_netlist.v
// Design      : crypto_soc_artyz7_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_9 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "crypto_soc_artyz7_auto_pc_1,axi_protocol_converter_v2_1_29_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_29_axi_protocol_converter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN crypto_soc_artyz7_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN crypto_soc_artyz7_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN crypto_soc_artyz7_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gcDjvJ18gZEH8C+LHMq/N7AaYWSyHgvjIQn585rdUOTVX2orO9n8j6LNiga3BYkS91+lbHAjAieW
oD/8serz9uvKt9uVuyMIE6oOFFScZR6q2wQk1d1Qzq717+8yPCwgBT9HIhfJIHLujHt+cA2l2L5t
tux9aNBdVKkk1MHv7yY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
exhH3ieiewq538XhQByQWj7PMh1Y+pzdDw+4bALHgOXUMTZleYL0Pvhip/E5VwYBOb3/5i/ElWf3
Vm6OeE9b1Jj8xb7x10akeyRaNdCJYAtTqgb7gFS/crjXeoaYKJgLqCiyaB7LdWR9BiZOWqxEPSxe
/lr/8F8psti0kra2jACCbz94iU3qDIdZWH5kqd21Pp2/YczWpJBQzh+bBz9V+EuMAeZIzY3x2GZy
jOMZPemqiqFhSEcDf09mKK3xKEUxE+TPz82hd9ZrF5OjFst6mWMVye10lkzmY5Hmmx5Y/PVgPx3R
fN0tTAZfIDGH/YUu758U8UWOIcMzBHF6rytqmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Umfm0FNxPKfdryB9QccnkcrzqkPtalTpE+R0M3D9kxaXOa1YOGT+9jGc1TRZMLcN5NyGN3UIZcH4
LWFVfGg80k9RmFHBDZaHzOXaomQhoPSO++ArXvmvO5zgttfCHEl7jypYkuPgwfQMfjK7YII9Deex
KOC8JtqORVWmhq47cpQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cm7WeJnXtFlUdJuJH7wHYfinJTaBhpglyFWD2YwmOuS4fmVA4nXbX0IMaU1F1WGO1VK25KlFf8Nm
w8L6BJ6ZpH12xPIl3J17rMT4/3KHv9tpBWqeC080GeV5nISo8JrhOpIKa4+HBHZ6lYLce8LBAu/Z
EiBmDqw22aLsAuPAzAMh9yuHT5rpX9ykD9u0uZ5UplK05S0TsvYMUqcHNQ2hijt/lbxvUxXHTa+W
GJ5RRQAdw98wG1mc65u16hfZPsLimnw4BHwpyNGOPadShqb78rQihc+YiBTn4lgN1HhquWRGqCYZ
ZEjBmtWOJm8WJSTWtcpFEkmPlOTDmNX82e9mnw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a1mMNsEVIHwFCxw3sHygQ6eU3z5whgDQI+YHUmPAwU6q4vqfu2NVxu0z42QL1rV1rCsm39SqZ078
EGEqt7XUt6bdvI3yu4dU8gF+jou5njJ2UU34VmbOw/MQt48Hmi+hxtH1/zSlbNe2iOksDFEFTHmW
WGHgPS2bACG/KtAZMYK3gBtbnb9dtu+p5hxiQtwMOFnv9kQGBxcMaciN0yqy2TE5fygwKcNEua29
jiGUF0qgPS1k6qN+zLrYWkaVT0amR1MFXpv0WcwL+xVkxj6bBQhe5D7t5xCIsfLR4xqa5WVpa0dN
FkxGlIoufL17G/cGRr4nV4QP0sqcDCCHYpRoIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPFWI49JcHqYFxRrTG2uFixmE4jeIWIero9KijBFo7+FOCC7hJeSlCuNlwb8mBsI0Up57fm7C8t9
tb1l2QCfvy82JqTvEuH49UmS+8/GEnbK1QbVHsDIiv3/8cFn+0zw/VSuVeaN8L0yzeNIo8m59iAq
AQ9wOyqKFEhKKkbn+nVg+hQW3L/P25hisjV06sqmfsA0Rx4bYhFoxEvIw3A4x9LsBIIfDpgDsPzS
NICAEhfA7fWXKK6UsOmuq1NZLTDmFe2zEHijVMovzm/qqvHfu7fCt5POlGtLOPZhXGCDZi0v1yiq
VyT7JTUW5P/rcLgzkfyKToozq36lEkXd6VSaLg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4EV2kKcg5a7rlvEGr4AG3uvv0JzSoc0NQb9aIeE2gsKGq0oLel4q0oZ7eO6He8noW5KEowgkY0O
xDnerk/R4qxdSePYeRRmUg3KZ7hAHVEQrHpQ2RbYwK5mUIpQLjxCWRWzBjeWOce2bh0dAMR/4OH6
t95V8b9VWpgepcUXynGvLDv31tVgr+8LtXlgWTNBiJj2mTZ3gEVxpgGRwMGsampw9yKqBKoR+/hg
++FP8JJkrOSdB2bhnNaD4fZotMLkhYDrWvQm9z6rW7fwxA2oEI+oUqi+K+82oiLzeVWy7FhVyzgS
Y273uSE53DWk35UE9A6ebcI/xUl1iGqwdeZihA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gZRrJLrBkbil4BLf1tia07NzGL28f+Pk9zyPElbTDf8NEXCsuwTum6RjR5lvY/odzAYHlcKxpG+6
gwjafT2OV5gHqqtPXrRHcVU4p5LEzOOl5p3puqvK+1z2+YpHqxOZIIZPIH9kjtzNgcBmcU7S2sFN
zTxyAYuLL9sAN+AIQ9UrW4MXDWxUtdkwPaSyFIvuKoxOKUD5IXEY9NtBpz1zsABMKNHneOO8pAix
qg8S/uQ/XJ8Qggr+vE7HDUUMCsijNXvqbkLM3xf6dXFpOqanKxd6/GfTcob4sezm/hMOZ2xiXcfS
hsYUMRdO9H6fmhECfszoK2XMsMt6xM+vlLywWJ0I6u468qVFxROkf9vL+ZDq/tMiJOm7E1p+HDif
98f5v1OybtzlZJP9bDMwWYcsCqcDejCMQyYOgPCgg+2jTR1JezxuK7PpjyliT0rnu7FfI/0tRzbL
d5YqO79RN0byWVTTdIlTWzL/qBD8BLVqXzWs3M+up46dGPxbkzv44od4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A79lFm/8JnoMxv1MOWkY+AtU24uc6/CeGf6bjoYWLJXkzzHQooKleg9l+jH7oajoC3oVQh/sMXdi
3QmwZ5SKMt6sb03SC5BW7xPky8zyP6w8FRMCI2Tz1/GhozqjIbgSstUfCaemxIgj3rG7GkRYZ/2k
ualG2mpYDNyaxz1lMYaHfm7stH/IQlkCh6HHMbi7ImYJ6pILa828Ls3VREjo7dtXPS2ZDFxreSIH
2SZ3NpLJO0/umchZaUkt1xN0bsxgtGdOzSqGDpTJrU/ltmclBX199pmrXQa5p/q0FSLj2WkB043l
l3x1Rdipn49DvChkvbVzJP9aej4kwSPhvxHnHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFpXmWYmUY46GvuVucUW1VOu3+gGtLxYW4Ho/p4wggZ+jWrpUVhz2RSAxu+ufiLHtM9oYgKPaSYT
DOeuIJGTnxGr20Vh6Nn3cc41TyKAf0vxN2fGISEQQWrjh9OOgNcBmJfaHsSq7+5dhCaIWlGrInVr
GD5TqclLzw6cHAuPGxMi2wD4rq16RkDJnQbPf8ptaskWz81NxZfyWAL4T2E24soybpln8+vuF+72
IQYfLQh/dDDsNHKNKwTKAtGjpFS8eVSbYnS+k3Am4loN8JRflh0+c4yGUo4EkuRzUFiIBrJOKylp
qicgwQw7vdbe+yPl6moUlvA1U2CjJ87bsXk5CA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzklq501x4qEym07A6+Vh+O6T5Q1srpTjckVi/KQ8/P6I6xpFqHBBikoKASz9mkWuvFaf6aly934
etGfnzZuPuKCoMPixevIcq9cgFblu43p0H0FR4BSbqN+A/K2utwAblPur01qwtH9nc1azxOtPedI
3KLsEBUN2ObidzkZIUbiQlQ72wru0lGZ5uN6iiNcLRnEhqjdjWiOHf5qGo+df2QyP6S5zRR7hGOd
N5h9/9towH2UQ++6hnOd4pjtl7PKHWlU92421M+LhruDkz4Bw6c7d7EVdbIcZ3ub+l/OnCyNwQsr
WUo2E+j4vd3zIVA0gzTA1oLX73BJ1oxwQdO3JA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71792)
`pragma protect data_block
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
cGlErpDONBhBfMruzcOs9xdG0boAJTwO4vf6Pj0=
`pragma protect end_protected
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
