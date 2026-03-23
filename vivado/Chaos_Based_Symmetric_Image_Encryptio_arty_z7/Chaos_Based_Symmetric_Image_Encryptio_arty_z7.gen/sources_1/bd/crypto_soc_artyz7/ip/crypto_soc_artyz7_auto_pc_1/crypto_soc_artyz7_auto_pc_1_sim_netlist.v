// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 18 15:56:50 2026
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
