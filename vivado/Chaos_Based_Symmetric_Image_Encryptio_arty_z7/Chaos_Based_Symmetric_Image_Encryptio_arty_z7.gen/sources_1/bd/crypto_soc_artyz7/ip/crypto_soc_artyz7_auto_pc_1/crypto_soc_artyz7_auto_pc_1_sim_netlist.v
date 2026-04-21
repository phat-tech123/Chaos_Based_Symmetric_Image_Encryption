// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 25 10:00:20 2026
// Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top crypto_soc_artyz7_auto_pc_1 -prefix
//               crypto_soc_artyz7_auto_pc_1_ crypto_soc_artyz7_auto_pc_1_sim_netlist.v
// Design      : crypto_soc_artyz7_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module crypto_soc_artyz7_auto_pc_1_axi_data_fifo_v2_1_28_axic_fifo
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
  crypto_soc_artyz7_auto_pc_1_axi_data_fifo_v2_1_28_fifo_gen inst
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

module crypto_soc_artyz7_auto_pc_1_axi_data_fifo_v2_1_28_fifo_gen
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
  crypto_soc_artyz7_auto_pc_1_fifo_generator_v13_2_9 fifo_gen_inst
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

module crypto_soc_artyz7_auto_pc_1_axi_protocol_converter_v2_1_29_a_axi3_conv
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
  crypto_soc_artyz7_auto_pc_1_axi_data_fifo_v2_1_28_axic_fifo \USE_BURSTS.cmd_queue 
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

module crypto_soc_artyz7_auto_pc_1_axi_protocol_converter_v2_1_29_axi3_conv
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

  crypto_soc_artyz7_auto_pc_1_axi_protocol_converter_v2_1_29_a_axi3_conv \USE_WRITE.write_addr_inst 
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
  crypto_soc_artyz7_auto_pc_1_axi_protocol_converter_v2_1_29_w_axi3_conv \USE_WRITE.write_data_inst 
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
module crypto_soc_artyz7_auto_pc_1_axi_protocol_converter_v2_1_29_axi_protocol_converter
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
  crypto_soc_artyz7_auto_pc_1_axi_protocol_converter_v2_1_29_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
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

module crypto_soc_artyz7_auto_pc_1_axi_protocol_converter_v2_1_29_w_axi3_conv
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
module crypto_soc_artyz7_auto_pc_1
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
  crypto_soc_artyz7_auto_pc_1_axi_protocol_converter_v2_1_29_axi_protocol_converter inst
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
module crypto_soc_artyz7_auto_pc_1_xpm_cdc_async_rst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71408)
`pragma protect data_block
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
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
