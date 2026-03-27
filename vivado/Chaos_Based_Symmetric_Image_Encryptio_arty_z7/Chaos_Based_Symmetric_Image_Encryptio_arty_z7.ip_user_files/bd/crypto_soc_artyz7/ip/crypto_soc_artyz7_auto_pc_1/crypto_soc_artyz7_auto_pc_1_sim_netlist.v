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
