// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 18 15:56:50 2026
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN crypto_soc_artyz7_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 64, PHASE 0.0, CLK_DOMAIN crypto_soc_artyz7_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN crypto_soc_artyz7_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

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
xN1ggnzVCg3ulnq0kLqGCUlhrWnJrEYiP8AqgJU=
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
