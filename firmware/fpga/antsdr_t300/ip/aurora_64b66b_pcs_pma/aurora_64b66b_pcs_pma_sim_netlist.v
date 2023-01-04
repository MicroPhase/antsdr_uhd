// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Sep  8 15:36:26 2022
// Host        : mp-dev running 64-bit Kylin V10 SP1
// Command     : write_verilog -force -mode funcsim
//               /home/mp/wcc_demo/network/n3xx_ethernet/top/n3xx/build-ip/xc7z100ffg900-2/aurora_64b66b_pcs_pma/aurora_64b66b_pcs_pma_sim_netlist.v
// Design      : aurora_64b66b_pcs_pma
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z100ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "aurora_64b66b_v12_0_0, Coregen v14.3_ip3, Number of lanes = 1, Line rate is double10.3125Gbps, Reference Clock is double156.25MHz, Interface is Streaming, Flow Control is None and is operating in DUPLEX configuration" *) 
(* NotValidForBitStream *)
module aurora_64b66b_pcs_pma
   (s_axi_tx_tdata,
    s_axi_tx_tvalid,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tvalid,
    rxp,
    rxn,
    txp,
    txn,
    refclk1_in,
    hard_err,
    soft_err,
    channel_up,
    lane_up,
    mmcm_not_locked,
    user_clk,
    sync_clk,
    reset_pb,
    gt_rxcdrovrden_in,
    power_down,
    loopback,
    pma_init,
    gt_pll_lock,
    drp_clk_in,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    gt_to_common_qpllreset_out,
    gt_qpllrefclklost_in,
    gt_qplllock_in,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_rresp,
    s_axi_rready,
    qpll_drpaddr_in,
    qpll_drpdi_in,
    qpll_drpdo_out,
    qpll_drprdy_out,
    qpll_drpen_in,
    qpll_drpwe_in,
    init_clk,
    link_reset_out,
    sys_reset_out,
    tx_out_clk);
  input [63:0]s_axi_tx_tdata;
  input s_axi_tx_tvalid;
  output s_axi_tx_tready;
  output [63:0]m_axi_rx_tdata;
  output m_axi_rx_tvalid;
  input [0:0]rxp;
  input [0:0]rxn;
  output [0:0]txp;
  output [0:0]txn;
  input refclk1_in;
  output hard_err;
  output soft_err;
  output channel_up;
  output [0:0]lane_up;
  input mmcm_not_locked;
  input user_clk;
  input sync_clk;
  input reset_pb;
  input gt_rxcdrovrden_in;
  input power_down;
  input [2:0]loopback;
  input pma_init;
  output gt_pll_lock;
  input drp_clk_in;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  output gt_to_common_qpllreset_out;
  input gt_qpllrefclklost_in;
  input gt_qplllock_in;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output [1:0]s_axi_rresp;
  input s_axi_rready;
  input [7:0]qpll_drpaddr_in;
  input [15:0]qpll_drpdi_in;
  output [15:0]qpll_drpdo_out;
  output qpll_drprdy_out;
  input qpll_drpen_in;
  input qpll_drpwe_in;
  input init_clk;
  output link_reset_out;
  output sys_reset_out;
  output tx_out_clk;

  wire channel_up;
  wire drp_clk_in;
  wire gt_pll_lock;
  wire gt_qpllclk_quad1_in;
  wire gt_qplllock_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_qpllrefclklost_in;
  wire gt_rxcdrovrden_in;
  wire gt_to_common_qpllreset_out;
  wire hard_err;
  wire init_clk;
  wire [0:0]lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [63:0]m_axi_rx_tdata;
  wire m_axi_rx_tvalid;
  wire mmcm_not_locked;
  wire pma_init;
  wire power_down;
  wire refclk1_in;
  wire reset_pb;
  wire [0:0]rxn;
  wire [0:0]rxp;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_tx_tdata;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire soft_err;
  wire sync_clk;
  wire sys_reset_out;
  wire tx_out_clk;
  wire [0:0]txn;
  wire [0:0]txp;
  wire user_clk;

  (* BACKWARD_COMP_MODE1 = "1'b0" *) 
  (* BACKWARD_COMP_MODE2 = "1'b0" *) 
  (* BACKWARD_COMP_MODE3 = "1'b0" *) 
  (* CC_FREQ_FACTOR = "5'b11000" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* EXAMPLE_SIMULATION = "0" *) 
  (* INTER_CB_GAP = "5'b01001" *) 
  (* SIM_GTXRESET_SPEEDUP = "TRUE" *) 
  (* STABLE_CLOCK_PERIOD = "12" *) 
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_core inst
       (.channel_up(channel_up),
        .drp_clk_in(drp_clk_in),
        .gt_pll_lock(gt_pll_lock),
        .gt_qpllclk_quad1_in(gt_qpllclk_quad1_in),
        .gt_qplllock_in(gt_qplllock_in),
        .gt_qpllrefclk_quad1_in(gt_qpllrefclk_quad1_in),
        .gt_qpllrefclklost_in(gt_qpllrefclklost_in),
        .gt_refclk1(refclk1_in),
        .gt_rxcdrovrden_in(gt_rxcdrovrden_in),
        .gt_to_common_qpllreset_out(gt_to_common_qpllreset_out),
        .hard_err(hard_err),
        .init_clk(init_clk),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .mmcm_not_locked(mmcm_not_locked),
        .pma_init(pma_init),
        .power_down(power_down),
        .rxn(rxn),
        .rxp(rxp),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .soft_err(soft_err),
        .sync_clk(sync_clk),
        .sys_reset_out(sys_reset_out),
        .sysreset_to_core(reset_pb),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_AURORA_LANE" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_AURORA_LANE
   (lane_up_flop_i,
    tx_reset_i,
    enable_err_detect_i,
    rst_pma_init_usrclk,
    \TX_DATA_reg[63] ,
    rx_pe_data_v_i,
    illegal_btf_i,
    got_idles_i,
    rx_polarity_r_reg,
    check_polarity_r_reg,
    D,
    hard_err_i,
    \TX_DATA_reg[44] ,
    remote_ready_i,
    SOFT_ERR_reg,
    reset_lanes_c,
    \RX_PE_DATA_reg[0] ,
    s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg,
    user_clk,
    RX_IDLE_reg,
    RESET,
    reset_count_r0,
    ready_r_reg0,
    \TX_DATA_reg[59] ,
    p_1_in,
    \TX_DATA_reg[63]_0 ,
    Q,
    \TX_DATA_reg[59]_0 ,
    rxdatavalid_i,
    SOFT_ERR_reg_0,
    \RX_DATA_REG_reg[0] ,
    RX_HEADER_1_REG_reg,
    HARD_ERR_reg,
    \SCRAMBLED_DATA_OUT_reg[5] ,
    txdatavalid_symgen_i,
    gen_na_idles_i,
    tx_pe_data_v_i,
    TX_HEADER_1_reg,
    rx_lossofsync_i,
    reset_lanes_i,
    channel_up_tx_if);
  output lane_up_flop_i;
  output tx_reset_i;
  output enable_err_detect_i;
  output rst_pma_init_usrclk;
  output [57:0]\TX_DATA_reg[63] ;
  output rx_pe_data_v_i;
  output illegal_btf_i;
  output got_idles_i;
  output rx_polarity_r_reg;
  output check_polarity_r_reg;
  output [1:0]D;
  output hard_err_i;
  output [5:0]\TX_DATA_reg[44] ;
  output remote_ready_i;
  output SOFT_ERR_reg;
  output reset_lanes_c;
  output [63:0]\RX_PE_DATA_reg[0] ;
  input s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg;
  input user_clk;
  input RX_IDLE_reg;
  input RESET;
  input reset_count_r0;
  input ready_r_reg0;
  input \TX_DATA_reg[59] ;
  input [3:0]p_1_in;
  input \TX_DATA_reg[63]_0 ;
  input [59:0]Q;
  input \TX_DATA_reg[59]_0 ;
  input rxdatavalid_i;
  input SOFT_ERR_reg_0;
  input \RX_DATA_REG_reg[0] ;
  input [65:0]RX_HEADER_1_REG_reg;
  input HARD_ERR_reg;
  input [11:0]\SCRAMBLED_DATA_OUT_reg[5] ;
  input txdatavalid_symgen_i;
  input gen_na_idles_i;
  input tx_pe_data_v_i;
  input TX_HEADER_1_reg;
  input rx_lossofsync_i;
  input reset_lanes_i;
  input channel_up_tx_if;

  wire [1:0]D;
  wire HARD_ERR_reg;
  wire [59:0]Q;
  wire RESET;
  wire \RX_DATA_REG_reg[0] ;
  wire [65:0]RX_HEADER_1_REG_reg;
  wire RX_IDLE_reg;
  wire [63:0]\RX_PE_DATA_reg[0] ;
  wire [11:0]\SCRAMBLED_DATA_OUT_reg[5] ;
  wire SOFT_ERR_reg;
  wire SOFT_ERR_reg_0;
  wire [5:0]\TX_DATA_reg[44] ;
  wire \TX_DATA_reg[59] ;
  wire \TX_DATA_reg[59]_0 ;
  wire [57:0]\TX_DATA_reg[63] ;
  wire \TX_DATA_reg[63]_0 ;
  wire TX_HEADER_1_reg;
  wire channel_up_tx_if;
  wire check_polarity_r_reg;
  wire enable_err_detect_i;
  wire gen_na_idles_i;
  wire got_idles_i;
  wire hard_err_i;
  wire illegal_btf_i;
  wire lane_up_flop_i;
  wire [3:0]p_1_in;
  wire ready_r_reg0;
  wire remote_ready_i;
  wire reset_count_r0;
  wire reset_lanes_c;
  wire reset_lanes_i;
  wire rst_pma_init_usrclk;
  wire rx_lossofsync_i;
  wire rx_pe_data_v_i;
  wire rx_polarity_r_reg;
  wire rxdatavalid_i;
  wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg;
  wire tx_pe_data_v_i;
  wire tx_reset_i;
  wire txdatavalid_symgen_i;
  wire user_clk;

  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_ERR_DETECT err_detect_i
       (.HARD_ERR_reg_0(HARD_ERR_reg),
        .SOFT_ERR_reg_0(SOFT_ERR_reg),
        .SOFT_ERR_reg_1(SOFT_ERR_reg_0),
        .channel_up_tx_if(channel_up_tx_if),
        .hard_err_i(hard_err_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_LANE_INIT_SM lane_init_sm_i
       (.check_polarity_r_reg_0(check_polarity_r_reg),
        .check_polarity_r_reg_1(RX_IDLE_reg),
        .enable_err_detect_i(enable_err_detect_i),
        .gen_na_idles_i(gen_na_idles_i),
        .lane_up_flop_i_0(lane_up_flop_i),
        .ready_r_reg0(ready_r_reg0),
        .reset_count_r0(reset_count_r0),
        .reset_lanes_c(reset_lanes_c),
        .reset_lanes_i(reset_lanes_i),
        .rst_r_reg_0(tx_reset_i),
        .rx_lossofsync_i(rx_lossofsync_i),
        .rx_polarity_r_reg_0(rx_polarity_r_reg),
        .s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_SYM_DEC sym_dec_i
       (.\RX_DATA_REG_reg[0]_0 (\RX_DATA_REG_reg[0] ),
        .RX_HEADER_1_REG_reg_0(RX_HEADER_1_REG_reg),
        .RX_IDLE_reg_0(RX_IDLE_reg),
        .\RX_PE_DATA_reg[0]_0 (\RX_PE_DATA_reg[0] ),
        .got_idles_i(got_idles_i),
        .illegal_btf_i(illegal_btf_i),
        .remote_ready_i(remote_ready_i),
        .\rx_na_idles_cntr_reg[0]_0 (lane_up_flop_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rxdatavalid_i(rxdatavalid_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_SYM_GEN sym_gen_i
       (.D(D),
        .Q(Q),
        .RESET(RESET),
        .\SCRAMBLED_DATA_OUT_reg[5] (\SCRAMBLED_DATA_OUT_reg[5] ),
        .\TX_DATA_reg[44]_0 (\TX_DATA_reg[44] ),
        .\TX_DATA_reg[59]_0 (\TX_DATA_reg[59] ),
        .\TX_DATA_reg[59]_1 (\TX_DATA_reg[59]_0 ),
        .\TX_DATA_reg[63]_0 (\TX_DATA_reg[63] ),
        .\TX_DATA_reg[63]_1 (\TX_DATA_reg[63]_0 ),
        .TX_HEADER_1_reg_0(TX_HEADER_1_reg),
        .channel_up_tx_if(channel_up_tx_if),
        .gen_na_idles_i(gen_na_idles_i),
        .p_1_in(p_1_in),
        .stg5_reg(rst_pma_init_usrclk),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .txdatavalid_symgen_i(txdatavalid_symgen_i),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_AXI_TO_DRP" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_AXI_TO_DRP
   (s_axi_bvalid,
    s_axi_rvalid,
    s_axi_rdata,
    Q,
    \drpdi_in_reg[15]_0 ,
    s_axi_awready,
    s_axi_arready,
    drpen_in_i,
    drpwe_in_i,
    s_axi_wready,
    RESET,
    drp_clk_in,
    s_axi_arvalid,
    DRPRDY_OUT,
    D,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wvalid,
    s_axi_wdata,
    s_axi_rready,
    s_axi_bready);
  output s_axi_bvalid;
  output s_axi_rvalid;
  output [15:0]s_axi_rdata;
  output [8:0]Q;
  output [15:0]\drpdi_in_reg[15]_0 ;
  output s_axi_awready;
  output s_axi_arready;
  output drpen_in_i;
  output drpwe_in_i;
  output s_axi_wready;
  input RESET;
  input drp_clk_in;
  input s_axi_arvalid;
  input DRPRDY_OUT;
  input [15:0]D;
  input s_axi_awvalid;
  input [8:0]s_axi_awaddr;
  input [8:0]s_axi_araddr;
  input s_axi_wvalid;
  input [15:0]s_axi_wdata;
  input s_axi_rready;
  input s_axi_bready;

  wire [15:0]D;
  wire DRPRDY_OUT;
  wire \FSM_onehot_AXI_STATE[0]_i_1_n_0 ;
  wire \FSM_onehot_AXI_STATE[1]_i_1_n_0 ;
  wire \FSM_onehot_AXI_STATE[2]_i_1_n_0 ;
  wire \FSM_onehot_AXI_STATE[3]_i_1_n_0 ;
  wire \FSM_onehot_AXI_STATE[4]_i_1_n_0 ;
  wire \FSM_onehot_AXI_STATE_reg_n_0_[2] ;
  wire \FSM_onehot_AXI_STATE_reg_n_0_[3] ;
  wire [8:0]Q;
  wire RESET;
  wire drp_clk_in;
  wire [8:0]drpaddr_in;
  wire \drpaddr_in[8]_i_2_n_0 ;
  wire drpdi_in;
  wire [15:0]\drpdi_in_reg[15]_0 ;
  wire [15:0]drpdo_out;
  wire drpen_in_i;
  wire drpen_in_i_1_n_0;
  wire drprdy_out;
  wire drpwe_in_i;
  wire drpwe_in_i_1_n_0;
  wire [8:0]in10;
  wire [8:0]in9;
  wire [15:15]p_0_in;
  wire p_0_in4_in;
  wire rd_req;
  wire rd_req0;
  wire rd_req_i_1_n_0;
  wire ready_det__1;
  wire ready_det_r_reg_n_0;
  wire reset;
  wire [8:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_arvalid_1;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready_i_1_n_0;
  wire s_axi_awready_reg_n_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_bvalid_2;
  wire s_axi_bvalid_i_1_n_0;
  wire [15:0]s_axi_rdata;
  wire s_axi_rdata0;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_rvalid_3;
  wire s_axi_rvalid_i_1_n_0;
  wire [15:0]s_axi_wdata;
  wire \s_axi_wdata_reg_n_0_[0] ;
  wire \s_axi_wdata_reg_n_0_[10] ;
  wire \s_axi_wdata_reg_n_0_[11] ;
  wire \s_axi_wdata_reg_n_0_[12] ;
  wire \s_axi_wdata_reg_n_0_[13] ;
  wire \s_axi_wdata_reg_n_0_[14] ;
  wire \s_axi_wdata_reg_n_0_[15] ;
  wire \s_axi_wdata_reg_n_0_[1] ;
  wire \s_axi_wdata_reg_n_0_[2] ;
  wire \s_axi_wdata_reg_n_0_[3] ;
  wire \s_axi_wdata_reg_n_0_[4] ;
  wire \s_axi_wdata_reg_n_0_[5] ;
  wire \s_axi_wdata_reg_n_0_[6] ;
  wire \s_axi_wdata_reg_n_0_[7] ;
  wire \s_axi_wdata_reg_n_0_[8] ;
  wire \s_axi_wdata_reg_n_0_[9] ;
  wire s_axi_wready;
  wire s_axi_wready_0;
  wire s_axi_wvalid;
  wire tx_done;
  wire tx_done_i_1_n_0;
  wire tx_done_r;
  wire u_rst_sync_RESET_n_1;
  wire u_rst_sync_RESET_n_3;
  wire wr_req;
  wire wr_req0;
  wire wr_req_i_1_n_0;
  wire wr_req_reg_n_0;

  LUT6 #(
    .INIT(64'h1010FF1010101010)) 
    \FSM_onehot_AXI_STATE[0]_i_1 
       (.I0(s_axi_arvalid),
        .I1(s_axi_awvalid),
        .I2(wr_req),
        .I3(tx_done_r),
        .I4(tx_done),
        .I5(p_0_in4_in),
        .O(\FSM_onehot_AXI_STATE[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEAEE)) 
    \FSM_onehot_AXI_STATE[1]_i_1 
       (.I0(\FSM_onehot_AXI_STATE_reg_n_0_[3] ),
        .I1(p_0_in4_in),
        .I2(tx_done),
        .I3(tx_done_r),
        .I4(\FSM_onehot_AXI_STATE_reg_n_0_[2] ),
        .O(\FSM_onehot_AXI_STATE[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_AXI_STATE[2]_i_1 
       (.I0(wr_req),
        .I1(s_axi_arvalid),
        .O(\FSM_onehot_AXI_STATE[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_AXI_STATE[3]_i_1 
       (.I0(s_axi_wready_0),
        .I1(s_axi_wvalid),
        .O(\FSM_onehot_AXI_STATE[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h20FF2020)) 
    \FSM_onehot_AXI_STATE[4]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_arvalid),
        .I2(wr_req),
        .I3(s_axi_wvalid),
        .I4(s_axi_wready_0),
        .O(\FSM_onehot_AXI_STATE[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "REDE:00100,WRT1:10000,WRT2:01000,WAIT:00010,INIT:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_AXI_STATE_reg[0] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(\FSM_onehot_AXI_STATE[0]_i_1_n_0 ),
        .Q(wr_req),
        .S(reset));
  (* FSM_ENCODED_STATES = "REDE:00100,WRT1:10000,WRT2:01000,WAIT:00010,INIT:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_AXI_STATE_reg[1] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(\FSM_onehot_AXI_STATE[1]_i_1_n_0 ),
        .Q(p_0_in4_in),
        .R(reset));
  (* FSM_ENCODED_STATES = "REDE:00100,WRT1:10000,WRT2:01000,WAIT:00010,INIT:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_AXI_STATE_reg[2] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(\FSM_onehot_AXI_STATE[2]_i_1_n_0 ),
        .Q(\FSM_onehot_AXI_STATE_reg_n_0_[2] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "REDE:00100,WRT1:10000,WRT2:01000,WAIT:00010,INIT:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_AXI_STATE_reg[3] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(\FSM_onehot_AXI_STATE[3]_i_1_n_0 ),
        .Q(\FSM_onehot_AXI_STATE_reg_n_0_[3] ),
        .R(reset));
  (* FSM_ENCODED_STATES = "REDE:00100,WRT1:10000,WRT2:01000,WAIT:00010,INIT:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_AXI_STATE_reg[4] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(\FSM_onehot_AXI_STATE[4]_i_1_n_0 ),
        .Q(s_axi_wready_0),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \drpaddr_in[0]_i_1 
       (.I0(in9[0]),
        .I1(s_axi_wready_0),
        .I2(in10[0]),
        .O(drpaddr_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \drpaddr_in[1]_i_1 
       (.I0(in9[1]),
        .I1(s_axi_wready_0),
        .I2(in10[1]),
        .O(drpaddr_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \drpaddr_in[2]_i_1 
       (.I0(in9[2]),
        .I1(s_axi_wready_0),
        .I2(in10[2]),
        .O(drpaddr_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \drpaddr_in[3]_i_1 
       (.I0(in9[3]),
        .I1(s_axi_wready_0),
        .I2(in10[3]),
        .O(drpaddr_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \drpaddr_in[4]_i_1 
       (.I0(in9[4]),
        .I1(s_axi_wready_0),
        .I2(in10[4]),
        .O(drpaddr_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \drpaddr_in[5]_i_1 
       (.I0(in9[5]),
        .I1(s_axi_wready_0),
        .I2(in10[5]),
        .O(drpaddr_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \drpaddr_in[6]_i_1 
       (.I0(in9[6]),
        .I1(s_axi_wready_0),
        .I2(in10[6]),
        .O(drpaddr_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \drpaddr_in[7]_i_1 
       (.I0(in9[7]),
        .I1(s_axi_wready_0),
        .I2(in10[7]),
        .O(drpaddr_in[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \drpaddr_in[8]_i_2 
       (.I0(\FSM_onehot_AXI_STATE_reg_n_0_[2] ),
        .I1(s_axi_wready_0),
        .O(\drpaddr_in[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \drpaddr_in[8]_i_3 
       (.I0(in9[8]),
        .I1(s_axi_wready_0),
        .I2(in10[8]),
        .O(drpaddr_in[8]));
  FDRE \drpaddr_in_reg[0] 
       (.C(drp_clk_in),
        .CE(\drpaddr_in[8]_i_2_n_0 ),
        .D(drpaddr_in[0]),
        .Q(Q[0]),
        .R(u_rst_sync_RESET_n_1));
  FDRE \drpaddr_in_reg[1] 
       (.C(drp_clk_in),
        .CE(\drpaddr_in[8]_i_2_n_0 ),
        .D(drpaddr_in[1]),
        .Q(Q[1]),
        .R(u_rst_sync_RESET_n_1));
  FDRE \drpaddr_in_reg[2] 
       (.C(drp_clk_in),
        .CE(\drpaddr_in[8]_i_2_n_0 ),
        .D(drpaddr_in[2]),
        .Q(Q[2]),
        .R(u_rst_sync_RESET_n_1));
  FDRE \drpaddr_in_reg[3] 
       (.C(drp_clk_in),
        .CE(\drpaddr_in[8]_i_2_n_0 ),
        .D(drpaddr_in[3]),
        .Q(Q[3]),
        .R(u_rst_sync_RESET_n_1));
  FDRE \drpaddr_in_reg[4] 
       (.C(drp_clk_in),
        .CE(\drpaddr_in[8]_i_2_n_0 ),
        .D(drpaddr_in[4]),
        .Q(Q[4]),
        .R(u_rst_sync_RESET_n_1));
  FDRE \drpaddr_in_reg[5] 
       (.C(drp_clk_in),
        .CE(\drpaddr_in[8]_i_2_n_0 ),
        .D(drpaddr_in[5]),
        .Q(Q[5]),
        .R(u_rst_sync_RESET_n_1));
  FDRE \drpaddr_in_reg[6] 
       (.C(drp_clk_in),
        .CE(\drpaddr_in[8]_i_2_n_0 ),
        .D(drpaddr_in[6]),
        .Q(Q[6]),
        .R(u_rst_sync_RESET_n_1));
  FDRE \drpaddr_in_reg[7] 
       (.C(drp_clk_in),
        .CE(\drpaddr_in[8]_i_2_n_0 ),
        .D(drpaddr_in[7]),
        .Q(Q[7]),
        .R(u_rst_sync_RESET_n_1));
  FDRE \drpaddr_in_reg[8] 
       (.C(drp_clk_in),
        .CE(\drpaddr_in[8]_i_2_n_0 ),
        .D(drpaddr_in[8]),
        .Q(Q[8]),
        .R(u_rst_sync_RESET_n_1));
  LUT2 #(
    .INIT(4'h2)) 
    \drpdi_in[15]_i_1 
       (.I0(\FSM_onehot_AXI_STATE_reg_n_0_[3] ),
        .I1(s_axi_wready_0),
        .O(drpdi_in));
  FDRE \drpdi_in_reg[0] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[0] ),
        .Q(\drpdi_in_reg[15]_0 [0]),
        .R(reset));
  FDRE \drpdi_in_reg[10] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[10] ),
        .Q(\drpdi_in_reg[15]_0 [10]),
        .R(reset));
  FDRE \drpdi_in_reg[11] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[11] ),
        .Q(\drpdi_in_reg[15]_0 [11]),
        .R(reset));
  FDRE \drpdi_in_reg[12] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[12] ),
        .Q(\drpdi_in_reg[15]_0 [12]),
        .R(reset));
  FDRE \drpdi_in_reg[13] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[13] ),
        .Q(\drpdi_in_reg[15]_0 [13]),
        .R(reset));
  FDRE \drpdi_in_reg[14] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[14] ),
        .Q(\drpdi_in_reg[15]_0 [14]),
        .R(reset));
  FDRE \drpdi_in_reg[15] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[15] ),
        .Q(\drpdi_in_reg[15]_0 [15]),
        .R(reset));
  FDRE \drpdi_in_reg[1] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[1] ),
        .Q(\drpdi_in_reg[15]_0 [1]),
        .R(reset));
  FDRE \drpdi_in_reg[2] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[2] ),
        .Q(\drpdi_in_reg[15]_0 [2]),
        .R(reset));
  FDRE \drpdi_in_reg[3] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[3] ),
        .Q(\drpdi_in_reg[15]_0 [3]),
        .R(reset));
  FDRE \drpdi_in_reg[4] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[4] ),
        .Q(\drpdi_in_reg[15]_0 [4]),
        .R(reset));
  FDRE \drpdi_in_reg[5] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[5] ),
        .Q(\drpdi_in_reg[15]_0 [5]),
        .R(reset));
  FDRE \drpdi_in_reg[6] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[6] ),
        .Q(\drpdi_in_reg[15]_0 [6]),
        .R(reset));
  FDRE \drpdi_in_reg[7] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[7] ),
        .Q(\drpdi_in_reg[15]_0 [7]),
        .R(reset));
  FDRE \drpdi_in_reg[8] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[8] ),
        .Q(\drpdi_in_reg[15]_0 [8]),
        .R(reset));
  FDRE \drpdi_in_reg[9] 
       (.C(drp_clk_in),
        .CE(drpdi_in),
        .D(\s_axi_wdata_reg_n_0_[9] ),
        .Q(\drpdi_in_reg[15]_0 [9]),
        .R(reset));
  FDRE \drpdo_out_reg[0] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[0]),
        .Q(drpdo_out[0]),
        .R(reset));
  FDRE \drpdo_out_reg[10] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[10]),
        .Q(drpdo_out[10]),
        .R(reset));
  FDRE \drpdo_out_reg[11] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[11]),
        .Q(drpdo_out[11]),
        .R(reset));
  FDRE \drpdo_out_reg[12] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[12]),
        .Q(drpdo_out[12]),
        .R(reset));
  FDRE \drpdo_out_reg[13] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[13]),
        .Q(drpdo_out[13]),
        .R(reset));
  FDRE \drpdo_out_reg[14] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[14]),
        .Q(drpdo_out[14]),
        .R(reset));
  FDRE \drpdo_out_reg[15] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[15]),
        .Q(drpdo_out[15]),
        .R(reset));
  FDRE \drpdo_out_reg[1] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[1]),
        .Q(drpdo_out[1]),
        .R(reset));
  FDRE \drpdo_out_reg[2] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[2]),
        .Q(drpdo_out[2]),
        .R(reset));
  FDRE \drpdo_out_reg[3] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[3]),
        .Q(drpdo_out[3]),
        .R(reset));
  FDRE \drpdo_out_reg[4] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[4]),
        .Q(drpdo_out[4]),
        .R(reset));
  FDRE \drpdo_out_reg[5] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[5]),
        .Q(drpdo_out[5]),
        .R(reset));
  FDRE \drpdo_out_reg[6] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[6]),
        .Q(drpdo_out[6]),
        .R(reset));
  FDRE \drpdo_out_reg[7] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[7]),
        .Q(drpdo_out[7]),
        .R(reset));
  FDRE \drpdo_out_reg[8] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[8]),
        .Q(drpdo_out[8]),
        .R(reset));
  FDRE \drpdo_out_reg[9] 
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(D[9]),
        .Q(drpdo_out[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFEEEFFFFAAAA)) 
    drpen_in_i_1
       (.I0(\FSM_onehot_AXI_STATE_reg_n_0_[2] ),
        .I1(s_axi_wready_0),
        .I2(tx_done),
        .I3(p_0_in4_in),
        .I4(\FSM_onehot_AXI_STATE_reg_n_0_[3] ),
        .I5(drpen_in_i),
        .O(drpen_in_i_1_n_0));
  FDRE drpen_in_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(drpen_in_i_1_n_0),
        .Q(drpen_in_i),
        .R(reset));
  FDRE drprdy_out_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(DRPRDY_OUT),
        .Q(drprdy_out),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    drpwe_in_i_1
       (.I0(\FSM_onehot_AXI_STATE_reg_n_0_[3] ),
        .I1(\FSM_onehot_AXI_STATE_reg_n_0_[2] ),
        .I2(s_axi_wready_0),
        .I3(p_0_in4_in),
        .I4(tx_done),
        .I5(drpwe_in_i),
        .O(drpwe_in_i_1_n_0));
  FDRE drpwe_in_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(drpwe_in_i_1_n_0),
        .Q(drpwe_in_i),
        .R(reset));
  LUT3 #(
    .INIT(8'hBA)) 
    rd_req_i_1
       (.I0(rd_req0),
        .I1(wr_req),
        .I2(rd_req),
        .O(rd_req_i_1_n_0));
  LUT6 #(
    .INIT(64'h1101000000000000)) 
    rd_req_i_2
       (.I0(s_axi_wready_0),
        .I1(\FSM_onehot_AXI_STATE_reg_n_0_[2] ),
        .I2(s_axi_awvalid),
        .I3(s_axi_arvalid_1),
        .I4(s_axi_awready_reg_n_0),
        .I5(s_axi_arvalid),
        .O(rd_req0));
  FDRE rd_req_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(rd_req_i_1_n_0),
        .Q(rd_req),
        .R(reset));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    ready_det_r_i_2
       (.I0(s_axi_rready),
        .I1(rd_req),
        .I2(s_axi_bready),
        .I3(wr_req_reg_n_0),
        .I4(ready_det_r_reg_n_0),
        .O(ready_det__1));
  FDRE ready_det_r_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(u_rst_sync_RESET_n_3),
        .Q(ready_det_r_reg_n_0),
        .R(1'b0));
  FDRE \s_axi_araddr_reg[10] 
       (.C(drp_clk_in),
        .CE(s_axi_arvalid),
        .D(s_axi_araddr[8]),
        .Q(in10[8]),
        .R(reset));
  FDRE \s_axi_araddr_reg[2] 
       (.C(drp_clk_in),
        .CE(s_axi_arvalid),
        .D(s_axi_araddr[0]),
        .Q(in10[0]),
        .R(reset));
  FDRE \s_axi_araddr_reg[3] 
       (.C(drp_clk_in),
        .CE(s_axi_arvalid),
        .D(s_axi_araddr[1]),
        .Q(in10[1]),
        .R(reset));
  FDRE \s_axi_araddr_reg[4] 
       (.C(drp_clk_in),
        .CE(s_axi_arvalid),
        .D(s_axi_araddr[2]),
        .Q(in10[2]),
        .R(reset));
  FDRE \s_axi_araddr_reg[5] 
       (.C(drp_clk_in),
        .CE(s_axi_arvalid),
        .D(s_axi_araddr[3]),
        .Q(in10[3]),
        .R(reset));
  FDRE \s_axi_araddr_reg[6] 
       (.C(drp_clk_in),
        .CE(s_axi_arvalid),
        .D(s_axi_araddr[4]),
        .Q(in10[4]),
        .R(reset));
  FDRE \s_axi_araddr_reg[7] 
       (.C(drp_clk_in),
        .CE(s_axi_arvalid),
        .D(s_axi_araddr[5]),
        .Q(in10[5]),
        .R(reset));
  FDRE \s_axi_araddr_reg[8] 
       (.C(drp_clk_in),
        .CE(s_axi_arvalid),
        .D(s_axi_araddr[6]),
        .Q(in10[6]),
        .R(reset));
  FDRE \s_axi_araddr_reg[9] 
       (.C(drp_clk_in),
        .CE(s_axi_arvalid),
        .D(s_axi_araddr[7]),
        .Q(in10[7]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000000000080AA)) 
    s_axi_arready_INST_0
       (.I0(s_axi_awready_reg_n_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_arvalid_1),
        .I3(s_axi_awvalid),
        .I4(\FSM_onehot_AXI_STATE_reg_n_0_[2] ),
        .I5(s_axi_wready_0),
        .O(s_axi_arready));
  FDRE s_axi_arvalid_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(s_axi_arvalid),
        .Q(s_axi_arvalid_1),
        .R(reset));
  FDRE \s_axi_awaddr_reg[10] 
       (.C(drp_clk_in),
        .CE(s_axi_awvalid),
        .D(s_axi_awaddr[8]),
        .Q(in9[8]),
        .R(reset));
  FDRE \s_axi_awaddr_reg[2] 
       (.C(drp_clk_in),
        .CE(s_axi_awvalid),
        .D(s_axi_awaddr[0]),
        .Q(in9[0]),
        .R(reset));
  FDRE \s_axi_awaddr_reg[3] 
       (.C(drp_clk_in),
        .CE(s_axi_awvalid),
        .D(s_axi_awaddr[1]),
        .Q(in9[1]),
        .R(reset));
  FDRE \s_axi_awaddr_reg[4] 
       (.C(drp_clk_in),
        .CE(s_axi_awvalid),
        .D(s_axi_awaddr[2]),
        .Q(in9[2]),
        .R(reset));
  FDRE \s_axi_awaddr_reg[5] 
       (.C(drp_clk_in),
        .CE(s_axi_awvalid),
        .D(s_axi_awaddr[3]),
        .Q(in9[3]),
        .R(reset));
  FDRE \s_axi_awaddr_reg[6] 
       (.C(drp_clk_in),
        .CE(s_axi_awvalid),
        .D(s_axi_awaddr[4]),
        .Q(in9[4]),
        .R(reset));
  FDRE \s_axi_awaddr_reg[7] 
       (.C(drp_clk_in),
        .CE(s_axi_awvalid),
        .D(s_axi_awaddr[5]),
        .Q(in9[5]),
        .R(reset));
  FDRE \s_axi_awaddr_reg[8] 
       (.C(drp_clk_in),
        .CE(s_axi_awvalid),
        .D(s_axi_awaddr[6]),
        .Q(in9[6]),
        .R(reset));
  FDRE \s_axi_awaddr_reg[9] 
       (.C(drp_clk_in),
        .CE(s_axi_awvalid),
        .D(s_axi_awaddr[7]),
        .Q(in9[7]),
        .R(reset));
  LUT5 #(
    .INIT(32'h00000002)) 
    s_axi_awready_INST_0
       (.I0(s_axi_awready_reg_n_0),
        .I1(s_axi_arvalid_1),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_AXI_STATE_reg_n_0_[2] ),
        .I4(s_axi_wready_0),
        .O(s_axi_awready));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hF111)) 
    s_axi_awready_i_1
       (.I0(wr_req_reg_n_0),
        .I1(rd_req),
        .I2(wr_req),
        .I3(s_axi_awready_reg_n_0),
        .O(s_axi_awready_i_1_n_0));
  FDRE s_axi_awready_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(s_axi_awready_i_1_n_0),
        .Q(s_axi_awready_reg_n_0),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    s_axi_bvalid_INST_0
       (.I0(s_axi_bvalid_2),
        .I1(tx_done),
        .I2(tx_done_r),
        .O(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    s_axi_bvalid_i_1
       (.I0(tx_done_r),
        .I1(tx_done),
        .I2(s_axi_bvalid_2),
        .I3(wr_req_reg_n_0),
        .I4(drprdy_out),
        .O(s_axi_bvalid_i_1_n_0));
  FDRE s_axi_bvalid_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid_2),
        .R(reset));
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[15]_i_2 
       (.I0(s_axi_rvalid_3),
        .I1(drprdy_out),
        .O(s_axi_rdata0));
  FDRE \s_axi_rdata_reg[0] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[0]),
        .Q(s_axi_rdata[0]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[10] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[10]),
        .Q(s_axi_rdata[10]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[11] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[11]),
        .Q(s_axi_rdata[11]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[12] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[12]),
        .Q(s_axi_rdata[12]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[13] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[13]),
        .Q(s_axi_rdata[13]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[14] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[14]),
        .Q(s_axi_rdata[14]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[15] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[15]),
        .Q(s_axi_rdata[15]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[1] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[1]),
        .Q(s_axi_rdata[1]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[2] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[2]),
        .Q(s_axi_rdata[2]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[3] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[3]),
        .Q(s_axi_rdata[3]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[4] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[4]),
        .Q(s_axi_rdata[4]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[5] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[5]),
        .Q(s_axi_rdata[5]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[6] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[6]),
        .Q(s_axi_rdata[6]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[7] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[7]),
        .Q(s_axi_rdata[7]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[8] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[8]),
        .Q(s_axi_rdata[8]),
        .R(p_0_in));
  FDRE \s_axi_rdata_reg[9] 
       (.C(drp_clk_in),
        .CE(s_axi_rdata0),
        .D(drpdo_out[9]),
        .Q(s_axi_rdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    s_axi_rvalid_INST_0
       (.I0(s_axi_rvalid_3),
        .I1(tx_done),
        .I2(tx_done_r),
        .O(s_axi_rvalid));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    s_axi_rvalid_i_1
       (.I0(tx_done_r),
        .I1(tx_done),
        .I2(s_axi_rvalid_3),
        .I3(rd_req),
        .I4(drprdy_out),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_3),
        .R(reset));
  FDRE \s_axi_wdata_reg[0] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[0]),
        .Q(\s_axi_wdata_reg_n_0_[0] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[10] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[10]),
        .Q(\s_axi_wdata_reg_n_0_[10] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[11] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[11]),
        .Q(\s_axi_wdata_reg_n_0_[11] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[12] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[12]),
        .Q(\s_axi_wdata_reg_n_0_[12] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[13] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[13]),
        .Q(\s_axi_wdata_reg_n_0_[13] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[14] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[14]),
        .Q(\s_axi_wdata_reg_n_0_[14] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[15] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[15]),
        .Q(\s_axi_wdata_reg_n_0_[15] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[1] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[1]),
        .Q(\s_axi_wdata_reg_n_0_[1] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[2] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[2]),
        .Q(\s_axi_wdata_reg_n_0_[2] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[3] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[3]),
        .Q(\s_axi_wdata_reg_n_0_[3] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[4] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[4]),
        .Q(\s_axi_wdata_reg_n_0_[4] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[5] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[5]),
        .Q(\s_axi_wdata_reg_n_0_[5] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[6] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[6]),
        .Q(\s_axi_wdata_reg_n_0_[6] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[7] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[7]),
        .Q(\s_axi_wdata_reg_n_0_[7] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[8] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[8]),
        .Q(\s_axi_wdata_reg_n_0_[8] ),
        .R(reset));
  FDRE \s_axi_wdata_reg[9] 
       (.C(drp_clk_in),
        .CE(s_axi_wvalid),
        .D(s_axi_wdata[9]),
        .Q(\s_axi_wdata_reg_n_0_[9] ),
        .R(reset));
  FDRE s_axi_wready_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(s_axi_wready_0),
        .Q(s_axi_wready),
        .R(reset));
  LUT3 #(
    .INIT(8'hBA)) 
    tx_done_i_1
       (.I0(drprdy_out),
        .I1(ready_det__1),
        .I2(tx_done),
        .O(tx_done_i_1_n_0));
  FDRE tx_done_r_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(tx_done),
        .Q(tx_done_r),
        .R(1'b0));
  FDRE tx_done_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done),
        .R(reset));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_4 u_rst_sync_RESET
       (.Q({s_axi_wready_0,\FSM_onehot_AXI_STATE_reg_n_0_[3] ,\FSM_onehot_AXI_STATE_reg_n_0_[2] ,p_0_in4_in,wr_req}),
        .RESET(RESET),
        .SR(u_rst_sync_RESET_n_1),
        .drp_clk_in(drp_clk_in),
        .drprdy_out(drprdy_out),
        .ready_det__1(ready_det__1),
        .ready_det_r_reg(ready_det_r_reg_n_0),
        .reset(reset),
        .\s_axi_rdata_reg[0] (s_axi_rvalid_3),
        .stg5_reg_0(p_0_in),
        .stg5_reg_1(u_rst_sync_RESET_n_3),
        .tx_done(tx_done),
        .tx_done_r(tx_done_r));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    wr_req_i_1
       (.I0(wr_req0),
        .I1(wr_req),
        .I2(wr_req_reg_n_0),
        .O(wr_req_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    wr_req_i_2
       (.I0(s_axi_wready_0),
        .I1(\FSM_onehot_AXI_STATE_reg_n_0_[2] ),
        .I2(s_axi_arvalid),
        .I3(s_axi_arvalid_1),
        .I4(s_axi_awready_reg_n_0),
        .I5(s_axi_awvalid),
        .O(wr_req0));
  FDRE wr_req_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(wr_req_i_1_n_0),
        .Q(wr_req_reg_n_0),
        .R(reset));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_BLOCK_SYNC_SM" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_BLOCK_SYNC_SM
   (D,
    blocksync_out_i,
    SR,
    out,
    Q,
    rxheadervalid_i);
  output [0:0]D;
  output blocksync_out_i;
  input [0:0]SR;
  input out;
  input [1:0]Q;
  input rxheadervalid_i;

  wire BLOCKSYNC_OUT_i_1_n_0;
  wire [0:0]D;
  wire [1:0]Q;
  wire RXGEARBOXSLIP_OUT_i_2_n_0;
  wire RXGEARBOXSLIP_OUT_i_3_n_0;
  wire RXGEARBOXSLIP_OUT_i_4_n_0;
  wire RXGEARBOXSLIP_OUT_i_5_n_0;
  wire RXGEARBOXSLIP_OUT_i_6_n_0;
  wire [0:0]SR;
  wire begin_r;
  wire begin_r_i_2__0_n_0;
  wire blocksync_out_i;
  wire next_begin_c;
  wire next_sh_invalid_c;
  wire next_sh_valid_c;
  wire next_slip_c;
  wire next_sync_done_c;
  wire next_test_sh_c;
  wire out;
  wire [9:0]p_0_in__2;
  wire [3:1]p_1_in;
  wire rxheadervalid_i;
  wire sh_count_equals_max_i__14;
  wire sh_invalid_cnt_equals_zero_i__4;
  wire sh_valid_r_i_2_n_0;
  wire \slip_count_i[15]_i_1_n_0 ;
  wire \slip_count_i_reg_n_0_[0] ;
  wire \slip_count_i_reg_n_0_[10] ;
  wire \slip_count_i_reg_n_0_[11] ;
  wire \slip_count_i_reg_n_0_[12] ;
  wire \slip_count_i_reg_n_0_[13] ;
  wire \slip_count_i_reg_n_0_[14] ;
  wire \slip_count_i_reg_n_0_[1] ;
  wire \slip_count_i_reg_n_0_[2] ;
  wire \slip_count_i_reg_n_0_[3] ;
  wire \slip_count_i_reg_n_0_[4] ;
  wire \slip_count_i_reg_n_0_[5] ;
  wire \slip_count_i_reg_n_0_[6] ;
  wire \slip_count_i_reg_n_0_[7] ;
  wire \slip_count_i_reg_n_0_[8] ;
  wire \slip_count_i_reg_n_0_[9] ;
  wire slip_done_i;
  wire slip_pulse_i;
  wire slip_r_i_2_n_0;
  wire sync_done_r;
  wire sync_done_r_i_3_n_0;
  wire sync_done_r_i_5_n_0;
  wire sync_done_r_i_6_n_0;
  wire sync_done_r_i_7_n_0;
  wire sync_done_r_i_8_n_0;
  wire sync_done_r_i_9_n_0;
  wire sync_header_count_i0;
  wire \sync_header_count_i[0]_i_3_n_0 ;
  wire [15:0]sync_header_count_i_reg;
  wire \sync_header_count_i_reg[0]_i_2_n_0 ;
  wire \sync_header_count_i_reg[0]_i_2_n_1 ;
  wire \sync_header_count_i_reg[0]_i_2_n_2 ;
  wire \sync_header_count_i_reg[0]_i_2_n_3 ;
  wire \sync_header_count_i_reg[0]_i_2_n_4 ;
  wire \sync_header_count_i_reg[0]_i_2_n_5 ;
  wire \sync_header_count_i_reg[0]_i_2_n_6 ;
  wire \sync_header_count_i_reg[0]_i_2_n_7 ;
  wire \sync_header_count_i_reg[12]_i_1_n_1 ;
  wire \sync_header_count_i_reg[12]_i_1_n_2 ;
  wire \sync_header_count_i_reg[12]_i_1_n_3 ;
  wire \sync_header_count_i_reg[12]_i_1_n_4 ;
  wire \sync_header_count_i_reg[12]_i_1_n_5 ;
  wire \sync_header_count_i_reg[12]_i_1_n_6 ;
  wire \sync_header_count_i_reg[12]_i_1_n_7 ;
  wire \sync_header_count_i_reg[4]_i_1_n_0 ;
  wire \sync_header_count_i_reg[4]_i_1_n_1 ;
  wire \sync_header_count_i_reg[4]_i_1_n_2 ;
  wire \sync_header_count_i_reg[4]_i_1_n_3 ;
  wire \sync_header_count_i_reg[4]_i_1_n_4 ;
  wire \sync_header_count_i_reg[4]_i_1_n_5 ;
  wire \sync_header_count_i_reg[4]_i_1_n_6 ;
  wire \sync_header_count_i_reg[4]_i_1_n_7 ;
  wire \sync_header_count_i_reg[8]_i_1_n_0 ;
  wire \sync_header_count_i_reg[8]_i_1_n_1 ;
  wire \sync_header_count_i_reg[8]_i_1_n_2 ;
  wire \sync_header_count_i_reg[8]_i_1_n_3 ;
  wire \sync_header_count_i_reg[8]_i_1_n_4 ;
  wire \sync_header_count_i_reg[8]_i_1_n_5 ;
  wire \sync_header_count_i_reg[8]_i_1_n_6 ;
  wire \sync_header_count_i_reg[8]_i_1_n_7 ;
  wire \sync_header_invalid_count_i[9]_i_2_n_0 ;
  wire [9:0]sync_header_invalid_count_i_reg;
  wire system_reset_r;
  wire system_reset_r2;
  wire test_sh_r;
  wire test_sh_r_i_2_n_0;
  wire [3:3]\NLW_sync_header_count_i_reg[12]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h1110)) 
    BLOCKSYNC_OUT_i_1
       (.I0(p_1_in[1]),
        .I1(system_reset_r2),
        .I2(blocksync_out_i),
        .I3(sync_done_r),
        .O(BLOCKSYNC_OUT_i_1_n_0));
  FDRE BLOCKSYNC_OUT_reg
       (.C(out),
        .CE(1'b1),
        .D(BLOCKSYNC_OUT_i_1_n_0),
        .Q(blocksync_out_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAA20000000)) 
    RXGEARBOXSLIP_OUT_i_1
       (.I0(RXGEARBOXSLIP_OUT_i_2_n_0),
        .I1(sh_invalid_cnt_equals_zero_i__4),
        .I2(RXGEARBOXSLIP_OUT_i_3_n_0),
        .I3(p_1_in[3]),
        .I4(sh_count_equals_max_i__14),
        .I5(RXGEARBOXSLIP_OUT_i_4_n_0),
        .O(slip_pulse_i));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    RXGEARBOXSLIP_OUT_i_2
       (.I0(slip_r_i_2_n_0),
        .I1(p_1_in[1]),
        .O(RXGEARBOXSLIP_OUT_i_2_n_0));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    RXGEARBOXSLIP_OUT_i_3
       (.I0(sync_header_invalid_count_i_reg[1]),
        .I1(sync_header_invalid_count_i_reg[0]),
        .I2(sync_header_invalid_count_i_reg[3]),
        .I3(sync_header_invalid_count_i_reg[2]),
        .I4(RXGEARBOXSLIP_OUT_i_5_n_0),
        .I5(blocksync_out_i),
        .O(RXGEARBOXSLIP_OUT_i_3_n_0));
  LUT6 #(
    .INIT(64'h80AAFFFF80AA80AA)) 
    RXGEARBOXSLIP_OUT_i_4
       (.I0(p_1_in[2]),
        .I1(RXGEARBOXSLIP_OUT_i_6_n_0),
        .I2(RXGEARBOXSLIP_OUT_i_5_n_0),
        .I3(blocksync_out_i),
        .I4(slip_done_i),
        .I5(p_1_in[1]),
        .O(RXGEARBOXSLIP_OUT_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    RXGEARBOXSLIP_OUT_i_5
       (.I0(sync_header_invalid_count_i_reg[4]),
        .I1(sync_header_invalid_count_i_reg[5]),
        .I2(sync_header_invalid_count_i_reg[6]),
        .I3(sync_header_invalid_count_i_reg[7]),
        .I4(sync_header_invalid_count_i_reg[9]),
        .I5(sync_header_invalid_count_i_reg[8]),
        .O(RXGEARBOXSLIP_OUT_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    RXGEARBOXSLIP_OUT_i_6
       (.I0(sync_header_invalid_count_i_reg[1]),
        .I1(sync_header_invalid_count_i_reg[0]),
        .I2(sync_header_invalid_count_i_reg[3]),
        .I3(sync_header_invalid_count_i_reg[2]),
        .O(RXGEARBOXSLIP_OUT_i_6_n_0));
  FDRE RXGEARBOXSLIP_OUT_reg
       (.C(out),
        .CE(1'b1),
        .D(slip_pulse_i),
        .Q(D),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFBAAAAA)) 
    begin_r_i_1__0
       (.I0(begin_r_i_2__0_n_0),
        .I1(sh_invalid_cnt_equals_zero_i__4),
        .I2(p_1_in[3]),
        .I3(p_1_in[2]),
        .I4(sh_count_equals_max_i__14),
        .I5(RXGEARBOXSLIP_OUT_i_3_n_0),
        .O(next_begin_c));
  LUT4 #(
    .INIT(16'hFDDD)) 
    begin_r_i_2__0
       (.I0(slip_r_i_2_n_0),
        .I1(sync_done_r),
        .I2(slip_done_i),
        .I3(p_1_in[1]),
        .O(begin_r_i_2__0_n_0));
  FDSE begin_r_reg
       (.C(out),
        .CE(1'b1),
        .D(next_begin_c),
        .Q(begin_r),
        .S(system_reset_r2));
  LUT6 #(
    .INIT(64'h0000000000900000)) 
    sh_invalid_r_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sh_valid_r_i_2_n_0),
        .I3(sync_done_r),
        .I4(test_sh_r),
        .I5(p_1_in[1]),
        .O(next_sh_invalid_c));
  FDRE sh_invalid_r_reg
       (.C(out),
        .CE(1'b1),
        .D(next_sh_invalid_c),
        .Q(p_1_in[2]),
        .R(system_reset_r2));
  LUT6 #(
    .INIT(64'h0000000000600000)) 
    sh_valid_r_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sh_valid_r_i_2_n_0),
        .I3(sync_done_r),
        .I4(test_sh_r),
        .I5(p_1_in[1]),
        .O(next_sh_valid_c));
  LUT4 #(
    .INIT(16'h0004)) 
    sh_valid_r_i_2
       (.I0(begin_r),
        .I1(rxheadervalid_i),
        .I2(p_1_in[2]),
        .I3(p_1_in[3]),
        .O(sh_valid_r_i_2_n_0));
  FDRE sh_valid_r_reg
       (.C(out),
        .CE(1'b1),
        .D(next_sh_valid_c),
        .Q(p_1_in[3]),
        .R(system_reset_r2));
  LUT1 #(
    .INIT(2'h1)) 
    \slip_count_i[15]_i_1 
       (.I0(p_1_in[1]),
        .O(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(D),
        .Q(\slip_count_i_reg_n_0_[0] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[10] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[9] ),
        .Q(\slip_count_i_reg_n_0_[10] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[11] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[10] ),
        .Q(\slip_count_i_reg_n_0_[11] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[12] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[11] ),
        .Q(\slip_count_i_reg_n_0_[12] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[13] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[12] ),
        .Q(\slip_count_i_reg_n_0_[13] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[14] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[13] ),
        .Q(\slip_count_i_reg_n_0_[14] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[15] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[14] ),
        .Q(slip_done_i),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[0] ),
        .Q(\slip_count_i_reg_n_0_[1] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[1] ),
        .Q(\slip_count_i_reg_n_0_[2] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[2] ),
        .Q(\slip_count_i_reg_n_0_[3] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[4] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[3] ),
        .Q(\slip_count_i_reg_n_0_[4] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[5] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[4] ),
        .Q(\slip_count_i_reg_n_0_[5] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[6] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[5] ),
        .Q(\slip_count_i_reg_n_0_[6] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[7] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[6] ),
        .Q(\slip_count_i_reg_n_0_[7] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[8] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[7] ),
        .Q(\slip_count_i_reg_n_0_[8] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  FDRE \slip_count_i_reg[9] 
       (.C(out),
        .CE(1'b1),
        .D(\slip_count_i_reg_n_0_[8] ),
        .Q(\slip_count_i_reg_n_0_[9] ),
        .R(\slip_count_i[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA20000000)) 
    slip_r_i_1
       (.I0(slip_r_i_2_n_0),
        .I1(sh_invalid_cnt_equals_zero_i__4),
        .I2(RXGEARBOXSLIP_OUT_i_3_n_0),
        .I3(p_1_in[3]),
        .I4(sh_count_equals_max_i__14),
        .I5(RXGEARBOXSLIP_OUT_i_4_n_0),
        .O(next_slip_c));
  LUT6 #(
    .INIT(64'h0000000100010116)) 
    slip_r_i_2
       (.I0(sync_done_r),
        .I1(p_1_in[1]),
        .I2(p_1_in[2]),
        .I3(p_1_in[3]),
        .I4(test_sh_r),
        .I5(begin_r),
        .O(slip_r_i_2_n_0));
  FDRE slip_r_reg
       (.C(out),
        .CE(1'b1),
        .D(next_slip_c),
        .Q(p_1_in[1]),
        .R(system_reset_r2));
  LUT3 #(
    .INIT(8'h80)) 
    sync_done_r_i_1
       (.I0(sh_invalid_cnt_equals_zero_i__4),
        .I1(sync_done_r_i_3_n_0),
        .I2(sh_count_equals_max_i__14),
        .O(next_sync_done_c));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    sync_done_r_i_2
       (.I0(sync_done_r_i_5_n_0),
        .I1(sync_header_invalid_count_i_reg[2]),
        .I2(sync_header_invalid_count_i_reg[3]),
        .I3(sync_header_invalid_count_i_reg[0]),
        .I4(sync_header_invalid_count_i_reg[1]),
        .O(sh_invalid_cnt_equals_zero_i__4));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    sync_done_r_i_3
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .I2(sync_done_r),
        .I3(p_1_in[1]),
        .I4(begin_r),
        .I5(test_sh_r),
        .O(sync_done_r_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    sync_done_r_i_4
       (.I0(sync_done_r_i_6_n_0),
        .I1(sync_done_r_i_7_n_0),
        .I2(sync_done_r_i_8_n_0),
        .I3(sync_done_r_i_9_n_0),
        .O(sh_count_equals_max_i__14));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sync_done_r_i_5
       (.I0(sync_header_invalid_count_i_reg[4]),
        .I1(sync_header_invalid_count_i_reg[5]),
        .I2(sync_header_invalid_count_i_reg[6]),
        .I3(sync_header_invalid_count_i_reg[7]),
        .I4(sync_header_invalid_count_i_reg[9]),
        .I5(sync_header_invalid_count_i_reg[8]),
        .O(sync_done_r_i_5_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    sync_done_r_i_6
       (.I0(sync_header_count_i_reg[7]),
        .I1(sync_header_count_i_reg[6]),
        .I2(sync_header_count_i_reg[4]),
        .I3(sync_header_count_i_reg[5]),
        .O(sync_done_r_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    sync_done_r_i_7
       (.I0(sync_header_count_i_reg[1]),
        .I1(sync_header_count_i_reg[0]),
        .I2(sync_header_count_i_reg[3]),
        .I3(sync_header_count_i_reg[2]),
        .O(sync_done_r_i_7_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    sync_done_r_i_8
       (.I0(sync_header_count_i_reg[10]),
        .I1(sync_header_count_i_reg[11]),
        .I2(sync_header_count_i_reg[8]),
        .I3(sync_header_count_i_reg[9]),
        .O(sync_done_r_i_8_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    sync_done_r_i_9
       (.I0(sync_header_count_i_reg[15]),
        .I1(sync_header_count_i_reg[14]),
        .I2(sync_header_count_i_reg[12]),
        .I3(sync_header_count_i_reg[13]),
        .O(sync_done_r_i_9_n_0));
  FDRE sync_done_r_reg
       (.C(out),
        .CE(1'b1),
        .D(next_sync_done_c),
        .Q(sync_done_r),
        .R(system_reset_r2));
  LUT2 #(
    .INIT(4'hE)) 
    \sync_header_count_i[0]_i_1 
       (.I0(p_1_in[3]),
        .I1(p_1_in[2]),
        .O(sync_header_count_i0));
  LUT1 #(
    .INIT(2'h1)) 
    \sync_header_count_i[0]_i_3 
       (.I0(sync_header_count_i_reg[0]),
        .O(\sync_header_count_i[0]_i_3_n_0 ));
  FDRE \sync_header_count_i_reg[0] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[0]_i_2_n_7 ),
        .Q(sync_header_count_i_reg[0]),
        .R(begin_r));
  CARRY4 \sync_header_count_i_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sync_header_count_i_reg[0]_i_2_n_0 ,\sync_header_count_i_reg[0]_i_2_n_1 ,\sync_header_count_i_reg[0]_i_2_n_2 ,\sync_header_count_i_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sync_header_count_i_reg[0]_i_2_n_4 ,\sync_header_count_i_reg[0]_i_2_n_5 ,\sync_header_count_i_reg[0]_i_2_n_6 ,\sync_header_count_i_reg[0]_i_2_n_7 }),
        .S({sync_header_count_i_reg[3:1],\sync_header_count_i[0]_i_3_n_0 }));
  FDRE \sync_header_count_i_reg[10] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[8]_i_1_n_5 ),
        .Q(sync_header_count_i_reg[10]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[11] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[8]_i_1_n_4 ),
        .Q(sync_header_count_i_reg[11]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[12] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[12]_i_1_n_7 ),
        .Q(sync_header_count_i_reg[12]),
        .R(begin_r));
  CARRY4 \sync_header_count_i_reg[12]_i_1 
       (.CI(\sync_header_count_i_reg[8]_i_1_n_0 ),
        .CO({\NLW_sync_header_count_i_reg[12]_i_1_CO_UNCONNECTED [3],\sync_header_count_i_reg[12]_i_1_n_1 ,\sync_header_count_i_reg[12]_i_1_n_2 ,\sync_header_count_i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sync_header_count_i_reg[12]_i_1_n_4 ,\sync_header_count_i_reg[12]_i_1_n_5 ,\sync_header_count_i_reg[12]_i_1_n_6 ,\sync_header_count_i_reg[12]_i_1_n_7 }),
        .S(sync_header_count_i_reg[15:12]));
  FDRE \sync_header_count_i_reg[13] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[12]_i_1_n_6 ),
        .Q(sync_header_count_i_reg[13]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[14] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[12]_i_1_n_5 ),
        .Q(sync_header_count_i_reg[14]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[15] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[12]_i_1_n_4 ),
        .Q(sync_header_count_i_reg[15]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[1] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[0]_i_2_n_6 ),
        .Q(sync_header_count_i_reg[1]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[2] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[0]_i_2_n_5 ),
        .Q(sync_header_count_i_reg[2]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[3] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[0]_i_2_n_4 ),
        .Q(sync_header_count_i_reg[3]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[4] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[4]_i_1_n_7 ),
        .Q(sync_header_count_i_reg[4]),
        .R(begin_r));
  CARRY4 \sync_header_count_i_reg[4]_i_1 
       (.CI(\sync_header_count_i_reg[0]_i_2_n_0 ),
        .CO({\sync_header_count_i_reg[4]_i_1_n_0 ,\sync_header_count_i_reg[4]_i_1_n_1 ,\sync_header_count_i_reg[4]_i_1_n_2 ,\sync_header_count_i_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sync_header_count_i_reg[4]_i_1_n_4 ,\sync_header_count_i_reg[4]_i_1_n_5 ,\sync_header_count_i_reg[4]_i_1_n_6 ,\sync_header_count_i_reg[4]_i_1_n_7 }),
        .S(sync_header_count_i_reg[7:4]));
  FDRE \sync_header_count_i_reg[5] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[4]_i_1_n_6 ),
        .Q(sync_header_count_i_reg[5]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[6] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[4]_i_1_n_5 ),
        .Q(sync_header_count_i_reg[6]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[7] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[4]_i_1_n_4 ),
        .Q(sync_header_count_i_reg[7]),
        .R(begin_r));
  FDRE \sync_header_count_i_reg[8] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[8]_i_1_n_7 ),
        .Q(sync_header_count_i_reg[8]),
        .R(begin_r));
  CARRY4 \sync_header_count_i_reg[8]_i_1 
       (.CI(\sync_header_count_i_reg[4]_i_1_n_0 ),
        .CO({\sync_header_count_i_reg[8]_i_1_n_0 ,\sync_header_count_i_reg[8]_i_1_n_1 ,\sync_header_count_i_reg[8]_i_1_n_2 ,\sync_header_count_i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sync_header_count_i_reg[8]_i_1_n_4 ,\sync_header_count_i_reg[8]_i_1_n_5 ,\sync_header_count_i_reg[8]_i_1_n_6 ,\sync_header_count_i_reg[8]_i_1_n_7 }),
        .S(sync_header_count_i_reg[11:8]));
  FDRE \sync_header_count_i_reg[9] 
       (.C(out),
        .CE(sync_header_count_i0),
        .D(\sync_header_count_i_reg[8]_i_1_n_6 ),
        .Q(sync_header_count_i_reg[9]),
        .R(begin_r));
  LUT1 #(
    .INIT(2'h1)) 
    \sync_header_invalid_count_i[0]_i_1 
       (.I0(sync_header_invalid_count_i_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sync_header_invalid_count_i[1]_i_1 
       (.I0(sync_header_invalid_count_i_reg[0]),
        .I1(sync_header_invalid_count_i_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sync_header_invalid_count_i[2]_i_1 
       (.I0(sync_header_invalid_count_i_reg[0]),
        .I1(sync_header_invalid_count_i_reg[1]),
        .I2(sync_header_invalid_count_i_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sync_header_invalid_count_i[3]_i_1 
       (.I0(sync_header_invalid_count_i_reg[2]),
        .I1(sync_header_invalid_count_i_reg[1]),
        .I2(sync_header_invalid_count_i_reg[0]),
        .I3(sync_header_invalid_count_i_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sync_header_invalid_count_i[4]_i_1 
       (.I0(sync_header_invalid_count_i_reg[3]),
        .I1(sync_header_invalid_count_i_reg[0]),
        .I2(sync_header_invalid_count_i_reg[1]),
        .I3(sync_header_invalid_count_i_reg[2]),
        .I4(sync_header_invalid_count_i_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sync_header_invalid_count_i[5]_i_1 
       (.I0(sync_header_invalid_count_i_reg[2]),
        .I1(sync_header_invalid_count_i_reg[1]),
        .I2(sync_header_invalid_count_i_reg[0]),
        .I3(sync_header_invalid_count_i_reg[3]),
        .I4(sync_header_invalid_count_i_reg[4]),
        .I5(sync_header_invalid_count_i_reg[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sync_header_invalid_count_i[6]_i_1 
       (.I0(\sync_header_invalid_count_i[9]_i_2_n_0 ),
        .I1(sync_header_invalid_count_i_reg[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \sync_header_invalid_count_i[7]_i_1 
       (.I0(sync_header_invalid_count_i_reg[6]),
        .I1(\sync_header_invalid_count_i[9]_i_2_n_0 ),
        .I2(sync_header_invalid_count_i_reg[7]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \sync_header_invalid_count_i[8]_i_1 
       (.I0(sync_header_invalid_count_i_reg[7]),
        .I1(\sync_header_invalid_count_i[9]_i_2_n_0 ),
        .I2(sync_header_invalid_count_i_reg[6]),
        .I3(sync_header_invalid_count_i_reg[8]),
        .O(p_0_in__2[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \sync_header_invalid_count_i[9]_i_1 
       (.I0(sync_header_invalid_count_i_reg[8]),
        .I1(sync_header_invalid_count_i_reg[6]),
        .I2(\sync_header_invalid_count_i[9]_i_2_n_0 ),
        .I3(sync_header_invalid_count_i_reg[7]),
        .I4(sync_header_invalid_count_i_reg[9]),
        .O(p_0_in__2[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sync_header_invalid_count_i[9]_i_2 
       (.I0(sync_header_invalid_count_i_reg[2]),
        .I1(sync_header_invalid_count_i_reg[1]),
        .I2(sync_header_invalid_count_i_reg[0]),
        .I3(sync_header_invalid_count_i_reg[3]),
        .I4(sync_header_invalid_count_i_reg[4]),
        .I5(sync_header_invalid_count_i_reg[5]),
        .O(\sync_header_invalid_count_i[9]_i_2_n_0 ));
  FDRE \sync_header_invalid_count_i_reg[0] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[0]),
        .Q(sync_header_invalid_count_i_reg[0]),
        .R(begin_r));
  FDRE \sync_header_invalid_count_i_reg[1] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[1]),
        .Q(sync_header_invalid_count_i_reg[1]),
        .R(begin_r));
  FDRE \sync_header_invalid_count_i_reg[2] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[2]),
        .Q(sync_header_invalid_count_i_reg[2]),
        .R(begin_r));
  FDRE \sync_header_invalid_count_i_reg[3] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[3]),
        .Q(sync_header_invalid_count_i_reg[3]),
        .R(begin_r));
  FDRE \sync_header_invalid_count_i_reg[4] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[4]),
        .Q(sync_header_invalid_count_i_reg[4]),
        .R(begin_r));
  FDRE \sync_header_invalid_count_i_reg[5] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[5]),
        .Q(sync_header_invalid_count_i_reg[5]),
        .R(begin_r));
  FDRE \sync_header_invalid_count_i_reg[6] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[6]),
        .Q(sync_header_invalid_count_i_reg[6]),
        .R(begin_r));
  FDRE \sync_header_invalid_count_i_reg[7] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[7]),
        .Q(sync_header_invalid_count_i_reg[7]),
        .R(begin_r));
  FDRE \sync_header_invalid_count_i_reg[8] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[8]),
        .Q(sync_header_invalid_count_i_reg[8]),
        .R(begin_r));
  FDRE \sync_header_invalid_count_i_reg[9] 
       (.C(out),
        .CE(p_1_in[2]),
        .D(p_0_in__2[9]),
        .Q(sync_header_invalid_count_i_reg[9]),
        .R(begin_r));
  FDRE system_reset_r2_reg
       (.C(out),
        .CE(1'b1),
        .D(system_reset_r),
        .Q(system_reset_r2),
        .R(1'b0));
  FDRE system_reset_r_reg
       (.C(out),
        .CE(1'b1),
        .D(SR),
        .Q(system_reset_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFBAAAAA)) 
    test_sh_r_i_1
       (.I0(test_sh_r_i_2_n_0),
        .I1(RXGEARBOXSLIP_OUT_i_3_n_0),
        .I2(p_1_in[2]),
        .I3(p_1_in[3]),
        .I4(slip_r_i_2_n_0),
        .I5(sh_count_equals_max_i__14),
        .O(next_test_sh_c));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF020)) 
    test_sh_r_i_2
       (.I0(test_sh_r),
        .I1(rxheadervalid_i),
        .I2(slip_r_i_2_n_0),
        .I3(begin_r),
        .O(test_sh_r_i_2_n_0));
  FDRE test_sh_r_reg
       (.C(out),
        .CE(1'b1),
        .D(next_test_sh_c),
        .Q(test_sh_r),
        .R(system_reset_r2));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_CHANNEL_BOND_GEN" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_CHANNEL_BOND_GEN
   (gen_ch_bond_int_reg_0,
    gen_ch_bond_int_reg_1,
    txdatavalid_i,
    user_clk,
    gen_cc_i,
    \free_count_r_reg[4]_0 ,
    gen_ch_bond_int_reg_2);
  output gen_ch_bond_int_reg_0;
  output gen_ch_bond_int_reg_1;
  input txdatavalid_i;
  input user_clk;
  input gen_cc_i;
  input \free_count_r_reg[4]_0 ;
  input gen_ch_bond_int_reg_2;

  wire data_v_r;
  wire \free_count_r[0]_i_1_n_0 ;
  wire \free_count_r[0]_i_3_n_0 ;
  wire [0:4]free_count_r_reg;
  wire \free_count_r_reg[4]_0 ;
  wire gen_cc_i;
  wire gen_ch_bond_int_i_1_n_0;
  wire gen_ch_bond_int_reg_0;
  wire gen_ch_bond_int_reg_1;
  wire gen_ch_bond_int_reg_2;
  wire [4:0]p_0_in;
  wire txdatavalid_i;
  wire user_clk;

  LUT2 #(
    .INIT(4'hE)) 
    \TX_DATA[53]_i_2 
       (.I0(gen_ch_bond_int_reg_0),
        .I1(gen_cc_i),
        .O(gen_ch_bond_int_reg_1));
  FDRE data_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(txdatavalid_i),
        .Q(data_v_r),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF20)) 
    \free_count_r[0]_i_1 
       (.I0(data_v_r),
        .I1(free_count_r_reg[0]),
        .I2(\free_count_r[0]_i_3_n_0 ),
        .I3(\free_count_r_reg[4]_0 ),
        .O(\free_count_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \free_count_r[0]_i_2 
       (.I0(free_count_r_reg[1]),
        .I1(free_count_r_reg[3]),
        .I2(free_count_r_reg[4]),
        .I3(free_count_r_reg[2]),
        .I4(free_count_r_reg[0]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \free_count_r[0]_i_3 
       (.I0(free_count_r_reg[3]),
        .I1(free_count_r_reg[4]),
        .I2(free_count_r_reg[2]),
        .I3(free_count_r_reg[1]),
        .O(\free_count_r[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \free_count_r[1]_i_1 
       (.I0(free_count_r_reg[2]),
        .I1(free_count_r_reg[4]),
        .I2(free_count_r_reg[3]),
        .I3(free_count_r_reg[1]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \free_count_r[2]_i_1 
       (.I0(free_count_r_reg[3]),
        .I1(free_count_r_reg[4]),
        .I2(free_count_r_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \free_count_r[3]_i_1 
       (.I0(free_count_r_reg[4]),
        .I1(free_count_r_reg[3]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \free_count_r[4]_i_1 
       (.I0(free_count_r_reg[4]),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \free_count_r_reg[0] 
       (.C(user_clk),
        .CE(data_v_r),
        .D(p_0_in[4]),
        .Q(free_count_r_reg[0]),
        .R(\free_count_r[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \free_count_r_reg[1] 
       (.C(user_clk),
        .CE(data_v_r),
        .D(p_0_in[3]),
        .Q(free_count_r_reg[1]),
        .R(\free_count_r[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \free_count_r_reg[2] 
       (.C(user_clk),
        .CE(data_v_r),
        .D(p_0_in[2]),
        .Q(free_count_r_reg[2]),
        .R(\free_count_r[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \free_count_r_reg[3] 
       (.C(user_clk),
        .CE(data_v_r),
        .D(p_0_in[1]),
        .Q(free_count_r_reg[3]),
        .R(\free_count_r[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \free_count_r_reg[4] 
       (.C(user_clk),
        .CE(data_v_r),
        .D(p_0_in[0]),
        .Q(free_count_r_reg[4]),
        .R(\free_count_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    gen_ch_bond_int_i_1
       (.I0(free_count_r_reg[1]),
        .I1(free_count_r_reg[2]),
        .I2(free_count_r_reg[4]),
        .I3(free_count_r_reg[3]),
        .I4(gen_ch_bond_int_reg_2),
        .I5(free_count_r_reg[0]),
        .O(gen_ch_bond_int_i_1_n_0));
  FDRE gen_ch_bond_int_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ch_bond_int_i_1_n_0),
        .Q(gen_ch_bond_int_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_CHANNEL_ERR_DETECT" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_CHANNEL_ERR_DETECT
   (hard_err,
    hard_err_i,
    user_clk);
  output hard_err;
  input hard_err_i;
  input user_clk;

  wire hard_err;
  wire hard_err_i;
  wire user_clk;

  FDRE CHANNEL_HARD_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_i),
        .Q(hard_err),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_CHANNEL_INIT_SM" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_CHANNEL_INIT_SM
   (SR,
    wait_for_lane_up_r_reg_0,
    CHANNEL_UP_RX_IF_reg_0,
    CHANNEL_UP_TX_IF_reg_0,
    p_1_in,
    E,
    CHANNEL_UP_RX_IF_reg_1,
    R0,
    gen_cc_flop_0_i,
    CHANNEL_UP_RX_IF_reg_2,
    reset_lanes_c,
    user_clk,
    wait_for_lane_up_r_reg_1,
    remote_ready_i,
    got_idles_i,
    CHANNEL_UP_TX_IF_reg_1,
    tx_pe_data_v_i,
    \TX_DATA_reg[53] ,
    rst_pma_init_usrclk,
    Q,
    \TX_DATA_reg[63] ,
    gen_cc_i,
    rx_pe_data_v_i,
    \TX_DATA_reg[63]_0 ,
    lane_up);
  output [0:0]SR;
  output [0:0]wait_for_lane_up_r_reg_0;
  output CHANNEL_UP_RX_IF_reg_0;
  output CHANNEL_UP_TX_IF_reg_0;
  output [3:0]p_1_in;
  output [0:0]E;
  output CHANNEL_UP_RX_IF_reg_1;
  output R0;
  output gen_cc_flop_0_i;
  output CHANNEL_UP_RX_IF_reg_2;
  input reset_lanes_c;
  input user_clk;
  input wait_for_lane_up_r_reg_1;
  input remote_ready_i;
  input got_idles_i;
  input CHANNEL_UP_TX_IF_reg_1;
  input tx_pe_data_v_i;
  input \TX_DATA_reg[53] ;
  input rst_pma_init_usrclk;
  input [3:0]Q;
  input \TX_DATA_reg[63] ;
  input gen_cc_i;
  input rx_pe_data_v_i;
  input \TX_DATA_reg[63]_0 ;
  input lane_up;

  wire CHANNEL_UP_RX_IF_reg_0;
  wire CHANNEL_UP_RX_IF_reg_1;
  wire CHANNEL_UP_RX_IF_reg_2;
  wire CHANNEL_UP_TX_IF_reg_0;
  wire CHANNEL_UP_TX_IF_reg_1;
  wire [0:0]E;
  wire [3:0]Q;
  wire R0;
  wire [0:0]SR;
  wire \TX_DATA[55]_i_4_n_0 ;
  wire \TX_DATA[63]_i_2_n_0 ;
  wire \TX_DATA_reg[53] ;
  wire \TX_DATA_reg[63] ;
  wire \TX_DATA_reg[63]_0 ;
  wire any_idles_r;
  (* RTL_KEEP = "true" *) wire [8:0]chan_bond_timeout_val;
  wire channel_up_c;
  wire gen_cc_flop_0_i;
  wire gen_cc_i;
  wire got_idles_i;
  wire idle_xmit_cntr;
  wire \idle_xmit_cntr[0]_i_2_n_0 ;
  wire \idle_xmit_cntr[0]_i_3_n_0 ;
  wire \idle_xmit_cntr[0]_i_4_n_0 ;
  wire \idle_xmit_cntr[1]_i_1_n_0 ;
  wire \idle_xmit_cntr[2]_i_1_n_0 ;
  wire \idle_xmit_cntr[3]_i_1_n_0 ;
  wire \idle_xmit_cntr[4]_i_1_n_0 ;
  wire \idle_xmit_cntr[5]_i_1_n_0 ;
  wire \idle_xmit_cntr_reg_n_0_[0] ;
  wire \idle_xmit_cntr_reg_n_0_[1] ;
  wire \idle_xmit_cntr_reg_n_0_[2] ;
  wire \idle_xmit_cntr_reg_n_0_[3] ;
  wire \idle_xmit_cntr_reg_n_0_[4] ;
  wire \idle_xmit_cntr_reg_n_0_[5] ;
  wire lane_up;
  wire [3:0]p_1_in;
  wire ready_r;
  wire ready_r_i_1__0_n_0;
  wire remote_ready_i;
  wire remote_ready_r;
  wire reset_lanes_c;
  wire rst_pma_init_usrclk;
  wire rx_pe_data_v_i;
  wire tx_pe_data_v_i;
  wire user_clk;
  wire [0:0]wait_for_lane_up_r_reg_0;
  wire wait_for_lane_up_r_reg_1;
  wire wait_for_remote_r;
  wire wait_for_remote_r_i_1_n_0;

  FDRE #(
    .INIT(1'b0)) 
    CHANNEL_UP_RX_IF_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(remote_ready_r),
        .Q(CHANNEL_UP_RX_IF_reg_0),
        .R(CHANNEL_UP_TX_IF_reg_1));
  LUT5 #(
    .INIT(32'h00404040)) 
    CHANNEL_UP_TX_IF_i_1
       (.I0(wait_for_lane_up_r_reg_0),
        .I1(remote_ready_r),
        .I2(ready_r),
        .I3(wait_for_remote_r),
        .I4(\idle_xmit_cntr[0]_i_3_n_0 ),
        .O(channel_up_c));
  FDRE #(
    .INIT(1'b0)) 
    CHANNEL_UP_TX_IF_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(channel_up_c),
        .Q(CHANNEL_UP_TX_IF_reg_0),
        .R(CHANNEL_UP_TX_IF_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \RX_D[56]_i_1 
       (.I0(CHANNEL_UP_RX_IF_reg_0),
        .I1(rx_pe_data_v_i),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h08)) 
    RX_SRC_RDY_N_inv_i_1
       (.I0(CHANNEL_UP_RX_IF_reg_0),
        .I1(rx_pe_data_v_i),
        .I2(SR),
        .O(CHANNEL_UP_RX_IF_reg_2));
  LUT6 #(
    .INIT(64'h000F000D000D000D)) 
    \TX_DATA[52]_i_1 
       (.I0(tx_pe_data_v_i),
        .I1(wait_for_lane_up_r_reg_0),
        .I2(\TX_DATA_reg[53] ),
        .I3(rst_pma_init_usrclk),
        .I4(CHANNEL_UP_TX_IF_reg_0),
        .I5(Q[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000322200002222)) 
    \TX_DATA[53]_i_1 
       (.I0(wait_for_lane_up_r_reg_0),
        .I1(\TX_DATA_reg[53] ),
        .I2(tx_pe_data_v_i),
        .I3(Q[1]),
        .I4(rst_pma_init_usrclk),
        .I5(CHANNEL_UP_TX_IF_reg_0),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h000A000A000E000A)) 
    \TX_DATA[54]_i_1 
       (.I0(\TX_DATA_reg[63] ),
        .I1(CHANNEL_UP_TX_IF_reg_0),
        .I2(rst_pma_init_usrclk),
        .I3(gen_cc_i),
        .I4(Q[2]),
        .I5(\TX_DATA[55]_i_4_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A0E0A0A)) 
    \TX_DATA[55]_i_2 
       (.I0(gen_cc_i),
        .I1(CHANNEL_UP_TX_IF_reg_0),
        .I2(rst_pma_init_usrclk),
        .I3(\TX_DATA_reg[63] ),
        .I4(Q[3]),
        .I5(\TX_DATA[55]_i_4_n_0 ),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \TX_DATA[55]_i_4 
       (.I0(wait_for_lane_up_r_reg_0),
        .I1(tx_pe_data_v_i),
        .O(\TX_DATA[55]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAAAAA)) 
    \TX_DATA[63]_i_1 
       (.I0(\TX_DATA_reg[63]_0 ),
        .I1(gen_cc_i),
        .I2(\TX_DATA_reg[63] ),
        .I3(tx_pe_data_v_i),
        .I4(wait_for_lane_up_r_reg_0),
        .I5(\TX_DATA[63]_i_2_n_0 ),
        .O(gen_cc_flop_0_i));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \TX_DATA[63]_i_2 
       (.I0(CHANNEL_UP_TX_IF_reg_0),
        .I1(rst_pma_init_usrclk),
        .O(\TX_DATA[63]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    any_idles_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_idles_i),
        .Q(any_idles_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT1 #(
    .INIT(2'h1)) 
    gen_cc_flop_0_i_i_1
       (.I0(CHANNEL_UP_TX_IF_reg_0),
        .O(R0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(chan_bond_timeout_val[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(chan_bond_timeout_val[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(chan_bond_timeout_val[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(chan_bond_timeout_val[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(chan_bond_timeout_val[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(chan_bond_timeout_val[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b1),
        .O(chan_bond_timeout_val[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(chan_bond_timeout_val[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(chan_bond_timeout_val[0]));
  LUT5 #(
    .INIT(32'hFFFFC8FF)) 
    \idle_xmit_cntr[0]_i_1 
       (.I0(\idle_xmit_cntr_reg_n_0_[5] ),
        .I1(wait_for_remote_r),
        .I2(any_idles_r),
        .I3(\idle_xmit_cntr[0]_i_3_n_0 ),
        .I4(\idle_xmit_cntr[0]_i_4_n_0 ),
        .O(idle_xmit_cntr));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \idle_xmit_cntr[0]_i_2 
       (.I0(\idle_xmit_cntr_reg_n_0_[3] ),
        .I1(\idle_xmit_cntr_reg_n_0_[5] ),
        .I2(\idle_xmit_cntr_reg_n_0_[4] ),
        .I3(\idle_xmit_cntr_reg_n_0_[2] ),
        .I4(\idle_xmit_cntr_reg_n_0_[1] ),
        .I5(\idle_xmit_cntr_reg_n_0_[0] ),
        .O(\idle_xmit_cntr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \idle_xmit_cntr[0]_i_3 
       (.I0(\idle_xmit_cntr_reg_n_0_[0] ),
        .I1(\idle_xmit_cntr_reg_n_0_[1] ),
        .I2(\idle_xmit_cntr_reg_n_0_[2] ),
        .I3(\idle_xmit_cntr_reg_n_0_[4] ),
        .I4(\idle_xmit_cntr_reg_n_0_[5] ),
        .I5(\idle_xmit_cntr_reg_n_0_[3] ),
        .O(\idle_xmit_cntr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFE0000)) 
    \idle_xmit_cntr[0]_i_4 
       (.I0(\idle_xmit_cntr_reg_n_0_[4] ),
        .I1(\idle_xmit_cntr_reg_n_0_[1] ),
        .I2(\idle_xmit_cntr_reg_n_0_[0] ),
        .I3(\idle_xmit_cntr_reg_n_0_[2] ),
        .I4(wait_for_remote_r),
        .I5(\idle_xmit_cntr_reg_n_0_[3] ),
        .O(\idle_xmit_cntr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAA6AAAAAAA)) 
    \idle_xmit_cntr[1]_i_1 
       (.I0(\idle_xmit_cntr_reg_n_0_[1] ),
        .I1(\idle_xmit_cntr_reg_n_0_[3] ),
        .I2(\idle_xmit_cntr_reg_n_0_[5] ),
        .I3(\idle_xmit_cntr_reg_n_0_[4] ),
        .I4(\idle_xmit_cntr_reg_n_0_[2] ),
        .I5(\idle_xmit_cntr_reg_n_0_[0] ),
        .O(\idle_xmit_cntr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAAA6AAA6AAA6AAA)) 
    \idle_xmit_cntr[2]_i_1 
       (.I0(\idle_xmit_cntr_reg_n_0_[2] ),
        .I1(\idle_xmit_cntr_reg_n_0_[4] ),
        .I2(\idle_xmit_cntr_reg_n_0_[5] ),
        .I3(\idle_xmit_cntr_reg_n_0_[3] ),
        .I4(\idle_xmit_cntr_reg_n_0_[1] ),
        .I5(\idle_xmit_cntr_reg_n_0_[0] ),
        .O(\idle_xmit_cntr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA6A6A6A6A6A6A6A)) 
    \idle_xmit_cntr[3]_i_1 
       (.I0(\idle_xmit_cntr_reg_n_0_[3] ),
        .I1(\idle_xmit_cntr_reg_n_0_[5] ),
        .I2(\idle_xmit_cntr_reg_n_0_[4] ),
        .I3(\idle_xmit_cntr_reg_n_0_[2] ),
        .I4(\idle_xmit_cntr_reg_n_0_[0] ),
        .I5(\idle_xmit_cntr_reg_n_0_[1] ),
        .O(\idle_xmit_cntr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD5555555AAAAAAAA)) 
    \idle_xmit_cntr[4]_i_1 
       (.I0(\idle_xmit_cntr_reg_n_0_[5] ),
        .I1(\idle_xmit_cntr_reg_n_0_[1] ),
        .I2(\idle_xmit_cntr_reg_n_0_[0] ),
        .I3(\idle_xmit_cntr_reg_n_0_[2] ),
        .I4(\idle_xmit_cntr_reg_n_0_[3] ),
        .I5(\idle_xmit_cntr_reg_n_0_[4] ),
        .O(\idle_xmit_cntr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \idle_xmit_cntr[5]_i_1 
       (.I0(\idle_xmit_cntr_reg_n_0_[1] ),
        .I1(\idle_xmit_cntr_reg_n_0_[0] ),
        .I2(\idle_xmit_cntr_reg_n_0_[2] ),
        .I3(\idle_xmit_cntr_reg_n_0_[3] ),
        .I4(\idle_xmit_cntr_reg_n_0_[4] ),
        .I5(\idle_xmit_cntr_reg_n_0_[5] ),
        .O(\idle_xmit_cntr[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idle_xmit_cntr_reg[0] 
       (.C(user_clk),
        .CE(idle_xmit_cntr),
        .D(\idle_xmit_cntr[0]_i_2_n_0 ),
        .Q(\idle_xmit_cntr_reg_n_0_[0] ),
        .R(wait_for_lane_up_r_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \idle_xmit_cntr_reg[1] 
       (.C(user_clk),
        .CE(idle_xmit_cntr),
        .D(\idle_xmit_cntr[1]_i_1_n_0 ),
        .Q(\idle_xmit_cntr_reg_n_0_[1] ),
        .R(wait_for_lane_up_r_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \idle_xmit_cntr_reg[2] 
       (.C(user_clk),
        .CE(idle_xmit_cntr),
        .D(\idle_xmit_cntr[2]_i_1_n_0 ),
        .Q(\idle_xmit_cntr_reg_n_0_[2] ),
        .R(wait_for_lane_up_r_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \idle_xmit_cntr_reg[3] 
       (.C(user_clk),
        .CE(idle_xmit_cntr),
        .D(\idle_xmit_cntr[3]_i_1_n_0 ),
        .Q(\idle_xmit_cntr_reg_n_0_[3] ),
        .R(wait_for_lane_up_r_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \idle_xmit_cntr_reg[4] 
       (.C(user_clk),
        .CE(idle_xmit_cntr),
        .D(\idle_xmit_cntr[4]_i_1_n_0 ),
        .Q(\idle_xmit_cntr_reg_n_0_[4] ),
        .R(wait_for_lane_up_r_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \idle_xmit_cntr_reg[5] 
       (.C(user_clk),
        .CE(idle_xmit_cntr),
        .D(\idle_xmit_cntr[5]_i_1_n_0 ),
        .Q(\idle_xmit_cntr_reg_n_0_[5] ),
        .R(wait_for_lane_up_r_reg_0));
  LUT6 #(
    .INIT(64'h00000000CC080000)) 
    ready_r_i_1__0
       (.I0(wait_for_remote_r),
        .I1(remote_ready_r),
        .I2(\idle_xmit_cntr[0]_i_3_n_0 ),
        .I3(ready_r),
        .I4(lane_up),
        .I5(CHANNEL_UP_TX_IF_reg_1),
        .O(ready_r_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r_i_1__0_n_0),
        .Q(ready_r),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    remote_ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(remote_ready_i),
        .Q(remote_ready_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b1)) 
    reset_lanes_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_lanes_c),
        .Q(SR),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    reset_r_i_1
       (.I0(CHANNEL_UP_RX_IF_reg_0),
        .O(CHANNEL_UP_RX_IF_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    wait_for_lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wait_for_lane_up_r_reg_1),
        .Q(wait_for_lane_up_r_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EAEAFFEE)) 
    wait_for_remote_r_i_1
       (.I0(wait_for_lane_up_r_reg_0),
        .I1(wait_for_remote_r),
        .I2(\idle_xmit_cntr[0]_i_3_n_0 ),
        .I3(ready_r),
        .I4(remote_ready_r),
        .I5(wait_for_lane_up_r_reg_1),
        .O(wait_for_remote_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wait_for_remote_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wait_for_remote_r_i_1_n_0),
        .Q(wait_for_remote_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_CLOCK_CORRECTION_CHANNEL_BONDING" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_CLOCK_CORRECTION_CHANNEL_BONDING
   (user_clk_0,
    do_rd_en_i,
    CC_detect_dlyd1,
    CB_detect_dlyd0p5,
    rx_lossofsync_i,
    final_gater_for_fifo_din_i,
    bit_err_chan_bond_i,
    START_CB_WRITES_OUT,
    ANY_VLD_BTF_FLAG,
    wr_err_rd_clk_sync_reg_0,
    hard_err_usr0,
    ILLEGAL_BTF_reg,
    rxdatavalid_i,
    allow_block_sync_propagation_reg,
    p_2_in,
    cdr_reset_fsm_lnkreset_reg,
    hold_reg_reg_0,
    rxfsm_reset_i,
    LINK_RESET_OUT0,
    in0,
    rxdatavalid_to_fifo_i,
    out,
    user_clk,
    master_do_rd_en_q_reg_0,
    cbcc_fifo_reset_to_fifo_rd_clk,
    UNSCRAMBLED_DATA_OUT,
    Q,
    cbcc_fifo_reset_rd_clk,
    init_clk,
    cbcc_reset_cbstg2_rd_clk,
    cbcc_fifo_reset_wr_clk,
    CC_detect,
    CB_detect0,
    D,
    HARD_ERR_reg,
    TXBUFSTATUS,
    enable_err_detect_i,
    hard_err_usr_reg,
    channel_up_tx_if,
    illegal_btf_i,
    CC_RXLOSSOFSYNC_OUT_reg_0,
    allow_block_sync_propagation_reg_0,
    allow_block_sync_propagation,
    allow_block_sync_propagation_reg_1,
    cdr_reset_fsm_lnkreset,
    \rx_state_reg[7] ,
    START_CB_WRITES_OUT_reg_0,
    do_wr_en_reg_0,
    rst_drp,
    hard_err_rst_int,
    \count_for_reset_r_reg[0]_0 ,
    reset_initclk,
    AR,
    SR,
    \valid_btf_detect_extend_r_reg[4]_0 );
  output [65:0]user_clk_0;
  output do_rd_en_i;
  output CC_detect_dlyd1;
  output CB_detect_dlyd0p5;
  output rx_lossofsync_i;
  output final_gater_for_fifo_din_i;
  output bit_err_chan_bond_i;
  output START_CB_WRITES_OUT;
  output ANY_VLD_BTF_FLAG;
  output wr_err_rd_clk_sync_reg_0;
  output hard_err_usr0;
  output ILLEGAL_BTF_reg;
  output rxdatavalid_i;
  output allow_block_sync_propagation_reg;
  output p_2_in;
  output cdr_reset_fsm_lnkreset_reg;
  output hold_reg_reg_0;
  output rxfsm_reset_i;
  output LINK_RESET_OUT0;
  input in0;
  input rxdatavalid_to_fifo_i;
  input out;
  input user_clk;
  input master_do_rd_en_q_reg_0;
  input cbcc_fifo_reset_to_fifo_rd_clk;
  input [31:0]UNSCRAMBLED_DATA_OUT;
  input [1:0]Q;
  input cbcc_fifo_reset_rd_clk;
  input init_clk;
  input cbcc_reset_cbstg2_rd_clk;
  input cbcc_fifo_reset_wr_clk;
  input CC_detect;
  input CB_detect0;
  input [1:0]D;
  input HARD_ERR_reg;
  input [0:0]TXBUFSTATUS;
  input enable_err_detect_i;
  input hard_err_usr_reg;
  input channel_up_tx_if;
  input illegal_btf_i;
  input CC_RXLOSSOFSYNC_OUT_reg_0;
  input allow_block_sync_propagation_reg_0;
  input allow_block_sync_propagation;
  input allow_block_sync_propagation_reg_1;
  input cdr_reset_fsm_lnkreset;
  input \rx_state_reg[7] ;
  input START_CB_WRITES_OUT_reg_0;
  input do_wr_en_reg_0;
  input rst_drp;
  input hard_err_rst_int;
  input \count_for_reset_r_reg[0]_0 ;
  input reset_initclk;
  input [0:0]AR;
  input [0:0]SR;
  input [0:0]\valid_btf_detect_extend_r_reg[4]_0 ;

  wire ANY_VLD_BTF_FLAG;
  wire ANY_VLD_BTF_FLAG_i_1_n_0;
  wire [0:0]AR;
  wire CB_detect0;
  wire CB_detect_dlyd0p5;
  wire CB_detect_dlyd1;
  wire CB_detect_dlyd10;
  wire CB_detect_dlyd1p0;
  wire CC_RXLOSSOFSYNC_OUT_reg_0;
  wire CC_detect;
  wire CC_detect_dlyd1;
  wire CC_detect_pulse_r;
  wire [1:0]D;
  wire FINAL_GATER_FOR_FIFO_DIN_i_1_n_0;
  wire FIRST_CB_BITERR_CB_RESET_OUT1__15;
  wire FIRST_CB_BITERR_CB_RESET_OUT_i_1_n_0;
  wire FIRST_CB_BITERR_CB_RESET_OUT_i_2_n_0;
  wire FIRST_CB_BITERR_CB_RESET_OUT_i_4_n_0;
  wire FIRST_CB_BITERR_CB_RESET_OUT_i_5_n_0;
  wire FIRST_CB_BITERR_CB_RESET_OUT_i_6_n_0;
  wire FIRST_CB_BITERR_CB_RESET_OUT_i_7_n_0;
  wire HARD_ERR_reg;
  wire ILLEGAL_BTF_reg;
  wire \LINK_RESET[0]_i_2_n_0 ;
  wire \LINK_RESET[0]_i_3_n_0 ;
  wire \LINK_RESET[0]_i_4_n_0 ;
  wire \LINK_RESET[0]_i_5_n_0 ;
  wire \LINK_RESET[0]_i_6_n_0 ;
  wire \LINK_RESET[0]_i_7_n_0 ;
  wire \LINK_RESET[0]_i_8_n_0 ;
  wire \LINK_RESET[0]_i_9_n_0 ;
  wire LINK_RESET_OUT0;
  wire [1:0]Q;
  wire SOFT_ERR_i_2_n_0;
  wire [0:0]SR;
  wire START_CB_WRITES_OUT;
  wire START_CB_WRITES_OUT_i_1_n_0;
  wire START_CB_WRITES_OUT_reg_0;
  wire [0:0]TXBUFSTATUS;
  wire [31:0]UNSCRAMBLED_DATA_OUT;
  wire allow_block_sync_propagation;
  wire allow_block_sync_propagation_reg;
  wire allow_block_sync_propagation_reg_0;
  wire allow_block_sync_propagation_reg_1;
  wire any_vld_btf_fifo_din_detect;
  wire any_vld_btf_fifo_din_detect_dlyd;
  wire any_vld_btf_fifo_din_detect_dlyd_i_1_n_0;
  wire any_vld_btf_fifo_din_detect_dlyd_i_3_n_0;
  wire any_vld_btf_fifo_din_detect_dlyd_i_4_n_0;
  wire any_vld_btf_fifo_din_detect_dlyd_i_5_n_0;
  wire bit80_prsnt;
  wire bit_err_chan_bond_i;
  wire buffer_too_empty_c;
  wire cb_fifo_din_detect_q;
  wire cbcc_fifo_reset_rd_clk;
  wire cbcc_fifo_reset_to_fifo_rd_clk;
  wire cbcc_fifo_reset_wr_clk;
  wire cbcc_reset_cbstg2_rd_clk;
  wire cdr_reset_fsm_lnkreset;
  wire cdr_reset_fsm_lnkreset_reg;
  wire channel_up_tx_if;
  wire \count_for_reset_r[0]_i_1_n_0 ;
  wire \count_for_reset_r[0]_i_3_n_0 ;
  wire [23:0]count_for_reset_r_reg;
  wire \count_for_reset_r_reg[0]_0 ;
  wire \count_for_reset_r_reg[0]_i_2_n_0 ;
  wire \count_for_reset_r_reg[0]_i_2_n_1 ;
  wire \count_for_reset_r_reg[0]_i_2_n_2 ;
  wire \count_for_reset_r_reg[0]_i_2_n_3 ;
  wire \count_for_reset_r_reg[0]_i_2_n_4 ;
  wire \count_for_reset_r_reg[0]_i_2_n_5 ;
  wire \count_for_reset_r_reg[0]_i_2_n_6 ;
  wire \count_for_reset_r_reg[0]_i_2_n_7 ;
  wire \count_for_reset_r_reg[12]_i_1_n_0 ;
  wire \count_for_reset_r_reg[12]_i_1_n_1 ;
  wire \count_for_reset_r_reg[12]_i_1_n_2 ;
  wire \count_for_reset_r_reg[12]_i_1_n_3 ;
  wire \count_for_reset_r_reg[12]_i_1_n_4 ;
  wire \count_for_reset_r_reg[12]_i_1_n_5 ;
  wire \count_for_reset_r_reg[12]_i_1_n_6 ;
  wire \count_for_reset_r_reg[12]_i_1_n_7 ;
  wire \count_for_reset_r_reg[16]_i_1_n_0 ;
  wire \count_for_reset_r_reg[16]_i_1_n_1 ;
  wire \count_for_reset_r_reg[16]_i_1_n_2 ;
  wire \count_for_reset_r_reg[16]_i_1_n_3 ;
  wire \count_for_reset_r_reg[16]_i_1_n_4 ;
  wire \count_for_reset_r_reg[16]_i_1_n_5 ;
  wire \count_for_reset_r_reg[16]_i_1_n_6 ;
  wire \count_for_reset_r_reg[16]_i_1_n_7 ;
  wire \count_for_reset_r_reg[20]_i_1_n_1 ;
  wire \count_for_reset_r_reg[20]_i_1_n_2 ;
  wire \count_for_reset_r_reg[20]_i_1_n_3 ;
  wire \count_for_reset_r_reg[20]_i_1_n_4 ;
  wire \count_for_reset_r_reg[20]_i_1_n_5 ;
  wire \count_for_reset_r_reg[20]_i_1_n_6 ;
  wire \count_for_reset_r_reg[20]_i_1_n_7 ;
  wire \count_for_reset_r_reg[4]_i_1_n_0 ;
  wire \count_for_reset_r_reg[4]_i_1_n_1 ;
  wire \count_for_reset_r_reg[4]_i_1_n_2 ;
  wire \count_for_reset_r_reg[4]_i_1_n_3 ;
  wire \count_for_reset_r_reg[4]_i_1_n_4 ;
  wire \count_for_reset_r_reg[4]_i_1_n_5 ;
  wire \count_for_reset_r_reg[4]_i_1_n_6 ;
  wire \count_for_reset_r_reg[4]_i_1_n_7 ;
  wire \count_for_reset_r_reg[8]_i_1_n_0 ;
  wire \count_for_reset_r_reg[8]_i_1_n_1 ;
  wire \count_for_reset_r_reg[8]_i_1_n_2 ;
  wire \count_for_reset_r_reg[8]_i_1_n_3 ;
  wire \count_for_reset_r_reg[8]_i_1_n_4 ;
  wire \count_for_reset_r_reg[8]_i_1_n_5 ;
  wire \count_for_reset_r_reg[8]_i_1_n_6 ;
  wire \count_for_reset_r_reg[8]_i_1_n_7 ;
  wire do_rd_en;
  wire do_rd_en_i;
  wire do_wr_en;
  wire do_wr_en_i_1_n_0;
  wire do_wr_en_i_2_n_0;
  wire do_wr_en_reg_0;
  wire [79:0]en32_fifo_din_i;
  wire enable_err_detect_i;
  wire [68:68]fifo_dout_i;
  wire final_gater_for_fifo_din_i;
  wire first_cb_to_write_to_fifo;
  wire first_cb_to_write_to_fifo_dlyd;
  wire first_cb_to_write_to_fifo_dlyd_i_2_n_0;
  wire first_cb_to_write_to_fifo_dlyd_i_3_n_0;
  wire first_cb_to_write_to_fifo_dlyd_i_4_n_0;
  wire hard_err_rst_int;
  wire hard_err_usr0;
  wire hard_err_usr_reg;
  wire hold_reg;
  wire hold_reg_i_1_n_0;
  wire hold_reg_reg_0;
  wire illegal_btf_i;
  wire in0;
  wire init_clk;
  wire link_reset_0;
  wire link_reset_0_c;
  wire master_do_rd_en_q;
  wire master_do_rd_en_q_reg_0;
  wire mod_do_wr_en;
  wire new_do_wr_en;
  wire new_do_wr_en_i_1_n_0;
  wire new_underflow_flag_c0;
  wire new_underflow_flag_c_reg_inv_n_0;
  wire out;
  wire overflow_flag_c;
  wire p_0_in0_in;
  wire [4:0]p_0_in__3;
  wire p_1_in;
  wire p_2_in;
  wire \raw_data_r_r_reg_n_0_[0] ;
  wire \raw_data_r_r_reg_n_0_[10] ;
  wire \raw_data_r_r_reg_n_0_[11] ;
  wire \raw_data_r_r_reg_n_0_[12] ;
  wire \raw_data_r_r_reg_n_0_[13] ;
  wire \raw_data_r_r_reg_n_0_[14] ;
  wire \raw_data_r_r_reg_n_0_[15] ;
  wire \raw_data_r_r_reg_n_0_[16] ;
  wire \raw_data_r_r_reg_n_0_[17] ;
  wire \raw_data_r_r_reg_n_0_[18] ;
  wire \raw_data_r_r_reg_n_0_[19] ;
  wire \raw_data_r_r_reg_n_0_[1] ;
  wire \raw_data_r_r_reg_n_0_[20] ;
  wire \raw_data_r_r_reg_n_0_[21] ;
  wire \raw_data_r_r_reg_n_0_[22] ;
  wire \raw_data_r_r_reg_n_0_[23] ;
  wire \raw_data_r_r_reg_n_0_[24] ;
  wire \raw_data_r_r_reg_n_0_[25] ;
  wire \raw_data_r_r_reg_n_0_[26] ;
  wire \raw_data_r_r_reg_n_0_[27] ;
  wire \raw_data_r_r_reg_n_0_[28] ;
  wire \raw_data_r_r_reg_n_0_[29] ;
  wire \raw_data_r_r_reg_n_0_[2] ;
  wire \raw_data_r_r_reg_n_0_[30] ;
  wire \raw_data_r_r_reg_n_0_[31] ;
  wire \raw_data_r_r_reg_n_0_[32] ;
  wire \raw_data_r_r_reg_n_0_[33] ;
  wire \raw_data_r_r_reg_n_0_[3] ;
  wire \raw_data_r_r_reg_n_0_[4] ;
  wire \raw_data_r_r_reg_n_0_[5] ;
  wire \raw_data_r_r_reg_n_0_[6] ;
  wire \raw_data_r_r_reg_n_0_[7] ;
  wire \raw_data_r_r_reg_n_0_[8] ;
  wire \raw_data_r_r_reg_n_0_[9] ;
  wire \raw_data_r_reg_n_0_[0] ;
  wire \raw_data_r_reg_n_0_[10] ;
  wire \raw_data_r_reg_n_0_[11] ;
  wire \raw_data_r_reg_n_0_[12] ;
  wire \raw_data_r_reg_n_0_[13] ;
  wire \raw_data_r_reg_n_0_[14] ;
  wire \raw_data_r_reg_n_0_[15] ;
  wire \raw_data_r_reg_n_0_[16] ;
  wire \raw_data_r_reg_n_0_[17] ;
  wire \raw_data_r_reg_n_0_[18] ;
  wire \raw_data_r_reg_n_0_[19] ;
  wire \raw_data_r_reg_n_0_[1] ;
  wire \raw_data_r_reg_n_0_[20] ;
  wire \raw_data_r_reg_n_0_[21] ;
  wire \raw_data_r_reg_n_0_[22] ;
  wire \raw_data_r_reg_n_0_[23] ;
  wire \raw_data_r_reg_n_0_[24] ;
  wire \raw_data_r_reg_n_0_[25] ;
  wire \raw_data_r_reg_n_0_[26] ;
  wire \raw_data_r_reg_n_0_[27] ;
  wire \raw_data_r_reg_n_0_[28] ;
  wire \raw_data_r_reg_n_0_[29] ;
  wire \raw_data_r_reg_n_0_[2] ;
  wire \raw_data_r_reg_n_0_[30] ;
  wire \raw_data_r_reg_n_0_[31] ;
  wire \raw_data_r_reg_n_0_[32] ;
  wire \raw_data_r_reg_n_0_[33] ;
  wire \raw_data_r_reg_n_0_[3] ;
  wire \raw_data_r_reg_n_0_[4] ;
  wire \raw_data_r_reg_n_0_[5] ;
  wire \raw_data_r_reg_n_0_[6] ;
  wire \raw_data_r_reg_n_0_[7] ;
  wire \raw_data_r_reg_n_0_[8] ;
  wire \raw_data_r_reg_n_0_[9] ;
  wire [34:0]raw_data_srl_out;
  wire rd_err_c;
  wire rd_err_pre;
  wire reset_initclk;
  wire rst_drp;
  wire rx_lossofsync_i;
  wire \rx_state_reg[7] ;
  wire [1:0]rxbuferr_out_i;
  wire rxdatavalid_i;
  wire rxdatavalid_lookahead_i;
  wire rxdatavalid_to_fifo_i;
  wire rxfsm_reset_i;
  wire u_cdc_rxlossofsync_in_n_0;
  wire u_rst_sync_btf_sync_n_0;
  wire underflow_flag_c;
  wire underflow_flag_r1;
  wire underflow_flag_r10;
  wire underflow_flag_r2;
  wire underflow_flag_r3;
  wire user_clk;
  wire [65:0]user_clk_0;
  wire valid_btf_detect;
  wire valid_btf_detect_dlyd1;
  wire [4:0]valid_btf_detect_extend_r;
  wire valid_btf_detect_extend_r2;
  wire valid_btf_detect_extend_r20_n_0;
  wire [0:0]\valid_btf_detect_extend_r_reg[4]_0 ;
  wire [2:0]wait_for_rd_en;
  wire \wait_for_rd_en[0]_i_1_n_0 ;
  wire \wait_for_rd_en[1]_i_1_n_0 ;
  wire \wait_for_rd_en[2]_i_1_n_0 ;
  wire [1:0]wait_for_wr_en;
  wire \wait_for_wr_en[0]_i_1_n_0 ;
  wire \wait_for_wr_en[1]_i_1_n_0 ;
  wire \wait_for_wr_en_wr3_reg[0]_srl3_n_0 ;
  wire \wait_for_wr_en_wr3_reg[1]_srl3_n_0 ;
  wire [1:0]wait_for_wr_en_wr4;
  wire [39:0]wdth_conv_1stage;
  wire [39:32]wdth_conv_2stage;
  wire \wdth_conv_count[0]_i_1_n_0 ;
  wire \wdth_conv_count[0]_i_2_n_0 ;
  wire \wdth_conv_count[1]_i_1_n_0 ;
  wire \wdth_conv_count_reg_n_0_[0] ;
  wire wr_err_c;
  wire wr_err_rd_clk_pre;
  wire wr_err_rd_clk_sync_reg_0;
  wire wr_monitor_flag;
  wire [4:0]wr_monitor_flag_reg;
  wire NLW_SRLC32E_inst_4_Q31_UNCONNECTED;
  wire [3:3]\NLW_count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED ;
  wire NLW_data_fifo_ALMOSTFULL_UNCONNECTED;
  wire NLW_data_fifo_DBITERR_UNCONNECTED;
  wire NLW_data_fifo_SBITERR_UNCONNECTED;
  wire [7:2]NLW_data_fifo_DOP_UNCONNECTED;
  wire [7:0]NLW_data_fifo_ECCPARITY_UNCONNECTED;
  wire [12:0]NLW_data_fifo_RDCOUNT_UNCONNECTED;
  wire [12:0]NLW_data_fifo_WRCOUNT_UNCONNECTED;
  wire \NLW_srlc32e[0].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[10].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[11].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[12].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[13].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[14].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[15].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[16].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[17].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[18].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[19].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[1].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[20].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[21].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[22].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[23].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[24].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[25].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[26].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[27].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[28].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[29].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[2].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[30].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[31].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[32].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[33].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[34].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[3].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[4].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[5].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[6].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[7].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[8].SRLC32E_inst_1_Q31_UNCONNECTED ;
  wire \NLW_srlc32e[9].SRLC32E_inst_1_Q31_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hF8)) 
    ANY_VLD_BTF_FLAG_i_1
       (.I0(p_0_in0_in),
        .I1(any_vld_btf_fifo_din_detect_dlyd),
        .I2(ANY_VLD_BTF_FLAG),
        .O(ANY_VLD_BTF_FLAG_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ANY_VLD_BTF_FLAG_reg
       (.C(out),
        .CE(1'b1),
        .D(ANY_VLD_BTF_FLAG_i_1_n_0),
        .Q(ANY_VLD_BTF_FLAG),
        .R(any_vld_btf_fifo_din_detect_dlyd_i_1_n_0));
  FDRE CB_detect_dlyd0p5_reg
       (.C(out),
        .CE(1'b1),
        .D(CB_detect0),
        .Q(CB_detect_dlyd0p5),
        .R(cbcc_fifo_reset_wr_clk));
  LUT2 #(
    .INIT(4'hE)) 
    CB_detect_dlyd1_i_1
       (.I0(CB_detect_dlyd1p0),
        .I1(CB_detect_dlyd0p5),
        .O(CB_detect_dlyd10));
  FDRE CB_detect_dlyd1_reg
       (.C(out),
        .CE(1'b1),
        .D(CB_detect_dlyd10),
        .Q(CB_detect_dlyd1),
        .R(cbcc_fifo_reset_wr_clk));
  FDRE CB_detect_dlyd1p0_reg
       (.C(out),
        .CE(1'b1),
        .D(CB_detect_dlyd0p5),
        .Q(CB_detect_dlyd1p0),
        .R(cbcc_fifo_reset_wr_clk));
  FDRE CC_RXLOSSOFSYNC_OUT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(u_cdc_rxlossofsync_in_n_0),
        .Q(rx_lossofsync_i),
        .R(1'b0));
  FDRE CC_detect_dlyd1_reg
       (.C(out),
        .CE(1'b1),
        .D(CC_detect),
        .Q(CC_detect_dlyd1),
        .R(cbcc_fifo_reset_wr_clk));
  FDRE CC_detect_pulse_r_reg
       (.C(out),
        .CE(1'b1),
        .D(D[1]),
        .Q(CC_detect_pulse_r),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF80)) 
    FINAL_GATER_FOR_FIFO_DIN_i_1
       (.I0(cb_fifo_din_detect_q),
        .I1(p_0_in0_in),
        .I2(do_wr_en_reg_0),
        .I3(final_gater_for_fifo_din_i),
        .O(FINAL_GATER_FOR_FIFO_DIN_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    FINAL_GATER_FOR_FIFO_DIN_reg
       (.C(out),
        .CE(1'b1),
        .D(FINAL_GATER_FOR_FIFO_DIN_i_1_n_0),
        .Q(final_gater_for_fifo_din_i),
        .R(cbcc_fifo_reset_wr_clk));
  LUT6 #(
    .INIT(64'h4155410000000000)) 
    FIRST_CB_BITERR_CB_RESET_OUT_i_1
       (.I0(SR),
        .I1(FIRST_CB_BITERR_CB_RESET_OUT_i_2_n_0),
        .I2(FIRST_CB_BITERR_CB_RESET_OUT1__15),
        .I3(new_do_wr_en),
        .I4(bit_err_chan_bond_i),
        .I5(FIRST_CB_BITERR_CB_RESET_OUT_i_4_n_0),
        .O(FIRST_CB_BITERR_CB_RESET_OUT_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    FIRST_CB_BITERR_CB_RESET_OUT_i_2
       (.I0(wr_monitor_flag_reg[1]),
        .I1(wr_monitor_flag_reg[2]),
        .I2(wr_monitor_flag_reg[0]),
        .I3(wr_monitor_flag_reg[3]),
        .I4(wr_monitor_flag_reg[4]),
        .O(FIRST_CB_BITERR_CB_RESET_OUT_i_2_n_0));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    FIRST_CB_BITERR_CB_RESET_OUT_i_3
       (.I0(en32_fifo_din_i[58]),
        .I1(en32_fifo_din_i[57]),
        .I2(en32_fifo_din_i[56]),
        .I3(FIRST_CB_BITERR_CB_RESET_OUT_i_5_n_0),
        .I4(FIRST_CB_BITERR_CB_RESET_OUT_i_6_n_0),
        .I5(FIRST_CB_BITERR_CB_RESET_OUT_i_7_n_0),
        .O(FIRST_CB_BITERR_CB_RESET_OUT1__15));
  LUT5 #(
    .INIT(32'h11111554)) 
    FIRST_CB_BITERR_CB_RESET_OUT_i_4
       (.I0(wr_monitor_flag_reg[4]),
        .I1(wr_monitor_flag_reg[3]),
        .I2(wr_monitor_flag_reg[0]),
        .I3(wr_monitor_flag_reg[1]),
        .I4(wr_monitor_flag_reg[2]),
        .O(FIRST_CB_BITERR_CB_RESET_OUT_i_4_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    FIRST_CB_BITERR_CB_RESET_OUT_i_5
       (.I0(en32_fifo_din_i[61]),
        .I1(en32_fifo_din_i[62]),
        .I2(en32_fifo_din_i[60]),
        .I3(en32_fifo_din_i[59]),
        .O(FIRST_CB_BITERR_CB_RESET_OUT_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    FIRST_CB_BITERR_CB_RESET_OUT_i_6
       (.I0(en32_fifo_din_i[66]),
        .I1(en32_fifo_din_i[65]),
        .I2(en32_fifo_din_i[64]),
        .I3(en32_fifo_din_i[63]),
        .O(FIRST_CB_BITERR_CB_RESET_OUT_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    FIRST_CB_BITERR_CB_RESET_OUT_i_7
       (.I0(en32_fifo_din_i[67]),
        .I1(en32_fifo_din_i[68]),
        .I2(en32_fifo_din_i[69]),
        .I3(en32_fifo_din_i[70]),
        .I4(en32_fifo_din_i[71]),
        .I5(en32_fifo_din_i[76]),
        .O(FIRST_CB_BITERR_CB_RESET_OUT_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    FIRST_CB_BITERR_CB_RESET_OUT_reg
       (.C(out),
        .CE(1'b1),
        .D(FIRST_CB_BITERR_CB_RESET_OUT_i_1_n_0),
        .Q(bit_err_chan_bond_i),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    HARD_ERR_i_1
       (.I0(rxbuferr_out_i[1]),
        .I1(rxbuferr_out_i[0]),
        .I2(HARD_ERR_reg),
        .I3(TXBUFSTATUS),
        .I4(enable_err_detect_i),
        .O(wr_err_rd_clk_sync_reg_0));
  LUT3 #(
    .INIT(8'h04)) 
    \LINK_RESET[0]_i_1 
       (.I0(\LINK_RESET[0]_i_2_n_0 ),
        .I1(\LINK_RESET[0]_i_3_n_0 ),
        .I2(\LINK_RESET[0]_i_4_n_0 ),
        .O(link_reset_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \LINK_RESET[0]_i_2 
       (.I0(count_for_reset_r_reg[12]),
        .I1(count_for_reset_r_reg[9]),
        .I2(count_for_reset_r_reg[21]),
        .I3(count_for_reset_r_reg[10]),
        .I4(\LINK_RESET[0]_i_5_n_0 ),
        .O(\LINK_RESET[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \LINK_RESET[0]_i_3 
       (.I0(count_for_reset_r_reg[23]),
        .I1(count_for_reset_r_reg[11]),
        .I2(count_for_reset_r_reg[17]),
        .I3(count_for_reset_r_reg[14]),
        .I4(\LINK_RESET[0]_i_6_n_0 ),
        .O(\LINK_RESET[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F40004000400040)) 
    \LINK_RESET[0]_i_4 
       (.I0(count_for_reset_r_reg[3]),
        .I1(\LINK_RESET[0]_i_7_n_0 ),
        .I2(\LINK_RESET[0]_i_8_n_0 ),
        .I3(count_for_reset_r_reg[4]),
        .I4(count_for_reset_r_reg[20]),
        .I5(\LINK_RESET[0]_i_9_n_0 ),
        .O(\LINK_RESET[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \LINK_RESET[0]_i_5 
       (.I0(count_for_reset_r_reg[8]),
        .I1(count_for_reset_r_reg[16]),
        .I2(count_for_reset_r_reg[20]),
        .I3(count_for_reset_r_reg[22]),
        .O(\LINK_RESET[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \LINK_RESET[0]_i_6 
       (.I0(count_for_reset_r_reg[15]),
        .I1(count_for_reset_r_reg[18]),
        .I2(count_for_reset_r_reg[13]),
        .I3(count_for_reset_r_reg[19]),
        .O(\LINK_RESET[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \LINK_RESET[0]_i_7 
       (.I0(count_for_reset_r_reg[5]),
        .I1(count_for_reset_r_reg[0]),
        .I2(count_for_reset_r_reg[6]),
        .I3(count_for_reset_r_reg[7]),
        .O(\LINK_RESET[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \LINK_RESET[0]_i_8 
       (.I0(count_for_reset_r_reg[1]),
        .I1(count_for_reset_r_reg[2]),
        .O(\LINK_RESET[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \LINK_RESET[0]_i_9 
       (.I0(count_for_reset_r_reg[6]),
        .I1(count_for_reset_r_reg[7]),
        .I2(count_for_reset_r_reg[3]),
        .I3(count_for_reset_r_reg[5]),
        .O(\LINK_RESET[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    LINK_RESET_OUT_i_1
       (.I0(\rx_state_reg[7] ),
        .I1(link_reset_0_c),
        .O(LINK_RESET_OUT0));
  FDRE \LINK_RESET_reg[0] 
       (.C(init_clk),
        .CE(1'b1),
        .D(link_reset_0),
        .Q(link_reset_0_c),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    RXDATAVALID_IN_REG_i_1
       (.I0(master_do_rd_en_q),
        .I1(fifo_dout_i),
        .O(rxdatavalid_i));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \RX_DATA_REG[63]_i_1 
       (.I0(hold_reg),
        .O(hold_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFBBF0000)) 
    SOFT_ERR_i_1
       (.I0(illegal_btf_i),
        .I1(hold_reg),
        .I2(user_clk_0[65]),
        .I3(user_clk_0[64]),
        .I4(SOFT_ERR_i_2_n_0),
        .O(ILLEGAL_BTF_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    SOFT_ERR_i_2
       (.I0(fifo_dout_i),
        .I1(master_do_rd_en_q),
        .I2(enable_err_detect_i),
        .O(SOFT_ERR_i_2_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/SRLC32E_inst_4 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_4
       (.A({1'b0,1'b0,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(rxdatavalid_to_fifo_i),
        .Q(rxdatavalid_lookahead_i),
        .Q31(NLW_SRLC32E_inst_4_Q31_UNCONNECTED));
  LUT4 #(
    .INIT(16'hFF80)) 
    START_CB_WRITES_OUT_i_1
       (.I0(cb_fifo_din_detect_q),
        .I1(p_0_in0_in),
        .I2(START_CB_WRITES_OUT_reg_0),
        .I3(START_CB_WRITES_OUT),
        .O(START_CB_WRITES_OUT_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    START_CB_WRITES_OUT_reg
       (.C(out),
        .CE(1'b1),
        .D(START_CB_WRITES_OUT_i_1_n_0),
        .Q(START_CB_WRITES_OUT),
        .R(cbcc_fifo_reset_wr_clk));
  LUT5 #(
    .INIT(32'h0000CCCE)) 
    allow_block_sync_propagation_i_1
       (.I0(allow_block_sync_propagation_reg_0),
        .I1(allow_block_sync_propagation),
        .I2(allow_block_sync_propagation_reg_1),
        .I3(cdr_reset_fsm_lnkreset),
        .I4(p_2_in),
        .O(allow_block_sync_propagation_reg));
  LUT3 #(
    .INIT(8'hDF)) 
    any_vld_btf_fifo_din_detect_dlyd_i_1
       (.I0(wait_for_wr_en_wr4[1]),
        .I1(cbcc_fifo_reset_wr_clk),
        .I2(wait_for_wr_en_wr4[0]),
        .O(any_vld_btf_fifo_din_detect_dlyd_i_1_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    any_vld_btf_fifo_din_detect_dlyd_i_2
       (.I0(any_vld_btf_fifo_din_detect_dlyd_i_3_n_0),
        .I1(any_vld_btf_fifo_din_detect_dlyd_i_4_n_0),
        .I2(\raw_data_r_r_reg_n_0_[16] ),
        .I3(any_vld_btf_fifo_din_detect_dlyd_i_5_n_0),
        .O(any_vld_btf_fifo_din_detect));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    any_vld_btf_fifo_din_detect_dlyd_i_3
       (.I0(\raw_data_r_r_reg_n_0_[25] ),
        .I1(\raw_data_r_r_reg_n_0_[26] ),
        .I2(\raw_data_r_r_reg_n_0_[23] ),
        .I3(\raw_data_r_r_reg_n_0_[24] ),
        .I4(\raw_data_r_r_reg_n_0_[28] ),
        .I5(\raw_data_r_r_reg_n_0_[27] ),
        .O(any_vld_btf_fifo_din_detect_dlyd_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    any_vld_btf_fifo_din_detect_dlyd_i_4
       (.I0(\raw_data_r_r_reg_n_0_[19] ),
        .I1(\raw_data_r_r_reg_n_0_[20] ),
        .I2(\raw_data_r_r_reg_n_0_[17] ),
        .I3(\raw_data_r_r_reg_n_0_[18] ),
        .I4(\raw_data_r_r_reg_n_0_[21] ),
        .I5(\raw_data_r_r_reg_n_0_[22] ),
        .O(any_vld_btf_fifo_din_detect_dlyd_i_4_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    any_vld_btf_fifo_din_detect_dlyd_i_5
       (.I0(\raw_data_r_r_reg_n_0_[31] ),
        .I1(\raw_data_r_r_reg_n_0_[32] ),
        .I2(\raw_data_r_r_reg_n_0_[29] ),
        .I3(\raw_data_r_r_reg_n_0_[30] ),
        .I4(p_0_in0_in),
        .I5(\raw_data_r_r_reg_n_0_[33] ),
        .O(any_vld_btf_fifo_din_detect_dlyd_i_5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    any_vld_btf_fifo_din_detect_dlyd_reg
       (.C(out),
        .CE(1'b1),
        .D(any_vld_btf_fifo_din_detect),
        .Q(any_vld_btf_fifo_din_detect_dlyd),
        .R(any_vld_btf_fifo_din_detect_dlyd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cb_fifo_din_detect_q_reg
       (.C(out),
        .CE(1'b1),
        .D(any_vld_btf_fifo_din_detect),
        .Q(cb_fifo_din_detect_q),
        .R(cbcc_fifo_reset_wr_clk));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cdr_reset_fsm_cntr_r[7]_i_1 
       (.I0(rst_drp),
        .I1(hard_err_rst_int),
        .I2(link_reset_0_c),
        .O(p_2_in));
  LUT5 #(
    .INIT(32'h0000FF02)) 
    cdr_reset_fsm_lnkreset_i_1
       (.I0(\rx_state_reg[7] ),
        .I1(allow_block_sync_propagation),
        .I2(allow_block_sync_propagation_reg_1),
        .I3(cdr_reset_fsm_lnkreset),
        .I4(p_2_in),
        .O(cdr_reset_fsm_lnkreset_reg));
  LUT6 #(
    .INIT(64'hFEFEFEFEFFFFFEFF)) 
    \count_for_reset_r[0]_i_1 
       (.I0(valid_btf_detect_dlyd1),
        .I1(\rx_state_reg[7] ),
        .I2(rst_drp),
        .I3(\count_for_reset_r_reg[0]_0 ),
        .I4(reset_initclk),
        .I5(AR),
        .O(\count_for_reset_r[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_for_reset_r[0]_i_3 
       (.I0(count_for_reset_r_reg[0]),
        .O(\count_for_reset_r[0]_i_3_n_0 ));
  FDRE \count_for_reset_r_reg[0] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_2_n_7 ),
        .Q(count_for_reset_r_reg[0]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  CARRY4 \count_for_reset_r_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_for_reset_r_reg[0]_i_2_n_0 ,\count_for_reset_r_reg[0]_i_2_n_1 ,\count_for_reset_r_reg[0]_i_2_n_2 ,\count_for_reset_r_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_for_reset_r_reg[0]_i_2_n_4 ,\count_for_reset_r_reg[0]_i_2_n_5 ,\count_for_reset_r_reg[0]_i_2_n_6 ,\count_for_reset_r_reg[0]_i_2_n_7 }),
        .S({count_for_reset_r_reg[3:1],\count_for_reset_r[0]_i_3_n_0 }));
  FDRE \count_for_reset_r_reg[10] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[10]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[11] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[11]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[12] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[12]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  CARRY4 \count_for_reset_r_reg[12]_i_1 
       (.CI(\count_for_reset_r_reg[8]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[12]_i_1_n_0 ,\count_for_reset_r_reg[12]_i_1_n_1 ,\count_for_reset_r_reg[12]_i_1_n_2 ,\count_for_reset_r_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[12]_i_1_n_4 ,\count_for_reset_r_reg[12]_i_1_n_5 ,\count_for_reset_r_reg[12]_i_1_n_6 ,\count_for_reset_r_reg[12]_i_1_n_7 }),
        .S(count_for_reset_r_reg[15:12]));
  FDRE \count_for_reset_r_reg[13] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[13]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[14] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[14]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[15] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[12]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[15]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[16] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[16]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  CARRY4 \count_for_reset_r_reg[16]_i_1 
       (.CI(\count_for_reset_r_reg[12]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[16]_i_1_n_0 ,\count_for_reset_r_reg[16]_i_1_n_1 ,\count_for_reset_r_reg[16]_i_1_n_2 ,\count_for_reset_r_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[16]_i_1_n_4 ,\count_for_reset_r_reg[16]_i_1_n_5 ,\count_for_reset_r_reg[16]_i_1_n_6 ,\count_for_reset_r_reg[16]_i_1_n_7 }),
        .S(count_for_reset_r_reg[19:16]));
  FDRE \count_for_reset_r_reg[17] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[17]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[18] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[18]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[19] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[16]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[19]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[1] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_2_n_6 ),
        .Q(count_for_reset_r_reg[1]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[20] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[20]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  CARRY4 \count_for_reset_r_reg[20]_i_1 
       (.CI(\count_for_reset_r_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_for_reset_r_reg[20]_i_1_CO_UNCONNECTED [3],\count_for_reset_r_reg[20]_i_1_n_1 ,\count_for_reset_r_reg[20]_i_1_n_2 ,\count_for_reset_r_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[20]_i_1_n_4 ,\count_for_reset_r_reg[20]_i_1_n_5 ,\count_for_reset_r_reg[20]_i_1_n_6 ,\count_for_reset_r_reg[20]_i_1_n_7 }),
        .S(count_for_reset_r_reg[23:20]));
  FDRE \count_for_reset_r_reg[21] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[21]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[22] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[22]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[23] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[20]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[23]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[2] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_2_n_5 ),
        .Q(count_for_reset_r_reg[2]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[3] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[0]_i_2_n_4 ),
        .Q(count_for_reset_r_reg[3]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[4] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[4]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  CARRY4 \count_for_reset_r_reg[4]_i_1 
       (.CI(\count_for_reset_r_reg[0]_i_2_n_0 ),
        .CO({\count_for_reset_r_reg[4]_i_1_n_0 ,\count_for_reset_r_reg[4]_i_1_n_1 ,\count_for_reset_r_reg[4]_i_1_n_2 ,\count_for_reset_r_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[4]_i_1_n_4 ,\count_for_reset_r_reg[4]_i_1_n_5 ,\count_for_reset_r_reg[4]_i_1_n_6 ,\count_for_reset_r_reg[4]_i_1_n_7 }),
        .S(count_for_reset_r_reg[7:4]));
  FDRE \count_for_reset_r_reg[5] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[5]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[6] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_5 ),
        .Q(count_for_reset_r_reg[6]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[7] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[4]_i_1_n_4 ),
        .Q(count_for_reset_r_reg[7]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  FDRE \count_for_reset_r_reg[8] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_7 ),
        .Q(count_for_reset_r_reg[8]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  CARRY4 \count_for_reset_r_reg[8]_i_1 
       (.CI(\count_for_reset_r_reg[4]_i_1_n_0 ),
        .CO({\count_for_reset_r_reg[8]_i_1_n_0 ,\count_for_reset_r_reg[8]_i_1_n_1 ,\count_for_reset_r_reg[8]_i_1_n_2 ,\count_for_reset_r_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_for_reset_r_reg[8]_i_1_n_4 ,\count_for_reset_r_reg[8]_i_1_n_5 ,\count_for_reset_r_reg[8]_i_1_n_6 ,\count_for_reset_r_reg[8]_i_1_n_7 }),
        .S(count_for_reset_r_reg[11:8]));
  FDRE \count_for_reset_r_reg[9] 
       (.C(init_clk),
        .CE(1'b1),
        .D(\count_for_reset_r_reg[8]_i_1_n_6 ),
        .Q(count_for_reset_r_reg[9]),
        .R(\count_for_reset_r[0]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET(13'h000E),
    .ALMOST_FULL_OFFSET(13'h01C2),
    .DATA_WIDTH(72),
    .DO_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO36_72"),
    .FIRST_WORD_FALL_THROUGH("FALSE"),
    .INIT(72'h000000000000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(72'h000000000000000000)) 
    data_fifo
       (.ALMOSTEMPTY(buffer_too_empty_c),
        .ALMOSTFULL(NLW_data_fifo_ALMOSTFULL_UNCONNECTED),
        .DBITERR(NLW_data_fifo_DBITERR_UNCONNECTED),
        .DI({en32_fifo_din_i[71:40],en32_fifo_din_i[31:0]}),
        .DIP(en32_fifo_din_i[79:72]),
        .DO(user_clk_0[63:0]),
        .DOP({NLW_data_fifo_DOP_UNCONNECTED[7:5],fifo_dout_i,NLW_data_fifo_DOP_UNCONNECTED[3:2],user_clk_0[65:64]}),
        .ECCPARITY(NLW_data_fifo_ECCPARITY_UNCONNECTED[7:0]),
        .EMPTY(underflow_flag_c),
        .FULL(overflow_flag_c),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDCLK(user_clk),
        .RDCOUNT(NLW_data_fifo_RDCOUNT_UNCONNECTED[12:0]),
        .RDEN(master_do_rd_en_q_reg_0),
        .RDERR(rd_err_c),
        .REGCE(1'b1),
        .RST(cbcc_fifo_reset_to_fifo_rd_clk),
        .RSTREG(1'b0),
        .SBITERR(NLW_data_fifo_SBITERR_UNCONNECTED),
        .WRCLK(out),
        .WRCOUNT(NLW_data_fifo_WRCOUNT_UNCONNECTED[12:0]),
        .WREN(new_do_wr_en),
        .WRERR(wr_err_c));
  LUT3 #(
    .INIT(8'hBF)) 
    do_rd_en_i_1
       (.I0(cbcc_fifo_reset_rd_clk),
        .I1(wait_for_rd_en[2]),
        .I2(wait_for_rd_en[1]),
        .O(do_rd_en));
  FDRE #(
    .INIT(1'b0)) 
    do_rd_en_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(new_underflow_flag_c_reg_inv_n_0),
        .Q(do_rd_en_i),
        .R(do_rd_en));
  LUT6 #(
    .INIT(64'h0400040004040400)) 
    do_wr_en_i_1
       (.I0(any_vld_btf_fifo_din_detect_dlyd_i_1_n_0),
        .I1(p_1_in),
        .I2(overflow_flag_c),
        .I3(final_gater_for_fifo_din_i),
        .I4(do_wr_en_reg_0),
        .I5(do_wr_en_i_2_n_0),
        .O(do_wr_en_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    do_wr_en_i_2
       (.I0(cb_fifo_din_detect_q),
        .I1(p_0_in0_in),
        .O(do_wr_en_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    do_wr_en_reg
       (.C(out),
        .CE(1'b1),
        .D(do_wr_en_i_1_n_0),
        .Q(do_wr_en),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0800)) 
    first_cb_to_write_to_fifo_dlyd_i_1
       (.I0(first_cb_to_write_to_fifo_dlyd_i_2_n_0),
        .I1(first_cb_to_write_to_fifo_dlyd_i_3_n_0),
        .I2(\raw_data_r_reg_n_0_[16] ),
        .I3(first_cb_to_write_to_fifo_dlyd_i_4_n_0),
        .O(first_cb_to_write_to_fifo));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    first_cb_to_write_to_fifo_dlyd_i_2
       (.I0(\raw_data_r_reg_n_0_[25] ),
        .I1(\raw_data_r_reg_n_0_[26] ),
        .I2(\raw_data_r_reg_n_0_[23] ),
        .I3(\raw_data_r_reg_n_0_[24] ),
        .I4(\raw_data_r_reg_n_0_[28] ),
        .I5(\raw_data_r_reg_n_0_[27] ),
        .O(first_cb_to_write_to_fifo_dlyd_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    first_cb_to_write_to_fifo_dlyd_i_3
       (.I0(\raw_data_r_reg_n_0_[19] ),
        .I1(\raw_data_r_reg_n_0_[20] ),
        .I2(\raw_data_r_reg_n_0_[17] ),
        .I3(\raw_data_r_reg_n_0_[18] ),
        .I4(\raw_data_r_reg_n_0_[21] ),
        .I5(\raw_data_r_reg_n_0_[22] ),
        .O(first_cb_to_write_to_fifo_dlyd_i_3_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    first_cb_to_write_to_fifo_dlyd_i_4
       (.I0(\raw_data_r_reg_n_0_[31] ),
        .I1(\raw_data_r_reg_n_0_[32] ),
        .I2(\raw_data_r_reg_n_0_[29] ),
        .I3(\raw_data_r_reg_n_0_[30] ),
        .I4(p_1_in),
        .I5(\raw_data_r_reg_n_0_[33] ),
        .O(first_cb_to_write_to_fifo_dlyd_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    first_cb_to_write_to_fifo_dlyd_reg
       (.C(out),
        .CE(1'b1),
        .D(first_cb_to_write_to_fifo),
        .Q(first_cb_to_write_to_fifo_dlyd),
        .R(cbcc_fifo_reset_wr_clk));
  LUT6 #(
    .INIT(64'hFFFFAAA8AAA8AAA8)) 
    hard_err_usr_i_1
       (.I0(hard_err_usr_reg),
        .I1(rxbuferr_out_i[1]),
        .I2(rxbuferr_out_i[0]),
        .I3(HARD_ERR_reg),
        .I4(channel_up_tx_if),
        .I5(TXBUFSTATUS),
        .O(hard_err_usr0));
  LUT3 #(
    .INIT(8'h0E)) 
    hold_reg_i_1
       (.I0(hold_reg),
        .I1(do_rd_en_i),
        .I2(CC_RXLOSSOFSYNC_OUT_reg_0),
        .O(hold_reg_i_1_n_0));
  FDRE hold_reg_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hold_reg_i_1_n_0),
        .Q(hold_reg),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE master_do_rd_en_q_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(master_do_rd_en_q_reg_0),
        .Q(master_do_rd_en_q),
        .R(cbcc_fifo_reset_rd_clk));
  LUT4 #(
    .INIT(16'h0800)) 
    new_do_wr_en_i_1
       (.I0(bit80_prsnt),
        .I1(wait_for_wr_en_wr4[0]),
        .I2(cbcc_fifo_reset_wr_clk),
        .I3(wait_for_wr_en_wr4[1]),
        .O(new_do_wr_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    new_do_wr_en_reg
       (.C(out),
        .CE(1'b1),
        .D(new_do_wr_en_i_1_n_0),
        .Q(new_do_wr_en),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h57)) 
    new_underflow_flag_c_inv_i_1
       (.I0(underflow_flag_r3),
        .I1(buffer_too_empty_c),
        .I2(underflow_flag_c),
        .O(new_underflow_flag_c0));
  FDRE new_underflow_flag_c_reg_inv
       (.C(user_clk),
        .CE(1'b1),
        .D(new_underflow_flag_c0),
        .Q(new_underflow_flag_c_reg_inv_n_0),
        .R(cbcc_fifo_reset_rd_clk));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[0] ),
        .Q(\raw_data_r_r_reg_n_0_[0] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[10] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[10] ),
        .Q(\raw_data_r_r_reg_n_0_[10] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[11] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[11] ),
        .Q(\raw_data_r_r_reg_n_0_[11] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[12] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[12] ),
        .Q(\raw_data_r_r_reg_n_0_[12] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[13] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[13] ),
        .Q(\raw_data_r_r_reg_n_0_[13] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[14] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[14] ),
        .Q(\raw_data_r_r_reg_n_0_[14] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[15] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[15] ),
        .Q(\raw_data_r_r_reg_n_0_[15] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[16] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[16] ),
        .Q(\raw_data_r_r_reg_n_0_[16] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[17] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[17] ),
        .Q(\raw_data_r_r_reg_n_0_[17] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[18] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[18] ),
        .Q(\raw_data_r_r_reg_n_0_[18] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[19] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[19] ),
        .Q(\raw_data_r_r_reg_n_0_[19] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[1] ),
        .Q(\raw_data_r_r_reg_n_0_[1] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[20] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[20] ),
        .Q(\raw_data_r_r_reg_n_0_[20] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[21] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[21] ),
        .Q(\raw_data_r_r_reg_n_0_[21] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[22] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[22] ),
        .Q(\raw_data_r_r_reg_n_0_[22] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[23] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[23] ),
        .Q(\raw_data_r_r_reg_n_0_[23] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[24] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[24] ),
        .Q(\raw_data_r_r_reg_n_0_[24] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[25] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[25] ),
        .Q(\raw_data_r_r_reg_n_0_[25] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[26] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[26] ),
        .Q(\raw_data_r_r_reg_n_0_[26] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[27] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[27] ),
        .Q(\raw_data_r_r_reg_n_0_[27] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[28] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[28] ),
        .Q(\raw_data_r_r_reg_n_0_[28] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[29] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[29] ),
        .Q(\raw_data_r_r_reg_n_0_[29] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[2] ),
        .Q(\raw_data_r_r_reg_n_0_[2] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[30] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[30] ),
        .Q(\raw_data_r_r_reg_n_0_[30] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[31] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[31] ),
        .Q(\raw_data_r_r_reg_n_0_[31] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[32] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[32] ),
        .Q(\raw_data_r_r_reg_n_0_[32] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[33] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[33] ),
        .Q(\raw_data_r_r_reg_n_0_[33] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[34] 
       (.C(out),
        .CE(1'b1),
        .D(p_1_in),
        .Q(p_0_in0_in),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[3] ),
        .Q(\raw_data_r_r_reg_n_0_[3] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[4] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[4] ),
        .Q(\raw_data_r_r_reg_n_0_[4] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[5] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[5] ),
        .Q(\raw_data_r_r_reg_n_0_[5] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[6] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[6] ),
        .Q(\raw_data_r_r_reg_n_0_[6] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[7] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[7] ),
        .Q(\raw_data_r_r_reg_n_0_[7] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[8] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[8] ),
        .Q(\raw_data_r_r_reg_n_0_[8] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_r_reg[9] 
       (.C(out),
        .CE(1'b1),
        .D(\raw_data_r_reg_n_0_[9] ),
        .Q(\raw_data_r_r_reg_n_0_[9] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[0]),
        .Q(\raw_data_r_reg_n_0_[0] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[10] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[10]),
        .Q(\raw_data_r_reg_n_0_[10] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[11] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[11]),
        .Q(\raw_data_r_reg_n_0_[11] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[12] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[12]),
        .Q(\raw_data_r_reg_n_0_[12] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[13] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[13]),
        .Q(\raw_data_r_reg_n_0_[13] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[14] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[14]),
        .Q(\raw_data_r_reg_n_0_[14] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[15] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[15]),
        .Q(\raw_data_r_reg_n_0_[15] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[16] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[16]),
        .Q(\raw_data_r_reg_n_0_[16] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[17] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[17]),
        .Q(\raw_data_r_reg_n_0_[17] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[18] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[18]),
        .Q(\raw_data_r_reg_n_0_[18] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[19] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[19]),
        .Q(\raw_data_r_reg_n_0_[19] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[1]),
        .Q(\raw_data_r_reg_n_0_[1] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[20] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[20]),
        .Q(\raw_data_r_reg_n_0_[20] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[21] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[21]),
        .Q(\raw_data_r_reg_n_0_[21] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[22] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[22]),
        .Q(\raw_data_r_reg_n_0_[22] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[23] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[23]),
        .Q(\raw_data_r_reg_n_0_[23] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[24] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[24]),
        .Q(\raw_data_r_reg_n_0_[24] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[25] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[25]),
        .Q(\raw_data_r_reg_n_0_[25] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[26] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[26]),
        .Q(\raw_data_r_reg_n_0_[26] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[27] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[27]),
        .Q(\raw_data_r_reg_n_0_[27] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[28] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[28]),
        .Q(\raw_data_r_reg_n_0_[28] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[29] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[29]),
        .Q(\raw_data_r_reg_n_0_[29] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[2]),
        .Q(\raw_data_r_reg_n_0_[2] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[30] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[30]),
        .Q(\raw_data_r_reg_n_0_[30] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[31] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[31]),
        .Q(\raw_data_r_reg_n_0_[31] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[32] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[32]),
        .Q(\raw_data_r_reg_n_0_[32] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[33] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[33]),
        .Q(\raw_data_r_reg_n_0_[33] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[34] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[34]),
        .Q(p_1_in),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[3]),
        .Q(\raw_data_r_reg_n_0_[3] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[4] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[4]),
        .Q(\raw_data_r_reg_n_0_[4] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[5] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[5]),
        .Q(\raw_data_r_reg_n_0_[5] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[6] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[6]),
        .Q(\raw_data_r_reg_n_0_[6] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[7] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[7]),
        .Q(\raw_data_r_reg_n_0_[7] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[8] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[8]),
        .Q(\raw_data_r_reg_n_0_[8] ),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \raw_data_r_reg[9] 
       (.C(out),
        .CE(1'b1),
        .D(raw_data_srl_out[9]),
        .Q(\raw_data_r_reg_n_0_[9] ),
        .R(1'b0));
  FDRE rd_err_pre_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rd_err_c),
        .Q(rd_err_pre),
        .R(do_rd_en));
  FDRE rd_err_q_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rd_err_pre),
        .Q(rxbuferr_out_i[0]),
        .R(do_rd_en));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    rxfsm_reset_i_inferred_i_1
       (.I0(rst_drp),
        .I1(\rx_state_reg[7] ),
        .I2(hard_err_rst_int),
        .I3(link_reset_0_c),
        .O(rxfsm_reset_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[0].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[0].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[0]),
        .Q(raw_data_srl_out[0]),
        .Q31(\NLW_srlc32e[0].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[10].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[10].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[10]),
        .Q(raw_data_srl_out[10]),
        .Q31(\NLW_srlc32e[10].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[11].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[11].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[11]),
        .Q(raw_data_srl_out[11]),
        .Q31(\NLW_srlc32e[11].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[12].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[12].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[12]),
        .Q(raw_data_srl_out[12]),
        .Q31(\NLW_srlc32e[12].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[13].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[13].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[13]),
        .Q(raw_data_srl_out[13]),
        .Q31(\NLW_srlc32e[13].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[14].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[14].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[14]),
        .Q(raw_data_srl_out[14]),
        .Q31(\NLW_srlc32e[14].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[15].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[15].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[15]),
        .Q(raw_data_srl_out[15]),
        .Q31(\NLW_srlc32e[15].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[16].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[16].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[16]),
        .Q(raw_data_srl_out[16]),
        .Q31(\NLW_srlc32e[16].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[17].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[17].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[17]),
        .Q(raw_data_srl_out[17]),
        .Q31(\NLW_srlc32e[17].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[18].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[18].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[18]),
        .Q(raw_data_srl_out[18]),
        .Q31(\NLW_srlc32e[18].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[19].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[19].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[19]),
        .Q(raw_data_srl_out[19]),
        .Q31(\NLW_srlc32e[19].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[1].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[1].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[1]),
        .Q(raw_data_srl_out[1]),
        .Q31(\NLW_srlc32e[1].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[20].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[20].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[20]),
        .Q(raw_data_srl_out[20]),
        .Q31(\NLW_srlc32e[20].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[21].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[21].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[21]),
        .Q(raw_data_srl_out[21]),
        .Q31(\NLW_srlc32e[21].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[22].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[22].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[22]),
        .Q(raw_data_srl_out[22]),
        .Q31(\NLW_srlc32e[22].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[23].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[23].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[23]),
        .Q(raw_data_srl_out[23]),
        .Q31(\NLW_srlc32e[23].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[24].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[24].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[24]),
        .Q(raw_data_srl_out[24]),
        .Q31(\NLW_srlc32e[24].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[25].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[25].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[25]),
        .Q(raw_data_srl_out[25]),
        .Q31(\NLW_srlc32e[25].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[26].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[26].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[26]),
        .Q(raw_data_srl_out[26]),
        .Q31(\NLW_srlc32e[26].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[27].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[27].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[27]),
        .Q(raw_data_srl_out[27]),
        .Q31(\NLW_srlc32e[27].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[28].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[28].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[28]),
        .Q(raw_data_srl_out[28]),
        .Q31(\NLW_srlc32e[28].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[29].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[29].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[29]),
        .Q(raw_data_srl_out[29]),
        .Q31(\NLW_srlc32e[29].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[2].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[2].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[2]),
        .Q(raw_data_srl_out[2]),
        .Q31(\NLW_srlc32e[2].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[30].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[30].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[30]),
        .Q(raw_data_srl_out[30]),
        .Q31(\NLW_srlc32e[30].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[31].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[31].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[31]),
        .Q(raw_data_srl_out[31]),
        .Q31(\NLW_srlc32e[31].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[32].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[32].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(Q[0]),
        .Q(raw_data_srl_out[32]),
        .Q31(\NLW_srlc32e[32].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[33].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[33].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(Q[1]),
        .Q(raw_data_srl_out[33]),
        .Q31(\NLW_srlc32e[33].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[34].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[34].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(rxdatavalid_to_fifo_i),
        .Q(raw_data_srl_out[34]),
        .Q31(\NLW_srlc32e[34].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[3].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[3].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[3]),
        .Q(raw_data_srl_out[3]),
        .Q31(\NLW_srlc32e[3].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[4].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[4].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[4]),
        .Q(raw_data_srl_out[4]),
        .Q31(\NLW_srlc32e[4].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[5].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[5].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[5]),
        .Q(raw_data_srl_out[5]),
        .Q31(\NLW_srlc32e[5].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[6].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[6].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[6]),
        .Q(raw_data_srl_out[6]),
        .Q31(\NLW_srlc32e[6].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[7].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[7].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[7]),
        .Q(raw_data_srl_out[7]),
        .Q31(\NLW_srlc32e[7].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[8].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[8].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[8]),
        .Q(raw_data_srl_out[8]),
        .Q31(\NLW_srlc32e[8].SRLC32E_inst_1_Q31_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/srlc32e[9].SRLC32E_inst_1 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \srlc32e[9].SRLC32E_inst_1 
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(UNSCRAMBLED_DATA_OUT[9]),
        .Q(raw_data_srl_out[9]),
        .Q31(\NLW_srlc32e[9].SRLC32E_inst_1_Q31_UNCONNECTED ));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized3 u_cdc_overflow_flag_c
       (.cbcc_reset_cbstg2_rd_clk(cbcc_reset_cbstg2_rd_clk),
        .overflow_flag_c(overflow_flag_c),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized1_34 u_cdc_rxlossofsync_in
       (.CC_RXLOSSOFSYNC_OUT_reg(CC_RXLOSSOFSYNC_OUT_reg_0),
        .in0(in0),
        .s_level_out_d5_reg_0(u_cdc_rxlossofsync_in_n_0),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized3_35 u_cdc_wr_err_rd_clk
       (.cbcc_fifo_reset_rd_clk(cbcc_fifo_reset_rd_clk),
        .out(wr_err_rd_clk_pre),
        .user_clk(user_clk),
        .wr_err_c(wr_err_c));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_36 u_rst_sync_btf_sync
       (.in0(valid_btf_detect_extend_r2),
        .init_clk(init_clk),
        .stg3_reg_0(u_rst_sync_btf_sync_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    underflow_flag_r1_i_1
       (.I0(underflow_flag_c),
        .I1(buffer_too_empty_c),
        .O(underflow_flag_r10));
  FDSE underflow_flag_r1_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(underflow_flag_r10),
        .Q(underflow_flag_r1),
        .S(cbcc_fifo_reset_rd_clk));
  FDSE underflow_flag_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(underflow_flag_r1),
        .Q(underflow_flag_r2),
        .S(cbcc_fifo_reset_rd_clk));
  FDSE underflow_flag_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(underflow_flag_r2),
        .Q(underflow_flag_r3),
        .S(cbcc_fifo_reset_rd_clk));
  FDRE #(
    .INIT(1'b0)) 
    valid_btf_detect_dlyd1_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(u_rst_sync_btf_sync_n_0),
        .Q(valid_btf_detect_dlyd1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    valid_btf_detect_extend_r20
       (.I0(valid_btf_detect_extend_r[0]),
        .I1(valid_btf_detect_extend_r[3]),
        .I2(valid_btf_detect_extend_r[4]),
        .I3(valid_btf_detect_extend_r[1]),
        .I4(valid_btf_detect_extend_r[2]),
        .O(valid_btf_detect_extend_r20_n_0));
  FDRE valid_btf_detect_extend_r2_reg
       (.C(out),
        .CE(1'b1),
        .D(valid_btf_detect_extend_r20_n_0),
        .Q(valid_btf_detect_extend_r2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \valid_btf_detect_extend_r_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(valid_btf_detect_extend_r[1]),
        .Q(valid_btf_detect_extend_r[0]),
        .R(\valid_btf_detect_extend_r_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_btf_detect_extend_r_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(valid_btf_detect_extend_r[2]),
        .Q(valid_btf_detect_extend_r[1]),
        .R(\valid_btf_detect_extend_r_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_btf_detect_extend_r_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(valid_btf_detect_extend_r[3]),
        .Q(valid_btf_detect_extend_r[2]),
        .R(\valid_btf_detect_extend_r_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_btf_detect_extend_r_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(valid_btf_detect_extend_r[4]),
        .Q(valid_btf_detect_extend_r[3]),
        .R(\valid_btf_detect_extend_r_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \valid_btf_detect_extend_r_reg[4] 
       (.C(out),
        .CE(1'b1),
        .D(valid_btf_detect),
        .Q(valid_btf_detect_extend_r[4]),
        .R(\valid_btf_detect_extend_r_reg[4]_0 ));
  (* shift_extract = "{no}" *) 
  FDRE valid_btf_detect_reg
       (.C(out),
        .CE(1'b1),
        .D(CC_detect),
        .Q(valid_btf_detect),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h87)) 
    \wait_for_rd_en[0]_i_1 
       (.I0(wait_for_rd_en[2]),
        .I1(wait_for_rd_en[1]),
        .I2(wait_for_rd_en[0]),
        .O(\wait_for_rd_en[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE6)) 
    \wait_for_rd_en[1]_i_1 
       (.I0(wait_for_rd_en[0]),
        .I1(wait_for_rd_en[1]),
        .I2(wait_for_rd_en[2]),
        .O(\wait_for_rd_en[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \wait_for_rd_en[2]_i_1 
       (.I0(wait_for_rd_en[0]),
        .I1(wait_for_rd_en[1]),
        .I2(wait_for_rd_en[2]),
        .O(\wait_for_rd_en[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_for_rd_en_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\wait_for_rd_en[0]_i_1_n_0 ),
        .Q(wait_for_rd_en[0]),
        .R(cbcc_fifo_reset_rd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \wait_for_rd_en_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\wait_for_rd_en[1]_i_1_n_0 ),
        .Q(wait_for_rd_en[1]),
        .R(cbcc_fifo_reset_rd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \wait_for_rd_en_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\wait_for_rd_en[2]_i_1_n_0 ),
        .Q(wait_for_rd_en[2]),
        .R(cbcc_fifo_reset_rd_clk));
  LUT2 #(
    .INIT(4'hB)) 
    \wait_for_wr_en[0]_i_1 
       (.I0(wait_for_wr_en[1]),
        .I1(wait_for_wr_en[0]),
        .O(\wait_for_wr_en[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wait_for_wr_en[1]_i_1 
       (.I0(wait_for_wr_en[1]),
        .I1(wait_for_wr_en[0]),
        .O(\wait_for_wr_en[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_for_wr_en_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\wait_for_wr_en[0]_i_1_n_0 ),
        .Q(wait_for_wr_en[0]),
        .R(cbcc_fifo_reset_wr_clk));
  FDRE #(
    .INIT(1'b0)) 
    \wait_for_wr_en_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\wait_for_wr_en[1]_i_1_n_0 ),
        .Q(wait_for_wr_en[1]),
        .R(cbcc_fifo_reset_wr_clk));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/wait_for_wr_en_wr3_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/wait_for_wr_en_wr3_reg[0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \wait_for_wr_en_wr3_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(out),
        .D(wait_for_wr_en[0]),
        .Q(\wait_for_wr_en_wr3_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/wait_for_wr_en_wr3_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/wait_for_wr_en_wr3_reg[1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \wait_for_wr_en_wr3_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(out),
        .D(wait_for_wr_en[1]),
        .Q(\wait_for_wr_en_wr3_reg[1]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_for_wr_en_wr4_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\wait_for_wr_en_wr3_reg[0]_srl3_n_0 ),
        .Q(wait_for_wr_en_wr4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_for_wr_en_wr4_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\wait_for_wr_en_wr3_reg[1]_srl3_n_0 ),
        .Q(wait_for_wr_en_wr4[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA808080)) 
    \wdth_conv_1stage[39]_i_1 
       (.I0(do_wr_en_reg_0),
        .I1(p_1_in),
        .I2(first_cb_to_write_to_fifo_dlyd),
        .I3(p_0_in0_in),
        .I4(cb_fifo_din_detect_q),
        .I5(do_wr_en),
        .O(mod_do_wr_en));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[0] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[0] ),
        .Q(wdth_conv_1stage[0]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[10] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[10] ),
        .Q(wdth_conv_1stage[10]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[11] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[11] ),
        .Q(wdth_conv_1stage[11]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[12] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[12] ),
        .Q(wdth_conv_1stage[12]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[13] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[13] ),
        .Q(wdth_conv_1stage[13]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[14] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[14] ),
        .Q(wdth_conv_1stage[14]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[15] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[15] ),
        .Q(wdth_conv_1stage[15]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[16] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[16] ),
        .Q(wdth_conv_1stage[16]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[17] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[17] ),
        .Q(wdth_conv_1stage[17]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[18] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[18] ),
        .Q(wdth_conv_1stage[18]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[19] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[19] ),
        .Q(wdth_conv_1stage[19]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[1] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[1] ),
        .Q(wdth_conv_1stage[1]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[20] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[20] ),
        .Q(wdth_conv_1stage[20]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[21] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[21] ),
        .Q(wdth_conv_1stage[21]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[22] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[22] ),
        .Q(wdth_conv_1stage[22]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[23] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[23] ),
        .Q(wdth_conv_1stage[23]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[24] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[24] ),
        .Q(wdth_conv_1stage[24]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[25] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[25] ),
        .Q(wdth_conv_1stage[25]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[26] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[26] ),
        .Q(wdth_conv_1stage[26]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[27] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[27] ),
        .Q(wdth_conv_1stage[27]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[28] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[28] ),
        .Q(wdth_conv_1stage[28]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[29] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[29] ),
        .Q(wdth_conv_1stage[29]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[2] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[2] ),
        .Q(wdth_conv_1stage[2]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[30] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[30] ),
        .Q(wdth_conv_1stage[30]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[31] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[31] ),
        .Q(wdth_conv_1stage[31]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[32] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[32] ),
        .Q(wdth_conv_1stage[32]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[33] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[33] ),
        .Q(wdth_conv_1stage[33]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[34] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(rxdatavalid_lookahead_i),
        .Q(wdth_conv_1stage[34]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[35] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(CC_detect_pulse_r),
        .Q(wdth_conv_1stage[35]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[36] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(p_0_in0_in),
        .Q(wdth_conv_1stage[36]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[37] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(CB_detect_dlyd1),
        .Q(wdth_conv_1stage[37]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[38] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(D[0]),
        .Q(wdth_conv_1stage[38]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[39] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(D[1]),
        .Q(wdth_conv_1stage[39]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[3] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[3] ),
        .Q(wdth_conv_1stage[3]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[4] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[4] ),
        .Q(wdth_conv_1stage[4]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[5] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[5] ),
        .Q(wdth_conv_1stage[5]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[6] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[6] ),
        .Q(wdth_conv_1stage[6]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[7] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[7] ),
        .Q(wdth_conv_1stage[7]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[8] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[8] ),
        .Q(wdth_conv_1stage[8]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_1stage_reg[9] 
       (.C(out),
        .CE(mod_do_wr_en),
        .D(\raw_data_r_r_reg_n_0_[9] ),
        .Q(wdth_conv_1stage[9]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[0]),
        .Q(en32_fifo_din_i[0]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[10] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[10]),
        .Q(en32_fifo_din_i[10]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[11] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[11]),
        .Q(en32_fifo_din_i[11]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[12] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[12]),
        .Q(en32_fifo_din_i[12]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[13] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[13]),
        .Q(en32_fifo_din_i[13]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[14] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[14]),
        .Q(en32_fifo_din_i[14]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[15] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[15]),
        .Q(en32_fifo_din_i[15]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[16] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[16]),
        .Q(en32_fifo_din_i[16]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[17] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[17]),
        .Q(en32_fifo_din_i[17]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[18] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[18]),
        .Q(en32_fifo_din_i[18]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[19] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[19]),
        .Q(en32_fifo_din_i[19]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[1]),
        .Q(en32_fifo_din_i[1]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[20] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[20]),
        .Q(en32_fifo_din_i[20]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[21] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[21]),
        .Q(en32_fifo_din_i[21]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[22] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[22]),
        .Q(en32_fifo_din_i[22]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[23] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[23]),
        .Q(en32_fifo_din_i[23]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[24] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[24]),
        .Q(en32_fifo_din_i[24]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[25] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[25]),
        .Q(en32_fifo_din_i[25]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[26] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[26]),
        .Q(en32_fifo_din_i[26]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[27] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[27]),
        .Q(en32_fifo_din_i[27]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[28] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[28]),
        .Q(en32_fifo_din_i[28]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[29] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[29]),
        .Q(en32_fifo_din_i[29]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[2]),
        .Q(en32_fifo_din_i[2]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[30] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[30]),
        .Q(en32_fifo_din_i[30]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[31] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[31]),
        .Q(en32_fifo_din_i[31]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[32] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[32]),
        .Q(wdth_conv_2stage[32]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[33] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[33]),
        .Q(wdth_conv_2stage[33]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[34] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[34]),
        .Q(wdth_conv_2stage[34]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[35] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[35]),
        .Q(wdth_conv_2stage[35]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[36] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[36]),
        .Q(wdth_conv_2stage[36]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[37] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[37]),
        .Q(wdth_conv_2stage[37]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[38] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[38]),
        .Q(wdth_conv_2stage[38]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[39] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[39]),
        .Q(wdth_conv_2stage[39]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[3]),
        .Q(en32_fifo_din_i[3]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[4] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[4]),
        .Q(en32_fifo_din_i[4]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[5] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[5]),
        .Q(en32_fifo_din_i[5]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[6] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[6]),
        .Q(en32_fifo_din_i[6]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[7] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[7]),
        .Q(en32_fifo_din_i[7]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[8] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[8]),
        .Q(en32_fifo_din_i[8]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_2stage_reg[9] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_1stage[9]),
        .Q(en32_fifo_din_i[9]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[0]),
        .Q(en32_fifo_din_i[40]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[10] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[10]),
        .Q(en32_fifo_din_i[50]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[11] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[11]),
        .Q(en32_fifo_din_i[51]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[12] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[12]),
        .Q(en32_fifo_din_i[52]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[13] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[13]),
        .Q(en32_fifo_din_i[53]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[14] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[14]),
        .Q(en32_fifo_din_i[54]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[15] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[15]),
        .Q(en32_fifo_din_i[55]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[16] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[16]),
        .Q(en32_fifo_din_i[56]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[17] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[17]),
        .Q(en32_fifo_din_i[57]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[18] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[18]),
        .Q(en32_fifo_din_i[58]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[19] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[19]),
        .Q(en32_fifo_din_i[59]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[1]),
        .Q(en32_fifo_din_i[41]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[20] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[20]),
        .Q(en32_fifo_din_i[60]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[21] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[21]),
        .Q(en32_fifo_din_i[61]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[22] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[22]),
        .Q(en32_fifo_din_i[62]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[23] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[23]),
        .Q(en32_fifo_din_i[63]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[24] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[24]),
        .Q(en32_fifo_din_i[64]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[25] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[25]),
        .Q(en32_fifo_din_i[65]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[26] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[26]),
        .Q(en32_fifo_din_i[66]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[27] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[27]),
        .Q(en32_fifo_din_i[67]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[28] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[28]),
        .Q(en32_fifo_din_i[68]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[29] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[29]),
        .Q(en32_fifo_din_i[69]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[2]),
        .Q(en32_fifo_din_i[42]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[30] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[30]),
        .Q(en32_fifo_din_i[70]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[31] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[31]),
        .Q(en32_fifo_din_i[71]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[32] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_2stage[32]),
        .Q(en32_fifo_din_i[72]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[33] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_2stage[33]),
        .Q(en32_fifo_din_i[73]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[34] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_2stage[34]),
        .Q(en32_fifo_din_i[74]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[35] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_2stage[35]),
        .Q(en32_fifo_din_i[75]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[36] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_2stage[36]),
        .Q(en32_fifo_din_i[76]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[37] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_2stage[37]),
        .Q(en32_fifo_din_i[77]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[38] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_2stage[38]),
        .Q(en32_fifo_din_i[78]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[39] 
       (.C(out),
        .CE(1'b1),
        .D(wdth_conv_2stage[39]),
        .Q(en32_fifo_din_i[79]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[3]),
        .Q(en32_fifo_din_i[43]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[4] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[4]),
        .Q(en32_fifo_din_i[44]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[5] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[5]),
        .Q(en32_fifo_din_i[45]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[6] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[6]),
        .Q(en32_fifo_din_i[46]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[7] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[7]),
        .Q(en32_fifo_din_i[47]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[8] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[8]),
        .Q(en32_fifo_din_i[48]),
        .R(cbcc_fifo_reset_wr_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_3stage_reg[9] 
       (.C(out),
        .CE(1'b1),
        .D(en32_fifo_din_i[9]),
        .Q(en32_fifo_din_i[49]),
        .R(cbcc_fifo_reset_wr_clk));
  LUT4 #(
    .INIT(16'h15EA)) 
    \wdth_conv_count[0]_i_1 
       (.I0(do_wr_en),
        .I1(\wdth_conv_count[0]_i_2_n_0 ),
        .I2(do_wr_en_reg_0),
        .I3(\wdth_conv_count_reg_n_0_[0] ),
        .O(\wdth_conv_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \wdth_conv_count[0]_i_2 
       (.I0(p_1_in),
        .I1(first_cb_to_write_to_fifo_dlyd),
        .I2(p_0_in0_in),
        .I3(cb_fifo_din_detect_q),
        .O(\wdth_conv_count[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wdth_conv_count[1]_i_1 
       (.I0(\wdth_conv_count_reg_n_0_[0] ),
        .I1(mod_do_wr_en),
        .O(\wdth_conv_count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_count_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\wdth_conv_count[0]_i_1_n_0 ),
        .Q(\wdth_conv_count_reg_n_0_[0] ),
        .R(any_vld_btf_fifo_din_detect_dlyd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \wdth_conv_count_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\wdth_conv_count[1]_i_1_n_0 ),
        .Q(bit80_prsnt),
        .R(any_vld_btf_fifo_din_detect_dlyd_i_1_n_0));
  (* shift_extract = "{no}" *) 
  FDRE wr_err_rd_clk_sync_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wr_err_rd_clk_pre),
        .Q(rxbuferr_out_i[1]),
        .R(do_rd_en));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_monitor_flag[0]_i_1 
       (.I0(wr_monitor_flag_reg[0]),
        .O(p_0_in__3[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_monitor_flag[1]_i_1 
       (.I0(wr_monitor_flag_reg[0]),
        .I1(wr_monitor_flag_reg[1]),
        .O(p_0_in__3[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \wr_monitor_flag[2]_i_1 
       (.I0(wr_monitor_flag_reg[0]),
        .I1(wr_monitor_flag_reg[1]),
        .I2(wr_monitor_flag_reg[2]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_monitor_flag[3]_i_1 
       (.I0(wr_monitor_flag_reg[2]),
        .I1(wr_monitor_flag_reg[1]),
        .I2(wr_monitor_flag_reg[0]),
        .I3(wr_monitor_flag_reg[3]),
        .O(p_0_in__3[3]));
  LUT6 #(
    .INIT(64'h0404040404444444)) 
    \wr_monitor_flag[4]_i_1 
       (.I0(wr_monitor_flag_reg[4]),
        .I1(new_do_wr_en),
        .I2(wr_monitor_flag_reg[3]),
        .I3(wr_monitor_flag_reg[0]),
        .I4(wr_monitor_flag_reg[1]),
        .I5(wr_monitor_flag_reg[2]),
        .O(wr_monitor_flag));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wr_monitor_flag[4]_i_2 
       (.I0(wr_monitor_flag_reg[2]),
        .I1(wr_monitor_flag_reg[1]),
        .I2(wr_monitor_flag_reg[0]),
        .I3(wr_monitor_flag_reg[3]),
        .O(p_0_in__3[4]));
  FDRE \wr_monitor_flag_reg[0] 
       (.C(out),
        .CE(wr_monitor_flag),
        .D(p_0_in__3[0]),
        .Q(wr_monitor_flag_reg[0]),
        .R(SR));
  FDRE \wr_monitor_flag_reg[1] 
       (.C(out),
        .CE(wr_monitor_flag),
        .D(p_0_in__3[1]),
        .Q(wr_monitor_flag_reg[1]),
        .R(SR));
  FDRE \wr_monitor_flag_reg[2] 
       (.C(out),
        .CE(wr_monitor_flag),
        .D(p_0_in__3[2]),
        .Q(wr_monitor_flag_reg[2]),
        .R(SR));
  FDRE \wr_monitor_flag_reg[3] 
       (.C(out),
        .CE(wr_monitor_flag),
        .D(p_0_in__3[3]),
        .Q(wr_monitor_flag_reg[3]),
        .R(SR));
  FDRE \wr_monitor_flag_reg[4] 
       (.C(out),
        .CE(wr_monitor_flag),
        .D(p_0_in__3[4]),
        .Q(wr_monitor_flag_reg[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_DESCRAMBLER_64B66B" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_DESCRAMBLER_64B66B
   (D,
    CC_detect,
    UNSCRAMBLED_DATA_OUT,
    CB_detect0,
    descrambler,
    in0,
    CC_detect_dlyd1,
    rxdatavalid_to_fifo_i,
    CB_detect_dlyd0p5,
    Q,
    E,
    out,
    \descrambler_reg[31]_0 ,
    tempData);
  output [1:0]D;
  output CC_detect;
  output [31:0]UNSCRAMBLED_DATA_OUT;
  output CB_detect0;
  output [1:0]descrambler;
  input in0;
  input CC_detect_dlyd1;
  input rxdatavalid_to_fifo_i;
  input CB_detect_dlyd0p5;
  input [1:0]Q;
  input [0:0]E;
  input out;
  input [31:0]\descrambler_reg[31]_0 ;
  input [0:0]tempData;

  wire CB_detect0;
  wire CB_detect_dlyd0p5;
  wire CC_detect;
  wire CC_detect_dlyd1;
  wire CC_detect_dlyd1_i_2_n_0;
  wire CC_detect_dlyd1_i_3_n_0;
  wire CC_detect_dlyd1_i_4_n_0;
  wire CC_detect_dlyd1_i_5_n_0;
  wire CC_detect_pulse_r_i_2_n_0;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [31:0]UNSCRAMBLED_DATA_OUT;
  wire [1:0]descrambler;
  wire \descrambler[57]_i_1_n_0 ;
  wire [31:0]\descrambler_reg[31]_0 ;
  wire \descrambler_reg_n_0_[40] ;
  wire \descrambler_reg_n_0_[41] ;
  wire \descrambler_reg_n_0_[42] ;
  wire \descrambler_reg_n_0_[43] ;
  wire \descrambler_reg_n_0_[44] ;
  wire \descrambler_reg_n_0_[45] ;
  wire \descrambler_reg_n_0_[46] ;
  wire \descrambler_reg_n_0_[47] ;
  wire \descrambler_reg_n_0_[48] ;
  wire \descrambler_reg_n_0_[49] ;
  wire \descrambler_reg_n_0_[50] ;
  wire \descrambler_reg_n_0_[51] ;
  wire \descrambler_reg_n_0_[52] ;
  wire \descrambler_reg_n_0_[53] ;
  wire \descrambler_reg_n_0_[54] ;
  wire \descrambler_reg_n_0_[55] ;
  wire \descrambler_reg_n_0_[56] ;
  wire \descrambler_reg_n_0_[57] ;
  wire in0;
  wire out;
  wire p_100_in;
  wire p_67_in;
  wire p_69_in;
  wire p_73_in;
  wire p_75_in;
  wire p_78_in;
  wire p_80_in;
  wire p_84_in;
  wire p_86_in;
  wire p_89_in;
  wire p_91_in;
  wire p_95_in;
  wire p_97_in;
  wire [57:32]poly;
  wire rxdatavalid_to_fifo_i;
  wire [0:0]tempData;
  wire [0:17]tempData_0;
  wire unscrambled_data_i0;
  wire unscrambled_data_i012_out;
  wire unscrambled_data_i016_out;
  wire unscrambled_data_i020_out;
  wire unscrambled_data_i024_out;
  wire unscrambled_data_i028_out;
  wire unscrambled_data_i032_out;
  wire unscrambled_data_i036_out;
  wire unscrambled_data_i040_out;
  wire unscrambled_data_i044_out;
  wire unscrambled_data_i048_out;
  wire unscrambled_data_i04_out;
  wire unscrambled_data_i08_out;
  wire \wdth_conv_1stage[38]_i_2_n_0 ;

  LUT6 #(
    .INIT(64'h0000000000200000)) 
    CB_detect_dlyd0p5_i_1
       (.I0(CC_detect_dlyd1_i_2_n_0),
        .I1(CC_detect_dlyd1_i_4_n_0),
        .I2(UNSCRAMBLED_DATA_OUT[22]),
        .I3(UNSCRAMBLED_DATA_OUT[23]),
        .I4(rxdatavalid_to_fifo_i),
        .I5(CC_detect_dlyd1_i_3_n_0),
        .O(CB_detect0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    CC_detect_dlyd1_i_1
       (.I0(CC_detect_dlyd1_i_2_n_0),
        .I1(CC_detect_dlyd1_i_3_n_0),
        .I2(rxdatavalid_to_fifo_i),
        .I3(UNSCRAMBLED_DATA_OUT[22]),
        .I4(UNSCRAMBLED_DATA_OUT[23]),
        .I5(CC_detect_dlyd1_i_4_n_0),
        .O(CC_detect));
  LUT5 #(
    .INIT(32'h00000001)) 
    CC_detect_dlyd1_i_2
       (.I0(UNSCRAMBLED_DATA_OUT[24]),
        .I1(UNSCRAMBLED_DATA_OUT[26]),
        .I2(UNSCRAMBLED_DATA_OUT[16]),
        .I3(UNSCRAMBLED_DATA_OUT[20]),
        .I4(CC_detect_dlyd1_i_5_n_0),
        .O(CC_detect_dlyd1_i_2_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    CC_detect_dlyd1_i_3
       (.I0(UNSCRAMBLED_DATA_OUT[28]),
        .I1(Q[1]),
        .I2(UNSCRAMBLED_DATA_OUT[29]),
        .I3(Q[0]),
        .O(CC_detect_dlyd1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    CC_detect_dlyd1_i_4
       (.I0(UNSCRAMBLED_DATA_OUT[27]),
        .I1(UNSCRAMBLED_DATA_OUT[30]),
        .I2(UNSCRAMBLED_DATA_OUT[19]),
        .I3(UNSCRAMBLED_DATA_OUT[21]),
        .O(CC_detect_dlyd1_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    CC_detect_dlyd1_i_5
       (.I0(UNSCRAMBLED_DATA_OUT[18]),
        .I1(UNSCRAMBLED_DATA_OUT[25]),
        .I2(UNSCRAMBLED_DATA_OUT[31]),
        .I3(UNSCRAMBLED_DATA_OUT[17]),
        .O(CC_detect_dlyd1_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    CC_detect_pulse_r_i_1
       (.I0(CC_detect_pulse_r_i_2_n_0),
        .I1(CC_detect_dlyd1_i_2_n_0),
        .I2(CC_detect_dlyd1),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    CC_detect_pulse_r_i_2
       (.I0(CC_detect_dlyd1_i_4_n_0),
        .I1(UNSCRAMBLED_DATA_OUT[23]),
        .I2(UNSCRAMBLED_DATA_OUT[22]),
        .I3(rxdatavalid_to_fifo_i),
        .I4(CC_detect_dlyd1_i_3_n_0),
        .O(CC_detect_pulse_r_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \descrambler[57]_i_1 
       (.I0(in0),
        .O(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[0] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [0]),
        .Q(poly[32]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[10] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [10]),
        .Q(poly[42]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[11] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [11]),
        .Q(poly[43]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[12] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [12]),
        .Q(poly[44]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[13] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [13]),
        .Q(poly[45]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[14] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [14]),
        .Q(poly[46]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[15] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [15]),
        .Q(poly[47]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[16] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [16]),
        .Q(poly[48]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[17] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [17]),
        .Q(poly[49]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[18] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [18]),
        .Q(poly[50]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[19] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [19]),
        .Q(poly[51]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[1] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [1]),
        .Q(poly[33]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[20] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [20]),
        .Q(descrambler[0]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[21] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [21]),
        .Q(poly[53]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[22] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [22]),
        .Q(poly[54]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[23] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [23]),
        .Q(poly[55]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[24] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [24]),
        .Q(poly[56]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[25] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [25]),
        .Q(poly[57]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[26] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [26]),
        .Q(p_67_in),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[27] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [27]),
        .Q(p_69_in),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[28] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [28]),
        .Q(p_73_in),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[29] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [29]),
        .Q(p_75_in),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[2] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [2]),
        .Q(poly[34]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[30] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [30]),
        .Q(p_78_in),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[31] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [31]),
        .Q(p_80_in),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[32] 
       (.C(out),
        .CE(E),
        .D(poly[32]),
        .Q(p_84_in),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[33] 
       (.C(out),
        .CE(E),
        .D(poly[33]),
        .Q(p_86_in),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[34] 
       (.C(out),
        .CE(E),
        .D(poly[34]),
        .Q(p_89_in),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[35] 
       (.C(out),
        .CE(E),
        .D(poly[35]),
        .Q(p_91_in),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[36] 
       (.C(out),
        .CE(E),
        .D(poly[36]),
        .Q(p_95_in),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[37] 
       (.C(out),
        .CE(E),
        .D(poly[37]),
        .Q(p_97_in),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[38] 
       (.C(out),
        .CE(E),
        .D(poly[38]),
        .Q(p_100_in),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[39] 
       (.C(out),
        .CE(E),
        .D(poly[39]),
        .Q(descrambler[1]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[3] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [3]),
        .Q(poly[35]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[40] 
       (.C(out),
        .CE(E),
        .D(poly[40]),
        .Q(\descrambler_reg_n_0_[40] ),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[41] 
       (.C(out),
        .CE(E),
        .D(poly[41]),
        .Q(\descrambler_reg_n_0_[41] ),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[42] 
       (.C(out),
        .CE(E),
        .D(poly[42]),
        .Q(\descrambler_reg_n_0_[42] ),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[43] 
       (.C(out),
        .CE(E),
        .D(poly[43]),
        .Q(\descrambler_reg_n_0_[43] ),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[44] 
       (.C(out),
        .CE(E),
        .D(poly[44]),
        .Q(\descrambler_reg_n_0_[44] ),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[45] 
       (.C(out),
        .CE(E),
        .D(poly[45]),
        .Q(\descrambler_reg_n_0_[45] ),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[46] 
       (.C(out),
        .CE(E),
        .D(poly[46]),
        .Q(\descrambler_reg_n_0_[46] ),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[47] 
       (.C(out),
        .CE(E),
        .D(poly[47]),
        .Q(\descrambler_reg_n_0_[47] ),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[48] 
       (.C(out),
        .CE(E),
        .D(poly[48]),
        .Q(\descrambler_reg_n_0_[48] ),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[49] 
       (.C(out),
        .CE(E),
        .D(poly[49]),
        .Q(\descrambler_reg_n_0_[49] ),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[4] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [4]),
        .Q(poly[36]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[50] 
       (.C(out),
        .CE(E),
        .D(poly[50]),
        .Q(\descrambler_reg_n_0_[50] ),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[51] 
       (.C(out),
        .CE(E),
        .D(poly[51]),
        .Q(\descrambler_reg_n_0_[51] ),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[52] 
       (.C(out),
        .CE(E),
        .D(descrambler[0]),
        .Q(\descrambler_reg_n_0_[52] ),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[53] 
       (.C(out),
        .CE(E),
        .D(poly[53]),
        .Q(\descrambler_reg_n_0_[53] ),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[54] 
       (.C(out),
        .CE(E),
        .D(poly[54]),
        .Q(\descrambler_reg_n_0_[54] ),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[55] 
       (.C(out),
        .CE(E),
        .D(poly[55]),
        .Q(\descrambler_reg_n_0_[55] ),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[56] 
       (.C(out),
        .CE(E),
        .D(poly[56]),
        .Q(\descrambler_reg_n_0_[56] ),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[57] 
       (.C(out),
        .CE(E),
        .D(poly[57]),
        .Q(\descrambler_reg_n_0_[57] ),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[5] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [5]),
        .Q(poly[37]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[6] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [6]),
        .Q(poly[38]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[7] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [7]),
        .Q(poly[39]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDSE \descrambler_reg[8] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [8]),
        .Q(poly[40]),
        .S(\descrambler[57]_i_1_n_0 ));
  FDRE \descrambler_reg[9] 
       (.C(out),
        .CE(E),
        .D(\descrambler_reg[31]_0 [9]),
        .Q(poly[41]),
        .R(\descrambler[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[0]_i_1 
       (.I0(poly[39]),
        .I1(\descrambler_reg[31]_0 [0]),
        .I2(p_67_in),
        .O(unscrambled_data_i0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[10]_i_1 
       (.I0(poly[49]),
        .I1(\descrambler_reg[31]_0 [10]),
        .I2(p_95_in),
        .O(unscrambled_data_i040_out));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[11]_i_1 
       (.I0(poly[50]),
        .I1(\descrambler_reg[31]_0 [11]),
        .I2(p_97_in),
        .O(unscrambled_data_i044_out));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[12]_i_1 
       (.I0(poly[51]),
        .I1(\descrambler_reg[31]_0 [12]),
        .I2(p_100_in),
        .O(unscrambled_data_i048_out));
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[14]_i_1 
       (.I0(poly[53]),
        .I1(\descrambler_reg[31]_0 [14]),
        .I2(\descrambler_reg_n_0_[40] ),
        .O(tempData_0[17]));
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[15]_i_1 
       (.I0(poly[54]),
        .I1(\descrambler_reg[31]_0 [15]),
        .I2(\descrambler_reg_n_0_[41] ),
        .O(tempData_0[16]));
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[16]_i_1 
       (.I0(poly[55]),
        .I1(\descrambler_reg[31]_0 [16]),
        .I2(\descrambler_reg_n_0_[42] ),
        .O(tempData_0[15]));
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[17]_i_1 
       (.I0(poly[56]),
        .I1(\descrambler_reg[31]_0 [17]),
        .I2(\descrambler_reg_n_0_[43] ),
        .O(tempData_0[14]));
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[18]_i_1 
       (.I0(poly[57]),
        .I1(\descrambler_reg[31]_0 [18]),
        .I2(\descrambler_reg_n_0_[44] ),
        .O(tempData_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[19]_i_1 
       (.I0(p_67_in),
        .I1(\descrambler_reg[31]_0 [19]),
        .I2(\descrambler_reg_n_0_[45] ),
        .O(tempData_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[1]_i_1 
       (.I0(poly[40]),
        .I1(\descrambler_reg[31]_0 [1]),
        .I2(p_69_in),
        .O(unscrambled_data_i04_out));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[20]_i_1 
       (.I0(p_69_in),
        .I1(\descrambler_reg[31]_0 [20]),
        .I2(\descrambler_reg_n_0_[46] ),
        .O(tempData_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[21]_i_1 
       (.I0(p_73_in),
        .I1(\descrambler_reg[31]_0 [21]),
        .I2(\descrambler_reg_n_0_[47] ),
        .O(tempData_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[22]_i_1 
       (.I0(p_75_in),
        .I1(\descrambler_reg[31]_0 [22]),
        .I2(\descrambler_reg_n_0_[48] ),
        .O(tempData_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[23]_i_1 
       (.I0(p_78_in),
        .I1(\descrambler_reg[31]_0 [23]),
        .I2(\descrambler_reg_n_0_[49] ),
        .O(tempData_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[24]_i_1 
       (.I0(p_80_in),
        .I1(\descrambler_reg[31]_0 [24]),
        .I2(\descrambler_reg_n_0_[50] ),
        .O(tempData_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[25]_i_1 
       (.I0(p_84_in),
        .I1(\descrambler_reg[31]_0 [25]),
        .I2(\descrambler_reg_n_0_[51] ),
        .O(tempData_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[26]_i_1 
       (.I0(p_86_in),
        .I1(\descrambler_reg[31]_0 [26]),
        .I2(\descrambler_reg_n_0_[52] ),
        .O(tempData_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[27]_i_1 
       (.I0(p_89_in),
        .I1(\descrambler_reg[31]_0 [27]),
        .I2(\descrambler_reg_n_0_[53] ),
        .O(tempData_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[28]_i_1 
       (.I0(p_91_in),
        .I1(\descrambler_reg[31]_0 [28]),
        .I2(\descrambler_reg_n_0_[54] ),
        .O(tempData_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[29]_i_1 
       (.I0(p_95_in),
        .I1(\descrambler_reg[31]_0 [29]),
        .I2(\descrambler_reg_n_0_[55] ),
        .O(tempData_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[2]_i_1 
       (.I0(poly[41]),
        .I1(\descrambler_reg[31]_0 [2]),
        .I2(p_73_in),
        .O(unscrambled_data_i08_out));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[30]_i_1 
       (.I0(p_97_in),
        .I1(\descrambler_reg[31]_0 [30]),
        .I2(\descrambler_reg_n_0_[56] ),
        .O(tempData_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[31]_i_1 
       (.I0(p_100_in),
        .I1(\descrambler_reg[31]_0 [31]),
        .I2(\descrambler_reg_n_0_[57] ),
        .O(tempData_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[3]_i_1 
       (.I0(poly[42]),
        .I1(\descrambler_reg[31]_0 [3]),
        .I2(p_75_in),
        .O(unscrambled_data_i012_out));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[4]_i_1 
       (.I0(poly[43]),
        .I1(\descrambler_reg[31]_0 [4]),
        .I2(p_78_in),
        .O(unscrambled_data_i016_out));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[5]_i_1 
       (.I0(poly[44]),
        .I1(\descrambler_reg[31]_0 [5]),
        .I2(p_80_in),
        .O(unscrambled_data_i020_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[6]_i_1 
       (.I0(poly[45]),
        .I1(\descrambler_reg[31]_0 [6]),
        .I2(p_84_in),
        .O(unscrambled_data_i024_out));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[7]_i_1 
       (.I0(poly[46]),
        .I1(\descrambler_reg[31]_0 [7]),
        .I2(p_86_in),
        .O(unscrambled_data_i028_out));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[8]_i_1 
       (.I0(poly[47]),
        .I1(\descrambler_reg[31]_0 [8]),
        .I2(p_89_in),
        .O(unscrambled_data_i032_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[9]_i_1 
       (.I0(poly[48]),
        .I1(\descrambler_reg[31]_0 [9]),
        .I2(p_91_in),
        .O(unscrambled_data_i036_out));
  FDRE \unscrambled_data_i_reg[0] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i0),
        .Q(UNSCRAMBLED_DATA_OUT[0]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[10] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i040_out),
        .Q(UNSCRAMBLED_DATA_OUT[10]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[11] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i044_out),
        .Q(UNSCRAMBLED_DATA_OUT[11]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[12] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i048_out),
        .Q(UNSCRAMBLED_DATA_OUT[12]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[13] 
       (.C(out),
        .CE(E),
        .D(tempData),
        .Q(UNSCRAMBLED_DATA_OUT[13]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[14] 
       (.C(out),
        .CE(E),
        .D(tempData_0[17]),
        .Q(UNSCRAMBLED_DATA_OUT[14]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[15] 
       (.C(out),
        .CE(E),
        .D(tempData_0[16]),
        .Q(UNSCRAMBLED_DATA_OUT[15]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[16] 
       (.C(out),
        .CE(E),
        .D(tempData_0[15]),
        .Q(UNSCRAMBLED_DATA_OUT[16]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[17] 
       (.C(out),
        .CE(E),
        .D(tempData_0[14]),
        .Q(UNSCRAMBLED_DATA_OUT[17]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[18] 
       (.C(out),
        .CE(E),
        .D(tempData_0[13]),
        .Q(UNSCRAMBLED_DATA_OUT[18]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[19] 
       (.C(out),
        .CE(E),
        .D(tempData_0[12]),
        .Q(UNSCRAMBLED_DATA_OUT[19]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[1] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i04_out),
        .Q(UNSCRAMBLED_DATA_OUT[1]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[20] 
       (.C(out),
        .CE(E),
        .D(tempData_0[11]),
        .Q(UNSCRAMBLED_DATA_OUT[20]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[21] 
       (.C(out),
        .CE(E),
        .D(tempData_0[10]),
        .Q(UNSCRAMBLED_DATA_OUT[21]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[22] 
       (.C(out),
        .CE(E),
        .D(tempData_0[9]),
        .Q(UNSCRAMBLED_DATA_OUT[22]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[23] 
       (.C(out),
        .CE(E),
        .D(tempData_0[8]),
        .Q(UNSCRAMBLED_DATA_OUT[23]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[24] 
       (.C(out),
        .CE(E),
        .D(tempData_0[7]),
        .Q(UNSCRAMBLED_DATA_OUT[24]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[25] 
       (.C(out),
        .CE(E),
        .D(tempData_0[6]),
        .Q(UNSCRAMBLED_DATA_OUT[25]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[26] 
       (.C(out),
        .CE(E),
        .D(tempData_0[5]),
        .Q(UNSCRAMBLED_DATA_OUT[26]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[27] 
       (.C(out),
        .CE(E),
        .D(tempData_0[4]),
        .Q(UNSCRAMBLED_DATA_OUT[27]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[28] 
       (.C(out),
        .CE(E),
        .D(tempData_0[3]),
        .Q(UNSCRAMBLED_DATA_OUT[28]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[29] 
       (.C(out),
        .CE(E),
        .D(tempData_0[2]),
        .Q(UNSCRAMBLED_DATA_OUT[29]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[2] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i08_out),
        .Q(UNSCRAMBLED_DATA_OUT[2]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[30] 
       (.C(out),
        .CE(E),
        .D(tempData_0[1]),
        .Q(UNSCRAMBLED_DATA_OUT[30]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[31] 
       (.C(out),
        .CE(E),
        .D(tempData_0[0]),
        .Q(UNSCRAMBLED_DATA_OUT[31]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[3] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i012_out),
        .Q(UNSCRAMBLED_DATA_OUT[3]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[4] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i016_out),
        .Q(UNSCRAMBLED_DATA_OUT[4]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[5] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i020_out),
        .Q(UNSCRAMBLED_DATA_OUT[5]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[6] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i024_out),
        .Q(UNSCRAMBLED_DATA_OUT[6]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[7] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i028_out),
        .Q(UNSCRAMBLED_DATA_OUT[7]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[8] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i032_out),
        .Q(UNSCRAMBLED_DATA_OUT[8]),
        .R(\descrambler[57]_i_1_n_0 ));
  FDRE \unscrambled_data_i_reg[9] 
       (.C(out),
        .CE(E),
        .D(unscrambled_data_i036_out),
        .Q(UNSCRAMBLED_DATA_OUT[9]),
        .R(\descrambler[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \wdth_conv_1stage[38]_i_1 
       (.I0(CB_detect_dlyd0p5),
        .I1(\wdth_conv_1stage[38]_i_2_n_0 ),
        .I2(CC_detect_dlyd1_i_2_n_0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \wdth_conv_1stage[38]_i_2 
       (.I0(CC_detect_dlyd1_i_3_n_0),
        .I1(rxdatavalid_to_fifo_i),
        .I2(UNSCRAMBLED_DATA_OUT[23]),
        .I3(UNSCRAMBLED_DATA_OUT[22]),
        .I4(CC_detect_dlyd1_i_4_n_0),
        .O(\wdth_conv_1stage[38]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_ERR_DETECT" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_ERR_DETECT
   (hard_err_i,
    SOFT_ERR_reg_0,
    SOFT_ERR_reg_1,
    user_clk,
    HARD_ERR_reg_0,
    channel_up_tx_if);
  output hard_err_i;
  output SOFT_ERR_reg_0;
  input SOFT_ERR_reg_1;
  input user_clk;
  input HARD_ERR_reg_0;
  input channel_up_tx_if;

  wire HARD_ERR_reg_0;
  wire SOFT_ERR_reg_0;
  wire SOFT_ERR_reg_1;
  wire channel_up_tx_if;
  wire hard_err_i;
  wire soft_err_i;
  wire user_clk;

  FDRE HARD_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(HARD_ERR_reg_0),
        .Q(hard_err_i),
        .R(1'b0));
  FDRE SOFT_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SOFT_ERR_reg_1),
        .Q(soft_err_i),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    soft_err_i_1
       (.I0(soft_err_i),
        .I1(channel_up_tx_if),
        .O(SOFT_ERR_reg_0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_GLOBAL_LOGIC" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_GLOBAL_LOGIC
   (SR,
    gen_na_idles_i,
    CHANNEL_UP_RX_IF_reg,
    channel_up_tx_if,
    gen_ch_bond_i,
    hard_err,
    p_1_in,
    gen_ch_bond_int_reg,
    E,
    CHANNEL_UP_RX_IF_reg_0,
    R0,
    gen_cc_flop_0_i,
    CHANNEL_UP_RX_IF_reg_1,
    reset_lanes_c,
    user_clk,
    wait_for_lane_up_r_reg,
    remote_ready_i,
    got_idles_i,
    CHANNEL_UP_TX_IF_reg,
    txdatavalid_i,
    hard_err_i,
    tx_pe_data_v_i,
    rst_pma_init_usrclk,
    Q,
    gen_cc_i,
    rx_pe_data_v_i,
    \TX_DATA_reg[63] ,
    lane_up);
  output [0:0]SR;
  output gen_na_idles_i;
  output CHANNEL_UP_RX_IF_reg;
  output channel_up_tx_if;
  output gen_ch_bond_i;
  output hard_err;
  output [3:0]p_1_in;
  output gen_ch_bond_int_reg;
  output [0:0]E;
  output CHANNEL_UP_RX_IF_reg_0;
  output R0;
  output gen_cc_flop_0_i;
  output CHANNEL_UP_RX_IF_reg_1;
  input reset_lanes_c;
  input user_clk;
  input wait_for_lane_up_r_reg;
  input remote_ready_i;
  input got_idles_i;
  input CHANNEL_UP_TX_IF_reg;
  input txdatavalid_i;
  input hard_err_i;
  input tx_pe_data_v_i;
  input rst_pma_init_usrclk;
  input [3:0]Q;
  input gen_cc_i;
  input rx_pe_data_v_i;
  input \TX_DATA_reg[63] ;
  input lane_up;

  wire CHANNEL_UP_RX_IF_reg;
  wire CHANNEL_UP_RX_IF_reg_0;
  wire CHANNEL_UP_RX_IF_reg_1;
  wire CHANNEL_UP_TX_IF_reg;
  wire [0:0]E;
  wire [3:0]Q;
  wire R0;
  wire [0:0]SR;
  wire \TX_DATA_reg[63] ;
  wire channel_up_tx_if;
  wire gen_cc_flop_0_i;
  wire gen_cc_i;
  wire gen_ch_bond_i;
  wire gen_ch_bond_int_reg;
  wire gen_na_idles_i;
  wire got_idles_i;
  wire hard_err;
  wire hard_err_i;
  wire lane_up;
  wire [3:0]p_1_in;
  wire remote_ready_i;
  wire reset_lanes_c;
  wire rst_pma_init_usrclk;
  wire rx_pe_data_v_i;
  wire tx_pe_data_v_i;
  wire txdatavalid_i;
  wire user_clk;
  wire wait_for_lane_up_r_reg;

  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_CHANNEL_BOND_GEN channel_bond_gen_i
       (.\free_count_r_reg[4]_0 (CHANNEL_UP_TX_IF_reg),
        .gen_cc_i(gen_cc_i),
        .gen_ch_bond_int_reg_0(gen_ch_bond_i),
        .gen_ch_bond_int_reg_1(gen_ch_bond_int_reg),
        .gen_ch_bond_int_reg_2(channel_up_tx_if),
        .txdatavalid_i(txdatavalid_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_CHANNEL_ERR_DETECT channel_err_detect_i
       (.hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_CHANNEL_INIT_SM channel_init_sm_i
       (.CHANNEL_UP_RX_IF_reg_0(CHANNEL_UP_RX_IF_reg),
        .CHANNEL_UP_RX_IF_reg_1(CHANNEL_UP_RX_IF_reg_0),
        .CHANNEL_UP_RX_IF_reg_2(CHANNEL_UP_RX_IF_reg_1),
        .CHANNEL_UP_TX_IF_reg_0(channel_up_tx_if),
        .CHANNEL_UP_TX_IF_reg_1(CHANNEL_UP_TX_IF_reg),
        .E(E),
        .Q(Q),
        .R0(R0),
        .SR(SR),
        .\TX_DATA_reg[53] (gen_ch_bond_int_reg),
        .\TX_DATA_reg[63] (gen_ch_bond_i),
        .\TX_DATA_reg[63]_0 (\TX_DATA_reg[63] ),
        .gen_cc_flop_0_i(gen_cc_flop_0_i),
        .gen_cc_i(gen_cc_i),
        .got_idles_i(got_idles_i),
        .lane_up(lane_up),
        .p_1_in(p_1_in),
        .remote_ready_i(remote_ready_i),
        .reset_lanes_c(reset_lanes_c),
        .rst_pma_init_usrclk(rst_pma_init_usrclk),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .user_clk(user_clk),
        .wait_for_lane_up_r_reg_0(gen_na_idles_i),
        .wait_for_lane_up_r_reg_1(wait_for_lane_up_r_reg));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_GTX" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_GTX
   (DRPRDY_OUT,
    txn,
    txp,
    pre_rxdatavalid_i,
    pre_rxheadervalid_i,
    rxrecclk_from_gtx_i,
    in0,
    tx_out_clk,
    drp_clk_in_0,
    DRPDO_OUT,
    TXBUFSTATUS,
    RXBUFSTATUS,
    RXHEADER,
    RXDATA,
    drp_clk_in,
    drpen_in_i,
    drpwe_in_i,
    SR,
    gttxreset_t,
    rxn,
    rxp,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    gt_rxcdrovrden_in,
    D,
    out,
    rxuserrdy_t,
    drprdy_out_reg,
    txuserrdy_t,
    sync_clk,
    user_clk,
    DRPDI_IN,
    loopback,
    Q,
    drprdy_out_reg_0,
    drprdy_out_reg_1,
    DRPADDR_IN);
  output DRPRDY_OUT;
  output txn;
  output txp;
  output pre_rxdatavalid_i;
  output pre_rxheadervalid_i;
  output rxrecclk_from_gtx_i;
  output in0;
  output tx_out_clk;
  output drp_clk_in_0;
  output [15:0]DRPDO_OUT;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [1:0]RXHEADER;
  output [31:0]RXDATA;
  input drp_clk_in;
  input drpen_in_i;
  input drpwe_in_i;
  input [0:0]SR;
  input gttxreset_t;
  input rxn;
  input rxp;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  input gt_rxcdrovrden_in;
  input [0:0]D;
  input out;
  input rxuserrdy_t;
  input drprdy_out_reg;
  input txuserrdy_t;
  input sync_clk;
  input user_clk;
  input [15:0]DRPDI_IN;
  input [2:0]loopback;
  input [1:0]Q;
  input [63:0]drprdy_out_reg_0;
  input [6:0]drprdy_out_reg_1;
  input [8:0]DRPADDR_IN;

  wire [0:0]D;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPRDY_OUT;
  wire [1:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [31:0]RXDATA;
  wire [1:0]RXHEADER;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire drp_clk_in;
  wire drp_clk_in_0;
  wire drpen_in_i;
  wire drprdy_out_reg;
  wire [63:0]drprdy_out_reg_0;
  wire [6:0]drprdy_out_reg_1;
  wire drpwe_in_i;
  wire gt_qpllclk_quad1_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_rxcdrovrden_in;
  wire gttxreset_t;
  wire gtxe2_i_n_11;
  wire gtxe2_i_n_170;
  wire gtxe2_i_n_171;
  wire gtxe2_i_n_172;
  wire gtxe2_i_n_173;
  wire gtxe2_i_n_174;
  wire gtxe2_i_n_175;
  wire gtxe2_i_n_176;
  wire gtxe2_i_n_177;
  wire gtxe2_i_n_178;
  wire gtxe2_i_n_179;
  wire gtxe2_i_n_180;
  wire gtxe2_i_n_181;
  wire gtxe2_i_n_182;
  wire gtxe2_i_n_183;
  wire gtxe2_i_n_184;
  wire gtxe2_i_n_27;
  wire gtxe2_i_n_38;
  wire gtxe2_i_n_39;
  wire gtxe2_i_n_4;
  wire gtxe2_i_n_81;
  wire gtxe2_i_n_83;
  wire gtxe2_i_n_84;
  wire in0;
  wire [2:0]loopback;
  wire out;
  wire pre_rxdatavalid_i;
  wire pre_rxheadervalid_i;
  wire rxn;
  wire rxp;
  wire rxrecclk_from_gtx_i;
  wire rxuserrdy_t;
  wire sync_clk;
  wire tx_out_clk;
  wire txn;
  wire txp;
  wire txuserrdy_t;
  wire user_clk;
  wire NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED;
  wire NLW_gtxe2_i_CPLLLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMMADET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:2]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("FALSE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("FALSE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("ENCODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(19),
    .CLK_COR_MIN_LAT(15),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(1),
    .CPLL_FBDIV_45(4),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("FALSE"),
    .DEC_PCOMMA_DETECT("FALSE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b001),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h001E7080),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h0B000023FF10400020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("TRUE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(32),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("FALSE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("FALSE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("TRUE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(64),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(NLW_gtxe2_i_CPLLFBCLKLOST_UNCONNECTED),
        .CPLLLOCK(NLW_gtxe2_i_CPLLLOCK_UNCONNECTED),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(1'b1),
        .CPLLREFCLKLOST(NLW_gtxe2_i_CPLLREFCLKLOST_UNCONNECTED),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(1'b0),
        .DMONITOROUT({gtxe2_i_n_177,gtxe2_i_n_178,gtxe2_i_n_179,gtxe2_i_n_180,gtxe2_i_n_181,gtxe2_i_n_182,gtxe2_i_n_183,gtxe2_i_n_184}),
        .DRPADDR(DRPADDR_IN),
        .DRPCLK(drp_clk_in),
        .DRPDI(DRPDI_IN),
        .DRPDO(DRPDO_OUT),
        .DRPEN(drpen_in_i),
        .DRPRDY(DRPRDY_OUT),
        .DRPWE(drpwe_in_i),
        .EYESCANDATAERROR(gtxe2_i_n_4),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(1'b0),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(SR),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gttxreset_t),
        .GTXRXN(rxn),
        .GTXRXP(rxp),
        .GTXTXN(txn),
        .GTXTXP(txp),
        .LOOPBACK(loopback),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt_qpllclk_quad1_in),
        .QPLLREFCLK(gt_qpllrefclk_quad1_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b0),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({RXBUFSTATUS,gtxe2_i_n_83,gtxe2_i_n_84}),
        .RXBYTEISALIGNED(NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED),
        .RXBYTEREALIGN(NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(gtxe2_i_n_11),
        .RXCDROVRDEN(gt_rxcdrovrden_in),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA(NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:0]),
        .RXCHARISK(NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:0]),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(NLW_gtxe2_i_RXCOMMADET_UNCONNECTED),
        .RXCOMMADETEN(1'b0),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],RXDATA}),
        .RXDATAVALID(pre_rxdatavalid_i),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b1),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR(NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:0]),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(D),
        .RXHEADER({NLW_gtxe2_i_RXHEADER_UNCONNECTED[2],RXHEADER}),
        .RXHEADERVALID(pre_rxheadervalid_i),
        .RXLPMEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(1'b0),
        .RXMONITOROUT({gtxe2_i_n_170,gtxe2_i_n_171,gtxe2_i_n_172,gtxe2_i_n_173,gtxe2_i_n_174,gtxe2_i_n_175,gtxe2_i_n_176}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE(NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:0]),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxrecclk_from_gtx_i),
        .RXOUTCLKFABRIC(NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(1'b0),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(out),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(gtxe2_i_n_27),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(in0),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b1,1'b1}),
        .RXUSERRDY(rxuserrdy_t),
        .RXUSRCLK(drprdy_out_reg),
        .RXUSRCLK2(drprdy_out_reg),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b0),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({TXBUFSTATUS,gtxe2_i_n_81}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA(drprdy_out_reg_0),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,Q}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(tx_out_clk),
        .TXOUTCLKFABRIC(gtxe2_i_n_38),
        .TXOUTCLKPCS(gtxe2_i_n_39),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(drp_clk_in_0),
        .TXSEQUENCE(drprdy_out_reg_1),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b1,1'b1}),
        .TXUSERRDY(txuserrdy_t),
        .TXUSRCLK(sync_clk),
        .TXUSRCLK2(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_LANE_INIT_SM" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_LANE_INIT_SM
   (lane_up_flop_i_0,
    rst_r_reg_0,
    enable_err_detect_i,
    rx_polarity_r_reg_0,
    check_polarity_r_reg_0,
    reset_lanes_c,
    s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg,
    user_clk,
    check_polarity_r_reg_1,
    reset_count_r0,
    ready_r_reg0,
    rx_lossofsync_i,
    reset_lanes_i,
    gen_na_idles_i);
  output lane_up_flop_i_0;
  output rst_r_reg_0;
  output enable_err_detect_i;
  output rx_polarity_r_reg_0;
  output check_polarity_r_reg_0;
  output reset_lanes_c;
  input s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg;
  input user_clk;
  input check_polarity_r_reg_1;
  input reset_count_r0;
  input ready_r_reg0;
  input rx_lossofsync_i;
  input reset_lanes_i;
  input gen_na_idles_i;

  wire align_r;
  wire align_r_i_2_n_0;
  wire begin_r;
  wire check_polarity_r_i_1_n_0;
  wire check_polarity_r_reg_0;
  wire check_polarity_r_reg_1;
  wire count_8d_done_r;
  wire \counter1_r_reg_n_0_[1] ;
  wire \counter1_r_reg_n_0_[2] ;
  wire \counter1_r_reg_n_0_[3] ;
  wire enable_err_detect_i;
  wire gen_na_idles_i;
  wire lane_up_flop_i_0;
  wire next_align_c;
  wire next_begin_c;
  wire \next_begin_c_inferred__1/i__n_0 ;
  wire next_polarity_c;
  wire next_ready_c;
  wire next_rst_c;
  wire [3:0]p_0_in;
  wire polarity_r;
  wire prev_rx_polarity_r;
  wire prev_rx_polarity_r_i_1_n_0;
  wire ready_r;
  wire ready_r_i_4_n_0;
  wire ready_r_reg0;
  wire reset_count_r;
  wire reset_count_r0;
  wire reset_lanes_c;
  wire reset_lanes_i;
  wire rst_r_i_2_n_0;
  wire rst_r_reg_0;
  wire rx_lossofsync_i;
  wire rx_polarity_dlyd_i;
  wire rx_polarity_r_reg_0;
  wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg;
  wire u_cdc_rxlossofsync_in_n_2;
  wire user_clk;
  wire NLW_SRLC32E_inst_0_Q31_UNCONNECTED;

  FDRE ENABLE_ERR_DETECT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(enable_err_detect_i),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_name = "inst/\aurora_lane_0_i/lane_init_sm_i/SRLC32E_inst_0 " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SRLC32E_inst_0
       (.A({1'b0,1'b0,1'b1,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(user_clk),
        .D(polarity_r),
        .Q(rx_polarity_dlyd_i),
        .Q31(NLW_SRLC32E_inst_0_Q31_UNCONNECTED));
  LUT6 #(
    .INIT(64'h00000C0000000A0A)) 
    align_r_i_1
       (.I0(align_r_i_2_n_0),
        .I1(ready_r_i_4_n_0),
        .I2(ready_r),
        .I3(rx_lossofsync_i),
        .I4(polarity_r),
        .I5(align_r),
        .O(next_align_c));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    align_r_i_2
       (.I0(begin_r),
        .I1(rst_r_reg_0),
        .I2(count_8d_done_r),
        .I3(reset_lanes_i),
        .O(align_r_i_2_n_0));
  FDRE align_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_align_c),
        .Q(align_r),
        .R(ready_r_reg0));
  FDSE begin_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_begin_c),
        .Q(begin_r),
        .S(ready_r_reg0));
  LUT3 #(
    .INIT(8'hBA)) 
    check_polarity_r_i_1
       (.I0(polarity_r),
        .I1(rx_polarity_dlyd_i),
        .I2(check_polarity_r_reg_0),
        .O(check_polarity_r_i_1_n_0));
  FDRE check_polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(check_polarity_r_i_1_n_0),
        .Q(check_polarity_r_reg_0),
        .R(check_polarity_r_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter1_r[0]_i_1 
       (.I0(\counter1_r_reg_n_0_[1] ),
        .I1(\counter1_r_reg_n_0_[3] ),
        .I2(\counter1_r_reg_n_0_[2] ),
        .I3(count_8d_done_r),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter1_r[1]_i_1 
       (.I0(\counter1_r_reg_n_0_[2] ),
        .I1(\counter1_r_reg_n_0_[3] ),
        .I2(\counter1_r_reg_n_0_[1] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter1_r[2]_i_1 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .I1(\counter1_r_reg_n_0_[2] ),
        .O(p_0_in[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter1_r[3]_i_1 
       (.I0(\counter1_r_reg_n_0_[3] ),
        .O(p_0_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(count_8d_done_r),
        .R(reset_count_r));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\counter1_r_reg_n_0_[1] ),
        .R(reset_count_r));
  FDRE #(
    .INIT(1'b0)) 
    \counter1_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\counter1_r_reg_n_0_[2] ),
        .R(reset_count_r));
  FDSE #(
    .INIT(1'b1)) 
    \counter1_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\counter1_r_reg_n_0_[3] ),
        .S(reset_count_r));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    lane_up_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(lane_up_flop_i_0),
        .R(check_polarity_r_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \next_begin_c_inferred__1/i_ 
       (.I0(ready_r),
        .I1(polarity_r),
        .I2(align_r),
        .I3(rst_r_reg_0),
        .I4(begin_r),
        .O(\next_begin_c_inferred__1/i__n_0 ));
  LUT6 #(
    .INIT(64'h0000000C04040000)) 
    polarity_r_i_1
       (.I0(rx_polarity_dlyd_i),
        .I1(ready_r_i_4_n_0),
        .I2(ready_r),
        .I3(rx_lossofsync_i),
        .I4(polarity_r),
        .I5(align_r),
        .O(next_polarity_c));
  FDRE polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_polarity_c),
        .Q(polarity_r),
        .R(ready_r_reg0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    prev_rx_polarity_r_i_1
       (.I0(rx_polarity_r_reg_0),
        .I1(polarity_r),
        .I2(rst_r_reg_0),
        .I3(rx_polarity_dlyd_i),
        .I4(prev_rx_polarity_r),
        .O(prev_rx_polarity_r_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    prev_rx_polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(prev_rx_polarity_r_i_1_n_0),
        .Q(prev_rx_polarity_r),
        .R(check_polarity_r_reg_1));
  LUT3 #(
    .INIT(8'h01)) 
    ready_r_i_4
       (.I0(rst_r_reg_0),
        .I1(reset_lanes_i),
        .I2(begin_r),
        .O(ready_r_i_4_n_0));
  FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(ready_r_reg0));
  FDRE reset_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_count_r0),
        .Q(reset_count_r),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF1)) 
    reset_lanes_flop_0_i_i_1
       (.I0(lane_up_flop_i_0),
        .I1(gen_na_idles_i),
        .I2(check_polarity_r_reg_1),
        .O(reset_lanes_c));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h14140414)) 
    rst_r_i_1
       (.I0(rst_r_i_2_n_0),
        .I1(begin_r),
        .I2(rst_r_reg_0),
        .I3(count_8d_done_r),
        .I4(reset_lanes_i),
        .O(next_rst_c));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    rst_r_i_2
       (.I0(align_r),
        .I1(ready_r),
        .I2(polarity_r),
        .O(rst_r_i_2_n_0));
  FDRE rst_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_rst_c),
        .Q(rst_r_reg_0),
        .R(ready_r_reg0));
  FDRE #(
    .INIT(1'b0)) 
    rx_polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(u_cdc_rxlossofsync_in_n_2),
        .Q(rx_polarity_r_reg_0),
        .R(1'b0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync u_cdc_rxlossofsync_in
       (.SYSTEM_RESET_reg(u_cdc_rxlossofsync_in_n_2),
        .align_r(align_r),
        .begin_r_reg(\next_begin_c_inferred__1/i__n_0 ),
        .next_begin_c(next_begin_c),
        .next_ready_c(next_ready_c),
        .polarity_r(polarity_r),
        .prev_rx_polarity_r(prev_rx_polarity_r),
        .ready_r(ready_r),
        .ready_r_reg(ready_r_i_4_n_0),
        .reset_lanes_i(reset_lanes_i),
        .rx_lossofsync_i(rx_lossofsync_i),
        .rx_polarity_dlyd_i(rx_polarity_dlyd_i),
        .rx_polarity_r_reg(check_polarity_r_reg_1),
        .rx_polarity_r_reg_0(rx_polarity_r_reg_0),
        .s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_MULTI_GT" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_MULTI_GT
   (DRPRDY_OUT,
    txn,
    txp,
    pre_rxdatavalid_i,
    pre_rxheadervalid_i,
    rxrecclk_from_gtx_i,
    in0,
    tx_out_clk,
    drp_clk_in_0,
    DRPDO_OUT,
    TXBUFSTATUS,
    RXBUFSTATUS,
    RXHEADER,
    RXDATA,
    drp_clk_in,
    drpen_in_i,
    drpwe_in_i,
    SR,
    gttxreset_t,
    rxn,
    rxp,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    gt_rxcdrovrden_in,
    D,
    out,
    rxuserrdy_t,
    drprdy_out_reg,
    txuserrdy_t,
    sync_clk,
    user_clk,
    DRPDI_IN,
    loopback,
    Q,
    drprdy_out_reg_0,
    drprdy_out_reg_1,
    DRPADDR_IN);
  output DRPRDY_OUT;
  output txn;
  output txp;
  output pre_rxdatavalid_i;
  output pre_rxheadervalid_i;
  output rxrecclk_from_gtx_i;
  output in0;
  output tx_out_clk;
  output drp_clk_in_0;
  output [15:0]DRPDO_OUT;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [1:0]RXHEADER;
  output [31:0]RXDATA;
  input drp_clk_in;
  input drpen_in_i;
  input drpwe_in_i;
  input [0:0]SR;
  input gttxreset_t;
  input rxn;
  input rxp;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  input gt_rxcdrovrden_in;
  input [0:0]D;
  input out;
  input rxuserrdy_t;
  input drprdy_out_reg;
  input txuserrdy_t;
  input sync_clk;
  input user_clk;
  input [15:0]DRPDI_IN;
  input [2:0]loopback;
  input [1:0]Q;
  input [63:0]drprdy_out_reg_0;
  input [6:0]drprdy_out_reg_1;
  input [8:0]DRPADDR_IN;

  wire [0:0]D;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPRDY_OUT;
  wire [1:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [31:0]RXDATA;
  wire [1:0]RXHEADER;
  wire [0:0]SR;
  wire [0:0]TXBUFSTATUS;
  wire drp_clk_in;
  wire drp_clk_in_0;
  wire drpen_in_i;
  wire drprdy_out_reg;
  wire [63:0]drprdy_out_reg_0;
  wire [6:0]drprdy_out_reg_1;
  wire drpwe_in_i;
  wire gt_qpllclk_quad1_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_rxcdrovrden_in;
  wire gttxreset_t;
  wire in0;
  wire [2:0]loopback;
  wire out;
  wire pre_rxdatavalid_i;
  wire pre_rxheadervalid_i;
  wire rxn;
  wire rxp;
  wire rxrecclk_from_gtx_i;
  wire rxuserrdy_t;
  wire sync_clk;
  wire tx_out_clk;
  wire txn;
  wire txp;
  wire txuserrdy_t;
  wire user_clk;

  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_GTX aurora_64b66b_pcs_pma_gtx_inst
       (.D(D),
        .DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPRDY_OUT(DRPRDY_OUT),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXDATA(RXDATA),
        .RXHEADER(RXHEADER),
        .SR(SR),
        .TXBUFSTATUS(TXBUFSTATUS),
        .drp_clk_in(drp_clk_in),
        .drp_clk_in_0(drp_clk_in_0),
        .drpen_in_i(drpen_in_i),
        .drprdy_out_reg(drprdy_out_reg),
        .drprdy_out_reg_0(drprdy_out_reg_0),
        .drprdy_out_reg_1(drprdy_out_reg_1),
        .drpwe_in_i(drpwe_in_i),
        .gt_qpllclk_quad1_in(gt_qpllclk_quad1_in),
        .gt_qpllrefclk_quad1_in(gt_qpllrefclk_quad1_in),
        .gt_rxcdrovrden_in(gt_rxcdrovrden_in),
        .gttxreset_t(gttxreset_t),
        .in0(in0),
        .loopback(loopback),
        .out(out),
        .pre_rxdatavalid_i(pre_rxdatavalid_i),
        .pre_rxheadervalid_i(pre_rxheadervalid_i),
        .rxn(rxn),
        .rxp(rxp),
        .rxrecclk_from_gtx_i(rxrecclk_from_gtx_i),
        .rxuserrdy_t(rxuserrdy_t),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .txuserrdy_t(txuserrdy_t),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_RESET_LOGIC" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_RESET_LOGIC
   (SYSTEM_RESET_reg_0,
    ready_r_reg0,
    reset_count_r0,
    SYSTEM_RESET_reg_1,
    in0,
    link_reset_out,
    power_down,
    sysreset_to_core_sync,
    user_clk,
    hard_err_i,
    tx_reset_i,
    lane_up);
  output SYSTEM_RESET_reg_0;
  output ready_r_reg0;
  output reset_count_r0;
  output SYSTEM_RESET_reg_1;
  input in0;
  input link_reset_out;
  input power_down;
  input sysreset_to_core_sync;
  input user_clk;
  input hard_err_i;
  input tx_reset_i;
  input lane_up;

  wire SYSTEM_RESET0_n_0;
  wire SYSTEM_RESET_reg_0;
  wire SYSTEM_RESET_reg_1;
  wire fsm_resetdone_sync;
  wire hard_err_i;
  wire in0;
  wire lane_up;
  wire link_reset_out;
  wire link_reset_sync;
  wire power_down;
  wire power_down_sync;
  wire ready_r_reg0;
  wire reset_count_r0;
  wire sysreset_to_core_sync;
  wire tx_reset_i;
  wire user_clk;

  LUT4 #(
    .INIT(16'hFFEF)) 
    SYSTEM_RESET0
       (.I0(link_reset_sync),
        .I1(sysreset_to_core_sync),
        .I2(fsm_resetdone_sync),
        .I3(power_down_sync),
        .O(SYSTEM_RESET0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    SYSTEM_RESET_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SYSTEM_RESET0_n_0),
        .Q(SYSTEM_RESET_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ready_r_i_1
       (.I0(SYSTEM_RESET_reg_0),
        .I1(hard_err_i),
        .O(ready_r_reg0));
  LUT2 #(
    .INIT(4'hB)) 
    reset_count_r_i_1
       (.I0(SYSTEM_RESET_reg_0),
        .I1(tx_reset_i),
        .O(reset_count_r0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_1 u_link_rst_sync
       (.link_reset_out(link_reset_out),
        .link_reset_sync(link_reset_sync),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_2 u_pd_sync
       (.power_down(power_down),
        .power_down_sync(power_down_sync),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_3 u_rst_done_sync
       (.fsm_resetdone_sync(fsm_resetdone_sync),
        .in0(in0),
        .user_clk(user_clk));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hB)) 
    wait_for_lane_up_r_i_1
       (.I0(SYSTEM_RESET_reg_0),
        .I1(lane_up),
        .O(SYSTEM_RESET_reg_1));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_RX_STARTUP_FSM" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_RX_STARTUP_FSM
   (rx_fsm_resetdone_i,
    SR,
    rx_clk_locked_i,
    rxuserrdy_t,
    new_gtx_rx_pcsreset_comb0,
    out,
    in0,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    init_clk,
    stg4_reg,
    AR,
    fsm_resetdone_to_new_gtx_rx_comb);
  output rx_fsm_resetdone_i;
  output [0:0]SR;
  output rx_clk_locked_i;
  output rxuserrdy_t;
  output new_gtx_rx_pcsreset_comb0;
  input out;
  input in0;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input init_clk;
  input stg4_reg;
  input [0:0]AR;
  input fsm_resetdone_to_new_gtx_rx_comb;

  wire [0:0]AR;
  wire RXUSERRDY_i_1_n_0;
  wire RXUSERRDY_i_2_n_0;
  wire [0:0]SR;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire fsm_resetdone_to_new_gtx_rx_comb;
  wire gtrxreset_i_i_1_n_0;
  wire gtx_rx_pcsreset_comb;
  wire in0;
  wire init_clk;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1__0_n_0 ;
  wire \init_wait_count[7]_i_3__0_n_0 ;
  wire \init_wait_count[7]_i_4__0_n_0 ;
  wire \init_wait_count[7]_i_5__0_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire new_gtx_rx_pcsreset_comb0;
  wire out;
  wire [7:1]p_0_in__0;
  wire [7:0]p_0_in__0_0;
  wire reset_time_out;
  wire reset_time_out_i_6_n_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_i_2_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire [31:0]rx_cdrlock_counter;
  wire rx_cdrlock_counter0_carry__0_n_0;
  wire rx_cdrlock_counter0_carry__0_n_1;
  wire rx_cdrlock_counter0_carry__0_n_2;
  wire rx_cdrlock_counter0_carry__0_n_3;
  wire rx_cdrlock_counter0_carry__0_n_4;
  wire rx_cdrlock_counter0_carry__0_n_5;
  wire rx_cdrlock_counter0_carry__0_n_6;
  wire rx_cdrlock_counter0_carry__0_n_7;
  wire rx_cdrlock_counter0_carry__1_n_0;
  wire rx_cdrlock_counter0_carry__1_n_1;
  wire rx_cdrlock_counter0_carry__1_n_2;
  wire rx_cdrlock_counter0_carry__1_n_3;
  wire rx_cdrlock_counter0_carry__1_n_4;
  wire rx_cdrlock_counter0_carry__1_n_5;
  wire rx_cdrlock_counter0_carry__1_n_6;
  wire rx_cdrlock_counter0_carry__1_n_7;
  wire rx_cdrlock_counter0_carry__2_n_0;
  wire rx_cdrlock_counter0_carry__2_n_1;
  wire rx_cdrlock_counter0_carry__2_n_2;
  wire rx_cdrlock_counter0_carry__2_n_3;
  wire rx_cdrlock_counter0_carry__2_n_4;
  wire rx_cdrlock_counter0_carry__2_n_5;
  wire rx_cdrlock_counter0_carry__2_n_6;
  wire rx_cdrlock_counter0_carry__2_n_7;
  wire rx_cdrlock_counter0_carry__3_n_0;
  wire rx_cdrlock_counter0_carry__3_n_1;
  wire rx_cdrlock_counter0_carry__3_n_2;
  wire rx_cdrlock_counter0_carry__3_n_3;
  wire rx_cdrlock_counter0_carry__3_n_4;
  wire rx_cdrlock_counter0_carry__3_n_5;
  wire rx_cdrlock_counter0_carry__3_n_6;
  wire rx_cdrlock_counter0_carry__3_n_7;
  wire rx_cdrlock_counter0_carry__4_n_0;
  wire rx_cdrlock_counter0_carry__4_n_1;
  wire rx_cdrlock_counter0_carry__4_n_2;
  wire rx_cdrlock_counter0_carry__4_n_3;
  wire rx_cdrlock_counter0_carry__4_n_4;
  wire rx_cdrlock_counter0_carry__4_n_5;
  wire rx_cdrlock_counter0_carry__4_n_6;
  wire rx_cdrlock_counter0_carry__4_n_7;
  wire rx_cdrlock_counter0_carry__5_n_0;
  wire rx_cdrlock_counter0_carry__5_n_1;
  wire rx_cdrlock_counter0_carry__5_n_2;
  wire rx_cdrlock_counter0_carry__5_n_3;
  wire rx_cdrlock_counter0_carry__5_n_4;
  wire rx_cdrlock_counter0_carry__5_n_5;
  wire rx_cdrlock_counter0_carry__5_n_6;
  wire rx_cdrlock_counter0_carry__5_n_7;
  wire rx_cdrlock_counter0_carry__6_n_2;
  wire rx_cdrlock_counter0_carry__6_n_3;
  wire rx_cdrlock_counter0_carry__6_n_5;
  wire rx_cdrlock_counter0_carry__6_n_6;
  wire rx_cdrlock_counter0_carry__6_n_7;
  wire rx_cdrlock_counter0_carry_n_0;
  wire rx_cdrlock_counter0_carry_n_1;
  wire rx_cdrlock_counter0_carry_n_2;
  wire rx_cdrlock_counter0_carry_n_3;
  wire rx_cdrlock_counter0_carry_n_4;
  wire rx_cdrlock_counter0_carry_n_5;
  wire rx_cdrlock_counter0_carry_n_6;
  wire rx_cdrlock_counter0_carry_n_7;
  wire \rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \rx_cdrlock_counter[31]_i_5_n_0 ;
  wire \rx_cdrlock_counter[31]_i_6_n_0 ;
  wire \rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \rx_cdrlock_counter[31]_i_9_n_0 ;
  wire [31:0]rx_cdrlock_counter_1;
  wire rx_cdrlocked_i_1_n_0;
  wire rx_clk_locked_i;
  (* RTL_KEEP = "true" *) wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_1_n_0;
  wire rx_fsm_reset_done_int_i_2_n_0;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_reset_r3;
  (* RTL_KEEP = "true" *) wire [7:0]rx_state;
  wire \rx_state[0]_i_4_n_0 ;
  wire \rx_state[1]_i_5_n_0 ;
  wire \rx_state[2]_i_5_n_0 ;
  wire \rx_state[2]_i_6_n_0 ;
  wire \rx_state[3]_i_3_n_0 ;
  wire \rx_state[7]_i_1_n_0 ;
  wire \rx_state[7]_i_3_n_0 ;
  wire \rx_state[7]_i_4_n_0 ;
  wire rxuserrdy_t;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  wire stg4_reg;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_i_4_n_0;
  wire time_out_1us_i_5_n_0;
  wire time_out_1us_i_6_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_4__0_n_0 ;
  wire \time_out_counter[0]_i_5__0_n_0 ;
  wire \time_out_counter[0]_i_6__0_n_0 ;
  wire \time_out_counter[0]_i_7__0_n_0 ;
  wire \time_out_counter[0]_i_8_n_0 ;
  wire \time_out_counter[0]_i_9_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_2 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_5 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire time_out_wait_bypass;
  wire time_out_wait_bypass_i_3_n_0;
  wire time_out_wait_bypass_i_4_n_0;
  wire time_out_wait_bypass_i_5_n_0;
  wire time_out_wait_bypass_i_6_n_0;
  wire time_tlock_max;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire time_tlock_max_i_5_n_0;
  wire u_rst_sync_mmcm_lock_n_0;
  wire u_rst_sync_mmcm_lock_n_1;
  wire u_rst_sync_mmcm_lock_n_2;
  wire u_rst_sync_mmcm_lock_n_3;
  wire u_rst_sync_mmcm_lock_n_4;
  wire u_rst_sync_mmcm_lock_n_5;
  wire u_rst_sync_plllock_n_0;
  wire u_rst_sync_plllock_n_1;
  wire u_rst_sync_plllock_n_3;
  wire u_rst_sync_run_phase_align_n_0;
  wire u_rst_sync_rx_fsm_reset_done_n_0;
  wire u_rst_sync_rx_fsm_reset_done_n_1;
  wire u_rst_sync_rxresetdone_n_0;
  wire u_rst_sync_rxresetdone_n_5;
  wire u_rst_sync_rxresetdone_n_6;
  wire u_rst_sync_system_reset_n_0;
  wire \wait_bypass_count[0]_i_3_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_2_n_0 ;
  wire \wait_bypass_count_reg[0]_i_2_n_1 ;
  wire \wait_bypass_count_reg[0]_i_2_n_2 ;
  wire \wait_bypass_count_reg[0]_i_2_n_3 ;
  wire \wait_bypass_count_reg[0]_i_2_n_4 ;
  wire \wait_bypass_count_reg[0]_i_2_n_5 ;
  wire \wait_bypass_count_reg[0]_i_2_n_6 ;
  wire \wait_bypass_count_reg[0]_i_2_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire [3:2]NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

  assign rx_fsm_resetdone_i = rx_fsm_reset_done_int;
  FDRE FABRIC_PCS_RESET_reg
       (.C(stg4_reg),
        .CE(1'b1),
        .D(u_rst_sync_system_reset_n_0),
        .Q(gtx_rx_pcsreset_comb),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFDDFF00004000)) 
    RXUSERRDY_i_1
       (.I0(rx_state[0]),
        .I1(rx_state[4]),
        .I2(time_out_1us_reg_n_0),
        .I3(rx_fsm_reset_done_int_i_2_n_0),
        .I4(RXUSERRDY_i_2_n_0),
        .I5(rxuserrdy_t),
        .O(RXUSERRDY_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    RXUSERRDY_i_2
       (.I0(rx_state[5]),
        .I1(rx_state[6]),
        .I2(rx_state[7]),
        .O(RXUSERRDY_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(RXUSERRDY_i_1_n_0),
        .Q(rxuserrdy_t));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000002)) 
    check_tlock_max_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(\rx_state[7]_i_4_n_0 ),
        .I5(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000100)) 
    gtrxreset_i_i_1
       (.I0(\rx_state[7]_i_4_n_0 ),
        .I1(rx_state[3]),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .I5(SR),
        .O(gtrxreset_i_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(gtrxreset_i_i_1_n_0),
        .Q(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[5]),
        .I3(\init_wait_count[7]_i_5__0_n_0 ),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \init_wait_count[7]_i_1__0 
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(\init_wait_count[7]_i_4__0_n_0 ),
        .I2(init_wait_count_reg[7]),
        .I3(init_wait_count_reg[6]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[2]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg[7]),
        .I1(\init_wait_count[7]_i_5__0_n_0 ),
        .I2(init_wait_count_reg[5]),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_count_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(\init_wait_count[7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[5]),
        .O(\init_wait_count[7]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \init_wait_count[7]_i_5__0 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(\init_wait_count[7]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(AR),
        .D(\init_wait_count[0]_i_1__0_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(AR),
        .D(p_0_in__0[7]),
        .Q(init_wait_count_reg[7]));
  LUT2 #(
    .INIT(4'hE)) 
    init_wait_done_i_1__0
       (.I0(init_wait_done),
        .I1(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    init_wait_done_i_2__0
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[7]),
        .I4(\init_wait_count[7]_i_4__0_n_0 ),
        .I5(\init_wait_count[7]_i_3__0_n_0 ),
        .O(init_wait_done));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    new_gtx_rx_pcsreset_comb_i_1
       (.I0(gtx_rx_pcsreset_comb),
        .I1(fsm_resetdone_to_new_gtx_rx_comb),
        .O(new_gtx_rx_pcsreset_comb0));
  LUT6 #(
    .INIT(64'h000002020003023F)) 
    reset_time_out_i_3__0
       (.I0(reset_time_out_i_6_n_0),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .I5(\rx_state[7]_i_4_n_0 ),
        .O(reset_time_out));
  LUT6 #(
    .INIT(64'h000000020003033F)) 
    reset_time_out_i_6
       (.I0(rx_clk_locked_i),
        .I1(rx_state[7]),
        .I2(rx_state[6]),
        .I3(rx_state[4]),
        .I4(rx_state[5]),
        .I5(rx_state[2]),
        .O(reset_time_out_i_6_n_0));
  FDPE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(u_rst_sync_mmcm_lock_n_1),
        .PRE(AR),
        .Q(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000200)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_fsm_reset_done_int_i_2_n_0),
        .I1(run_phase_alignment_int_i_2_n_0),
        .I2(rx_state[0]),
        .I3(rx_state[5]),
        .I4(rx_state[4]),
        .I5(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    run_phase_alignment_int_i_2
       (.I0(rx_state[7]),
        .I1(rx_state[6]),
        .O(run_phase_alignment_int_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0));
  CARRY4 rx_cdrlock_counter0_carry
       (.CI(1'b0),
        .CO({rx_cdrlock_counter0_carry_n_0,rx_cdrlock_counter0_carry_n_1,rx_cdrlock_counter0_carry_n_2,rx_cdrlock_counter0_carry_n_3}),
        .CYINIT(rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({rx_cdrlock_counter0_carry_n_4,rx_cdrlock_counter0_carry_n_5,rx_cdrlock_counter0_carry_n_6,rx_cdrlock_counter0_carry_n_7}),
        .S(rx_cdrlock_counter[4:1]));
  CARRY4 rx_cdrlock_counter0_carry__0
       (.CI(rx_cdrlock_counter0_carry_n_0),
        .CO({rx_cdrlock_counter0_carry__0_n_0,rx_cdrlock_counter0_carry__0_n_1,rx_cdrlock_counter0_carry__0_n_2,rx_cdrlock_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({rx_cdrlock_counter0_carry__0_n_4,rx_cdrlock_counter0_carry__0_n_5,rx_cdrlock_counter0_carry__0_n_6,rx_cdrlock_counter0_carry__0_n_7}),
        .S(rx_cdrlock_counter[8:5]));
  CARRY4 rx_cdrlock_counter0_carry__1
       (.CI(rx_cdrlock_counter0_carry__0_n_0),
        .CO({rx_cdrlock_counter0_carry__1_n_0,rx_cdrlock_counter0_carry__1_n_1,rx_cdrlock_counter0_carry__1_n_2,rx_cdrlock_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({rx_cdrlock_counter0_carry__1_n_4,rx_cdrlock_counter0_carry__1_n_5,rx_cdrlock_counter0_carry__1_n_6,rx_cdrlock_counter0_carry__1_n_7}),
        .S(rx_cdrlock_counter[12:9]));
  CARRY4 rx_cdrlock_counter0_carry__2
       (.CI(rx_cdrlock_counter0_carry__1_n_0),
        .CO({rx_cdrlock_counter0_carry__2_n_0,rx_cdrlock_counter0_carry__2_n_1,rx_cdrlock_counter0_carry__2_n_2,rx_cdrlock_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({rx_cdrlock_counter0_carry__2_n_4,rx_cdrlock_counter0_carry__2_n_5,rx_cdrlock_counter0_carry__2_n_6,rx_cdrlock_counter0_carry__2_n_7}),
        .S(rx_cdrlock_counter[16:13]));
  CARRY4 rx_cdrlock_counter0_carry__3
       (.CI(rx_cdrlock_counter0_carry__2_n_0),
        .CO({rx_cdrlock_counter0_carry__3_n_0,rx_cdrlock_counter0_carry__3_n_1,rx_cdrlock_counter0_carry__3_n_2,rx_cdrlock_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({rx_cdrlock_counter0_carry__3_n_4,rx_cdrlock_counter0_carry__3_n_5,rx_cdrlock_counter0_carry__3_n_6,rx_cdrlock_counter0_carry__3_n_7}),
        .S(rx_cdrlock_counter[20:17]));
  CARRY4 rx_cdrlock_counter0_carry__4
       (.CI(rx_cdrlock_counter0_carry__3_n_0),
        .CO({rx_cdrlock_counter0_carry__4_n_0,rx_cdrlock_counter0_carry__4_n_1,rx_cdrlock_counter0_carry__4_n_2,rx_cdrlock_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({rx_cdrlock_counter0_carry__4_n_4,rx_cdrlock_counter0_carry__4_n_5,rx_cdrlock_counter0_carry__4_n_6,rx_cdrlock_counter0_carry__4_n_7}),
        .S(rx_cdrlock_counter[24:21]));
  CARRY4 rx_cdrlock_counter0_carry__5
       (.CI(rx_cdrlock_counter0_carry__4_n_0),
        .CO({rx_cdrlock_counter0_carry__5_n_0,rx_cdrlock_counter0_carry__5_n_1,rx_cdrlock_counter0_carry__5_n_2,rx_cdrlock_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({rx_cdrlock_counter0_carry__5_n_4,rx_cdrlock_counter0_carry__5_n_5,rx_cdrlock_counter0_carry__5_n_6,rx_cdrlock_counter0_carry__5_n_7}),
        .S(rx_cdrlock_counter[28:25]));
  CARRY4 rx_cdrlock_counter0_carry__6
       (.CI(rx_cdrlock_counter0_carry__5_n_0),
        .CO({NLW_rx_cdrlock_counter0_carry__6_CO_UNCONNECTED[3:2],rx_cdrlock_counter0_carry__6_n_2,rx_cdrlock_counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_rx_cdrlock_counter0_carry__6_O_UNCONNECTED[3],rx_cdrlock_counter0_carry__6_n_5,rx_cdrlock_counter0_carry__6_n_6,rx_cdrlock_counter0_carry__6_n_7}),
        .S({1'b0,rx_cdrlock_counter[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \rx_cdrlock_counter[0]_i_1 
       (.I0(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(rx_cdrlock_counter[0]),
        .O(rx_cdrlock_counter_1[0]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[10]_i_1 
       (.I0(rx_cdrlock_counter0_carry__1_n_6),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[10]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[11]_i_1 
       (.I0(rx_cdrlock_counter0_carry__1_n_5),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[12]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__1_n_4),
        .O(rx_cdrlock_counter_1[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[13]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__2_n_7),
        .O(rx_cdrlock_counter_1[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[14]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__2_n_6),
        .O(rx_cdrlock_counter_1[14]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[15]_i_1 
       (.I0(rx_cdrlock_counter0_carry__2_n_5),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[16]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__2_n_4),
        .O(rx_cdrlock_counter_1[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[17]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__3_n_7),
        .O(rx_cdrlock_counter_1[17]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[18]_i_1 
       (.I0(rx_cdrlock_counter0_carry__3_n_6),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[19]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__3_n_5),
        .O(rx_cdrlock_counter_1[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[1]_i_1 
       (.I0(rx_cdrlock_counter0_carry_n_7),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[20]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__3_n_4),
        .O(rx_cdrlock_counter_1[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[21]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__4_n_7),
        .O(rx_cdrlock_counter_1[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[22]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__4_n_6),
        .O(rx_cdrlock_counter_1[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[23]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__4_n_5),
        .O(rx_cdrlock_counter_1[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[24]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__4_n_4),
        .O(rx_cdrlock_counter_1[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[25]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__5_n_7),
        .O(rx_cdrlock_counter_1[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[26]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__5_n_6),
        .O(rx_cdrlock_counter_1[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[27]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__5_n_5),
        .O(rx_cdrlock_counter_1[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[28]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__5_n_4),
        .O(rx_cdrlock_counter_1[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[29]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__6_n_7),
        .O(rx_cdrlock_counter_1[29]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[2]_i_1 
       (.I0(rx_cdrlock_counter0_carry_n_6),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[30]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__6_n_6),
        .O(rx_cdrlock_counter_1[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[31]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry__6_n_5),
        .O(rx_cdrlock_counter_1[31]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \rx_cdrlock_counter[31]_i_2 
       (.I0(rx_cdrlock_counter[12]),
        .I1(rx_cdrlock_counter[13]),
        .I2(rx_cdrlock_counter[10]),
        .I3(rx_cdrlock_counter[11]),
        .I4(\rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \rx_cdrlock_counter[31]_i_3 
       (.I0(rx_cdrlock_counter[4]),
        .I1(rx_cdrlock_counter[5]),
        .I2(rx_cdrlock_counter[2]),
        .I3(rx_cdrlock_counter[3]),
        .I4(\rx_cdrlock_counter[31]_i_6_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \rx_cdrlock_counter[31]_i_4 
       (.I0(\rx_cdrlock_counter[31]_i_7_n_0 ),
        .I1(\rx_cdrlock_counter[31]_i_8_n_0 ),
        .I2(rx_cdrlock_counter[31]),
        .I3(rx_cdrlock_counter[30]),
        .I4(rx_cdrlock_counter[1]),
        .I5(\rx_cdrlock_counter[31]_i_9_n_0 ),
        .O(\rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rx_cdrlock_counter[31]_i_5 
       (.I0(rx_cdrlock_counter[15]),
        .I1(rx_cdrlock_counter[14]),
        .I2(rx_cdrlock_counter[17]),
        .I3(rx_cdrlock_counter[16]),
        .O(\rx_cdrlock_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rx_cdrlock_counter[31]_i_6 
       (.I0(rx_cdrlock_counter[7]),
        .I1(rx_cdrlock_counter[6]),
        .I2(rx_cdrlock_counter[9]),
        .I3(rx_cdrlock_counter[8]),
        .O(\rx_cdrlock_counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_7 
       (.I0(rx_cdrlock_counter[23]),
        .I1(rx_cdrlock_counter[22]),
        .I2(rx_cdrlock_counter[25]),
        .I3(rx_cdrlock_counter[24]),
        .O(\rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \rx_cdrlock_counter[31]_i_8 
       (.I0(rx_cdrlock_counter[18]),
        .I1(rx_cdrlock_counter[19]),
        .I2(rx_cdrlock_counter[21]),
        .I3(rx_cdrlock_counter[20]),
        .O(\rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_cdrlock_counter[31]_i_9 
       (.I0(rx_cdrlock_counter[27]),
        .I1(rx_cdrlock_counter[26]),
        .I2(rx_cdrlock_counter[29]),
        .I3(rx_cdrlock_counter[28]),
        .O(\rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[3]_i_1 
       (.I0(rx_cdrlock_counter0_carry_n_5),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \rx_cdrlock_counter[4]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(rx_cdrlock_counter0_carry_n_4),
        .O(rx_cdrlock_counter_1[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[5]_i_1 
       (.I0(rx_cdrlock_counter0_carry__0_n_7),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[5]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[6]_i_1 
       (.I0(rx_cdrlock_counter0_carry__0_n_6),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[6]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[7]_i_1 
       (.I0(rx_cdrlock_counter0_carry__0_n_5),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[7]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[8]_i_1 
       (.I0(rx_cdrlock_counter0_carry__0_n_4),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \rx_cdrlock_counter[9]_i_1 
       (.I0(rx_cdrlock_counter0_carry__1_n_7),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlock_counter_1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[0] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[0]),
        .Q(rx_cdrlock_counter[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[10] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[10]),
        .Q(rx_cdrlock_counter[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[11] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[11]),
        .Q(rx_cdrlock_counter[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[12] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[12]),
        .Q(rx_cdrlock_counter[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[13] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[13]),
        .Q(rx_cdrlock_counter[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[14] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[14]),
        .Q(rx_cdrlock_counter[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[15] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[15]),
        .Q(rx_cdrlock_counter[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[16] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[16]),
        .Q(rx_cdrlock_counter[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[17] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[17]),
        .Q(rx_cdrlock_counter[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[18] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[18]),
        .Q(rx_cdrlock_counter[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[19] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[19]),
        .Q(rx_cdrlock_counter[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[1] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[1]),
        .Q(rx_cdrlock_counter[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[20] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[20]),
        .Q(rx_cdrlock_counter[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[21] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[21]),
        .Q(rx_cdrlock_counter[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[22] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[22]),
        .Q(rx_cdrlock_counter[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[23] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[23]),
        .Q(rx_cdrlock_counter[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[24] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[24]),
        .Q(rx_cdrlock_counter[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[25] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[25]),
        .Q(rx_cdrlock_counter[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[26] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[26]),
        .Q(rx_cdrlock_counter[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[27] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[27]),
        .Q(rx_cdrlock_counter[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[28] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[28]),
        .Q(rx_cdrlock_counter[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[29] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[29]),
        .Q(rx_cdrlock_counter[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[2] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[2]),
        .Q(rx_cdrlock_counter[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[30] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[30]),
        .Q(rx_cdrlock_counter[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[31] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[31]),
        .Q(rx_cdrlock_counter[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[3] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[3]),
        .Q(rx_cdrlock_counter[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[4] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[4]),
        .Q(rx_cdrlock_counter[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[5] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[5]),
        .Q(rx_cdrlock_counter[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[6] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[6]),
        .Q(rx_cdrlock_counter[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[7] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[7]),
        .Q(rx_cdrlock_counter[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[8] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[8]),
        .Q(rx_cdrlock_counter[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_cdrlock_counter_reg[9] 
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlock_counter_1[9]),
        .Q(rx_cdrlock_counter[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    rx_cdrlocked_i_1
       (.I0(rx_clk_locked_i),
        .I1(rx_cdrlock_counter[0]),
        .I2(\rx_cdrlock_counter[31]_i_2_n_0 ),
        .I3(\rx_cdrlock_counter[31]_i_3_n_0 ),
        .I4(\rx_cdrlock_counter[31]_i_4_n_0 ),
        .O(rx_cdrlocked_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_cdrlocked_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(rx_cdrlocked_i_1_n_0),
        .Q(rx_clk_locked_i),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFA8FF0000A800)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_state[7]),
        .I1(time_out_1us_reg_n_0),
        .I2(rx_fsm_reset_done_int),
        .I3(rx_fsm_reset_done_int_i_2_n_0),
        .I4(rx_fsm_reset_done_int_i_3_n_0),
        .I5(rx_fsm_reset_done_int),
        .O(rx_fsm_reset_done_int_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    rx_fsm_reset_done_int_i_2
       (.I0(rx_state[1]),
        .I1(rx_state[3]),
        .I2(rx_state[2]),
        .O(rx_fsm_reset_done_int_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFEFEFF)) 
    rx_fsm_reset_done_int_i_3
       (.I0(rx_state[4]),
        .I1(rx_state[5]),
        .I2(rx_state[0]),
        .I3(rx_state[7]),
        .I4(rx_state[6]),
        .O(rx_fsm_reset_done_int_i_3_n_0));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(rx_fsm_reset_done_int_i_1_n_0),
        .Q(rx_fsm_reset_done_int));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \rx_state[0]_i_4 
       (.I0(rx_state[5]),
        .I1(rx_state[4]),
        .I2(rx_state[3]),
        .O(\rx_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h44443000)) 
    \rx_state[1]_i_5 
       (.I0(rx_clk_locked_i),
        .I1(rx_state[2]),
        .I2(time_out_1us_reg_n_0),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .O(\rx_state[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_state[2]_i_5 
       (.I0(rx_state[4]),
        .I1(rx_state[5]),
        .O(\rx_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    \rx_state[2]_i_6 
       (.I0(rx_state[5]),
        .I1(rx_state[4]),
        .I2(rx_clk_locked_i),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .O(\rx_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rx_state[3]_i_3 
       (.I0(rx_state[5]),
        .I1(rx_state[7]),
        .I2(rx_state[6]),
        .O(\rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000020002AAAA)) 
    \rx_state[7]_i_1 
       (.I0(\rx_state[7]_i_3_n_0 ),
        .I1(\rx_state[7]_i_4_n_0 ),
        .I2(rx_state[3]),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .I5(rx_state[0]),
        .O(\rx_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_state[7]_i_2 
       (.I0(rx_state[6]),
        .I1(rx_state[7]),
        .O(p_0_in__0_0[7]));
  LUT6 #(
    .INIT(64'h0000000100010117)) 
    \rx_state[7]_i_3 
       (.I0(rx_state[4]),
        .I1(rx_state[5]),
        .I2(rx_state[6]),
        .I3(rx_state[7]),
        .I4(rx_state[2]),
        .I5(rx_state[3]),
        .O(\rx_state[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rx_state[7]_i_4 
       (.I0(rx_state[4]),
        .I1(rx_state[7]),
        .I2(rx_state[6]),
        .I3(rx_state[5]),
        .O(\rx_state[7]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,VERIFY_RECCLK_STABLE:00000100,RELEASE_MMCM_RESET:00001000,WAIT_RESET_DONE:00010000,DO_PHASE_ALIGNMENT:00100000,MONITOR_DATA_VALID:01000000,FSM_DONE:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \rx_state_reg[0] 
       (.C(init_clk),
        .CE(\rx_state[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0_0[0]),
        .Q(rx_state[0]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,VERIFY_RECCLK_STABLE:00000100,RELEASE_MMCM_RESET:00001000,WAIT_RESET_DONE:00010000,DO_PHASE_ALIGNMENT:00100000,MONITOR_DATA_VALID:01000000,FSM_DONE:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \rx_state_reg[1] 
       (.C(init_clk),
        .CE(\rx_state[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0_0[1]),
        .Q(rx_state[1]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,VERIFY_RECCLK_STABLE:00000100,RELEASE_MMCM_RESET:00001000,WAIT_RESET_DONE:00010000,DO_PHASE_ALIGNMENT:00100000,MONITOR_DATA_VALID:01000000,FSM_DONE:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \rx_state_reg[2] 
       (.C(init_clk),
        .CE(\rx_state[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0_0[2]),
        .Q(rx_state[2]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,VERIFY_RECCLK_STABLE:00000100,RELEASE_MMCM_RESET:00001000,WAIT_RESET_DONE:00010000,DO_PHASE_ALIGNMENT:00100000,MONITOR_DATA_VALID:01000000,FSM_DONE:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \rx_state_reg[3] 
       (.C(init_clk),
        .CE(\rx_state[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0_0[3]),
        .Q(rx_state[3]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,VERIFY_RECCLK_STABLE:00000100,RELEASE_MMCM_RESET:00001000,WAIT_RESET_DONE:00010000,DO_PHASE_ALIGNMENT:00100000,MONITOR_DATA_VALID:01000000,FSM_DONE:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \rx_state_reg[4] 
       (.C(init_clk),
        .CE(\rx_state[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0_0[4]),
        .Q(rx_state[4]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,VERIFY_RECCLK_STABLE:00000100,RELEASE_MMCM_RESET:00001000,WAIT_RESET_DONE:00010000,DO_PHASE_ALIGNMENT:00100000,MONITOR_DATA_VALID:01000000,FSM_DONE:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \rx_state_reg[5] 
       (.C(init_clk),
        .CE(\rx_state[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0_0[5]),
        .Q(rx_state[5]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,VERIFY_RECCLK_STABLE:00000100,RELEASE_MMCM_RESET:00001000,WAIT_RESET_DONE:00010000,DO_PHASE_ALIGNMENT:00100000,MONITOR_DATA_VALID:01000000,FSM_DONE:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \rx_state_reg[6] 
       (.C(init_clk),
        .CE(\rx_state[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0_0[6]),
        .Q(rx_state[6]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,VERIFY_RECCLK_STABLE:00000100,RELEASE_MMCM_RESET:00001000,WAIT_RESET_DONE:00010000,DO_PHASE_ALIGNMENT:00100000,MONITOR_DATA_VALID:01000000,FSM_DONE:10000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \rx_state_reg[7] 
       (.C(init_clk),
        .CE(\rx_state[7]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in__0_0[7]),
        .Q(rx_state[7]));
  LUT5 #(
    .INIT(32'h0000AABA)) 
    time_out_1us_i_1
       (.I0(time_out_1us_reg_n_0),
        .I1(time_out_1us_i_2_n_0),
        .I2(time_out_1us_i_3_n_0),
        .I3(time_out_1us_i_4_n_0),
        .I4(reset_time_out_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[8]),
        .I5(time_out_1us_i_5_n_0),
        .O(time_out_1us_i_2_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .O(time_out_1us_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFEFFFE)) 
    time_out_1us_i_4
       (.I0(time_tlock_max_i_2_n_0),
        .I1(time_out_1us_i_6_n_0),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_counter_reg[12]),
        .O(time_out_1us_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_out_1us_i_5
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[14]),
        .O(time_out_1us_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_out_1us_i_6
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[7]),
        .O(time_out_1us_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    time_out_2ms_i_1
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms),
        .I2(reset_time_out_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_2ms),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \time_out_counter[0]_i_3 
       (.I0(\time_out_counter[0]_i_5__0_n_0 ),
        .I1(\time_out_counter[0]_i_6__0_n_0 ),
        .I2(time_out_1us_i_3_n_0),
        .I3(\time_out_counter[0]_i_7__0_n_0 ),
        .I4(\time_out_counter[0]_i_8_n_0 ),
        .I5(\time_out_counter[0]_i_9_n_0 ),
        .O(time_out_2ms));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[9]),
        .O(\time_out_counter[0]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[11]),
        .O(\time_out_counter[0]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \time_out_counter[0]_i_7__0 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[7]),
        .O(\time_out_counter[0]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[7]),
        .O(\time_out_counter[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \time_out_counter[0]_i_9 
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[14]),
        .O(\time_out_counter[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_2 ,\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1__0_n_5 ,\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    time_out_wait_bypass_i_3
       (.I0(time_out_wait_bypass),
        .I1(time_out_wait_bypass_i_4_n_0),
        .O(time_out_wait_bypass_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    time_out_wait_bypass_i_4
       (.I0(time_out_wait_bypass_i_5_n_0),
        .I1(wait_bypass_count_reg[2]),
        .I2(wait_bypass_count_reg[10]),
        .I3(wait_bypass_count_reg[1]),
        .I4(wait_bypass_count_reg[0]),
        .I5(time_out_wait_bypass_i_6_n_0),
        .O(time_out_wait_bypass_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    time_out_wait_bypass_i_5
       (.I0(wait_bypass_count_reg[3]),
        .I1(wait_bypass_count_reg[5]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[4]),
        .O(time_out_wait_bypass_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    time_out_wait_bypass_i_6
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[6]),
        .I2(wait_bypass_count_reg[7]),
        .I3(wait_bypass_count_reg[9]),
        .I4(wait_bypass_count_reg[11]),
        .O(time_out_wait_bypass_i_6_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_0),
        .D(time_out_wait_bypass_i_3_n_0),
        .Q(time_out_wait_bypass),
        .R(u_rst_sync_run_phase_align_n_0));
  LUT6 #(
    .INIT(64'h00000000EEEAEAEA)) 
    time_tlock_max_i_1
       (.I0(time_tlock_max),
        .I1(check_tlock_max_reg_n_0),
        .I2(time_tlock_max_i_2_n_0),
        .I3(time_out_counter_reg[13]),
        .I4(time_tlock_max_i_3_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(time_tlock_max_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[14]),
        .O(time_tlock_max_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[12]),
        .I3(time_tlock_max_i_4_n_0),
        .I4(time_tlock_max_i_5_n_0),
        .I5(time_out_counter_reg[7]),
        .O(time_tlock_max_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(time_tlock_max_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    time_tlock_max_i_5
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[3]),
        .I5(time_out_counter_reg[1]),
        .O(time_tlock_max_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(1'b0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_18 u_rst_sync_mmcm_lock
       (.Q(rx_state),
        .init_clk(init_clk),
        .out(rx_state[3:2]),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(u_rst_sync_mmcm_lock_n_1),
        .reset_time_out_reg_0(reset_time_out_reg_n_0),
        .reset_time_out_reg_1(rx_clk_locked_i),
        .reset_time_out_reg_2(u_rst_sync_rxresetdone_n_0),
        .reset_time_out_reg_3(u_rst_sync_plllock_n_1),
        .\rx_state_reg[2] (\rx_state[0]_i_4_n_0 ),
        .\rx_state_reg[5] (u_rst_sync_mmcm_lock_n_5),
        .\rx_state_reg[7] (u_rst_sync_mmcm_lock_n_2),
        .stg5_reg_0(u_rst_sync_mmcm_lock_n_0),
        .stg5_reg_1(u_rst_sync_mmcm_lock_n_4),
        .time_tlock_max(time_tlock_max),
        .time_tlock_max_reg(u_rst_sync_mmcm_lock_n_3));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_19 u_rst_sync_plllock
       (.D(p_0_in__0_0[2]),
        .Q({rx_state[7],rx_state[2:0]}),
        .init_clk(init_clk),
        .out(out),
        .reset_time_out_i_2__0(rx_state[1:0]),
        .\rx_state[0]_i_3_0 (rx_clk_locked_i),
        .\rx_state_reg[0] (time_out_1us_reg_n_0),
        .\rx_state_reg[0]_0 (init_wait_done_reg_n_0),
        .\rx_state_reg[1] (u_rst_sync_plllock_n_0),
        .\rx_state_reg[1]_0 (\rx_state[0]_i_4_n_0 ),
        .\rx_state_reg[1]_1 (\rx_state[1]_i_5_n_0 ),
        .\rx_state_reg[1]_2 (time_out_2ms_reg_n_0),
        .\rx_state_reg[2] (u_rst_sync_mmcm_lock_n_2),
        .\rx_state_reg[2]_0 (u_rst_sync_rxresetdone_n_5),
        .\rx_state_reg[2]_1 (\rx_state[2]_i_5_n_0 ),
        .\rx_state_reg[2]_2 (\rx_state[2]_i_6_n_0 ),
        .stg5_reg_0(u_rst_sync_plllock_n_1),
        .time_out_1us_reg(u_rst_sync_plllock_n_3));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_20 u_rst_sync_run_phase_align
       (.SR(u_rst_sync_run_phase_align_n_0),
        .in0(run_phase_alignment_int_reg_n_0),
        .stg5_reg_0(stg4_reg));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_21 u_rst_sync_rx_fsm_reset_done
       (.stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(rx_fsm_reset_done_int),
        .stg5_reg_0(u_rst_sync_rx_fsm_reset_done_n_0),
        .stg5_reg_1(u_rst_sync_rx_fsm_reset_done_n_1),
        .stg5_reg_2(stg4_reg),
        .\wait_bypass_count_reg[0] (time_out_wait_bypass_i_4_n_0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_22 u_rst_sync_rx_reset
       (.rx_reset_r3(rx_reset_r3),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(stg1_aurora_64b66b_pcs_pma_cdc_to_reg),
        .stg5_reg_0(stg4_reg));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_23 u_rst_sync_rxresetdone
       (.D({p_0_in__0_0[5:3],p_0_in__0_0[1]}),
        .Q(rx_state),
        .in0(in0),
        .init_clk(init_clk),
        .out({rx_state[7],rx_state[5:4]}),
        .\rx_state_reg[1] (u_rst_sync_plllock_n_0),
        .\rx_state_reg[1]_0 (u_rst_sync_mmcm_lock_n_3),
        .\rx_state_reg[3] (\rx_state[3]_i_3_n_0 ),
        .\rx_state_reg[3]_0 (u_rst_sync_mmcm_lock_n_4),
        .\rx_state_reg[3]_1 (rx_clk_locked_i),
        .\rx_state_reg[4] (u_rst_sync_mmcm_lock_n_0),
        .\rx_state_reg[5] (u_rst_sync_rxresetdone_n_0),
        .\rx_state_reg[5]_0 (time_out_2ms_reg_n_0),
        .stg5_reg_0(u_rst_sync_rxresetdone_n_5),
        .time_out_2ms_reg(u_rst_sync_rxresetdone_n_6),
        .time_tlock_max(time_tlock_max));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_24 u_rst_sync_system_reset
       (.rx_reset_r3(rx_reset_r3),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .stg4_reg_0(stg4_reg),
        .stg5_reg_0(u_rst_sync_system_reset_n_0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_25 u_rst_sync_time_out_wait_bypass
       (.D({p_0_in__0_0[6],p_0_in__0_0[0]}),
        .Q({rx_state[7:4],rx_state[0]}),
        .init_clk(init_clk),
        .out(time_out_wait_bypass),
        .\rx_state_reg[0] (u_rst_sync_rxresetdone_n_6),
        .\rx_state_reg[0]_0 (u_rst_sync_plllock_n_3),
        .\rx_state_reg[0]_1 (\rx_state[0]_i_4_n_0 ),
        .\rx_state_reg[0]_2 (u_rst_sync_mmcm_lock_n_5));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_3 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[0]_i_2_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(u_rst_sync_run_phase_align_n_0));
  CARRY4 \wait_bypass_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_2_n_0 ,\wait_bypass_count_reg[0]_i_2_n_1 ,\wait_bypass_count_reg[0]_i_2_n_2 ,\wait_bypass_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_2_n_4 ,\wait_bypass_count_reg[0]_i_2_n_5 ,\wait_bypass_count_reg[0]_i_2_n_6 ,\wait_bypass_count_reg[0]_i_2_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(u_rst_sync_run_phase_align_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(u_rst_sync_run_phase_align_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(u_rst_sync_run_phase_align_n_0));
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[0]_i_2_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(u_rst_sync_run_phase_align_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[0]_i_2_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(u_rst_sync_run_phase_align_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[0]_i_2_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(u_rst_sync_run_phase_align_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(u_rst_sync_run_phase_align_n_0));
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_2_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(u_rst_sync_run_phase_align_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(u_rst_sync_run_phase_align_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(u_rst_sync_run_phase_align_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(u_rst_sync_run_phase_align_n_0));
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(stg4_reg),
        .CE(u_rst_sync_rx_fsm_reset_done_n_1),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(u_rst_sync_run_phase_align_n_0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_RX_STREAM" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_RX_STREAM
   (m_axi_rx_tvalid,
    m_axi_rx_tdata,
    RX_SRC_RDY_N_reg_inv,
    user_clk,
    SR,
    E,
    D);
  output m_axi_rx_tvalid;
  output [63:0]m_axi_rx_tdata;
  input RX_SRC_RDY_N_reg_inv;
  input user_clk;
  input [0:0]SR;
  input [0:0]E;
  input [63:0]D;

  wire [63:0]D;
  wire [0:0]E;
  wire RX_SRC_RDY_N_reg_inv;
  wire [0:0]SR;
  wire [63:0]m_axi_rx_tdata;
  wire m_axi_rx_tvalid;
  wire user_clk;

  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_RX_STREAM_DATAPATH rx_stream_datapath_i
       (.D(D),
        .E(E),
        .RX_SRC_RDY_N_reg_inv_0(RX_SRC_RDY_N_reg_inv),
        .SR(SR),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_RX_STREAM_DATAPATH" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_RX_STREAM_DATAPATH
   (m_axi_rx_tvalid,
    m_axi_rx_tdata,
    RX_SRC_RDY_N_reg_inv_0,
    user_clk,
    SR,
    E,
    D);
  output m_axi_rx_tvalid;
  output [63:0]m_axi_rx_tdata;
  input RX_SRC_RDY_N_reg_inv_0;
  input user_clk;
  input [0:0]SR;
  input [0:0]E;
  input [63:0]D;

  wire [63:0]D;
  wire [0:0]E;
  wire RX_SRC_RDY_N_reg_inv_0;
  wire [0:0]SR;
  wire [63:0]m_axi_rx_tdata;
  wire m_axi_rx_tvalid;
  wire user_clk;

  FDRE \RX_D_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(D[63]),
        .Q(m_axi_rx_tdata[7]),
        .R(SR));
  FDRE \RX_D_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(D[53]),
        .Q(m_axi_rx_tdata[13]),
        .R(SR));
  FDRE \RX_D_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(D[52]),
        .Q(m_axi_rx_tdata[12]),
        .R(SR));
  FDRE \RX_D_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(D[51]),
        .Q(m_axi_rx_tdata[11]),
        .R(SR));
  FDRE \RX_D_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(D[50]),
        .Q(m_axi_rx_tdata[10]),
        .R(SR));
  FDRE \RX_D_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(D[49]),
        .Q(m_axi_rx_tdata[9]),
        .R(SR));
  FDRE \RX_D_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(D[48]),
        .Q(m_axi_rx_tdata[8]),
        .R(SR));
  FDRE \RX_D_reg[16] 
       (.C(user_clk),
        .CE(E),
        .D(D[47]),
        .Q(m_axi_rx_tdata[23]),
        .R(SR));
  FDRE \RX_D_reg[17] 
       (.C(user_clk),
        .CE(E),
        .D(D[46]),
        .Q(m_axi_rx_tdata[22]),
        .R(SR));
  FDRE \RX_D_reg[18] 
       (.C(user_clk),
        .CE(E),
        .D(D[45]),
        .Q(m_axi_rx_tdata[21]),
        .R(SR));
  FDRE \RX_D_reg[19] 
       (.C(user_clk),
        .CE(E),
        .D(D[44]),
        .Q(m_axi_rx_tdata[20]),
        .R(SR));
  FDRE \RX_D_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(D[62]),
        .Q(m_axi_rx_tdata[6]),
        .R(SR));
  FDRE \RX_D_reg[20] 
       (.C(user_clk),
        .CE(E),
        .D(D[43]),
        .Q(m_axi_rx_tdata[19]),
        .R(SR));
  FDRE \RX_D_reg[21] 
       (.C(user_clk),
        .CE(E),
        .D(D[42]),
        .Q(m_axi_rx_tdata[18]),
        .R(SR));
  FDRE \RX_D_reg[22] 
       (.C(user_clk),
        .CE(E),
        .D(D[41]),
        .Q(m_axi_rx_tdata[17]),
        .R(SR));
  FDRE \RX_D_reg[23] 
       (.C(user_clk),
        .CE(E),
        .D(D[40]),
        .Q(m_axi_rx_tdata[16]),
        .R(SR));
  FDRE \RX_D_reg[24] 
       (.C(user_clk),
        .CE(E),
        .D(D[39]),
        .Q(m_axi_rx_tdata[31]),
        .R(SR));
  FDRE \RX_D_reg[25] 
       (.C(user_clk),
        .CE(E),
        .D(D[38]),
        .Q(m_axi_rx_tdata[30]),
        .R(SR));
  FDRE \RX_D_reg[26] 
       (.C(user_clk),
        .CE(E),
        .D(D[37]),
        .Q(m_axi_rx_tdata[29]),
        .R(SR));
  FDRE \RX_D_reg[27] 
       (.C(user_clk),
        .CE(E),
        .D(D[36]),
        .Q(m_axi_rx_tdata[28]),
        .R(SR));
  FDRE \RX_D_reg[28] 
       (.C(user_clk),
        .CE(E),
        .D(D[35]),
        .Q(m_axi_rx_tdata[27]),
        .R(SR));
  FDRE \RX_D_reg[29] 
       (.C(user_clk),
        .CE(E),
        .D(D[34]),
        .Q(m_axi_rx_tdata[26]),
        .R(SR));
  FDRE \RX_D_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(D[61]),
        .Q(m_axi_rx_tdata[5]),
        .R(SR));
  FDRE \RX_D_reg[30] 
       (.C(user_clk),
        .CE(E),
        .D(D[33]),
        .Q(m_axi_rx_tdata[25]),
        .R(SR));
  FDRE \RX_D_reg[31] 
       (.C(user_clk),
        .CE(E),
        .D(D[32]),
        .Q(m_axi_rx_tdata[24]),
        .R(SR));
  FDRE \RX_D_reg[32] 
       (.C(user_clk),
        .CE(E),
        .D(D[31]),
        .Q(m_axi_rx_tdata[39]),
        .R(SR));
  FDRE \RX_D_reg[33] 
       (.C(user_clk),
        .CE(E),
        .D(D[30]),
        .Q(m_axi_rx_tdata[38]),
        .R(SR));
  FDRE \RX_D_reg[34] 
       (.C(user_clk),
        .CE(E),
        .D(D[29]),
        .Q(m_axi_rx_tdata[37]),
        .R(SR));
  FDRE \RX_D_reg[35] 
       (.C(user_clk),
        .CE(E),
        .D(D[28]),
        .Q(m_axi_rx_tdata[36]),
        .R(SR));
  FDRE \RX_D_reg[36] 
       (.C(user_clk),
        .CE(E),
        .D(D[27]),
        .Q(m_axi_rx_tdata[35]),
        .R(SR));
  FDRE \RX_D_reg[37] 
       (.C(user_clk),
        .CE(E),
        .D(D[26]),
        .Q(m_axi_rx_tdata[34]),
        .R(SR));
  FDRE \RX_D_reg[38] 
       (.C(user_clk),
        .CE(E),
        .D(D[25]),
        .Q(m_axi_rx_tdata[33]),
        .R(SR));
  FDRE \RX_D_reg[39] 
       (.C(user_clk),
        .CE(E),
        .D(D[24]),
        .Q(m_axi_rx_tdata[32]),
        .R(SR));
  FDRE \RX_D_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(D[60]),
        .Q(m_axi_rx_tdata[4]),
        .R(SR));
  FDRE \RX_D_reg[40] 
       (.C(user_clk),
        .CE(E),
        .D(D[23]),
        .Q(m_axi_rx_tdata[47]),
        .R(SR));
  FDRE \RX_D_reg[41] 
       (.C(user_clk),
        .CE(E),
        .D(D[22]),
        .Q(m_axi_rx_tdata[46]),
        .R(SR));
  FDRE \RX_D_reg[42] 
       (.C(user_clk),
        .CE(E),
        .D(D[21]),
        .Q(m_axi_rx_tdata[45]),
        .R(SR));
  FDRE \RX_D_reg[43] 
       (.C(user_clk),
        .CE(E),
        .D(D[20]),
        .Q(m_axi_rx_tdata[44]),
        .R(SR));
  FDRE \RX_D_reg[44] 
       (.C(user_clk),
        .CE(E),
        .D(D[19]),
        .Q(m_axi_rx_tdata[43]),
        .R(SR));
  FDRE \RX_D_reg[45] 
       (.C(user_clk),
        .CE(E),
        .D(D[18]),
        .Q(m_axi_rx_tdata[42]),
        .R(SR));
  FDRE \RX_D_reg[46] 
       (.C(user_clk),
        .CE(E),
        .D(D[17]),
        .Q(m_axi_rx_tdata[41]),
        .R(SR));
  FDRE \RX_D_reg[47] 
       (.C(user_clk),
        .CE(E),
        .D(D[16]),
        .Q(m_axi_rx_tdata[40]),
        .R(SR));
  FDRE \RX_D_reg[48] 
       (.C(user_clk),
        .CE(E),
        .D(D[15]),
        .Q(m_axi_rx_tdata[55]),
        .R(SR));
  FDRE \RX_D_reg[49] 
       (.C(user_clk),
        .CE(E),
        .D(D[14]),
        .Q(m_axi_rx_tdata[54]),
        .R(SR));
  FDRE \RX_D_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(D[59]),
        .Q(m_axi_rx_tdata[3]),
        .R(SR));
  FDRE \RX_D_reg[50] 
       (.C(user_clk),
        .CE(E),
        .D(D[13]),
        .Q(m_axi_rx_tdata[53]),
        .R(SR));
  FDRE \RX_D_reg[51] 
       (.C(user_clk),
        .CE(E),
        .D(D[12]),
        .Q(m_axi_rx_tdata[52]),
        .R(SR));
  FDRE \RX_D_reg[52] 
       (.C(user_clk),
        .CE(E),
        .D(D[11]),
        .Q(m_axi_rx_tdata[51]),
        .R(SR));
  FDRE \RX_D_reg[53] 
       (.C(user_clk),
        .CE(E),
        .D(D[10]),
        .Q(m_axi_rx_tdata[50]),
        .R(SR));
  FDRE \RX_D_reg[54] 
       (.C(user_clk),
        .CE(E),
        .D(D[9]),
        .Q(m_axi_rx_tdata[49]),
        .R(SR));
  FDRE \RX_D_reg[55] 
       (.C(user_clk),
        .CE(E),
        .D(D[8]),
        .Q(m_axi_rx_tdata[48]),
        .R(SR));
  FDRE \RX_D_reg[56] 
       (.C(user_clk),
        .CE(E),
        .D(D[7]),
        .Q(m_axi_rx_tdata[63]),
        .R(SR));
  FDRE \RX_D_reg[57] 
       (.C(user_clk),
        .CE(E),
        .D(D[6]),
        .Q(m_axi_rx_tdata[62]),
        .R(SR));
  FDRE \RX_D_reg[58] 
       (.C(user_clk),
        .CE(E),
        .D(D[5]),
        .Q(m_axi_rx_tdata[61]),
        .R(SR));
  FDRE \RX_D_reg[59] 
       (.C(user_clk),
        .CE(E),
        .D(D[4]),
        .Q(m_axi_rx_tdata[60]),
        .R(SR));
  FDRE \RX_D_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(D[58]),
        .Q(m_axi_rx_tdata[2]),
        .R(SR));
  FDRE \RX_D_reg[60] 
       (.C(user_clk),
        .CE(E),
        .D(D[3]),
        .Q(m_axi_rx_tdata[59]),
        .R(SR));
  FDRE \RX_D_reg[61] 
       (.C(user_clk),
        .CE(E),
        .D(D[2]),
        .Q(m_axi_rx_tdata[58]),
        .R(SR));
  FDRE \RX_D_reg[62] 
       (.C(user_clk),
        .CE(E),
        .D(D[1]),
        .Q(m_axi_rx_tdata[57]),
        .R(SR));
  FDRE \RX_D_reg[63] 
       (.C(user_clk),
        .CE(E),
        .D(D[0]),
        .Q(m_axi_rx_tdata[56]),
        .R(SR));
  FDRE \RX_D_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(D[57]),
        .Q(m_axi_rx_tdata[1]),
        .R(SR));
  FDRE \RX_D_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(D[56]),
        .Q(m_axi_rx_tdata[0]),
        .R(SR));
  FDRE \RX_D_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(D[55]),
        .Q(m_axi_rx_tdata[15]),
        .R(SR));
  FDRE \RX_D_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(D[54]),
        .Q(m_axi_rx_tdata[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    RX_SRC_RDY_N_reg_inv
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SRC_RDY_N_reg_inv_0),
        .Q(m_axi_rx_tvalid),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_SCRAMBLER_64B66B" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_SCRAMBLER_64B66B
   (Q,
    \txseq_counter_i_reg[0] ,
    SCRAMBLED_DATA_OUT,
    tx_data_i,
    \SCRAMBLED_DATA_OUT_reg[0]_0 ,
    user_clk,
    \SCRAMBLED_DATA_OUT_reg[5]_0 );
  output [11:0]Q;
  output \txseq_counter_i_reg[0] ;
  output [63:0]SCRAMBLED_DATA_OUT;
  input [57:0]tx_data_i;
  input [6:0]\SCRAMBLED_DATA_OUT_reg[0]_0 ;
  input user_clk;
  input [5:0]\SCRAMBLED_DATA_OUT_reg[5]_0 ;

  wire [11:0]Q;
  wire [63:0]SCRAMBLED_DATA_OUT;
  wire [6:0]\SCRAMBLED_DATA_OUT_reg[0]_0 ;
  wire [5:0]\SCRAMBLED_DATA_OUT_reg[5]_0 ;
  wire data_valid_i;
  wire p_101_in;
  wire p_105_in;
  wire p_109_in;
  wire p_113_in;
  wire p_117_in;
  wire p_121_in;
  wire p_125_in;
  wire p_129_in;
  wire p_133_in;
  wire p_137_in;
  wire p_141_in;
  wire p_145_in;
  wire p_149_in;
  wire p_177_in;
  wire p_181_in;
  wire p_185_in;
  wire p_189_in;
  wire p_193_in;
  wire p_197_in;
  wire p_201_in;
  wire p_205_in;
  wire p_209_in;
  wire p_213_in;
  wire p_217_in;
  wire p_221_in;
  wire p_225_in;
  wire p_229_in;
  wire p_233_in;
  wire p_237_in;
  wire p_241_in;
  wire p_245_in;
  wire p_249_in;
  wire p_97_in;
  wire \scrambler_reg_n_0_[39] ;
  wire \scrambler_reg_n_0_[40] ;
  wire \scrambler_reg_n_0_[41] ;
  wire \scrambler_reg_n_0_[42] ;
  wire \scrambler_reg_n_0_[43] ;
  wire \scrambler_reg_n_0_[44] ;
  wire \scrambler_reg_n_0_[45] ;
  wire \scrambler_reg_n_0_[46] ;
  wire \scrambler_reg_n_0_[47] ;
  wire \scrambler_reg_n_0_[48] ;
  wire \scrambler_reg_n_0_[49] ;
  wire \scrambler_reg_n_0_[50] ;
  wire \scrambler_reg_n_0_[51] ;
  wire tempData0100_out;
  wire tempData0104_out;
  wire tempData0108_out;
  wire tempData0112_out;
  wire tempData0116_out;
  wire tempData0120_out;
  wire tempData0124_out;
  wire tempData0128_out;
  wire tempData0132_out;
  wire tempData0136_out;
  wire tempData0140_out;
  wire tempData0144_out;
  wire tempData0148_out;
  wire tempData0152_out;
  wire tempData0156_out;
  wire tempData0160_out;
  wire tempData0164_out;
  wire tempData0168_out;
  wire tempData0172_out;
  wire tempData0176_out;
  wire tempData0180_out;
  wire tempData0184_out;
  wire tempData0188_out;
  wire tempData0192_out;
  wire tempData0196_out;
  wire tempData0200_out;
  wire tempData0204_out;
  wire tempData0208_out;
  wire tempData0212_out;
  wire tempData0216_out;
  wire tempData0220_out;
  wire tempData0224_out;
  wire tempData0228_out;
  wire tempData0232_out;
  wire tempData0236_out;
  wire tempData0240_out;
  wire tempData0244_out;
  wire tempData0248_out;
  wire tempData024_out;
  wire tempData0252_out;
  wire tempData028_out;
  wire tempData032_out;
  wire tempData036_out;
  wire tempData040_out;
  wire tempData044_out;
  wire tempData048_out;
  wire tempData052_out;
  wire tempData056_out;
  wire tempData060_out;
  wire tempData064_out;
  wire tempData068_out;
  wire tempData072_out;
  wire tempData076_out;
  wire tempData080_out;
  wire tempData084_out;
  wire tempData088_out;
  wire tempData092_out;
  wire tempData096_out;
  wire [57:0]tx_data_i;
  wire \txseq_counter_i_reg[0] ;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \SCRAMBLED_DATA_OUT[58]_i_1 
       (.I0(p_229_in),
        .I1(tx_data_i[52]),
        .I2(Q[6]),
        .O(tempData0232_out));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \SCRAMBLED_DATA_OUT[59]_i_1 
       (.I0(p_233_in),
        .I1(tx_data_i[53]),
        .I2(Q[7]),
        .O(tempData0236_out));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \SCRAMBLED_DATA_OUT[60]_i_1 
       (.I0(p_237_in),
        .I1(tx_data_i[54]),
        .I2(Q[8]),
        .O(tempData0240_out));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \SCRAMBLED_DATA_OUT[61]_i_1 
       (.I0(p_241_in),
        .I1(tx_data_i[55]),
        .I2(Q[9]),
        .O(tempData0244_out));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \SCRAMBLED_DATA_OUT[62]_i_1 
       (.I0(p_245_in),
        .I1(tx_data_i[56]),
        .I2(Q[10]),
        .O(tempData0248_out));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \SCRAMBLED_DATA_OUT[63]_i_1 
       (.I0(p_249_in),
        .I1(tx_data_i[57]),
        .I2(Q[11]),
        .O(tempData0252_out));
  FDRE \SCRAMBLED_DATA_OUT_reg[0] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [0]),
        .Q(SCRAMBLED_DATA_OUT[0]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[10] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData040_out),
        .Q(SCRAMBLED_DATA_OUT[10]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[11] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData044_out),
        .Q(SCRAMBLED_DATA_OUT[11]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[12] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData048_out),
        .Q(SCRAMBLED_DATA_OUT[12]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[13] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData052_out),
        .Q(SCRAMBLED_DATA_OUT[13]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[14] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData056_out),
        .Q(SCRAMBLED_DATA_OUT[14]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[15] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData060_out),
        .Q(SCRAMBLED_DATA_OUT[15]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[16] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData064_out),
        .Q(SCRAMBLED_DATA_OUT[16]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[17] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData068_out),
        .Q(SCRAMBLED_DATA_OUT[17]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[18] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData072_out),
        .Q(SCRAMBLED_DATA_OUT[18]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[19] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData076_out),
        .Q(SCRAMBLED_DATA_OUT[19]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[1] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [1]),
        .Q(SCRAMBLED_DATA_OUT[1]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[20] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData080_out),
        .Q(SCRAMBLED_DATA_OUT[20]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[21] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData084_out),
        .Q(SCRAMBLED_DATA_OUT[21]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[22] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData088_out),
        .Q(SCRAMBLED_DATA_OUT[22]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[23] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData092_out),
        .Q(SCRAMBLED_DATA_OUT[23]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[24] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData096_out),
        .Q(SCRAMBLED_DATA_OUT[24]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[25] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0100_out),
        .Q(SCRAMBLED_DATA_OUT[25]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[26] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0104_out),
        .Q(SCRAMBLED_DATA_OUT[26]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[27] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0108_out),
        .Q(SCRAMBLED_DATA_OUT[27]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[28] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0112_out),
        .Q(SCRAMBLED_DATA_OUT[28]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[29] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0116_out),
        .Q(SCRAMBLED_DATA_OUT[29]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[2] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [2]),
        .Q(SCRAMBLED_DATA_OUT[2]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[30] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0120_out),
        .Q(SCRAMBLED_DATA_OUT[30]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[31] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0124_out),
        .Q(SCRAMBLED_DATA_OUT[31]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[32] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0128_out),
        .Q(SCRAMBLED_DATA_OUT[32]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[33] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0132_out),
        .Q(SCRAMBLED_DATA_OUT[33]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[34] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0136_out),
        .Q(SCRAMBLED_DATA_OUT[34]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[35] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0140_out),
        .Q(SCRAMBLED_DATA_OUT[35]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[36] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0144_out),
        .Q(SCRAMBLED_DATA_OUT[36]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[37] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0148_out),
        .Q(SCRAMBLED_DATA_OUT[37]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[38] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0152_out),
        .Q(SCRAMBLED_DATA_OUT[38]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[39] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0156_out),
        .Q(SCRAMBLED_DATA_OUT[39]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[3] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [3]),
        .Q(SCRAMBLED_DATA_OUT[3]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[40] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0160_out),
        .Q(SCRAMBLED_DATA_OUT[40]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[41] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0164_out),
        .Q(SCRAMBLED_DATA_OUT[41]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[42] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0168_out),
        .Q(SCRAMBLED_DATA_OUT[42]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[43] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0172_out),
        .Q(SCRAMBLED_DATA_OUT[43]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[44] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0176_out),
        .Q(SCRAMBLED_DATA_OUT[44]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[45] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0180_out),
        .Q(SCRAMBLED_DATA_OUT[45]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[46] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0184_out),
        .Q(SCRAMBLED_DATA_OUT[46]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[47] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0188_out),
        .Q(SCRAMBLED_DATA_OUT[47]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[48] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0192_out),
        .Q(SCRAMBLED_DATA_OUT[48]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[49] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0196_out),
        .Q(SCRAMBLED_DATA_OUT[49]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[4] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [4]),
        .Q(SCRAMBLED_DATA_OUT[4]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[50] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0200_out),
        .Q(SCRAMBLED_DATA_OUT[50]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[51] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0204_out),
        .Q(SCRAMBLED_DATA_OUT[51]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[52] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0208_out),
        .Q(SCRAMBLED_DATA_OUT[52]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[53] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0212_out),
        .Q(SCRAMBLED_DATA_OUT[53]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[54] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0216_out),
        .Q(SCRAMBLED_DATA_OUT[54]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[55] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0220_out),
        .Q(SCRAMBLED_DATA_OUT[55]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[56] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0224_out),
        .Q(SCRAMBLED_DATA_OUT[56]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[57] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0228_out),
        .Q(SCRAMBLED_DATA_OUT[57]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[58] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0232_out),
        .Q(SCRAMBLED_DATA_OUT[58]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[59] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0236_out),
        .Q(SCRAMBLED_DATA_OUT[59]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[5] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [5]),
        .Q(SCRAMBLED_DATA_OUT[5]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[60] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0240_out),
        .Q(SCRAMBLED_DATA_OUT[60]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[61] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0244_out),
        .Q(SCRAMBLED_DATA_OUT[61]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[62] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0248_out),
        .Q(SCRAMBLED_DATA_OUT[62]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[63] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0252_out),
        .Q(SCRAMBLED_DATA_OUT[63]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[6] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData024_out),
        .Q(SCRAMBLED_DATA_OUT[6]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[7] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData028_out),
        .Q(SCRAMBLED_DATA_OUT[7]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[8] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData032_out),
        .Q(SCRAMBLED_DATA_OUT[8]),
        .R(1'b0));
  FDRE \SCRAMBLED_DATA_OUT_reg[9] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData036_out),
        .Q(SCRAMBLED_DATA_OUT[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[10]_i_1 
       (.I0(\scrambler_reg_n_0_[43] ),
        .I1(tx_data_i[43]),
        .I2(p_193_in),
        .I3(tx_data_i[4]),
        .I4(p_113_in),
        .O(tempData040_out));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[11]_i_1 
       (.I0(\scrambler_reg_n_0_[44] ),
        .I1(tx_data_i[44]),
        .I2(p_197_in),
        .I3(tx_data_i[5]),
        .I4(p_117_in),
        .O(tempData044_out));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[12]_i_1 
       (.I0(\scrambler_reg_n_0_[45] ),
        .I1(tx_data_i[45]),
        .I2(p_201_in),
        .I3(tx_data_i[6]),
        .I4(p_121_in),
        .O(tempData048_out));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[13]_i_1 
       (.I0(\scrambler_reg_n_0_[46] ),
        .I1(tx_data_i[46]),
        .I2(p_205_in),
        .I3(tx_data_i[7]),
        .I4(p_125_in),
        .O(tempData052_out));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[14]_i_1 
       (.I0(\scrambler_reg_n_0_[47] ),
        .I1(tx_data_i[47]),
        .I2(p_209_in),
        .I3(tx_data_i[8]),
        .I4(p_129_in),
        .O(tempData056_out));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[15]_i_1 
       (.I0(\scrambler_reg_n_0_[48] ),
        .I1(tx_data_i[48]),
        .I2(p_213_in),
        .I3(tx_data_i[9]),
        .I4(p_133_in),
        .O(tempData060_out));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[16]_i_1 
       (.I0(\scrambler_reg_n_0_[49] ),
        .I1(tx_data_i[49]),
        .I2(p_217_in),
        .I3(tx_data_i[10]),
        .I4(p_137_in),
        .O(tempData064_out));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[17]_i_1 
       (.I0(\scrambler_reg_n_0_[50] ),
        .I1(tx_data_i[50]),
        .I2(p_221_in),
        .I3(tx_data_i[11]),
        .I4(p_141_in),
        .O(tempData068_out));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[18]_i_1 
       (.I0(\scrambler_reg_n_0_[51] ),
        .I1(tx_data_i[51]),
        .I2(p_225_in),
        .I3(tx_data_i[12]),
        .I4(p_145_in),
        .O(tempData072_out));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[19]_i_1 
       (.I0(Q[6]),
        .I1(tx_data_i[52]),
        .I2(p_229_in),
        .I3(tx_data_i[13]),
        .I4(p_149_in),
        .O(tempData076_out));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[20]_i_1 
       (.I0(Q[7]),
        .I1(tx_data_i[53]),
        .I2(p_233_in),
        .I3(tx_data_i[14]),
        .I4(Q[0]),
        .O(tempData080_out));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[21]_i_1 
       (.I0(Q[8]),
        .I1(tx_data_i[54]),
        .I2(p_237_in),
        .I3(tx_data_i[15]),
        .I4(Q[1]),
        .O(tempData084_out));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[22]_i_1 
       (.I0(Q[9]),
        .I1(tx_data_i[55]),
        .I2(p_241_in),
        .I3(tx_data_i[16]),
        .I4(Q[2]),
        .O(tempData088_out));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[23]_i_1 
       (.I0(Q[10]),
        .I1(tx_data_i[56]),
        .I2(p_245_in),
        .I3(tx_data_i[17]),
        .I4(Q[3]),
        .O(tempData092_out));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[24]_i_1 
       (.I0(Q[11]),
        .I1(tx_data_i[57]),
        .I2(p_249_in),
        .I3(tx_data_i[18]),
        .I4(Q[4]),
        .O(tempData096_out));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[25]_i_1 
       (.I0(p_97_in),
        .I1(tx_data_i[19]),
        .I2(Q[5]),
        .O(tempData0100_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[26]_i_1 
       (.I0(p_101_in),
        .I1(tx_data_i[20]),
        .I2(p_177_in),
        .O(tempData0104_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[27]_i_1 
       (.I0(p_105_in),
        .I1(tx_data_i[21]),
        .I2(p_181_in),
        .O(tempData0108_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[28]_i_1 
       (.I0(p_109_in),
        .I1(tx_data_i[22]),
        .I2(p_185_in),
        .O(tempData0112_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[29]_i_1 
       (.I0(p_113_in),
        .I1(tx_data_i[23]),
        .I2(p_189_in),
        .O(tempData0116_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[30]_i_1 
       (.I0(p_117_in),
        .I1(tx_data_i[24]),
        .I2(p_193_in),
        .O(tempData0120_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[31]_i_1 
       (.I0(p_121_in),
        .I1(tx_data_i[25]),
        .I2(p_197_in),
        .O(tempData0124_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[32]_i_1 
       (.I0(p_125_in),
        .I1(tx_data_i[26]),
        .I2(p_201_in),
        .O(tempData0128_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[33]_i_1 
       (.I0(p_129_in),
        .I1(tx_data_i[27]),
        .I2(p_205_in),
        .O(tempData0132_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[34]_i_1 
       (.I0(p_133_in),
        .I1(tx_data_i[28]),
        .I2(p_209_in),
        .O(tempData0136_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[35]_i_1 
       (.I0(p_137_in),
        .I1(tx_data_i[29]),
        .I2(p_213_in),
        .O(tempData0140_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[36]_i_1 
       (.I0(p_141_in),
        .I1(tx_data_i[30]),
        .I2(p_217_in),
        .O(tempData0144_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[37]_i_1 
       (.I0(p_145_in),
        .I1(tx_data_i[31]),
        .I2(p_221_in),
        .O(tempData0148_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[38]_i_1 
       (.I0(p_149_in),
        .I1(tx_data_i[32]),
        .I2(p_225_in),
        .O(tempData0152_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[39]_i_1 
       (.I0(Q[0]),
        .I1(tx_data_i[33]),
        .I2(p_229_in),
        .O(tempData0156_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[40]_i_1 
       (.I0(Q[1]),
        .I1(tx_data_i[34]),
        .I2(p_233_in),
        .O(tempData0160_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[41]_i_1 
       (.I0(Q[2]),
        .I1(tx_data_i[35]),
        .I2(p_237_in),
        .O(tempData0164_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[42]_i_1 
       (.I0(Q[3]),
        .I1(tx_data_i[36]),
        .I2(p_241_in),
        .O(tempData0168_out));
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[43]_i_1 
       (.I0(Q[4]),
        .I1(tx_data_i[37]),
        .I2(p_245_in),
        .O(tempData0172_out));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[44]_i_1 
       (.I0(Q[5]),
        .I1(tx_data_i[38]),
        .I2(p_249_in),
        .O(tempData0176_out));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[45]_i_1 
       (.I0(p_177_in),
        .I1(tx_data_i[39]),
        .I2(\scrambler_reg_n_0_[39] ),
        .O(tempData0180_out));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[46]_i_1 
       (.I0(p_181_in),
        .I1(tx_data_i[40]),
        .I2(\scrambler_reg_n_0_[40] ),
        .O(tempData0184_out));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[47]_i_1 
       (.I0(p_185_in),
        .I1(tx_data_i[41]),
        .I2(\scrambler_reg_n_0_[41] ),
        .O(tempData0188_out));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[48]_i_1 
       (.I0(p_189_in),
        .I1(tx_data_i[42]),
        .I2(\scrambler_reg_n_0_[42] ),
        .O(tempData0192_out));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[49]_i_1 
       (.I0(p_193_in),
        .I1(tx_data_i[43]),
        .I2(\scrambler_reg_n_0_[43] ),
        .O(tempData0196_out));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[50]_i_1 
       (.I0(p_197_in),
        .I1(tx_data_i[44]),
        .I2(\scrambler_reg_n_0_[44] ),
        .O(tempData0200_out));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[51]_i_1 
       (.I0(p_201_in),
        .I1(tx_data_i[45]),
        .I2(\scrambler_reg_n_0_[45] ),
        .O(tempData0204_out));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[52]_i_1 
       (.I0(p_205_in),
        .I1(tx_data_i[46]),
        .I2(\scrambler_reg_n_0_[46] ),
        .O(tempData0208_out));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[53]_i_1 
       (.I0(p_209_in),
        .I1(tx_data_i[47]),
        .I2(\scrambler_reg_n_0_[47] ),
        .O(tempData0212_out));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[54]_i_1 
       (.I0(p_213_in),
        .I1(tx_data_i[48]),
        .I2(\scrambler_reg_n_0_[48] ),
        .O(tempData0216_out));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[55]_i_1 
       (.I0(p_217_in),
        .I1(tx_data_i[49]),
        .I2(\scrambler_reg_n_0_[49] ),
        .O(tempData0220_out));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[56]_i_1 
       (.I0(p_221_in),
        .I1(tx_data_i[50]),
        .I2(\scrambler_reg_n_0_[50] ),
        .O(tempData0224_out));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \scrambler[57]_i_1 
       (.I0(\SCRAMBLED_DATA_OUT_reg[0]_0 [6]),
        .I1(\txseq_counter_i_reg[0] ),
        .I2(\SCRAMBLED_DATA_OUT_reg[0]_0 [5]),
        .I3(\SCRAMBLED_DATA_OUT_reg[0]_0 [3]),
        .I4(\SCRAMBLED_DATA_OUT_reg[0]_0 [2]),
        .I5(\SCRAMBLED_DATA_OUT_reg[0]_0 [4]),
        .O(data_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \scrambler[57]_i_2 
       (.I0(p_225_in),
        .I1(tx_data_i[51]),
        .I2(\scrambler_reg_n_0_[51] ),
        .O(tempData0228_out));
  LUT2 #(
    .INIT(4'h7)) 
    \scrambler[57]_i_3 
       (.I0(\SCRAMBLED_DATA_OUT_reg[0]_0 [0]),
        .I1(\SCRAMBLED_DATA_OUT_reg[0]_0 [1]),
        .O(\txseq_counter_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[6]_i_1 
       (.I0(\scrambler_reg_n_0_[39] ),
        .I1(tx_data_i[39]),
        .I2(p_177_in),
        .I3(tx_data_i[0]),
        .I4(p_97_in),
        .O(tempData024_out));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[7]_i_1 
       (.I0(\scrambler_reg_n_0_[40] ),
        .I1(tx_data_i[40]),
        .I2(p_181_in),
        .I3(tx_data_i[1]),
        .I4(p_101_in),
        .O(tempData028_out));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[8]_i_1 
       (.I0(\scrambler_reg_n_0_[41] ),
        .I1(tx_data_i[41]),
        .I2(p_185_in),
        .I3(tx_data_i[2]),
        .I4(p_105_in),
        .O(tempData032_out));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[9]_i_1 
       (.I0(\scrambler_reg_n_0_[42] ),
        .I1(tx_data_i[42]),
        .I2(p_189_in),
        .I3(tx_data_i[3]),
        .I4(p_109_in),
        .O(tempData036_out));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[0] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [0]),
        .Q(p_97_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[10] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData040_out),
        .Q(p_137_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[11] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData044_out),
        .Q(p_141_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[12] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData048_out),
        .Q(p_145_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[13] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData052_out),
        .Q(p_149_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[14] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData056_out),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[15] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData060_out),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[16] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData064_out),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[17] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData068_out),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[18] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData072_out),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[19] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData076_out),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[1] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [1]),
        .Q(p_101_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[20] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData080_out),
        .Q(p_177_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[21] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData084_out),
        .Q(p_181_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[22] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData088_out),
        .Q(p_185_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[23] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData092_out),
        .Q(p_189_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[24] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData096_out),
        .Q(p_193_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[25] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0100_out),
        .Q(p_197_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[26] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0104_out),
        .Q(p_201_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[27] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0108_out),
        .Q(p_205_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[28] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0112_out),
        .Q(p_209_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[29] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0116_out),
        .Q(p_213_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[2] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [2]),
        .Q(p_105_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[30] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0120_out),
        .Q(p_217_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[31] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0124_out),
        .Q(p_221_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[32] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0128_out),
        .Q(p_225_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[33] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0132_out),
        .Q(p_229_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[34] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0136_out),
        .Q(p_233_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[35] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0140_out),
        .Q(p_237_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[36] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0144_out),
        .Q(p_241_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[37] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0148_out),
        .Q(p_245_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[38] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0152_out),
        .Q(p_249_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[39] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0156_out),
        .Q(\scrambler_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[3] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [3]),
        .Q(p_109_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[40] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0160_out),
        .Q(\scrambler_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[41] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0164_out),
        .Q(\scrambler_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[42] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0168_out),
        .Q(\scrambler_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[43] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0172_out),
        .Q(\scrambler_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[44] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0176_out),
        .Q(\scrambler_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[45] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0180_out),
        .Q(\scrambler_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[46] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0184_out),
        .Q(\scrambler_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[47] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0188_out),
        .Q(\scrambler_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[48] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0192_out),
        .Q(\scrambler_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[49] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0196_out),
        .Q(\scrambler_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[4] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [4]),
        .Q(p_113_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[50] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0200_out),
        .Q(\scrambler_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[51] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0204_out),
        .Q(\scrambler_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[52] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0208_out),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[53] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0212_out),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[54] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0216_out),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[55] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0220_out),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[56] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0224_out),
        .Q(Q[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[57] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData0228_out),
        .Q(Q[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[5] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(\SCRAMBLED_DATA_OUT_reg[5]_0 [5]),
        .Q(p_117_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[6] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData024_out),
        .Q(p_121_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[7] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData028_out),
        .Q(p_125_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \scrambler_reg[8] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData032_out),
        .Q(p_129_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \scrambler_reg[9] 
       (.C(user_clk),
        .CE(data_valid_i),
        .D(tempData036_out),
        .Q(p_133_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_STANDARD_CC_MODULE" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_STANDARD_CC_MODULE
   (do_cc_r_reg0,
    Q,
    DO_CC_reg_0,
    SR,
    user_clk,
    extend_cc_r,
    \count_24d_srl_r_reg[22]_0 ,
    do_cc_r,
    txdatavalid_i,
    channel_up_tx_if);
  output do_cc_r_reg0;
  output Q;
  output DO_CC_reg_0;
  input SR;
  input user_clk;
  input extend_cc_r;
  input \count_24d_srl_r_reg[22]_0 ;
  input do_cc_r;
  input txdatavalid_i;
  input channel_up_tx_if;

  wire DO_CC_i_1_n_0;
  wire DO_CC_reg_0;
  wire Q;
  wire SR;
  wire \cc_count_r_reg_n_0_[5] ;
  wire channel_up_tx_if;
  wire count_13d_flop_r;
  wire count_13d_flop_r_i_1_n_0;
  wire count_13d_flop_r_i_2_n_0;
  wire count_13d_flop_r_i_3_n_0;
  wire \count_13d_srl_r_reg_n_0_[0] ;
  wire \count_13d_srl_r_reg_n_0_[10] ;
  wire \count_13d_srl_r_reg_n_0_[11] ;
  wire \count_13d_srl_r_reg_n_0_[1] ;
  wire \count_13d_srl_r_reg_n_0_[2] ;
  wire \count_13d_srl_r_reg_n_0_[3] ;
  wire \count_13d_srl_r_reg_n_0_[4] ;
  wire \count_13d_srl_r_reg_n_0_[5] ;
  wire \count_13d_srl_r_reg_n_0_[6] ;
  wire \count_13d_srl_r_reg_n_0_[7] ;
  wire \count_13d_srl_r_reg_n_0_[8] ;
  wire \count_13d_srl_r_reg_n_0_[9] ;
  wire count_16d_flop_r;
  wire count_16d_flop_r0;
  wire count_16d_flop_r_i_1_n_0;
  wire count_16d_flop_r_i_3_n_0;
  wire count_16d_flop_r_i_4_n_0;
  wire \count_16d_srl_r[0]_i_1_n_0 ;
  wire \count_16d_srl_r_reg_n_0_[0] ;
  wire \count_16d_srl_r_reg_n_0_[10] ;
  wire \count_16d_srl_r_reg_n_0_[11] ;
  wire \count_16d_srl_r_reg_n_0_[12] ;
  wire \count_16d_srl_r_reg_n_0_[13] ;
  wire \count_16d_srl_r_reg_n_0_[14] ;
  wire \count_16d_srl_r_reg_n_0_[1] ;
  wire \count_16d_srl_r_reg_n_0_[2] ;
  wire \count_16d_srl_r_reg_n_0_[3] ;
  wire \count_16d_srl_r_reg_n_0_[4] ;
  wire \count_16d_srl_r_reg_n_0_[5] ;
  wire \count_16d_srl_r_reg_n_0_[6] ;
  wire \count_16d_srl_r_reg_n_0_[7] ;
  wire \count_16d_srl_r_reg_n_0_[8] ;
  wire \count_16d_srl_r_reg_n_0_[9] ;
  wire count_24d_flop_r;
  wire count_24d_flop_r0;
  wire count_24d_flop_r_i_1_n_0;
  wire count_24d_flop_r_i_3_n_0;
  wire count_24d_flop_r_i_4_n_0;
  wire count_24d_flop_r_i_5_n_0;
  wire count_24d_flop_r_i_6_n_0;
  wire count_24d_srl_r0;
  wire \count_24d_srl_r_reg[22]_0 ;
  wire \count_24d_srl_r_reg_n_0_[0] ;
  wire \count_24d_srl_r_reg_n_0_[10] ;
  wire \count_24d_srl_r_reg_n_0_[11] ;
  wire \count_24d_srl_r_reg_n_0_[12] ;
  wire \count_24d_srl_r_reg_n_0_[13] ;
  wire \count_24d_srl_r_reg_n_0_[14] ;
  wire \count_24d_srl_r_reg_n_0_[15] ;
  wire \count_24d_srl_r_reg_n_0_[16] ;
  wire \count_24d_srl_r_reg_n_0_[17] ;
  wire \count_24d_srl_r_reg_n_0_[18] ;
  wire \count_24d_srl_r_reg_n_0_[19] ;
  wire \count_24d_srl_r_reg_n_0_[1] ;
  wire \count_24d_srl_r_reg_n_0_[20] ;
  wire \count_24d_srl_r_reg_n_0_[21] ;
  wire \count_24d_srl_r_reg_n_0_[22] ;
  wire \count_24d_srl_r_reg_n_0_[2] ;
  wire \count_24d_srl_r_reg_n_0_[3] ;
  wire \count_24d_srl_r_reg_n_0_[4] ;
  wire \count_24d_srl_r_reg_n_0_[5] ;
  wire \count_24d_srl_r_reg_n_0_[6] ;
  wire \count_24d_srl_r_reg_n_0_[7] ;
  wire \count_24d_srl_r_reg_n_0_[8] ;
  wire \count_24d_srl_r_reg_n_0_[9] ;
  wire do_cc_r;
  wire do_cc_r_reg0;
  wire extend_cc_r;
  wire [4:0]p_1_in;
  wire p_1_in__0;
  wire [5:5]p_2_out;
  wire reset_r;
  wire txdatavalid_i;
  wire user_clk;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    DO_CC0
       (.I0(p_1_in[0]),
        .I1(\cc_count_r_reg_n_0_[5] ),
        .I2(p_1_in[3]),
        .I3(p_1_in[4]),
        .I4(p_1_in[1]),
        .I5(p_1_in[2]),
        .O(p_1_in__0));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    DO_CC_i_1
       (.I0(p_1_in__0),
        .I1(reset_r),
        .I2(\count_13d_srl_r_reg_n_0_[11] ),
        .I3(\count_16d_srl_r_reg_n_0_[14] ),
        .I4(\count_24d_srl_r_reg_n_0_[22] ),
        .O(DO_CC_i_1_n_0));
  FDRE DO_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(DO_CC_i_1_n_0),
        .Q(Q),
        .R(SR));
  LUT4 #(
    .INIT(16'h80FF)) 
    \cc_count_r[0]_i_1 
       (.I0(\count_24d_srl_r_reg_n_0_[22] ),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(\count_13d_srl_r_reg_n_0_[11] ),
        .I3(\count_24d_srl_r_reg[22]_0 ),
        .O(p_2_out));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_out),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cc_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(\cc_count_r_reg_n_0_[5] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEAAA)) 
    count_13d_flop_r_i_1
       (.I0(\count_13d_srl_r_reg_n_0_[11] ),
        .I1(count_13d_flop_r_i_2_n_0),
        .I2(count_13d_flop_r_i_3_n_0),
        .I3(reset_r),
        .O(count_13d_flop_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    count_13d_flop_r_i_2
       (.I0(\count_13d_srl_r_reg_n_0_[9] ),
        .I1(\count_13d_srl_r_reg_n_0_[8] ),
        .I2(\count_13d_srl_r_reg_n_0_[11] ),
        .I3(\count_13d_srl_r_reg_n_0_[10] ),
        .I4(\count_13d_srl_r_reg_n_0_[6] ),
        .I5(\count_13d_srl_r_reg_n_0_[7] ),
        .O(count_13d_flop_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    count_13d_flop_r_i_3
       (.I0(\count_13d_srl_r_reg_n_0_[3] ),
        .I1(\count_13d_srl_r_reg_n_0_[2] ),
        .I2(\count_13d_srl_r_reg_n_0_[5] ),
        .I3(\count_13d_srl_r_reg_n_0_[4] ),
        .I4(\count_13d_srl_r_reg_n_0_[0] ),
        .I5(\count_13d_srl_r_reg_n_0_[1] ),
        .O(count_13d_flop_r_i_3_n_0));
  FDRE count_13d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_flop_r_i_1_n_0),
        .Q(count_13d_flop_r),
        .R(SR));
  FDRE \count_13d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(count_13d_flop_r),
        .Q(\count_13d_srl_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[9] ),
        .Q(\count_13d_srl_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[10] ),
        .Q(\count_13d_srl_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[0] ),
        .Q(\count_13d_srl_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[1] ),
        .Q(\count_13d_srl_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[2] ),
        .Q(\count_13d_srl_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[3] ),
        .Q(\count_13d_srl_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[4] ),
        .Q(\count_13d_srl_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[5] ),
        .Q(\count_13d_srl_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[6] ),
        .Q(\count_13d_srl_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[7] ),
        .Q(\count_13d_srl_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \count_13d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\count_13d_srl_r_reg_n_0_[8] ),
        .Q(\count_13d_srl_r_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFBF8)) 
    count_16d_flop_r_i_1
       (.I0(\count_16d_srl_r_reg_n_0_[14] ),
        .I1(\count_13d_srl_r_reg_n_0_[11] ),
        .I2(count_16d_flop_r0),
        .I3(count_16d_flop_r),
        .O(count_16d_flop_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    count_16d_flop_r_i_2
       (.I0(count_16d_flop_r_i_3_n_0),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(reset_r),
        .I3(\count_16d_srl_r_reg_n_0_[12] ),
        .I4(\count_16d_srl_r_reg_n_0_[13] ),
        .I5(count_16d_flop_r_i_4_n_0),
        .O(count_16d_flop_r0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    count_16d_flop_r_i_3
       (.I0(\count_16d_srl_r_reg_n_0_[3] ),
        .I1(\count_16d_srl_r_reg_n_0_[2] ),
        .I2(\count_16d_srl_r_reg_n_0_[5] ),
        .I3(\count_16d_srl_r_reg_n_0_[4] ),
        .I4(\count_16d_srl_r_reg_n_0_[0] ),
        .I5(\count_16d_srl_r_reg_n_0_[1] ),
        .O(count_16d_flop_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    count_16d_flop_r_i_4
       (.I0(\count_16d_srl_r_reg_n_0_[9] ),
        .I1(\count_16d_srl_r_reg_n_0_[8] ),
        .I2(\count_16d_srl_r_reg_n_0_[11] ),
        .I3(\count_16d_srl_r_reg_n_0_[10] ),
        .I4(\count_16d_srl_r_reg_n_0_[6] ),
        .I5(\count_16d_srl_r_reg_n_0_[7] ),
        .O(count_16d_flop_r_i_4_n_0));
  FDRE count_16d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_16d_flop_r_i_1_n_0),
        .Q(count_16d_flop_r),
        .R(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \count_16d_srl_r[0]_i_1 
       (.I0(\count_13d_srl_r_reg_n_0_[11] ),
        .I1(\count_24d_srl_r_reg[22]_0 ),
        .O(\count_16d_srl_r[0]_i_1_n_0 ));
  FDRE \count_16d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(count_16d_flop_r),
        .Q(\count_16d_srl_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[9] ),
        .Q(\count_16d_srl_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[10] ),
        .Q(\count_16d_srl_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[12] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[11] ),
        .Q(\count_16d_srl_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[13] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[12] ),
        .Q(\count_16d_srl_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[14] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[13] ),
        .Q(\count_16d_srl_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[0] ),
        .Q(\count_16d_srl_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[1] ),
        .Q(\count_16d_srl_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[2] ),
        .Q(\count_16d_srl_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[3] ),
        .Q(\count_16d_srl_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[4] ),
        .Q(\count_16d_srl_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[5] ),
        .Q(\count_16d_srl_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[6] ),
        .Q(\count_16d_srl_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[7] ),
        .Q(\count_16d_srl_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \count_16d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(\count_16d_srl_r[0]_i_1_n_0 ),
        .D(\count_16d_srl_r_reg_n_0_[8] ),
        .Q(\count_16d_srl_r_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    count_24d_flop_r_i_1
       (.I0(\count_24d_srl_r_reg_n_0_[22] ),
        .I1(\count_13d_srl_r_reg_n_0_[11] ),
        .I2(\count_16d_srl_r_reg_n_0_[14] ),
        .I3(count_24d_flop_r0),
        .I4(count_24d_flop_r),
        .O(count_24d_flop_r_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    count_24d_flop_r_i_2
       (.I0(count_24d_flop_r_i_3_n_0),
        .I1(count_24d_flop_r_i_4_n_0),
        .I2(count_24d_flop_r_i_5_n_0),
        .I3(count_24d_flop_r_i_6_n_0),
        .O(count_24d_flop_r0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    count_24d_flop_r_i_3
       (.I0(\count_24d_srl_r_reg_n_0_[9] ),
        .I1(\count_24d_srl_r_reg_n_0_[8] ),
        .I2(\count_24d_srl_r_reg_n_0_[11] ),
        .I3(\count_24d_srl_r_reg_n_0_[10] ),
        .I4(\count_24d_srl_r_reg_n_0_[6] ),
        .I5(\count_24d_srl_r_reg_n_0_[7] ),
        .O(count_24d_flop_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    count_24d_flop_r_i_4
       (.I0(\count_24d_srl_r_reg_n_0_[21] ),
        .I1(\count_24d_srl_r_reg_n_0_[20] ),
        .I2(reset_r),
        .I3(\count_24d_srl_r_reg_n_0_[22] ),
        .I4(\count_24d_srl_r_reg_n_0_[18] ),
        .I5(\count_24d_srl_r_reg_n_0_[19] ),
        .O(count_24d_flop_r_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    count_24d_flop_r_i_5
       (.I0(\count_24d_srl_r_reg_n_0_[15] ),
        .I1(\count_24d_srl_r_reg_n_0_[14] ),
        .I2(\count_24d_srl_r_reg_n_0_[17] ),
        .I3(\count_24d_srl_r_reg_n_0_[16] ),
        .I4(\count_24d_srl_r_reg_n_0_[12] ),
        .I5(\count_24d_srl_r_reg_n_0_[13] ),
        .O(count_24d_flop_r_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    count_24d_flop_r_i_6
       (.I0(\count_24d_srl_r_reg_n_0_[3] ),
        .I1(\count_24d_srl_r_reg_n_0_[2] ),
        .I2(\count_24d_srl_r_reg_n_0_[5] ),
        .I3(\count_24d_srl_r_reg_n_0_[4] ),
        .I4(\count_24d_srl_r_reg_n_0_[0] ),
        .I5(\count_24d_srl_r_reg_n_0_[1] ),
        .O(count_24d_flop_r_i_6_n_0));
  FDRE count_24d_flop_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_24d_flop_r_i_1_n_0),
        .Q(count_24d_flop_r),
        .R(SR));
  LUT3 #(
    .INIT(8'h8F)) 
    \count_24d_srl_r[0]_i_1 
       (.I0(\count_13d_srl_r_reg_n_0_[11] ),
        .I1(\count_16d_srl_r_reg_n_0_[14] ),
        .I2(\count_24d_srl_r_reg[22]_0 ),
        .O(count_24d_srl_r0));
  FDRE \count_24d_srl_r_reg[0] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(count_24d_flop_r),
        .Q(\count_24d_srl_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[10] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[9] ),
        .Q(\count_24d_srl_r_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[11] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[10] ),
        .Q(\count_24d_srl_r_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[12] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[11] ),
        .Q(\count_24d_srl_r_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[13] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[12] ),
        .Q(\count_24d_srl_r_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[14] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[13] ),
        .Q(\count_24d_srl_r_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[15] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[14] ),
        .Q(\count_24d_srl_r_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[16] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[15] ),
        .Q(\count_24d_srl_r_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[17] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[16] ),
        .Q(\count_24d_srl_r_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[18] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[17] ),
        .Q(\count_24d_srl_r_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[19] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[18] ),
        .Q(\count_24d_srl_r_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[1] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[0] ),
        .Q(\count_24d_srl_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[20] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[19] ),
        .Q(\count_24d_srl_r_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[21] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[20] ),
        .Q(\count_24d_srl_r_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[22] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[21] ),
        .Q(\count_24d_srl_r_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[2] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[1] ),
        .Q(\count_24d_srl_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[3] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[2] ),
        .Q(\count_24d_srl_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[4] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[3] ),
        .Q(\count_24d_srl_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[5] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[4] ),
        .Q(\count_24d_srl_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[6] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[5] ),
        .Q(\count_24d_srl_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[7] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[6] ),
        .Q(\count_24d_srl_r_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[8] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[7] ),
        .Q(\count_24d_srl_r_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \count_24d_srl_r_reg[9] 
       (.C(user_clk),
        .CE(count_24d_srl_r0),
        .D(\count_24d_srl_r_reg_n_0_[8] ),
        .Q(\count_24d_srl_r_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hE)) 
    do_cc_r_i_1
       (.I0(Q),
        .I1(extend_cc_r),
        .O(do_cc_r_reg0));
  FDRE reset_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SR),
        .Q(reset_r),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    tx_dst_rdy_n_r_i_1
       (.I0(Q),
        .I1(do_cc_r),
        .I2(txdatavalid_i),
        .I3(channel_up_tx_if),
        .O(DO_CC_reg_0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_SYM_DEC" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_SYM_DEC
   (rx_pe_data_v_i,
    illegal_btf_i,
    got_idles_i,
    remote_ready_i,
    \RX_PE_DATA_reg[0]_0 ,
    rxdatavalid_i,
    user_clk,
    RX_IDLE_reg_0,
    \RX_DATA_REG_reg[0]_0 ,
    RX_HEADER_1_REG_reg_0,
    \rx_na_idles_cntr_reg[0]_0 );
  output rx_pe_data_v_i;
  output illegal_btf_i;
  output got_idles_i;
  output remote_ready_i;
  output [63:0]\RX_PE_DATA_reg[0]_0 ;
  input rxdatavalid_i;
  input user_clk;
  input RX_IDLE_reg_0;
  input \RX_DATA_REG_reg[0]_0 ;
  input [65:0]RX_HEADER_1_REG_reg_0;
  input \rx_na_idles_cntr_reg[0]_0 ;

  wire ILLEGAL_BTF0;
  wire ILLEGAL_BTF_i_2_n_0;
  wire ILLEGAL_BTF_i_3_n_0;
  wire ILLEGAL_BTF_i_4_n_0;
  wire ILLEGAL_BTF_i_5_n_0;
  wire RXDATAVALID_IN_REG;
  wire \RX_DATA_REG_reg[0]_0 ;
  wire [65:0]RX_HEADER_1_REG_reg_0;
  wire RX_IDLE_i_2_n_0;
  wire RX_IDLE_reg_0;
  wire RX_NA_IDLE_i_2_n_0;
  wire [63:0]\RX_PE_DATA_reg[0]_0 ;
  wire got_idles_i;
  wire got_na_idles_i;
  wire illegal_btf_i;
  wire [15:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire [0:2]remote_rdy_cntr;
  wire \remote_rdy_cntr[0]_i_1_n_0 ;
  wire \remote_rdy_cntr[0]_i_2_n_0 ;
  wire \remote_rdy_cntr[0]_i_3_n_0 ;
  wire \remote_rdy_cntr[1]_i_1_n_0 ;
  wire \remote_rdy_cntr[2]_i_1_n_0 ;
  wire remote_ready_det;
  wire remote_ready_det0;
  wire remote_ready_i;
  wire rx_idle_c;
  wire rx_na_idle_c;
  wire \rx_na_idles_cntr[4]_i_1_n_0 ;
  wire [4:0]rx_na_idles_cntr_reg;
  wire \rx_na_idles_cntr_reg[0]_0 ;
  wire rx_pe_data_v_i;
  wire [63:16]rxdata_s;
  wire rxdatavalid_i;
  wire [0:1]sync_header_c;
  wire user_clk;
  wire valid_d;

  LUT6 #(
    .INIT(64'hFFEF0000EEEB0000)) 
    ILLEGAL_BTF_i_1
       (.I0(ILLEGAL_BTF_i_2_n_0),
        .I1(p_0_in[6]),
        .I2(p_0_in[4]),
        .I3(p_0_in[7]),
        .I4(ILLEGAL_BTF_i_3_n_0),
        .I5(p_0_in[5]),
        .O(ILLEGAL_BTF0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    ILLEGAL_BTF_i_2
       (.I0(ILLEGAL_BTF_i_4_n_0),
        .I1(p_0_in[9]),
        .I2(p_0_in[8]),
        .I3(p_0_in[11]),
        .I4(p_0_in[10]),
        .I5(ILLEGAL_BTF_i_5_n_0),
        .O(ILLEGAL_BTF_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    ILLEGAL_BTF_i_3
       (.I0(RXDATAVALID_IN_REG),
        .I1(sync_header_c[0]),
        .I2(sync_header_c[1]),
        .I3(\rx_na_idles_cntr_reg[0]_0 ),
        .O(ILLEGAL_BTF_i_3_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    ILLEGAL_BTF_i_4
       (.I0(p_0_in[13]),
        .I1(p_0_in[12]),
        .I2(p_0_in[14]),
        .I3(p_0_in[15]),
        .O(ILLEGAL_BTF_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ILLEGAL_BTF_i_5
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(p_0_in[2]),
        .O(ILLEGAL_BTF_i_5_n_0));
  FDRE ILLEGAL_BTF_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ILLEGAL_BTF0),
        .Q(illegal_btf_i),
        .R(RX_IDLE_reg_0));
  FDRE RXDATAVALID_IN_REG_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxdatavalid_i),
        .Q(RXDATAVALID_IN_REG),
        .R(1'b0));
  FDRE \RX_DATA_REG_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[0]),
        .Q(rxdata_s[56]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[10]),
        .Q(rxdata_s[50]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[11]),
        .Q(rxdata_s[51]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[12]),
        .Q(rxdata_s[52]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[13]),
        .Q(rxdata_s[53]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[14]),
        .Q(rxdata_s[54]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[15]),
        .Q(rxdata_s[55]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[16]),
        .Q(rxdata_s[40]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[17]),
        .Q(rxdata_s[41]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[18]),
        .Q(rxdata_s[42]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[19]),
        .Q(rxdata_s[43]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[1]),
        .Q(rxdata_s[57]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[20]),
        .Q(rxdata_s[44]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[21]),
        .Q(rxdata_s[45]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[22]),
        .Q(rxdata_s[46]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[23]),
        .Q(rxdata_s[47]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[24]),
        .Q(rxdata_s[32]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[25]),
        .Q(rxdata_s[33]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[26]),
        .Q(rxdata_s[34]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[27]),
        .Q(rxdata_s[35]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[28]),
        .Q(rxdata_s[36]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[29]),
        .Q(rxdata_s[37]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[2]),
        .Q(rxdata_s[58]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[30]),
        .Q(rxdata_s[38]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[31]),
        .Q(rxdata_s[39]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[32] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[32]),
        .Q(rxdata_s[24]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[33] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[33]),
        .Q(rxdata_s[25]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[34] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[34]),
        .Q(rxdata_s[26]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[35] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[35]),
        .Q(rxdata_s[27]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[36] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[36]),
        .Q(rxdata_s[28]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[37] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[37]),
        .Q(rxdata_s[29]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[38] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[38]),
        .Q(rxdata_s[30]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[39] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[39]),
        .Q(rxdata_s[31]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[3]),
        .Q(rxdata_s[59]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[40] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[40]),
        .Q(rxdata_s[16]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[41] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[41]),
        .Q(rxdata_s[17]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[42] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[42]),
        .Q(rxdata_s[18]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[43] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[43]),
        .Q(rxdata_s[19]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[44] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[44]),
        .Q(rxdata_s[20]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[45] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[45]),
        .Q(rxdata_s[21]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[46] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[46]),
        .Q(rxdata_s[22]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[47] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[47]),
        .Q(rxdata_s[23]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[48] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[48]),
        .Q(p_0_in[0]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[49] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[49]),
        .Q(p_0_in[1]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[4]),
        .Q(rxdata_s[60]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[50] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[50]),
        .Q(p_0_in[2]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[51] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[51]),
        .Q(p_0_in[3]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[52] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[52]),
        .Q(p_0_in[4]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[53] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[53]),
        .Q(p_0_in[5]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[54] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[54]),
        .Q(p_0_in[6]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[55] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[55]),
        .Q(p_0_in[7]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[56] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[56]),
        .Q(p_0_in[8]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[57] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[57]),
        .Q(p_0_in[9]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[58] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[58]),
        .Q(p_0_in[10]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[59] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[59]),
        .Q(p_0_in[11]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[5]),
        .Q(rxdata_s[61]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[60] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[60]),
        .Q(p_0_in[12]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[61] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[61]),
        .Q(p_0_in[13]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[62] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[62]),
        .Q(p_0_in[14]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[63] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[63]),
        .Q(p_0_in[15]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[6]),
        .Q(rxdata_s[62]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[7]),
        .Q(rxdata_s[63]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[8]),
        .Q(rxdata_s[48]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE \RX_DATA_REG_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[9]),
        .Q(rxdata_s[49]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE RX_HEADER_0_REG_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[64]),
        .Q(sync_header_c[1]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  FDRE RX_HEADER_1_REG_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_HEADER_1_REG_reg_0[65]),
        .Q(sync_header_c[0]),
        .R(\RX_DATA_REG_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    RX_IDLE_i_1
       (.I0(RX_IDLE_i_2_n_0),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(sync_header_c[1]),
        .I4(sync_header_c[0]),
        .I5(ILLEGAL_BTF_i_2_n_0),
        .O(rx_idle_c));
  LUT2 #(
    .INIT(4'hE)) 
    RX_IDLE_i_2
       (.I0(p_0_in[6]),
        .I1(p_0_in[7]),
        .O(RX_IDLE_i_2_n_0));
  FDRE RX_IDLE_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_idle_c),
        .Q(got_idles_i),
        .R(RX_IDLE_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    RX_NA_IDLE_i_1
       (.I0(RX_NA_IDLE_i_2_n_0),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(p_0_in[7]),
        .I4(p_0_in[6]),
        .I5(ILLEGAL_BTF_i_2_n_0),
        .O(rx_na_idle_c));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h40)) 
    RX_NA_IDLE_i_2
       (.I0(sync_header_c[1]),
        .I1(sync_header_c[0]),
        .I2(RXDATAVALID_IN_REG),
        .O(RX_NA_IDLE_i_2_n_0));
  FDRE RX_NA_IDLE_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_na_idle_c),
        .Q(got_na_idles_i),
        .R(RX_IDLE_reg_0));
  LUT3 #(
    .INIT(8'h40)) 
    \RX_PE_DATA[0]_i_1 
       (.I0(sync_header_c[0]),
        .I1(RXDATAVALID_IN_REG),
        .I2(sync_header_c[1]),
        .O(valid_d));
  FDRE RX_PE_DATA_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(valid_d),
        .Q(rx_pe_data_v_i),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[0] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[63]),
        .Q(\RX_PE_DATA_reg[0]_0 [63]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[53]),
        .Q(\RX_PE_DATA_reg[0]_0 [53]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[11] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[52]),
        .Q(\RX_PE_DATA_reg[0]_0 [52]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[12] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[51]),
        .Q(\RX_PE_DATA_reg[0]_0 [51]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[13] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[50]),
        .Q(\RX_PE_DATA_reg[0]_0 [50]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[14] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[49]),
        .Q(\RX_PE_DATA_reg[0]_0 [49]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[15] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[48]),
        .Q(\RX_PE_DATA_reg[0]_0 [48]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[16] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[47]),
        .Q(\RX_PE_DATA_reg[0]_0 [47]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[17] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[46]),
        .Q(\RX_PE_DATA_reg[0]_0 [46]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[18] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[45]),
        .Q(\RX_PE_DATA_reg[0]_0 [45]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[19] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[44]),
        .Q(\RX_PE_DATA_reg[0]_0 [44]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[1] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[62]),
        .Q(\RX_PE_DATA_reg[0]_0 [62]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[20] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[43]),
        .Q(\RX_PE_DATA_reg[0]_0 [43]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[21] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[42]),
        .Q(\RX_PE_DATA_reg[0]_0 [42]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[22] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[41]),
        .Q(\RX_PE_DATA_reg[0]_0 [41]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[23] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[40]),
        .Q(\RX_PE_DATA_reg[0]_0 [40]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[24] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[39]),
        .Q(\RX_PE_DATA_reg[0]_0 [39]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[25] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[38]),
        .Q(\RX_PE_DATA_reg[0]_0 [38]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[26] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[37]),
        .Q(\RX_PE_DATA_reg[0]_0 [37]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[27] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[36]),
        .Q(\RX_PE_DATA_reg[0]_0 [36]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[28] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[35]),
        .Q(\RX_PE_DATA_reg[0]_0 [35]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[29] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[34]),
        .Q(\RX_PE_DATA_reg[0]_0 [34]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[2] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[61]),
        .Q(\RX_PE_DATA_reg[0]_0 [61]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[30] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[33]),
        .Q(\RX_PE_DATA_reg[0]_0 [33]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[31] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[32]),
        .Q(\RX_PE_DATA_reg[0]_0 [32]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[32] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[31]),
        .Q(\RX_PE_DATA_reg[0]_0 [31]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[33] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[30]),
        .Q(\RX_PE_DATA_reg[0]_0 [30]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[34] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[29]),
        .Q(\RX_PE_DATA_reg[0]_0 [29]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[35] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[28]),
        .Q(\RX_PE_DATA_reg[0]_0 [28]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[36] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[27]),
        .Q(\RX_PE_DATA_reg[0]_0 [27]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[37] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[26]),
        .Q(\RX_PE_DATA_reg[0]_0 [26]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[38] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[25]),
        .Q(\RX_PE_DATA_reg[0]_0 [25]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[39] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[24]),
        .Q(\RX_PE_DATA_reg[0]_0 [24]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[3] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[60]),
        .Q(\RX_PE_DATA_reg[0]_0 [60]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[40] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[23]),
        .Q(\RX_PE_DATA_reg[0]_0 [23]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[41] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[22]),
        .Q(\RX_PE_DATA_reg[0]_0 [22]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[42] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[21]),
        .Q(\RX_PE_DATA_reg[0]_0 [21]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[43] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[20]),
        .Q(\RX_PE_DATA_reg[0]_0 [20]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[44] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[19]),
        .Q(\RX_PE_DATA_reg[0]_0 [19]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[45] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[18]),
        .Q(\RX_PE_DATA_reg[0]_0 [18]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[46] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[17]),
        .Q(\RX_PE_DATA_reg[0]_0 [17]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[47] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[16]),
        .Q(\RX_PE_DATA_reg[0]_0 [16]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[48] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[7]),
        .Q(\RX_PE_DATA_reg[0]_0 [15]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[49] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[6]),
        .Q(\RX_PE_DATA_reg[0]_0 [14]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[4] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[59]),
        .Q(\RX_PE_DATA_reg[0]_0 [59]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[50] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[5]),
        .Q(\RX_PE_DATA_reg[0]_0 [13]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[51] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[4]),
        .Q(\RX_PE_DATA_reg[0]_0 [12]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[52] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[3]),
        .Q(\RX_PE_DATA_reg[0]_0 [11]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[53] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[2]),
        .Q(\RX_PE_DATA_reg[0]_0 [10]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[54] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[1]),
        .Q(\RX_PE_DATA_reg[0]_0 [9]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[55] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[0]),
        .Q(\RX_PE_DATA_reg[0]_0 [8]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[56] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[15]),
        .Q(\RX_PE_DATA_reg[0]_0 [7]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[57] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[14]),
        .Q(\RX_PE_DATA_reg[0]_0 [6]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[58] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[13]),
        .Q(\RX_PE_DATA_reg[0]_0 [5]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[59] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[12]),
        .Q(\RX_PE_DATA_reg[0]_0 [4]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[5] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[58]),
        .Q(\RX_PE_DATA_reg[0]_0 [58]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[60] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[11]),
        .Q(\RX_PE_DATA_reg[0]_0 [3]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[61] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[10]),
        .Q(\RX_PE_DATA_reg[0]_0 [2]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[62] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[9]),
        .Q(\RX_PE_DATA_reg[0]_0 [1]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[63] 
       (.C(user_clk),
        .CE(valid_d),
        .D(p_0_in[8]),
        .Q(\RX_PE_DATA_reg[0]_0 [0]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[6] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[57]),
        .Q(\RX_PE_DATA_reg[0]_0 [57]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[7] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[56]),
        .Q(\RX_PE_DATA_reg[0]_0 [56]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[55]),
        .Q(\RX_PE_DATA_reg[0]_0 [55]),
        .R(RX_IDLE_reg_0));
  FDRE \RX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(valid_d),
        .D(rxdata_s[54]),
        .Q(\RX_PE_DATA_reg[0]_0 [54]),
        .R(RX_IDLE_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h0000FF80)) 
    \remote_rdy_cntr[0]_i_1 
       (.I0(remote_ready_det),
        .I1(remote_rdy_cntr[1]),
        .I2(remote_rdy_cntr[2]),
        .I3(remote_rdy_cntr[0]),
        .I4(\remote_rdy_cntr[0]_i_2_n_0 ),
        .O(\remote_rdy_cntr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00004000FFFFFFFF)) 
    \remote_rdy_cntr[0]_i_2 
       (.I0(\remote_rdy_cntr[0]_i_3_n_0 ),
        .I1(remote_rdy_cntr[0]),
        .I2(remote_rdy_cntr[2]),
        .I3(remote_rdy_cntr[1]),
        .I4(rx_na_idles_cntr_reg[4]),
        .I5(\rx_na_idles_cntr_reg[0]_0 ),
        .O(\remote_rdy_cntr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \remote_rdy_cntr[0]_i_3 
       (.I0(rx_na_idles_cntr_reg[2]),
        .I1(rx_na_idles_cntr_reg[0]),
        .I2(rx_na_idles_cntr_reg[1]),
        .I3(rx_na_idles_cntr_reg[3]),
        .O(\remote_rdy_cntr[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h0000EC6C)) 
    \remote_rdy_cntr[1]_i_1 
       (.I0(remote_ready_det),
        .I1(remote_rdy_cntr[1]),
        .I2(remote_rdy_cntr[2]),
        .I3(remote_rdy_cntr[0]),
        .I4(\remote_rdy_cntr[0]_i_2_n_0 ),
        .O(\remote_rdy_cntr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h0000D5AA)) 
    \remote_rdy_cntr[2]_i_1 
       (.I0(remote_rdy_cntr[2]),
        .I1(remote_rdy_cntr[0]),
        .I2(remote_rdy_cntr[1]),
        .I3(remote_ready_det),
        .I4(\remote_rdy_cntr[0]_i_2_n_0 ),
        .O(\remote_rdy_cntr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \remote_rdy_cntr_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\remote_rdy_cntr[0]_i_1_n_0 ),
        .Q(remote_rdy_cntr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \remote_rdy_cntr_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\remote_rdy_cntr[1]_i_1_n_0 ),
        .Q(remote_rdy_cntr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \remote_rdy_cntr_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\remote_rdy_cntr[2]_i_1_n_0 ),
        .Q(remote_rdy_cntr[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    remote_ready_det_i_1
       (.I0(ILLEGAL_BTF_i_3_n_0),
        .I1(p_0_in[5]),
        .I2(p_0_in[4]),
        .I3(p_0_in[7]),
        .I4(p_0_in[6]),
        .I5(ILLEGAL_BTF_i_2_n_0),
        .O(remote_ready_det0));
  FDRE remote_ready_det_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(remote_ready_det0),
        .Q(remote_ready_det),
        .R(RX_IDLE_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h80)) 
    remote_ready_r_i_1
       (.I0(remote_rdy_cntr[0]),
        .I1(remote_rdy_cntr[2]),
        .I2(remote_rdy_cntr[1]),
        .O(remote_ready_i));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rx_na_idles_cntr[0]_i_1 
       (.I0(rx_na_idles_cntr_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rx_na_idles_cntr[1]_i_1 
       (.I0(rx_na_idles_cntr_reg[0]),
        .I1(rx_na_idles_cntr_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rx_na_idles_cntr[2]_i_1 
       (.I0(rx_na_idles_cntr_reg[1]),
        .I1(rx_na_idles_cntr_reg[0]),
        .I2(rx_na_idles_cntr_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rx_na_idles_cntr[3]_i_1 
       (.I0(rx_na_idles_cntr_reg[2]),
        .I1(rx_na_idles_cntr_reg[0]),
        .I2(rx_na_idles_cntr_reg[1]),
        .I3(rx_na_idles_cntr_reg[3]),
        .O(p_0_in__0[3]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rx_na_idles_cntr[4]_i_1 
       (.I0(remote_rdy_cntr[0]),
        .I1(remote_rdy_cntr[2]),
        .I2(remote_rdy_cntr[1]),
        .I3(\rx_na_idles_cntr_reg[0]_0 ),
        .O(\rx_na_idles_cntr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rx_na_idles_cntr[4]_i_2 
       (.I0(rx_na_idles_cntr_reg[3]),
        .I1(rx_na_idles_cntr_reg[1]),
        .I2(rx_na_idles_cntr_reg[0]),
        .I3(rx_na_idles_cntr_reg[2]),
        .I4(rx_na_idles_cntr_reg[4]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \rx_na_idles_cntr_reg[0] 
       (.C(user_clk),
        .CE(got_na_idles_i),
        .D(p_0_in__0[0]),
        .Q(rx_na_idles_cntr_reg[0]),
        .R(\rx_na_idles_cntr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_na_idles_cntr_reg[1] 
       (.C(user_clk),
        .CE(got_na_idles_i),
        .D(p_0_in__0[1]),
        .Q(rx_na_idles_cntr_reg[1]),
        .R(\rx_na_idles_cntr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_na_idles_cntr_reg[2] 
       (.C(user_clk),
        .CE(got_na_idles_i),
        .D(p_0_in__0[2]),
        .Q(rx_na_idles_cntr_reg[2]),
        .R(\rx_na_idles_cntr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_na_idles_cntr_reg[3] 
       (.C(user_clk),
        .CE(got_na_idles_i),
        .D(p_0_in__0[3]),
        .Q(rx_na_idles_cntr_reg[3]),
        .R(\rx_na_idles_cntr[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_na_idles_cntr_reg[4] 
       (.C(user_clk),
        .CE(got_na_idles_i),
        .D(p_0_in__0[4]),
        .Q(rx_na_idles_cntr_reg[4]),
        .R(\rx_na_idles_cntr[4]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_SYM_GEN" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_SYM_GEN
   (stg5_reg,
    \TX_DATA_reg[63]_0 ,
    D,
    \TX_DATA_reg[44]_0 ,
    RESET,
    user_clk,
    \TX_DATA_reg[59]_0 ,
    p_1_in,
    \TX_DATA_reg[63]_1 ,
    Q,
    \TX_DATA_reg[59]_1 ,
    \SCRAMBLED_DATA_OUT_reg[5] ,
    txdatavalid_symgen_i,
    gen_na_idles_i,
    tx_pe_data_v_i,
    TX_HEADER_1_reg_0,
    channel_up_tx_if);
  output stg5_reg;
  output [57:0]\TX_DATA_reg[63]_0 ;
  output [1:0]D;
  output [5:0]\TX_DATA_reg[44]_0 ;
  input RESET;
  input user_clk;
  input \TX_DATA_reg[59]_0 ;
  input [3:0]p_1_in;
  input \TX_DATA_reg[63]_1 ;
  input [59:0]Q;
  input \TX_DATA_reg[59]_1 ;
  input [11:0]\SCRAMBLED_DATA_OUT_reg[5] ;
  input txdatavalid_symgen_i;
  input gen_na_idles_i;
  input tx_pe_data_v_i;
  input TX_HEADER_1_reg_0;
  input channel_up_tx_if;

  wire [1:0]D;
  wire [59:0]Q;
  wire RESET;
  wire [11:0]\SCRAMBLED_DATA_OUT_reg[5] ;
  wire [5:0]\TX_DATA_reg[44]_0 ;
  wire \TX_DATA_reg[59]_0 ;
  wire \TX_DATA_reg[59]_1 ;
  wire [57:0]\TX_DATA_reg[63]_0 ;
  wire \TX_DATA_reg[63]_1 ;
  wire TX_HEADER_1_reg_0;
  wire channel_up_tx_if;
  wire gen_na_idles_i;
  wire [3:0]p_1_in;
  wire stg5_reg;
  wire [58:63]tx_data_i;
  wire tx_pe_data_v_i;
  wire txdatavalid_symgen_i;
  wire u_pma_init_data_sync_n_1;
  wire u_pma_init_data_sync_n_2;
  wire u_pma_init_data_sync_n_3;
  wire u_pma_init_data_sync_n_4;
  wire u_pma_init_data_sync_n_5;
  wire u_pma_init_data_sync_n_6;
  wire user_clk;

  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[0] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[52]),
        .Q(tx_data_i[63]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[10] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[46]),
        .Q(\TX_DATA_reg[63]_0 [4]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[11] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[47]),
        .Q(\TX_DATA_reg[63]_0 [5]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[12] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[48]),
        .Q(\TX_DATA_reg[63]_0 [6]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[13] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[49]),
        .Q(\TX_DATA_reg[63]_0 [7]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[14] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[50]),
        .Q(\TX_DATA_reg[63]_0 [8]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[15] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[51]),
        .Q(\TX_DATA_reg[63]_0 [9]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[16] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[36]),
        .Q(\TX_DATA_reg[63]_0 [10]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[17] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[37]),
        .Q(\TX_DATA_reg[63]_0 [11]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[18] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[38]),
        .Q(\TX_DATA_reg[63]_0 [12]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[19] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[39]),
        .Q(\TX_DATA_reg[63]_0 [13]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[1] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[53]),
        .Q(tx_data_i[62]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[20] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[40]),
        .Q(\TX_DATA_reg[63]_0 [14]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[21] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[41]),
        .Q(\TX_DATA_reg[63]_0 [15]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[22] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[42]),
        .Q(\TX_DATA_reg[63]_0 [16]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[23] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[43]),
        .Q(\TX_DATA_reg[63]_0 [17]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[24] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[28]),
        .Q(\TX_DATA_reg[63]_0 [18]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[25] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[29]),
        .Q(\TX_DATA_reg[63]_0 [19]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[26] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[30]),
        .Q(\TX_DATA_reg[63]_0 [20]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[27] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[31]),
        .Q(\TX_DATA_reg[63]_0 [21]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[28] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[32]),
        .Q(\TX_DATA_reg[63]_0 [22]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[29] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[33]),
        .Q(\TX_DATA_reg[63]_0 [23]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[2] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[54]),
        .Q(tx_data_i[61]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[30] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[34]),
        .Q(\TX_DATA_reg[63]_0 [24]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[31] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[35]),
        .Q(\TX_DATA_reg[63]_0 [25]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[32] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[20]),
        .Q(\TX_DATA_reg[63]_0 [26]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[33] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[21]),
        .Q(\TX_DATA_reg[63]_0 [27]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[34] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[22]),
        .Q(\TX_DATA_reg[63]_0 [28]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[35] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[23]),
        .Q(\TX_DATA_reg[63]_0 [29]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[36] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[24]),
        .Q(\TX_DATA_reg[63]_0 [30]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[37] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[25]),
        .Q(\TX_DATA_reg[63]_0 [31]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[38] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[26]),
        .Q(\TX_DATA_reg[63]_0 [32]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[39] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[27]),
        .Q(\TX_DATA_reg[63]_0 [33]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[3] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[55]),
        .Q(tx_data_i[60]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[40] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[12]),
        .Q(\TX_DATA_reg[63]_0 [34]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[41] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[13]),
        .Q(\TX_DATA_reg[63]_0 [35]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[42] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[14]),
        .Q(\TX_DATA_reg[63]_0 [36]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[43] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[15]),
        .Q(\TX_DATA_reg[63]_0 [37]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[44] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[16]),
        .Q(\TX_DATA_reg[63]_0 [38]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[45] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[17]),
        .Q(\TX_DATA_reg[63]_0 [39]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[46] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[18]),
        .Q(\TX_DATA_reg[63]_0 [40]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[47] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[19]),
        .Q(\TX_DATA_reg[63]_0 [41]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[48] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[8]),
        .Q(\TX_DATA_reg[63]_0 [42]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[49] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[9]),
        .Q(\TX_DATA_reg[63]_0 [43]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[4] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[56]),
        .Q(tx_data_i[59]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[50] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[10]),
        .Q(\TX_DATA_reg[63]_0 [44]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[51] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[11]),
        .Q(\TX_DATA_reg[63]_0 [45]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[52] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(p_1_in[0]),
        .Q(\TX_DATA_reg[63]_0 [46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[53] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(p_1_in[1]),
        .Q(\TX_DATA_reg[63]_0 [47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[54] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(p_1_in[2]),
        .Q(\TX_DATA_reg[63]_0 [48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[55] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(p_1_in[3]),
        .Q(\TX_DATA_reg[63]_0 [49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[56] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[0]),
        .Q(\TX_DATA_reg[63]_0 [50]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[57] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[1]),
        .Q(\TX_DATA_reg[63]_0 [51]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[58] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[2]),
        .Q(\TX_DATA_reg[63]_0 [52]),
        .R(\TX_DATA_reg[63]_1 ));
  FDSE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[59] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(u_pma_init_data_sync_n_3),
        .Q(\TX_DATA_reg[63]_0 [53]),
        .S(\TX_DATA_reg[59]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[5] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[57]),
        .Q(tx_data_i[58]),
        .R(\TX_DATA_reg[63]_1 ));
  FDSE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[60] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(u_pma_init_data_sync_n_4),
        .Q(\TX_DATA_reg[63]_0 [54]),
        .S(\TX_DATA_reg[59]_1 ));
  FDSE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[61] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(u_pma_init_data_sync_n_5),
        .Q(\TX_DATA_reg[63]_0 [55]),
        .S(\TX_DATA_reg[59]_1 ));
  FDSE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[62] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(u_pma_init_data_sync_n_6),
        .Q(\TX_DATA_reg[63]_0 [56]),
        .S(\TX_DATA_reg[59]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[63] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[7]),
        .Q(\TX_DATA_reg[63]_0 [57]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[6] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[58]),
        .Q(\TX_DATA_reg[63]_0 [0]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[7] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[59]),
        .Q(\TX_DATA_reg[63]_0 [1]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[8] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[44]),
        .Q(\TX_DATA_reg[63]_0 [2]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \TX_DATA_reg[9] 
       (.C(user_clk),
        .CE(\TX_DATA_reg[59]_0 ),
        .D(Q[45]),
        .Q(\TX_DATA_reg[63]_0 [3]),
        .R(\TX_DATA_reg[63]_1 ));
  FDRE #(
    .INIT(1'b1)) 
    TX_HEADER_0_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(u_pma_init_data_sync_n_2),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    TX_HEADER_1_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(u_pma_init_data_sync_n_1),
        .Q(D[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[0]_i_1 
       (.I0(\TX_DATA_reg[63]_0 [33]),
        .I1(\SCRAMBLED_DATA_OUT_reg[5] [0]),
        .I2(tx_data_i[63]),
        .I3(\TX_DATA_reg[63]_0 [52]),
        .I4(\SCRAMBLED_DATA_OUT_reg[5] [6]),
        .O(\TX_DATA_reg[44]_0 [0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[1]_i_1 
       (.I0(\TX_DATA_reg[63]_0 [34]),
        .I1(\SCRAMBLED_DATA_OUT_reg[5] [1]),
        .I2(tx_data_i[62]),
        .I3(\TX_DATA_reg[63]_0 [53]),
        .I4(\SCRAMBLED_DATA_OUT_reg[5] [7]),
        .O(\TX_DATA_reg[44]_0 [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[2]_i_1 
       (.I0(\TX_DATA_reg[63]_0 [35]),
        .I1(\SCRAMBLED_DATA_OUT_reg[5] [2]),
        .I2(tx_data_i[61]),
        .I3(\TX_DATA_reg[63]_0 [54]),
        .I4(\SCRAMBLED_DATA_OUT_reg[5] [8]),
        .O(\TX_DATA_reg[44]_0 [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[3]_i_1 
       (.I0(\TX_DATA_reg[63]_0 [36]),
        .I1(\SCRAMBLED_DATA_OUT_reg[5] [3]),
        .I2(tx_data_i[60]),
        .I3(\TX_DATA_reg[63]_0 [55]),
        .I4(\SCRAMBLED_DATA_OUT_reg[5] [9]),
        .O(\TX_DATA_reg[44]_0 [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[4]_i_1 
       (.I0(\TX_DATA_reg[63]_0 [37]),
        .I1(\SCRAMBLED_DATA_OUT_reg[5] [4]),
        .I2(tx_data_i[59]),
        .I3(\TX_DATA_reg[63]_0 [56]),
        .I4(\SCRAMBLED_DATA_OUT_reg[5] [10]),
        .O(\TX_DATA_reg[44]_0 [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \scrambler[5]_i_1 
       (.I0(\TX_DATA_reg[63]_0 [38]),
        .I1(\SCRAMBLED_DATA_OUT_reg[5] [5]),
        .I2(tx_data_i[58]),
        .I3(\TX_DATA_reg[63]_0 [57]),
        .I4(\SCRAMBLED_DATA_OUT_reg[5] [11]),
        .O(\TX_DATA_reg[44]_0 [5]));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_5 u_pma_init_data_sync
       (.D(D),
        .Q(Q[6:3]),
        .RESET(RESET),
        .TX_HEADER_1_reg(u_pma_init_data_sync_n_1),
        .TX_HEADER_1_reg_0(TX_HEADER_1_reg_0),
        .channel_up_tx_if(channel_up_tx_if),
        .gen_na_idles_i(gen_na_idles_i),
        .stg5_reg_0(stg5_reg),
        .stg5_reg_1(u_pma_init_data_sync_n_2),
        .stg5_reg_2(u_pma_init_data_sync_n_3),
        .stg5_reg_3(u_pma_init_data_sync_n_4),
        .stg5_reg_4(u_pma_init_data_sync_n_5),
        .stg5_reg_5(u_pma_init_data_sync_n_6),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .txdatavalid_symgen_i(txdatavalid_symgen_i),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_TX_STARTUP_FSM" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_TX_STARTUP_FSM
   (tx_fsm_resetdone_i,
    in0,
    gttxreset_t,
    mmcm_reset_i,
    gt_to_common_qpllreset_out,
    txuserrdy_t,
    out,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg,
    init_clk,
    sync_clk,
    rst_drp,
    mmcm_not_locked);
  output tx_fsm_resetdone_i;
  output in0;
  output gttxreset_t;
  output mmcm_reset_i;
  output gt_to_common_qpllreset_out;
  output txuserrdy_t;
  input out;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg;
  input init_clk;
  input sync_clk;
  input rst_drp;
  input mmcm_not_locked;

  wire GTTXRESET_i_1_n_0;
  wire GTTXRESET_i_3_n_0;
  wire MMCM_RESET;
  wire MMCM_RESET_i_1_n_0;
  wire QPLL_RESET;
  wire QPLL_RESET_i_1_n_0;
  wire QPLL_RESET_i_2_n_0;
  wire TXUSERRDY_i_1_n_0;
  wire clear;
  wire gt_to_common_qpllreset_out;
  wire gttxreset_t;
  wire in0;
  wire init_clk;
  wire init_wait_count;
  wire \init_wait_count[0]_i_1_n_0 ;
  wire \init_wait_count[7]_i_3_n_0 ;
  wire \init_wait_count[7]_i_4_n_0 ;
  wire \init_wait_count[7]_i_5_n_0 ;
  wire [7:0]init_wait_count_reg;
  wire init_wait_done;
  wire init_wait_done_1;
  wire init_wait_done_i_1_n_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire mmcm_lock_r2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire mmcm_lock_sync;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire mmcm_lock_sync1;
  wire mmcm_not_locked;
  wire mmcm_reset_i;
  wire out;
  wire [7:1]p_0_in;
  wire [6:0]p_0_in__0;
  wire pll_reset_asserted;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_i_2_n_0;
  wire reset_time_out;
  wire reset_time_out_i_3_n_0;
  wire reset_time_out_i_5_n_0;
  wire rst_drp;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire sel;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg;
  wire stg5;
  wire sync_clk;
  wire time_out_2ms;
  wire time_out_2ms_2;
  wire time_out_2ms_i_1__0_n_0;
  wire time_out_500us;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_i_3_n_0;
  wire time_out_500us_i_4_n_0;
  wire time_out_500us_i_5_n_0;
  wire time_out_500us_i_6_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire \time_out_counter[0]_i_5_n_0 ;
  wire \time_out_counter[0]_i_6_n_0 ;
  wire \time_out_counter[0]_i_7_n_0 ;
  wire \time_out_counter[0]_i_8__0_n_0 ;
  wire \time_out_counter[0]_i_9__0_n_0 ;
  wire [18:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_2 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_5 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_wait_bypass_reg_n_0;
  wire time_tlock_max_i_1__0_n_0;
  wire time_tlock_max_i_2__0_n_0;
  wire time_tlock_max_i_3__0_n_0;
  wire time_tlock_max_i_4__0_n_0;
  wire time_tlock_max_i_5__0_n_0;
  wire time_tlock_max_i_6_n_0;
  wire time_tlock_max_reg_n_0;
  (* RTL_KEEP = "true" *) wire tx_fsm_reset_done_int;
  wire tx_fsm_reset_done_int_i_1_n_0;
  (* RTL_KEEP = "true" *) wire tx_seq_scramb_reset_int;
  wire tx_seq_scramb_reset_int_i_1_n_0;
  wire tx_seq_scramb_reset_int_i_2_n_0;
  wire tx_seq_scramb_reset_int_i_3_n_0;
  (* RTL_KEEP = "true" *) wire [7:0]tx_state;
  wire \tx_state[0]_i_2_n_0 ;
  wire \tx_state[0]_i_5_n_0 ;
  wire \tx_state[1]_i_3_n_0 ;
  wire \tx_state[1]_i_4_n_0 ;
  wire \tx_state[2]_i_2_n_0 ;
  wire \tx_state[2]_i_4_n_0 ;
  wire \tx_state[2]_i_5_n_0 ;
  wire \tx_state[2]_i_7_n_0 ;
  wire \tx_state[5]_i_5_n_0 ;
  wire \tx_state[5]_i_6_n_0 ;
  wire \tx_state[7]_i_10_n_0 ;
  wire \tx_state[7]_i_11_n_0 ;
  wire \tx_state[7]_i_12_n_0 ;
  wire \tx_state[7]_i_13_n_0 ;
  wire \tx_state[7]_i_14_n_0 ;
  wire \tx_state[7]_i_1_n_0 ;
  wire \tx_state[7]_i_4_n_0 ;
  wire \tx_state[7]_i_5_n_0 ;
  wire \tx_state[7]_i_6_n_0 ;
  wire \tx_state[7]_i_7_n_0 ;
  wire \tx_state[7]_i_8_n_0 ;
  wire \tx_state[7]_i_9_n_0 ;
  wire txclk_locked_c;
  wire txuserrdy_t;
  wire u_rst_sync_plllock_n_1;
  wire u_rst_sync_plllock_n_5;
  wire u_rst_sync_plllock_n_6;
  wire u_rst_sync_run_phase_align_n_0;
  wire u_rst_sync_time_out_wait_bypass_n_0;
  wire u_rst_sync_time_out_wait_bypass_n_1;
  wire u_rst_sync_time_out_wait_bypass_n_4;
  wire u_rst_sync_time_out_wait_bypass_n_5;
  wire u_rst_sync_time_out_wait_bypass_n_6;
  wire u_rst_sync_tx_fsm_rst_done_n_0;
  wire u_rst_sync_tx_fsm_rst_done_n_1;
  wire u_rst_sync_txresetdone_n_0;
  wire u_rst_sync_txresetdone_n_1;
  wire u_rst_sync_txresetdone_n_4;
  wire u_rst_sync_txresetdone_n_5;
  wire u_rst_sync_txresetdone_n_6;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire \wait_bypass_count[0]_i_5_n_0 ;
  wire \wait_bypass_count[0]_i_6_n_0 ;
  wire \wait_bypass_count[0]_i_7_n_0 ;
  wire \wait_bypass_count[0]_i_8_n_0 ;
  wire \wait_bypass_count[0]_i_9_n_0 ;
  wire [16:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_0 ;
  wire \wait_bypass_count_reg[12]_i_1_n_1 ;
  wire \wait_bypass_count_reg[12]_i_1_n_2 ;
  wire \wait_bypass_count_reg[12]_i_1_n_3 ;
  wire \wait_bypass_count_reg[12]_i_1_n_4 ;
  wire \wait_bypass_count_reg[12]_i_1_n_5 ;
  wire \wait_bypass_count_reg[12]_i_1_n_6 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[16]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire \wait_time_cnt[0]_i_1_n_0 ;
  wire \wait_time_cnt[0]_i_4_n_0 ;
  wire \wait_time_cnt[0]_i_5_n_0 ;
  wire \wait_time_cnt[0]_i_6_n_0 ;
  wire \wait_time_cnt[0]_i_7_n_0 ;
  wire \wait_time_cnt[0]_i_8_n_0 ;
  wire \wait_time_cnt[12]_i_2_n_0 ;
  wire \wait_time_cnt[12]_i_3_n_0 ;
  wire \wait_time_cnt[12]_i_4_n_0 ;
  wire \wait_time_cnt[12]_i_5_n_0 ;
  wire \wait_time_cnt[4]_i_2_n_0 ;
  wire \wait_time_cnt[4]_i_3_n_0 ;
  wire \wait_time_cnt[4]_i_4_n_0 ;
  wire \wait_time_cnt[4]_i_5_n_0 ;
  wire \wait_time_cnt[8]_i_2_n_0 ;
  wire \wait_time_cnt[8]_i_3_n_0 ;
  wire \wait_time_cnt[8]_i_4_n_0 ;
  wire \wait_time_cnt[8]_i_5_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1_n_7 ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  assign tx_fsm_resetdone_i = tx_fsm_reset_done_int;
  LUT5 #(
    .INIT(32'h555F0008)) 
    GTTXRESET_i_1
       (.I0(MMCM_RESET),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[6]),
        .I4(gttxreset_t),
        .O(GTTXRESET_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100010101)) 
    GTTXRESET_i_2
       (.I0(GTTXRESET_i_3_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[2]),
        .I4(tx_state[6]),
        .I5(tx_state[0]),
        .O(MMCM_RESET));
  LUT3 #(
    .INIT(8'hFE)) 
    GTTXRESET_i_3
       (.I0(tx_state[7]),
        .I1(tx_state[4]),
        .I2(tx_state[5]),
        .O(GTTXRESET_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    GTTXRESET_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(rst_drp),
        .D(GTTXRESET_i_1_n_0),
        .Q(gttxreset_t));
  LUT1 #(
    .INIT(2'h1)) 
    MMCM_LOCK_inferred_i_1
       (.I0(mmcm_not_locked),
        .O(txclk_locked_c));
  LUT4 #(
    .INIT(16'hBFB0)) 
    MMCM_RESET_i_1
       (.I0(tx_state[6]),
        .I1(tx_state[2]),
        .I2(MMCM_RESET),
        .I3(mmcm_reset_i),
        .O(MMCM_RESET_i_1_n_0));
  FDCE #(
    .INIT(1'b1)) 
    MMCM_RESET_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(rst_drp),
        .D(MMCM_RESET_i_1_n_0),
        .Q(mmcm_reset_i));
  LUT6 #(
    .INIT(64'hFFFFFFF700000007)) 
    QPLL_RESET_i_1
       (.I0(tx_state[0]),
        .I1(pll_reset_asserted),
        .I2(tx_state[4]),
        .I3(tx_state[5]),
        .I4(QPLL_RESET_i_2_n_0),
        .I5(gt_to_common_qpllreset_out),
        .O(QPLL_RESET_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    QPLL_RESET_i_2
       (.I0(tx_state[6]),
        .I1(tx_state[7]),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(tx_state[1]),
        .O(QPLL_RESET_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    QPLL_RESET_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(rst_drp),
        .D(QPLL_RESET_i_1_n_0),
        .Q(gt_to_common_qpllreset_out));
  LUT6 #(
    .INIT(64'hFFFDFFFD00000200)) 
    TXUSERRDY_i_1
       (.I0(pll_reset_asserted_i_2_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(tx_state[0]),
        .I5(txuserrdy_t),
        .O(TXUSERRDY_i_1_n_0));
  FDPE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .PRE(rst_drp),
        .Q(txuserrdy_t));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg[0]),
        .O(\init_wait_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg[3]),
        .I1(init_wait_count_reg[0]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .I4(init_wait_count_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg[5]),
        .I1(init_wait_count_reg[2]),
        .I2(init_wait_count_reg[1]),
        .I3(init_wait_count_reg[0]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg[6]),
        .I1(init_wait_count_reg[4]),
        .I2(init_wait_count_reg[5]),
        .I3(\init_wait_count[7]_i_5_n_0 ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \init_wait_count[7]_i_1 
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(\init_wait_count[7]_i_4_n_0 ),
        .I2(init_wait_count_reg[7]),
        .I3(init_wait_count_reg[6]),
        .I4(init_wait_count_reg[3]),
        .I5(init_wait_count_reg[2]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg[7]),
        .I1(\init_wait_count[7]_i_5_n_0 ),
        .I2(init_wait_count_reg[5]),
        .I3(init_wait_count_reg[4]),
        .I4(init_wait_count_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg[1]),
        .I1(init_wait_count_reg[0]),
        .O(\init_wait_count[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg[4]),
        .I1(init_wait_count_reg[5]),
        .O(\init_wait_count[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \init_wait_count[7]_i_5 
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[1]),
        .I2(init_wait_count_reg[0]),
        .I3(init_wait_count_reg[3]),
        .O(\init_wait_count[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(rst_drp),
        .D(\init_wait_count[0]_i_1_n_0 ),
        .Q(init_wait_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(rst_drp),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(rst_drp),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(rst_drp),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(rst_drp),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(rst_drp),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(rst_drp),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(init_clk),
        .CE(init_wait_count),
        .CLR(rst_drp),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg[7]));
  LUT2 #(
    .INIT(4'hE)) 
    init_wait_done_i_1
       (.I0(init_wait_done_1),
        .I1(init_wait_done),
        .O(init_wait_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    init_wait_done_i_2
       (.I0(init_wait_count_reg[2]),
        .I1(init_wait_count_reg[3]),
        .I2(init_wait_count_reg[6]),
        .I3(init_wait_count_reg[7]),
        .I4(\init_wait_count[7]_i_4_n_0 ),
        .I5(\init_wait_count[7]_i_3_n_0 ),
        .O(init_wait_done_1));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(rst_drp),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE mmcm_lock_r2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(mmcm_lock_sync1),
        .Q(mmcm_lock_r2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE mmcm_lock_sync1_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(mmcm_lock_sync),
        .Q(mmcm_lock_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE mmcm_lock_sync_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(txclk_locked_c),
        .Q(mmcm_lock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01100000)) 
    pll_reset_asserted_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .I4(pll_reset_asserted_i_2_n_0),
        .I5(pll_reset_asserted),
        .O(pll_reset_asserted_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    pll_reset_asserted_i_2
       (.I0(tx_state[5]),
        .I1(tx_state[7]),
        .I2(tx_state[6]),
        .I3(tx_state[4]),
        .O(pll_reset_asserted_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(rst_drp),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted));
  LUT2 #(
    .INIT(4'hE)) 
    reset_time_out_i_3
       (.I0(tx_state[7]),
        .I1(tx_state[6]),
        .O(reset_time_out_i_3_n_0));
  LUT4 #(
    .INIT(16'hEFEE)) 
    reset_time_out_i_5
       (.I0(tx_state[0]),
        .I1(tx_state[4]),
        .I2(mmcm_lock_r2),
        .I3(tx_state[2]),
        .O(reset_time_out_i_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(rst_drp),
        .D(u_rst_sync_txresetdone_n_0),
        .Q(reset_time_out));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    run_phase_alignment_int_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[4]),
        .I2(tx_state[5]),
        .I3(QPLL_RESET_i_2_n_0),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(rst_drp),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int_reg_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    time_out_2ms_i_1__0
       (.I0(time_out_2ms),
        .I1(time_out_2ms_2),
        .I2(reset_time_out),
        .O(time_out_2ms_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(time_out_2ms_i_1__0_n_0),
        .Q(time_out_2ms),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAABAA)) 
    time_out_500us_i_1
       (.I0(time_out_500us),
        .I1(time_tlock_max_i_3__0_n_0),
        .I2(time_out_500us_i_2_n_0),
        .I3(time_out_500us_i_3_n_0),
        .I4(time_out_500us_i_4_n_0),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[8]),
        .O(time_out_500us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    time_out_500us_i_3
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[9]),
        .O(time_out_500us_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    time_out_500us_i_4
       (.I0(time_tlock_max_i_5__0_n_0),
        .I1(time_out_500us_i_5_n_0),
        .I2(time_out_500us_i_6_n_0),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[18]),
        .O(time_out_500us_i_4_n_0));
  LUT6 #(
    .INIT(64'hFBFBFBFBFBFFFFFF)) 
    time_out_500us_i_5
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[8]),
        .O(time_out_500us_i_5_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    time_out_500us_i_6
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[13]),
        .O(time_out_500us_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_2ms_2),
        .O(time_out_counter));
  LUT5 #(
    .INIT(32'h00000004)) 
    \time_out_counter[0]_i_3__0 
       (.I0(\time_out_counter[0]_i_5_n_0 ),
        .I1(\time_out_counter[0]_i_6_n_0 ),
        .I2(\time_out_counter[0]_i_7_n_0 ),
        .I3(\time_out_counter[0]_i_8__0_n_0 ),
        .I4(\time_out_counter[0]_i_9__0_n_0 ),
        .O(time_out_2ms_2));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[15]),
        .O(\time_out_counter[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[6]),
        .O(\time_out_counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[12]),
        .O(\time_out_counter[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \time_out_counter[0]_i_8__0 
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[18]),
        .O(\time_out_counter[0]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \time_out_counter[0]_i_9__0 
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_2 ,\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\time_out_counter_reg[16]_i_1_n_5 ,\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,time_out_counter_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[18] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_5 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(init_clk),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(u_rst_sync_tx_fsm_rst_done_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAABA)) 
    time_tlock_max_i_1__0
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2__0_n_0),
        .I2(time_tlock_max_i_3__0_n_0),
        .I3(time_tlock_max_i_4__0_n_0),
        .I4(time_tlock_max_i_5__0_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2F2F2)) 
    time_tlock_max_i_2__0
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[8]),
        .O(time_tlock_max_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h45)) 
    time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[15]),
        .O(time_tlock_max_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[1]),
        .I4(time_out_500us_i_2_n_0),
        .I5(time_tlock_max_i_6_n_0),
        .O(time_tlock_max_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    time_tlock_max_i_5__0
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[17]),
        .O(time_tlock_max_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF0D0D0D)) 
    time_tlock_max_i_6
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[14]),
        .O(time_tlock_max_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(time_tlock_max_i_1__0_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0004)) 
    tx_fsm_reset_done_int_i_1
       (.I0(QPLL_RESET_i_2_n_0),
        .I1(tx_state[5]),
        .I2(tx_state[0]),
        .I3(tx_state[4]),
        .I4(tx_fsm_reset_done_int),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(init_clk),
        .CE(1'b1),
        .CLR(rst_drp),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(tx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'hFFFF01FF00000100)) 
    tx_seq_scramb_reset_int_i_1
       (.I0(tx_state[4]),
        .I1(tx_state[5]),
        .I2(tx_state[3]),
        .I3(tx_seq_scramb_reset_int_i_2_n_0),
        .I4(tx_seq_scramb_reset_int_i_3_n_0),
        .I5(tx_seq_scramb_reset_int),
        .O(tx_seq_scramb_reset_int_i_1_n_0));
  LUT5 #(
    .INIT(32'h00010116)) 
    tx_seq_scramb_reset_int_i_2
       (.I0(tx_state[7]),
        .I1(tx_state[4]),
        .I2(tx_state[5]),
        .I3(tx_state[2]),
        .I4(tx_state[3]),
        .O(tx_seq_scramb_reset_int_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    tx_seq_scramb_reset_int_i_3
       (.I0(tx_state[6]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .O(tx_seq_scramb_reset_int_i_3_n_0));
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    tx_seq_scramb_reset_int_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(tx_seq_scramb_reset_int_i_1_n_0),
        .PRE(rst_drp),
        .Q(tx_seq_scramb_reset_int));
  LUT6 #(
    .INIT(64'hFFFFFEFEFFFFFEFF)) 
    \tx_state[0]_i_2 
       (.I0(tx_state[6]),
        .I1(tx_state[0]),
        .I2(tx_state[4]),
        .I3(tx_state[3]),
        .I4(tx_state[7]),
        .I5(tx_state[2]),
        .O(\tx_state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \tx_state[0]_i_5 
       (.I0(mmcm_lock_r2),
        .I1(tx_state[0]),
        .I2(time_tlock_max_reg_n_0),
        .O(\tx_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA2AA)) 
    \tx_state[1]_i_3 
       (.I0(\tx_state[7]_i_8_n_0 ),
        .I1(\tx_state[7]_i_5_n_0 ),
        .I2(\tx_state[7]_i_11_n_0 ),
        .I3(\tx_state[7]_i_12_n_0 ),
        .I4(\tx_state[7]_i_13_n_0 ),
        .I5(\tx_state[7]_i_14_n_0 ),
        .O(\tx_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFFFFFFFFFF)) 
    \tx_state[1]_i_4 
       (.I0(\tx_state[7]_i_14_n_0 ),
        .I1(\tx_state[7]_i_13_n_0 ),
        .I2(\tx_state[7]_i_12_n_0 ),
        .I3(\tx_state[7]_i_11_n_0 ),
        .I4(\tx_state[7]_i_5_n_0 ),
        .I5(tx_state[1]),
        .O(\tx_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFB0000FFFFFFFF)) 
    \tx_state[2]_i_2 
       (.I0(\tx_state[7]_i_11_n_0 ),
        .I1(\tx_state[7]_i_12_n_0 ),
        .I2(\tx_state[7]_i_13_n_0 ),
        .I3(\tx_state[7]_i_14_n_0 ),
        .I4(tx_state[2]),
        .I5(\tx_state[7]_i_8_n_0 ),
        .O(\tx_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFFFFFF)) 
    \tx_state[2]_i_4 
       (.I0(\tx_state[7]_i_14_n_0 ),
        .I1(\tx_state[7]_i_13_n_0 ),
        .I2(\tx_state[7]_i_12_n_0 ),
        .I3(\tx_state[7]_i_11_n_0 ),
        .I4(\tx_state[7]_i_5_n_0 ),
        .I5(\tx_state[7]_i_9_n_0 ),
        .O(\tx_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \tx_state[2]_i_5 
       (.I0(tx_state[2]),
        .I1(tx_state[7]),
        .I2(tx_state[3]),
        .I3(tx_state[4]),
        .I4(tx_state[1]),
        .I5(tx_state[6]),
        .O(\tx_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \tx_state[2]_i_7 
       (.I0(time_tlock_max_reg_n_0),
        .I1(mmcm_lock_r2),
        .I2(tx_state[6]),
        .I3(tx_state[1]),
        .I4(tx_state[4]),
        .I5(tx_state[3]),
        .O(\tx_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000100010001000F)) 
    \tx_state[5]_i_5 
       (.I0(tx_state[6]),
        .I1(tx_state[1]),
        .I2(tx_state[4]),
        .I3(tx_state[3]),
        .I4(tx_state[7]),
        .I5(tx_state[2]),
        .O(\tx_state[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \tx_state[5]_i_6 
       (.I0(\tx_state[7]_i_14_n_0 ),
        .I1(\tx_state[7]_i_13_n_0 ),
        .I2(\tx_state[7]_i_12_n_0 ),
        .I3(\tx_state[7]_i_11_n_0 ),
        .I4(\tx_state[7]_i_5_n_0 ),
        .O(\tx_state[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAEAEEE)) 
    \tx_state[7]_i_1 
       (.I0(QPLL_RESET),
        .I1(\tx_state[7]_i_4_n_0 ),
        .I2(tx_state[6]),
        .I3(tx_state[7]),
        .I4(tx_state[4]),
        .I5(\wait_time_cnt[0]_i_1_n_0 ),
        .O(\tx_state[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tx_state[7]_i_10 
       (.I0(tx_state[5]),
        .I1(tx_state[4]),
        .O(\tx_state[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_state[7]_i_11 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[11]),
        .I2(wait_time_cnt_reg[9]),
        .I3(wait_time_cnt_reg[10]),
        .O(\tx_state[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tx_state[7]_i_12 
       (.I0(wait_time_cnt_reg[15]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[12]),
        .O(\tx_state[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_state[7]_i_13 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[7]),
        .I3(wait_time_cnt_reg[4]),
        .O(\tx_state[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_state[7]_i_14 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[2]),
        .O(\tx_state[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \tx_state[7]_i_3 
       (.I0(\tx_state[7]_i_10_n_0 ),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[2]),
        .I4(tx_state[7]),
        .I5(tx_state[6]),
        .O(QPLL_RESET));
  LUT5 #(
    .INIT(32'h00000001)) 
    \tx_state[7]_i_4 
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[5]),
        .O(\tx_state[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_state[7]_i_5 
       (.I0(tx_state[0]),
        .I1(tx_state[6]),
        .I2(tx_state[4]),
        .I3(tx_state[7]),
        .O(\tx_state[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \tx_state[7]_i_6 
       (.I0(\tx_state[7]_i_11_n_0 ),
        .I1(\tx_state[7]_i_12_n_0 ),
        .I2(\tx_state[7]_i_13_n_0 ),
        .I3(\tx_state[7]_i_14_n_0 ),
        .O(\tx_state[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFF7)) 
    \tx_state[7]_i_7 
       (.I0(mmcm_lock_r2),
        .I1(\tx_state[7]_i_8_n_0 ),
        .I2(tx_state[0]),
        .I3(tx_state[6]),
        .I4(tx_state[4]),
        .I5(tx_state[7]),
        .O(\tx_state[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tx_state[7]_i_8 
       (.I0(tx_state[3]),
        .I1(tx_state[4]),
        .I2(tx_state[1]),
        .I3(tx_state[6]),
        .O(\tx_state[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tx_state[7]_i_9 
       (.I0(tx_state[2]),
        .I1(tx_state[7]),
        .I2(tx_state[3]),
        .I3(tx_state[4]),
        .O(\tx_state[7]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,DELAY4_RELEASE_MMCM_RESET:01000000,RELEASE_MMCM_RESET:00000100,DELAY4_WAIT_RESET_DONE:10000000,WAIT_RESET_DONE:00001000,DO_PHASE_ALIGNMENT:00010000,RESET_FSM_DONE:00100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \tx_state_reg[0] 
       (.C(init_clk),
        .CE(\tx_state[7]_i_1_n_0 ),
        .CLR(rst_drp),
        .D(p_0_in__0[0]),
        .Q(tx_state[0]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,DELAY4_RELEASE_MMCM_RESET:01000000,RELEASE_MMCM_RESET:00000100,DELAY4_WAIT_RESET_DONE:10000000,WAIT_RESET_DONE:00001000,DO_PHASE_ALIGNMENT:00010000,RESET_FSM_DONE:00100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \tx_state_reg[1] 
       (.C(init_clk),
        .CE(\tx_state[7]_i_1_n_0 ),
        .CLR(rst_drp),
        .D(p_0_in__0[1]),
        .Q(tx_state[1]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,DELAY4_RELEASE_MMCM_RESET:01000000,RELEASE_MMCM_RESET:00000100,DELAY4_WAIT_RESET_DONE:10000000,WAIT_RESET_DONE:00001000,DO_PHASE_ALIGNMENT:00010000,RESET_FSM_DONE:00100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \tx_state_reg[2] 
       (.C(init_clk),
        .CE(\tx_state[7]_i_1_n_0 ),
        .CLR(rst_drp),
        .D(p_0_in__0[2]),
        .Q(tx_state[2]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,DELAY4_RELEASE_MMCM_RESET:01000000,RELEASE_MMCM_RESET:00000100,DELAY4_WAIT_RESET_DONE:10000000,WAIT_RESET_DONE:00001000,DO_PHASE_ALIGNMENT:00010000,RESET_FSM_DONE:00100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \tx_state_reg[3] 
       (.C(init_clk),
        .CE(\tx_state[7]_i_1_n_0 ),
        .CLR(rst_drp),
        .D(p_0_in__0[3]),
        .Q(tx_state[3]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,DELAY4_RELEASE_MMCM_RESET:01000000,RELEASE_MMCM_RESET:00000100,DELAY4_WAIT_RESET_DONE:10000000,WAIT_RESET_DONE:00001000,DO_PHASE_ALIGNMENT:00010000,RESET_FSM_DONE:00100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \tx_state_reg[4] 
       (.C(init_clk),
        .CE(\tx_state[7]_i_1_n_0 ),
        .CLR(rst_drp),
        .D(p_0_in__0[4]),
        .Q(tx_state[4]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,DELAY4_RELEASE_MMCM_RESET:01000000,RELEASE_MMCM_RESET:00000100,DELAY4_WAIT_RESET_DONE:10000000,WAIT_RESET_DONE:00001000,DO_PHASE_ALIGNMENT:00010000,RESET_FSM_DONE:00100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \tx_state_reg[5] 
       (.C(init_clk),
        .CE(\tx_state[7]_i_1_n_0 ),
        .CLR(rst_drp),
        .D(p_0_in__0[5]),
        .Q(tx_state[5]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,DELAY4_RELEASE_MMCM_RESET:01000000,RELEASE_MMCM_RESET:00000100,DELAY4_WAIT_RESET_DONE:10000000,WAIT_RESET_DONE:00001000,DO_PHASE_ALIGNMENT:00010000,RESET_FSM_DONE:00100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \tx_state_reg[6] 
       (.C(init_clk),
        .CE(\tx_state[7]_i_1_n_0 ),
        .CLR(rst_drp),
        .D(p_0_in__0[6]),
        .Q(tx_state[6]));
  (* FSM_ENCODED_STATES = "INIT:00000000,ASSERT_ALL_RESETS:00000001,RELEASE_PLL_RESET:00000010,DELAY4_RELEASE_MMCM_RESET:01000000,RELEASE_MMCM_RESET:00000100,DELAY4_WAIT_RESET_DONE:10000000,WAIT_RESET_DONE:00001000,DO_PHASE_ALIGNMENT:00010000,RESET_FSM_DONE:00100000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \tx_state_reg[7] 
       (.C(init_clk),
        .CE(\tx_state[7]_i_1_n_0 ),
        .CLR(rst_drp),
        .D(u_rst_sync_time_out_wait_bypass_n_1),
        .Q(tx_state[7]));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1 u_rst_sync_plllock
       (.D({p_0_in__0[6],p_0_in__0[1:0]}),
        .Q({tx_state[7:6],tx_state[4],tx_state[1:0]}),
        .init_clk(init_clk),
        .init_wait_done(init_wait_done),
        .init_wait_done_reg(u_rst_sync_plllock_n_5),
        .out(out),
        .reset_time_out_reg(tx_state[5:1]),
        .stg5(stg5),
        .stg5_reg_0(u_rst_sync_plllock_n_6),
        .time_out_2ms(time_out_2ms),
        .\tx_state_reg[0] (\tx_state[7]_i_5_n_0 ),
        .\tx_state_reg[0]_0 (\tx_state[0]_i_2_n_0 ),
        .\tx_state_reg[0]_1 (u_rst_sync_txresetdone_n_4),
        .\tx_state_reg[0]_2 (\tx_state[7]_i_6_n_0 ),
        .\tx_state_reg[0]_3 (u_rst_sync_time_out_wait_bypass_n_5),
        .\tx_state_reg[1] (\tx_state[1]_i_3_n_0 ),
        .\tx_state_reg[1]_0 (\tx_state[7]_i_9_n_0 ),
        .\tx_state_reg[1]_1 (\tx_state[1]_i_4_n_0 ),
        .\tx_state_reg[1]_2 (u_rst_sync_time_out_wait_bypass_n_4),
        .\tx_state_reg[1]_3 (u_rst_sync_txresetdone_n_6),
        .\tx_state_reg[3] (u_rst_sync_plllock_n_1),
        .\tx_state_reg[6] (\tx_state[7]_i_8_n_0 ),
        .\tx_state_reg[6]_0 (u_rst_sync_time_out_wait_bypass_n_0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_13 u_rst_sync_run_phase_align
       (.clear(clear),
        .in0(run_phase_alignment_int_reg_n_0),
        .stg5_reg_0(u_rst_sync_run_phase_align_n_0),
        .sync_clk(sync_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_14 u_rst_sync_time_out_wait_bypass
       (.D({u_rst_sync_time_out_wait_bypass_n_1,p_0_in__0[5],p_0_in__0[2]}),
        .Q({tx_state[7:3],tx_state[1:0]}),
        .in0(time_out_wait_bypass_reg_n_0),
        .init_clk(init_clk),
        .stg5_reg_0(u_rst_sync_time_out_wait_bypass_n_0),
        .stg5_reg_1(u_rst_sync_time_out_wait_bypass_n_5),
        .\tx_state_reg[2] (\tx_state[7]_i_5_n_0 ),
        .\tx_state_reg[2]_0 (\tx_state[7]_i_11_n_0 ),
        .\tx_state_reg[2]_1 (\tx_state[7]_i_12_n_0 ),
        .\tx_state_reg[2]_2 (\tx_state[7]_i_13_n_0 ),
        .\tx_state_reg[2]_3 (\tx_state[7]_i_14_n_0 ),
        .\tx_state_reg[2]_4 (\tx_state[2]_i_2_n_0 ),
        .\tx_state_reg[2]_5 (\tx_state[2]_i_4_n_0 ),
        .\tx_state_reg[2]_6 (\tx_state[2]_i_5_n_0 ),
        .\tx_state_reg[2]_7 (u_rst_sync_txresetdone_n_5),
        .\tx_state_reg[5] (u_rst_sync_plllock_n_5),
        .\tx_state_reg[5]_0 (u_rst_sync_txresetdone_n_1),
        .\tx_state_reg[5]_1 (\tx_state[5]_i_5_n_0 ),
        .\tx_state_reg[5]_2 (\tx_state[5]_i_6_n_0 ),
        .\tx_state_reg[6] (u_rst_sync_time_out_wait_bypass_n_4),
        .\tx_state_reg[7] (u_rst_sync_time_out_wait_bypass_n_6),
        .\tx_state_reg[7]_0 (\tx_state[7]_i_6_n_0 ),
        .\tx_state_reg[7]_1 (\tx_state[7]_i_7_n_0 ),
        .\tx_state_reg[7]_2 (\tx_state[7]_i_8_n_0 ),
        .\tx_state_reg[7]_3 (\tx_state[7]_i_9_n_0 ));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_15 u_rst_sync_tx_fsm_rst_done
       (.in0(time_out_wait_bypass_reg_n_0),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(tx_fsm_reset_done_int),
        .stg5_reg_0(u_rst_sync_tx_fsm_rst_done_n_1),
        .sync_clk(sync_clk),
        .time_out_wait_bypass_reg(u_rst_sync_tx_fsm_rst_done_n_0),
        .time_out_wait_bypass_reg_0(\wait_bypass_count[0]_i_4_n_0 ),
        .time_out_wait_bypass_reg_1(u_rst_sync_run_phase_align_n_0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_16 u_rst_sync_tx_seq_scram_rst
       (.in0(in0),
        .out(tx_seq_scramb_reset_int),
        .sync_clk(sync_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_17 u_rst_sync_txresetdone
       (.D(p_0_in__0[4:3]),
        .Q({tx_state[4:3],tx_state[1:0]}),
        .QPLL_RESET(QPLL_RESET),
        .init_clk(init_clk),
        .mmcm_lock_r2_reg(u_rst_sync_txresetdone_n_1),
        .out({tx_state[3],tx_state[1:0]}),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(reset_time_out_i_3_n_0),
        .reset_time_out_reg_0(u_rst_sync_plllock_n_1),
        .reset_time_out_reg_1(reset_time_out_i_5_n_0),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(stg1_aurora_64b66b_pcs_pma_cdc_to_reg),
        .stg5(stg5),
        .stg5_reg_0(u_rst_sync_txresetdone_n_5),
        .stg5_reg_1(u_rst_sync_txresetdone_n_6),
        .time_out_500us(time_out_500us),
        .time_out_500us_reg(u_rst_sync_txresetdone_n_4),
        .\tx_state_reg[0] (u_rst_sync_txresetdone_n_0),
        .\tx_state_reg[0]_0 (\tx_state[7]_i_8_n_0 ),
        .\tx_state_reg[0]_1 (\tx_state[0]_i_5_n_0 ),
        .\tx_state_reg[2] (\tx_state[2]_i_7_n_0 ),
        .\tx_state_reg[2]_0 (u_rst_sync_plllock_n_6),
        .\tx_state_reg[3] (\tx_state[7]_i_9_n_0 ),
        .\tx_state_reg[3]_0 (u_rst_sync_time_out_wait_bypass_n_6),
        .\tx_state_reg[3]_1 (u_rst_sync_plllock_n_5),
        .\tx_state_reg[3]_2 (\tx_state[5]_i_6_n_0 ),
        .\tx_state_reg[4] (\tx_state[7]_i_5_n_0 ),
        .\tx_state_reg[4]_0 (\tx_state[7]_i_6_n_0 ),
        .\tx_state_reg[4]_1 (u_rst_sync_time_out_wait_bypass_n_5),
        .\tx_state_reg[5] (mmcm_lock_r2),
        .\tx_state_reg[5]_0 (time_tlock_max_reg_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_bypass_count[0]_i_4 
       (.I0(\wait_bypass_count[0]_i_6_n_0 ),
        .I1(\wait_bypass_count[0]_i_7_n_0 ),
        .I2(\wait_bypass_count[0]_i_8_n_0 ),
        .I3(\wait_bypass_count[0]_i_9_n_0 ),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[3]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[5]),
        .I3(wait_bypass_count_reg[6]),
        .O(\wait_bypass_count[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[15]),
        .I2(wait_bypass_count_reg[16]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[1]),
        .O(\wait_bypass_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[11]),
        .I1(wait_bypass_count_reg[12]),
        .I2(wait_bypass_count_reg[13]),
        .I3(wait_bypass_count_reg[14]),
        .O(\wait_bypass_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \wait_bypass_count[0]_i_9 
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[10]),
        .I3(wait_bypass_count_reg[9]),
        .O(\wait_bypass_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[12]_i_1_n_0 ,\wait_bypass_count_reg[12]_i_1_n_1 ,\wait_bypass_count_reg[12]_i_1_n_2 ,\wait_bypass_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[12]_i_1_n_4 ,\wait_bypass_count_reg[12]_i_1_n_5 ,\wait_bypass_count_reg[12]_i_1_n_6 ,\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S(wait_bypass_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[13] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[12]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[14] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[12]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[15] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[12]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[16] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[16]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\wait_bypass_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(sync_clk),
        .CE(u_rst_sync_tx_fsm_rst_done_n_1),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000000000000017)) 
    \wait_time_cnt[0]_i_1 
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[1]),
        .I3(tx_state[5]),
        .I4(tx_state[0]),
        .I5(\wait_time_cnt[0]_i_4_n_0 ),
        .O(\wait_time_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_2 
       (.I0(\tx_state[7]_i_6_n_0 ),
        .O(sel));
  LUT3 #(
    .INIT(8'hFE)) 
    \wait_time_cnt[0]_i_4 
       (.I0(tx_state[4]),
        .I1(tx_state[6]),
        .I2(tx_state[7]),
        .O(\wait_time_cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5_n_0 ));
  FDSE \wait_time_cnt_reg[0] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3_n_0 ,\wait_time_cnt_reg[0]_i_3_n_1 ,\wait_time_cnt_reg[0]_i_3_n_2 ,\wait_time_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3_n_4 ,\wait_time_cnt_reg[0]_i_3_n_5 ,\wait_time_cnt_reg[0]_i_3_n_6 ,\wait_time_cnt_reg[0]_i_3_n_7 }),
        .S({\wait_time_cnt[0]_i_5_n_0 ,\wait_time_cnt[0]_i_6_n_0 ,\wait_time_cnt[0]_i_7_n_0 ,\wait_time_cnt[0]_i_8_n_0 }));
  FDRE \wait_time_cnt_reg[10] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\wait_time_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1_n_1 ,\wait_time_cnt_reg[12]_i_1_n_2 ,\wait_time_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1_n_4 ,\wait_time_cnt_reg[12]_i_1_n_5 ,\wait_time_cnt_reg[12]_i_1_n_6 ,\wait_time_cnt_reg[12]_i_1_n_7 }),
        .S({\wait_time_cnt[12]_i_2_n_0 ,\wait_time_cnt[12]_i_3_n_0 ,\wait_time_cnt[12]_i_4_n_0 ,\wait_time_cnt[12]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[1] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\wait_time_cnt_reg[0]_i_3_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1_n_0 ,\wait_time_cnt_reg[4]_i_1_n_1 ,\wait_time_cnt_reg[4]_i_1_n_2 ,\wait_time_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1_n_4 ,\wait_time_cnt_reg[4]_i_1_n_5 ,\wait_time_cnt_reg[4]_i_1_n_6 ,\wait_time_cnt_reg[4]_i_1_n_7 }),
        .S({\wait_time_cnt[4]_i_2_n_0 ,\wait_time_cnt[4]_i_3_n_0 ,\wait_time_cnt[4]_i_4_n_0 ,\wait_time_cnt[4]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[5] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[7] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[8] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\wait_time_cnt_reg[4]_i_1_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1_n_0 ,\wait_time_cnt_reg[8]_i_1_n_1 ,\wait_time_cnt_reg[8]_i_1_n_2 ,\wait_time_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1_n_4 ,\wait_time_cnt_reg[8]_i_1_n_5 ,\wait_time_cnt_reg[8]_i_1_n_6 ,\wait_time_cnt_reg[8]_i_1_n_7 }),
        .S({\wait_time_cnt[8]_i_2_n_0 ,\wait_time_cnt[8]_i_3_n_0 ,\wait_time_cnt[8]_i_4_n_0 ,\wait_time_cnt[8]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[9] 
       (.C(init_clk),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_TX_STREAM" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_TX_STREAM
   (gen_cc_i,
    do_cc_r,
    tx_pe_data_v_i,
    extend_cc_r,
    s_axi_tx_tready,
    stg5_reg,
    Q,
    R0,
    user_clk,
    do_cc_r_reg0,
    extend_cc_r_reg,
    tx_dst_rdy_n_r_reg,
    s_axi_tx_tvalid,
    rst_pma_init_usrclk,
    gen_ch_bond_i,
    gen_na_idles_i,
    \TX_DATA_reg[59] ,
    s_axi_tx_tdata);
  output gen_cc_i;
  output do_cc_r;
  output tx_pe_data_v_i;
  output extend_cc_r;
  output s_axi_tx_tready;
  output stg5_reg;
  output [63:0]Q;
  input R0;
  input user_clk;
  input do_cc_r_reg0;
  input extend_cc_r_reg;
  input tx_dst_rdy_n_r_reg;
  input s_axi_tx_tvalid;
  input rst_pma_init_usrclk;
  input gen_ch_bond_i;
  input gen_na_idles_i;
  input \TX_DATA_reg[59] ;
  input [63:0]s_axi_tx_tdata;

  wire [63:0]Q;
  wire R0;
  wire \TX_DATA_reg[59] ;
  wire do_cc_r;
  wire do_cc_r_reg0;
  wire extend_cc_r;
  wire extend_cc_r_reg;
  wire gen_cc_i;
  wire gen_ch_bond_i;
  wire gen_na_idles_i;
  wire rst_pma_init_usrclk;
  wire [63:0]s_axi_tx_tdata;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire stg5_reg;
  wire tx_dst_rdy_n_r_reg;
  wire tx_pe_data_v_i;
  wire tx_stream_control_sm_i_n_4;
  wire user_clk;

  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_TX_STREAM_CONTROL_SM tx_stream_control_sm_i
       (.R0(R0),
        .\TX_DATA_reg[59] (\TX_DATA_reg[59] ),
        .do_cc_r(do_cc_r),
        .do_cc_r_reg0(do_cc_r_reg0),
        .extend_cc_r(extend_cc_r),
        .extend_cc_r_reg_0(extend_cc_r_reg),
        .gen_cc_i(gen_cc_i),
        .gen_ch_bond_i(gen_ch_bond_i),
        .gen_na_idles_i(gen_na_idles_i),
        .rst_pma_init_usrclk(rst_pma_init_usrclk),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .s_axi_tx_tvalid_0(tx_stream_control_sm_i_n_4),
        .stg5_reg(stg5_reg),
        .tx_dst_rdy_n_r_reg_0(tx_dst_rdy_n_r_reg),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_TX_STREAM_DATAPATH tx_stream_datapath_i
       (.Q(Q),
        .TX_PE_DATA_V_reg_0(tx_stream_control_sm_i_n_4),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_TX_STREAM_CONTROL_SM" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_TX_STREAM_CONTROL_SM
   (gen_cc_i,
    do_cc_r,
    extend_cc_r,
    s_axi_tx_tready,
    s_axi_tx_tvalid_0,
    stg5_reg,
    R0,
    user_clk,
    do_cc_r_reg0,
    extend_cc_r_reg_0,
    tx_dst_rdy_n_r_reg_0,
    s_axi_tx_tvalid,
    rst_pma_init_usrclk,
    gen_ch_bond_i,
    tx_pe_data_v_i,
    gen_na_idles_i,
    \TX_DATA_reg[59] );
  output gen_cc_i;
  output do_cc_r;
  output extend_cc_r;
  output s_axi_tx_tready;
  output s_axi_tx_tvalid_0;
  output stg5_reg;
  input R0;
  input user_clk;
  input do_cc_r_reg0;
  input extend_cc_r_reg_0;
  input tx_dst_rdy_n_r_reg_0;
  input s_axi_tx_tvalid;
  input rst_pma_init_usrclk;
  input gen_ch_bond_i;
  input tx_pe_data_v_i;
  input gen_na_idles_i;
  input \TX_DATA_reg[59] ;

  wire R0;
  wire \TX_DATA_reg[59] ;
  wire do_cc_r;
  wire do_cc_r_reg0;
  wire extend_cc_r;
  wire extend_cc_r_reg_0;
  wire gen_cc_i;
  wire gen_ch_bond_i;
  wire gen_na_idles_i;
  wire rst_pma_init_usrclk;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire s_axi_tx_tvalid_0;
  wire stg5_reg;
  wire tx_dst_rdy_n_i;
  wire tx_dst_rdy_n_r_reg_0;
  wire tx_pe_data_v_i;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    TX_PE_DATA_V_i_1
       (.I0(s_axi_tx_tvalid),
        .I1(tx_dst_rdy_n_i),
        .O(s_axi_tx_tvalid_0));
  FDRE #(
    .INIT(1'b0)) 
    do_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_cc_r_reg0),
        .Q(do_cc_r),
        .R(1'b0));
  FDRE extend_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(extend_cc_r_reg_0),
        .Q(extend_cc_r),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    gen_cc_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(do_cc_r),
        .Q(gen_cc_i),
        .R(R0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_tx_tready_INST_0
       (.I0(tx_dst_rdy_n_i),
        .O(s_axi_tx_tready));
  LUT6 #(
    .INIT(64'h5555545500000000)) 
    \sym_gen_i/TX_DATA[62]_i_1 
       (.I0(rst_pma_init_usrclk),
        .I1(gen_cc_i),
        .I2(gen_ch_bond_i),
        .I3(tx_pe_data_v_i),
        .I4(gen_na_idles_i),
        .I5(\TX_DATA_reg[59] ),
        .O(stg5_reg));
  FDRE tx_dst_rdy_n_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_dst_rdy_n_r_reg_0),
        .Q(tx_dst_rdy_n_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_TX_STREAM_DATAPATH" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_TX_STREAM_DATAPATH
   (tx_pe_data_v_i,
    Q,
    TX_PE_DATA_V_reg_0,
    user_clk,
    s_axi_tx_tdata);
  output tx_pe_data_v_i;
  output [63:0]Q;
  input TX_PE_DATA_V_reg_0;
  input user_clk;
  input [63:0]s_axi_tx_tdata;

  wire [63:0]Q;
  wire TX_PE_DATA_V_reg_0;
  wire [63:0]s_axi_tx_tdata;
  wire tx_pe_data_v_i;
  wire user_clk;

  FDRE TX_PE_DATA_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(TX_PE_DATA_V_reg_0),
        .Q(tx_pe_data_v_i),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[7]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[13]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[12]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[11]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[10]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[9]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[8]),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[23]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[22]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[21]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[20]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[6]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[19]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[18]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[17]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[16]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[31]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[30]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[29]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[28]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[27]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[26]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[5]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[25]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[24]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[32] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[39]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[33] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[38]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[34] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[37]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[35] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[36]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[36] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[35]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[37] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[34]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[38] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[33]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[39] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[32]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[4]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[40] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[47]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[41] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[46]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[42] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[45]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[43] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[44]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[44] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[43]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[45] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[42]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[46] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[41]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[47] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[40]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[48] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[55]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[49] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[54]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[3]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[50] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[53]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[51] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[52]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[52] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[51]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[53] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[50]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[54] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[49]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[55] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[48]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[56] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[63]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[57] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[62]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[58] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[61]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[59] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[60]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[2]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[60] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[59]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[61] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[58]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[62] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[57]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[63] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[56]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[1]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[0]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[15]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \TX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(s_axi_tx_tdata[14]),
        .Q(Q[54]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_WRAPPER" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_WRAPPER
   (in0,
    DRPRDY_OUT,
    txn,
    txp,
    tx_out_clk,
    DRPDO_OUT,
    user_clk_0,
    link_reset_out,
    gt_to_common_qpllreset_out,
    rx_lossofsync_i,
    RX_NEG_OUT_reg_0,
    Q,
    \txseq_counter_i_reg[0]_0 ,
    txdatavalid_i,
    \txseq_counter_i_reg[1]_0 ,
    txdatavalid_symgen_i,
    wr_err_rd_clk_sync_reg,
    ILLEGAL_BTF_reg,
    rxdatavalid_i,
    gt_pll_lock,
    hold_reg_reg,
    gt_qplllock_in,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg,
    drp_clk_in,
    drpen_in_i,
    drpwe_in_i,
    rxn,
    rxp,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    gt_rxcdrovrden_in,
    sync_clk,
    user_clk,
    DRPDI_IN,
    loopback,
    DRPADDR_IN,
    s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg,
    s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    init_clk,
    tx_reset_i,
    rst_drp,
    tx_data_i,
    extend_cc_r,
    extend_cc_r_reg,
    rst_pma_init_usrclk,
    enable_err_detect_i,
    hard_err_usr_reg_0,
    channel_up_tx_if,
    illegal_btf_i,
    mmcm_not_locked,
    D,
    \SCRAMBLED_DATA_OUT_reg[5] );
  output in0;
  output DRPRDY_OUT;
  output txn;
  output txp;
  output tx_out_clk;
  output [15:0]DRPDO_OUT;
  output [65:0]user_clk_0;
  output link_reset_out;
  output gt_to_common_qpllreset_out;
  output rx_lossofsync_i;
  output RX_NEG_OUT_reg_0;
  output [11:0]Q;
  output \txseq_counter_i_reg[0]_0 ;
  output txdatavalid_i;
  output \txseq_counter_i_reg[1]_0 ;
  output txdatavalid_symgen_i;
  output wr_err_rd_clk_sync_reg;
  output ILLEGAL_BTF_reg;
  output rxdatavalid_i;
  output gt_pll_lock;
  output hold_reg_reg;
  input gt_qplllock_in;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg;
  input drp_clk_in;
  input drpen_in_i;
  input drpwe_in_i;
  input rxn;
  input rxp;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  input gt_rxcdrovrden_in;
  input sync_clk;
  input user_clk;
  input [15:0]DRPDI_IN;
  input [2:0]loopback;
  input [8:0]DRPADDR_IN;
  input s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg;
  input s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input init_clk;
  input tx_reset_i;
  input rst_drp;
  input [57:0]tx_data_i;
  input extend_cc_r;
  input extend_cc_r_reg;
  input rst_pma_init_usrclk;
  input enable_err_detect_i;
  input hard_err_usr_reg_0;
  input channel_up_tx_if;
  input illegal_btf_i;
  input mmcm_not_locked;
  input [1:0]D;
  input [5:0]\SCRAMBLED_DATA_OUT_reg[5] ;

  wire ANY_VLD_BTF_FLAG;
  wire CB_detect;
  wire CB_detect0;
  wire CB_detect_dlyd0p5;
  wire CC_detect;
  wire CC_detect_dlyd1;
  wire CC_detect_pulse_i;
  wire [1:0]D;
  wire [8:0]DRPADDR_IN;
  wire [15:0]DRPDI_IN;
  wire [15:0]DRPDO_OUT;
  wire DRPRDY_OUT;
  wire FSM_RESETDONE0;
  wire \FSM_onehot_cdr_reset_fsm_r[2]_i_2_n_0 ;
  wire \FSM_onehot_cdr_reset_fsm_r_reg_n_0_[0] ;
  wire HPCNT_RESET_IN;
  wire ILLEGAL_BTF_reg;
  wire LINK_RESET_OUT0;
  wire [11:0]Q;
  wire RX_NEG_OUT_reg_0;
  wire [5:0]\SCRAMBLED_DATA_OUT_reg[5] ;
  wire START_CB_WRITES_OUT;
  wire \TX_DATA[55]_i_3_n_0 ;
  (* RTL_KEEP = "true" *) wire all_start_cb_writes_i;
  (* RTL_KEEP = "true" *) wire all_vld_btf_flag_i;
  wire allow_block_sync_propagation;
  wire allow_block_sync_propagation_reg_n_0;
  (* RTL_KEEP = "true" *) wire bit_err_chan_bond_i;
  wire blocksync_all_lanes_inrxclk_q;
  wire blocksync_out_i;
  wire cb_bit_err_out;
  wire cbcc_fifo_reset_rd_clk;
  wire cbcc_fifo_reset_to_fifo_rd_clk;
  wire cbcc_fifo_reset_to_fifo_wr_clk;
  wire cbcc_fifo_reset_wr_clk;
  wire cbcc_gtx0_i_n_78;
  wire cbcc_gtx0_i_n_80;
  wire cbcc_reset_cbstg2_rd_clk;
  wire [7:0]cdr_reset_fsm_cntr_r;
  wire \cdr_reset_fsm_cntr_r[0]_i_1_n_0 ;
  wire \cdr_reset_fsm_cntr_r[1]_i_1_n_0 ;
  wire \cdr_reset_fsm_cntr_r[2]_i_1_n_0 ;
  wire \cdr_reset_fsm_cntr_r[3]_i_1_n_0 ;
  wire \cdr_reset_fsm_cntr_r[4]_i_1_n_0 ;
  wire \cdr_reset_fsm_cntr_r[5]_i_1_n_0 ;
  wire \cdr_reset_fsm_cntr_r[6]_i_1_n_0 ;
  wire \cdr_reset_fsm_cntr_r[7]_i_2_n_0 ;
  wire \cdr_reset_fsm_cntr_r[7]_i_3_n_0 ;
  wire \cdr_reset_fsm_cntr_r[7]_i_4_n_0 ;
  wire \cdr_reset_fsm_cntr_r[7]_i_5_n_0 ;
  wire cdr_reset_fsm_lnkreset;
  wire cdr_reset_fsm_lnkreset_reg_n_0;
  wire channel_up_tx_if;
  wire common_reset_cbcc_i_n_2;
  wire descrambler_64b66b_gtx0_i_n_36;
  (* RTL_KEEP = "true" *) wire do_rd_en_i;
  wire drp_clk_in;
  wire drpen_in_i;
  wire drpwe_in_i;
  wire enable_err_detect_i;
  wire extend_cc_r;
  wire extend_cc_r_reg;
  (* RTL_KEEP = "true" *) wire final_gater_for_fifo_din_i;
  wire fsm_resetdone_to_new_gtx_rx_comb;
  wire gt_pll_lock;
  wire gt_qpllclk_quad1_in;
  wire gt_qplllock_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_rxcdrovrden_in;
  wire gt_to_common_qpllreset_out;
  wire gtpll_locked_out_i;
  wire gtrxreset_t;
  wire gttxreset_t;
  wire gtx_reset_comb;
  wire hard_err_cntr_r;
  wire \hard_err_cntr_r[7]_i_5_n_0 ;
  wire \hard_err_cntr_r[7]_i_6_n_0 ;
  wire [7:0]hard_err_cntr_r_reg;
  wire hard_err_rst_int;
  wire hard_err_rst_int_i_2_n_0;
  wire hard_err_rst_int_i_3_n_0;
  wire hard_err_rst_int_i_4_n_0;
  wire hard_err_usr;
  wire hard_err_usr0;
  wire hard_err_usr_reg_0;
  wire hold_reg_reg;
  wire illegal_btf_i;
  wire in0;
  wire init_clk;
  wire [2:2]int_rxbufstatus_i;
  wire link_reset_out;
  wire [2:0]loopback;
  (* RTL_KEEP = "true" *) wire master_do_rd_en_i;
  wire mmcm_not_locked;
  wire mmcm_reset_i;
  wire new_gtx_rx_pcsreset_comb;
  wire new_gtx_rx_pcsreset_comb0;
  wire [7:0]p_0_in__1;
  wire p_2_in;
  wire [52:52]poly;
  wire [31:0]pos_rxdata_from_gtx_i;
  wire pos_rxdatavalid_i;
  wire [1:0]pos_rxheader_from_gtx_i;
  wire \pos_rxheader_from_gtx_i[0]_i_1_n_0 ;
  wire \pos_rxheader_from_gtx_i[1]_i_1_n_0 ;
  wire pos_rxheadervalid_i;
  wire pre_r3_rxdatavalid_i_reg_srl3_n_0;
  wire \pre_r3_rxheader_from_gtx_i_reg[0]_srl3_n_0 ;
  wire \pre_r3_rxheader_from_gtx_i_reg[1]_srl3_n_0 ;
  wire pre_r3_rxheadervalid_i_reg_srl3_n_0;
  wire [31:0]pre_r4_rxdata_from_gtx_i;
  wire pre_r4_rxdatavalid_i;
  wire [1:0]pre_r4_rxheader_from_gtx_i;
  wire pre_r4_rxheadervalid_i;
  wire [31:0]pre_rxdata_from_gtx_i;
  wire pre_rxdatavalid_i;
  wire [1:0]pre_rxheader_from_gtx_i;
  wire pre_rxheadervalid_i;
  wire reset_initclk;
  wire rst_drp;
  wire rst_pma_init_usrclk;
  (* RTL_KEEP = "true" *) wire rx_clk_locked_i;
  wire rx_elastic_buf_err;
  (* RTL_KEEP = "true" *) wire rx_fsm_resetdone_i;
  wire rx_lossofsync_i;
  wire rx_resetdone_i;
  wire [31:0]rxdata_from_gtx_i;
  wire [31:0]rxdata_to_fifo_i;
  wire rxdatavalid_i;
  wire rxdatavalid_i_1;
  wire rxdatavalid_to_fifo_i;
  (* RTL_KEEP = "true" *) wire rxfsm_reset_i;
  wire rxgearboxslip_i;
  wire [1:0]rxheader_from_gtx_i;
  wire [1:0]rxheader_to_fifo_i;
  wire rxheadervalid_i;
  wire rxlossofsync_out_i;
  wire rxlossofsync_out_q;
  wire rxn;
  wire rxp;
  wire rxrecclk_from_gtx_i;
  (* RTL_KEEP = "true" *) wire rxrecclk_to_fabric_i;
  wire rxreset_for_lanes_q;
  wire rxuserrdy_t;
  wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg;
  wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  wire [63:0]scrambled_data_i;
  wire scrambler_64b66b_gtx0_i_n_12;
  wire stableclk_gtx_reset_comb;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg;
  wire sync_clk;
  wire sync_rx_polarity_r;
  wire tx_buf_err_i;
  wire [57:0]tx_data_i;
  (* RTL_KEEP = "true" *) wire tx_fsm_resetdone_i;
  wire [1:0]tx_hdr_r;
  wire tx_out_clk;
  wire tx_reset_i;
  wire tx_resetdone_i;
  wire txdatavalid_i;
  wire txdatavalid_symgen_i;
  wire txn;
  wire txp;
  wire [6:0]txseq_counter_i;
  wire \txseq_counter_i[0]_i_2_n_0 ;
  wire \txseq_counter_i[5]_i_2_n_0 ;
  wire \txseq_counter_i[5]_i_3_n_0 ;
  wire \txseq_counter_i_reg[0]_0 ;
  wire \txseq_counter_i_reg[1]_0 ;
  wire \txseq_counter_i_reg_n_0_[0] ;
  wire \txseq_counter_i_reg_n_0_[1] ;
  wire \txseq_counter_i_reg_n_0_[2] ;
  wire \txseq_counter_i_reg_n_0_[3] ;
  wire \txseq_counter_i_reg_n_0_[4] ;
  wire \txseq_counter_i_reg_n_0_[5] ;
  wire \txseq_counter_i_reg_n_0_[6] ;
  wire txuserrdy_t;
  wire txusrclk_gtx_reset_comb;
  wire u_cdc__check_polarity_n_0;
  wire u_cdc_hard_err_init_n_0;
  wire u_rst_sync_blocksyncall_initclk_sync_n_0;
  wire u_rst_sync_blocksyncall_initclk_sync_n_1;
  wire u_rst_sync_blocksyncall_initclk_sync_n_2;
  wire unscrambled_data_i052_out;
  wire user_clk;
  wire [65:0]user_clk_0;
  wire wr_err_rd_clk_sync_reg;

  LUT2 #(
    .INIT(4'h8)) 
    FSM_RESETDONE_i_1
       (.I0(tx_fsm_resetdone_i),
        .I1(rx_fsm_resetdone_i),
        .O(FSM_RESETDONE0));
  FDRE FSM_RESETDONE_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(FSM_RESETDONE0),
        .Q(in0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_cdr_reset_fsm_r[2]_i_2 
       (.I0(\cdr_reset_fsm_cntr_r[7]_i_5_n_0 ),
        .I1(cdr_reset_fsm_cntr_r[7]),
        .I2(cdr_reset_fsm_cntr_r[6]),
        .I3(cdr_reset_fsm_cntr_r[4]),
        .I4(cdr_reset_fsm_cntr_r[5]),
        .O(\FSM_onehot_cdr_reset_fsm_r[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,ASSERT_RXRESET:010,DONE:100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_cdr_reset_fsm_r_reg[0] 
       (.C(init_clk),
        .CE(1'b1),
        .D(u_rst_sync_blocksyncall_initclk_sync_n_2),
        .Q(\FSM_onehot_cdr_reset_fsm_r_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,ASSERT_RXRESET:010,DONE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cdr_reset_fsm_r_reg[1] 
       (.C(init_clk),
        .CE(1'b1),
        .D(u_rst_sync_blocksyncall_initclk_sync_n_1),
        .Q(cdr_reset_fsm_lnkreset),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,ASSERT_RXRESET:010,DONE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cdr_reset_fsm_r_reg[2] 
       (.C(init_clk),
        .CE(1'b1),
        .D(u_rst_sync_blocksyncall_initclk_sync_n_0),
        .Q(allow_block_sync_propagation),
        .R(1'b0));
  FDRE LINK_RESET_OUT_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(LINK_RESET_OUT0),
        .Q(link_reset_out),
        .R(1'b0));
  FDRE RX_NEG_OUT_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(u_cdc__check_polarity_n_0),
        .Q(RX_NEG_OUT_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \TX_DATA[55]_i_1 
       (.I0(\txseq_counter_i_reg_n_0_[1] ),
        .I1(\TX_DATA[55]_i_3_n_0 ),
        .I2(\txseq_counter_i_reg_n_0_[6] ),
        .I3(\txseq_counter_i_reg_n_0_[0] ),
        .I4(rst_pma_init_usrclk),
        .O(\txseq_counter_i_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \TX_DATA[55]_i_3 
       (.I0(\txseq_counter_i_reg_n_0_[4] ),
        .I1(\txseq_counter_i_reg_n_0_[2] ),
        .I2(\txseq_counter_i_reg_n_0_[3] ),
        .I3(\txseq_counter_i_reg_n_0_[5] ),
        .O(\TX_DATA[55]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    TX_HEADER_1_i_2
       (.I0(\txseq_counter_i_reg_n_0_[0] ),
        .I1(\txseq_counter_i_reg_n_0_[6] ),
        .I2(\TX_DATA[55]_i_3_n_0 ),
        .I3(\txseq_counter_i_reg_n_0_[1] ),
        .O(txdatavalid_symgen_i));
  FDRE #(
    .INIT(1'b0)) 
    allow_block_sync_propagation_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(cbcc_gtx0_i_n_78),
        .Q(allow_block_sync_propagation_reg_n_0),
        .R(1'b0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_MULTI_GT aurora_64b66b_pcs_pma_multi_gt_i
       (.D(rxgearboxslip_i),
        .DRPADDR_IN(DRPADDR_IN),
        .DRPDI_IN(DRPDI_IN),
        .DRPDO_OUT(DRPDO_OUT),
        .DRPRDY_OUT(DRPRDY_OUT),
        .Q(tx_hdr_r),
        .RXBUFSTATUS(int_rxbufstatus_i),
        .RXDATA(pre_rxdata_from_gtx_i),
        .RXHEADER(pre_rxheader_from_gtx_i),
        .SR(gtrxreset_t),
        .TXBUFSTATUS(tx_buf_err_i),
        .drp_clk_in(drp_clk_in),
        .drp_clk_in_0(tx_resetdone_i),
        .drpen_in_i(drpen_in_i),
        .drprdy_out_reg(rxrecclk_to_fabric_i),
        .drprdy_out_reg_0(scrambled_data_i),
        .drprdy_out_reg_1({\txseq_counter_i_reg_n_0_[6] ,\txseq_counter_i_reg_n_0_[5] ,\txseq_counter_i_reg_n_0_[4] ,\txseq_counter_i_reg_n_0_[3] ,\txseq_counter_i_reg_n_0_[2] ,\txseq_counter_i_reg_n_0_[1] ,\txseq_counter_i_reg_n_0_[0] }),
        .drpwe_in_i(drpwe_in_i),
        .gt_qpllclk_quad1_in(gt_qpllclk_quad1_in),
        .gt_qpllrefclk_quad1_in(gt_qpllrefclk_quad1_in),
        .gt_rxcdrovrden_in(gt_rxcdrovrden_in),
        .gttxreset_t(gttxreset_t),
        .in0(rx_resetdone_i),
        .loopback(loopback),
        .out(sync_rx_polarity_r),
        .pre_rxdatavalid_i(pre_rxdatavalid_i),
        .pre_rxheadervalid_i(pre_rxheadervalid_i),
        .rxn(rxn),
        .rxp(rxp),
        .rxrecclk_from_gtx_i(rxrecclk_from_gtx_i),
        .rxuserrdy_t(rxuserrdy_t),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .txuserrdy_t(txuserrdy_t),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_BLOCK_SYNC_SM block_sync_sm_gtx0_i
       (.D(rxgearboxslip_i),
        .Q(rxheader_from_gtx_i),
        .SR(new_gtx_rx_pcsreset_comb),
        .blocksync_out_i(blocksync_out_i),
        .out(rxrecclk_to_fabric_i),
        .rxheadervalid_i(rxheadervalid_i));
  FDRE #(
    .INIT(1'b0)) 
    blocksync_all_lanes_inrxclk_q_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(blocksync_out_i),
        .Q(blocksync_all_lanes_inrxclk_q),
        .R(1'b0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_CLOCK_CORRECTION_CHANNEL_BONDING cbcc_gtx0_i
       (.ANY_VLD_BTF_FLAG(ANY_VLD_BTF_FLAG),
        .AR(rxfsm_reset_i),
        .CB_detect0(CB_detect0),
        .CB_detect_dlyd0p5(CB_detect_dlyd0p5),
        .CC_RXLOSSOFSYNC_OUT_reg_0(common_reset_cbcc_i_n_2),
        .CC_detect(CC_detect),
        .CC_detect_dlyd1(CC_detect_dlyd1),
        .D({CC_detect_pulse_i,CB_detect}),
        .HARD_ERR_reg(rx_elastic_buf_err),
        .ILLEGAL_BTF_reg(ILLEGAL_BTF_reg),
        .LINK_RESET_OUT0(LINK_RESET_OUT0),
        .Q(rxheader_to_fifo_i),
        .SR(cbcc_fifo_reset_to_fifo_wr_clk),
        .START_CB_WRITES_OUT(START_CB_WRITES_OUT),
        .START_CB_WRITES_OUT_reg_0(all_vld_btf_flag_i),
        .TXBUFSTATUS(tx_buf_err_i),
        .UNSCRAMBLED_DATA_OUT(rxdata_to_fifo_i),
        .allow_block_sync_propagation(allow_block_sync_propagation),
        .allow_block_sync_propagation_reg(cbcc_gtx0_i_n_78),
        .allow_block_sync_propagation_reg_0(allow_block_sync_propagation_reg_n_0),
        .allow_block_sync_propagation_reg_1(\FSM_onehot_cdr_reset_fsm_r_reg_n_0_[0] ),
        .bit_err_chan_bond_i(bit_err_chan_bond_i),
        .cbcc_fifo_reset_rd_clk(cbcc_fifo_reset_rd_clk),
        .cbcc_fifo_reset_to_fifo_rd_clk(cbcc_fifo_reset_to_fifo_rd_clk),
        .cbcc_fifo_reset_wr_clk(cbcc_fifo_reset_wr_clk),
        .cbcc_reset_cbstg2_rd_clk(cbcc_reset_cbstg2_rd_clk),
        .cdr_reset_fsm_lnkreset(cdr_reset_fsm_lnkreset),
        .cdr_reset_fsm_lnkreset_reg(cbcc_gtx0_i_n_80),
        .channel_up_tx_if(channel_up_tx_if),
        .\count_for_reset_r_reg[0]_0 (in0),
        .do_rd_en_i(do_rd_en_i),
        .do_wr_en_reg_0(all_start_cb_writes_i),
        .enable_err_detect_i(enable_err_detect_i),
        .final_gater_for_fifo_din_i(final_gater_for_fifo_din_i),
        .hard_err_rst_int(hard_err_rst_int),
        .hard_err_usr0(hard_err_usr0),
        .hard_err_usr_reg(hard_err_usr_reg_0),
        .hold_reg_reg_0(hold_reg_reg),
        .illegal_btf_i(illegal_btf_i),
        .in0(rxlossofsync_out_q),
        .init_clk(init_clk),
        .master_do_rd_en_q_reg_0(master_do_rd_en_i),
        .out(rxrecclk_to_fabric_i),
        .p_2_in(p_2_in),
        .reset_initclk(reset_initclk),
        .rst_drp(rst_drp),
        .rx_lossofsync_i(rx_lossofsync_i),
        .\rx_state_reg[7] (cdr_reset_fsm_lnkreset_reg_n_0),
        .rxdatavalid_i(rxdatavalid_i),
        .rxdatavalid_to_fifo_i(rxdatavalid_to_fifo_i),
        .rxfsm_reset_i(rxfsm_reset_i),
        .user_clk(user_clk),
        .user_clk_0(user_clk_0),
        .\valid_btf_detect_extend_r_reg[4]_0 (new_gtx_rx_pcsreset_comb),
        .wr_err_rd_clk_sync_reg_0(wr_err_rd_clk_sync_reg));
  LUT2 #(
    .INIT(4'h2)) 
    \cdr_reset_fsm_cntr_r[0]_i_1 
       (.I0(cdr_reset_fsm_lnkreset),
        .I1(cdr_reset_fsm_cntr_r[0]),
        .O(\cdr_reset_fsm_cntr_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \cdr_reset_fsm_cntr_r[1]_i_1 
       (.I0(cdr_reset_fsm_cntr_r[1]),
        .I1(cdr_reset_fsm_cntr_r[0]),
        .I2(cdr_reset_fsm_lnkreset),
        .O(\cdr_reset_fsm_cntr_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \cdr_reset_fsm_cntr_r[2]_i_1 
       (.I0(cdr_reset_fsm_cntr_r[0]),
        .I1(cdr_reset_fsm_cntr_r[1]),
        .I2(cdr_reset_fsm_cntr_r[2]),
        .I3(cdr_reset_fsm_lnkreset),
        .O(\cdr_reset_fsm_cntr_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cdr_reset_fsm_cntr_r[3]_i_1 
       (.I0(cdr_reset_fsm_lnkreset),
        .I1(cdr_reset_fsm_cntr_r[2]),
        .I2(cdr_reset_fsm_cntr_r[1]),
        .I3(cdr_reset_fsm_cntr_r[0]),
        .I4(cdr_reset_fsm_cntr_r[3]),
        .O(\cdr_reset_fsm_cntr_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \cdr_reset_fsm_cntr_r[4]_i_1 
       (.I0(cdr_reset_fsm_cntr_r[1]),
        .I1(cdr_reset_fsm_cntr_r[0]),
        .I2(cdr_reset_fsm_cntr_r[3]),
        .I3(cdr_reset_fsm_cntr_r[2]),
        .I4(cdr_reset_fsm_cntr_r[4]),
        .I5(cdr_reset_fsm_lnkreset),
        .O(\cdr_reset_fsm_cntr_r[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cdr_reset_fsm_cntr_r[5]_i_1 
       (.I0(cdr_reset_fsm_lnkreset),
        .I1(cdr_reset_fsm_cntr_r[4]),
        .I2(\cdr_reset_fsm_cntr_r[7]_i_5_n_0 ),
        .I3(cdr_reset_fsm_cntr_r[5]),
        .O(\cdr_reset_fsm_cntr_r[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cdr_reset_fsm_cntr_r[6]_i_1 
       (.I0(cdr_reset_fsm_lnkreset),
        .I1(cdr_reset_fsm_cntr_r[5]),
        .I2(\cdr_reset_fsm_cntr_r[7]_i_5_n_0 ),
        .I3(cdr_reset_fsm_cntr_r[4]),
        .I4(cdr_reset_fsm_cntr_r[6]),
        .O(\cdr_reset_fsm_cntr_r[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cdr_reset_fsm_cntr_r[7]_i_2 
       (.I0(\FSM_onehot_cdr_reset_fsm_r_reg_n_0_[0] ),
        .I1(allow_block_sync_propagation),
        .I2(\cdr_reset_fsm_cntr_r[7]_i_4_n_0 ),
        .O(\cdr_reset_fsm_cntr_r[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cdr_reset_fsm_cntr_r[7]_i_3 
       (.I0(cdr_reset_fsm_lnkreset),
        .I1(cdr_reset_fsm_cntr_r[4]),
        .I2(\cdr_reset_fsm_cntr_r[7]_i_5_n_0 ),
        .I3(cdr_reset_fsm_cntr_r[5]),
        .I4(cdr_reset_fsm_cntr_r[6]),
        .I5(cdr_reset_fsm_cntr_r[7]),
        .O(\cdr_reset_fsm_cntr_r[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \cdr_reset_fsm_cntr_r[7]_i_4 
       (.I0(cdr_reset_fsm_lnkreset),
        .I1(cdr_reset_fsm_cntr_r[5]),
        .I2(cdr_reset_fsm_cntr_r[4]),
        .I3(cdr_reset_fsm_cntr_r[6]),
        .I4(cdr_reset_fsm_cntr_r[7]),
        .I5(\cdr_reset_fsm_cntr_r[7]_i_5_n_0 ),
        .O(\cdr_reset_fsm_cntr_r[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cdr_reset_fsm_cntr_r[7]_i_5 
       (.I0(cdr_reset_fsm_cntr_r[1]),
        .I1(cdr_reset_fsm_cntr_r[0]),
        .I2(cdr_reset_fsm_cntr_r[3]),
        .I3(cdr_reset_fsm_cntr_r[2]),
        .O(\cdr_reset_fsm_cntr_r[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cdr_reset_fsm_cntr_r_reg[0] 
       (.C(init_clk),
        .CE(\cdr_reset_fsm_cntr_r[7]_i_2_n_0 ),
        .D(\cdr_reset_fsm_cntr_r[0]_i_1_n_0 ),
        .Q(cdr_reset_fsm_cntr_r[0]),
        .R(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \cdr_reset_fsm_cntr_r_reg[1] 
       (.C(init_clk),
        .CE(\cdr_reset_fsm_cntr_r[7]_i_2_n_0 ),
        .D(\cdr_reset_fsm_cntr_r[1]_i_1_n_0 ),
        .Q(cdr_reset_fsm_cntr_r[1]),
        .R(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \cdr_reset_fsm_cntr_r_reg[2] 
       (.C(init_clk),
        .CE(\cdr_reset_fsm_cntr_r[7]_i_2_n_0 ),
        .D(\cdr_reset_fsm_cntr_r[2]_i_1_n_0 ),
        .Q(cdr_reset_fsm_cntr_r[2]),
        .R(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \cdr_reset_fsm_cntr_r_reg[3] 
       (.C(init_clk),
        .CE(\cdr_reset_fsm_cntr_r[7]_i_2_n_0 ),
        .D(\cdr_reset_fsm_cntr_r[3]_i_1_n_0 ),
        .Q(cdr_reset_fsm_cntr_r[3]),
        .R(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \cdr_reset_fsm_cntr_r_reg[4] 
       (.C(init_clk),
        .CE(\cdr_reset_fsm_cntr_r[7]_i_2_n_0 ),
        .D(\cdr_reset_fsm_cntr_r[4]_i_1_n_0 ),
        .Q(cdr_reset_fsm_cntr_r[4]),
        .R(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \cdr_reset_fsm_cntr_r_reg[5] 
       (.C(init_clk),
        .CE(\cdr_reset_fsm_cntr_r[7]_i_2_n_0 ),
        .D(\cdr_reset_fsm_cntr_r[5]_i_1_n_0 ),
        .Q(cdr_reset_fsm_cntr_r[5]),
        .R(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \cdr_reset_fsm_cntr_r_reg[6] 
       (.C(init_clk),
        .CE(\cdr_reset_fsm_cntr_r[7]_i_2_n_0 ),
        .D(\cdr_reset_fsm_cntr_r[6]_i_1_n_0 ),
        .Q(cdr_reset_fsm_cntr_r[6]),
        .R(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    \cdr_reset_fsm_cntr_r_reg[7] 
       (.C(init_clk),
        .CE(\cdr_reset_fsm_cntr_r[7]_i_2_n_0 ),
        .D(\cdr_reset_fsm_cntr_r[7]_i_3_n_0 ),
        .Q(cdr_reset_fsm_cntr_r[7]),
        .R(p_2_in));
  FDRE #(
    .INIT(1'b0)) 
    cdr_reset_fsm_lnkreset_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(cbcc_gtx0_i_n_80),
        .Q(cdr_reset_fsm_lnkreset_reg_n_0),
        .R(1'b0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_common_logic_cbcc common_logic_cbcc_i
       (.ANY_VLD_BTF_FLAG(ANY_VLD_BTF_FLAG),
        .START_CB_WRITES_OUT(START_CB_WRITES_OUT),
        .all_vld_btf_flag_i(all_vld_btf_flag_i),
        .all_vld_btf_out_reg_0(rxrecclk_to_fabric_i),
        .cb_bit_err_out(cb_bit_err_out),
        .cbcc_fifo_reset_rd_clk(cbcc_fifo_reset_rd_clk),
        .cbcc_fifo_reset_wr_clk(cbcc_fifo_reset_wr_clk),
        .in0(all_start_cb_writes_i),
        .master_do_rd_en_i(master_do_rd_en_i),
        .master_do_rd_en_out_reg_0(do_rd_en_i),
        .out(bit_err_chan_bond_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_common_reset_cbcc common_reset_cbcc_i
       (.SR(cbcc_fifo_reset_to_fifo_wr_clk),
        .cb_bit_err_out(cb_bit_err_out),
        .cbcc_fifo_reset_rd_clk(cbcc_fifo_reset_rd_clk),
        .cbcc_fifo_reset_to_fifo_rd_clk(cbcc_fifo_reset_to_fifo_rd_clk),
        .cbcc_fifo_reset_wr_clk(cbcc_fifo_reset_wr_clk),
        .cbcc_reset_cbstg2_rd_clk(cbcc_reset_cbstg2_rd_clk),
        .out(rxrecclk_to_fabric_i),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg(new_gtx_rx_pcsreset_comb),
        .stg5_reg(common_reset_cbcc_i_n_2),
        .user_clk(user_clk));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    data_v_r_i_1
       (.I0(\txseq_counter_i_reg_n_0_[0] ),
        .I1(\txseq_counter_i_reg_n_0_[6] ),
        .I2(\TX_DATA[55]_i_3_n_0 ),
        .I3(\txseq_counter_i_reg_n_0_[1] ),
        .O(txdatavalid_i));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_DESCRAMBLER_64B66B descrambler_64b66b_gtx0_i
       (.CB_detect0(CB_detect0),
        .CB_detect_dlyd0p5(CB_detect_dlyd0p5),
        .CC_detect(CC_detect),
        .CC_detect_dlyd1(CC_detect_dlyd1),
        .D({CC_detect_pulse_i,CB_detect}),
        .E(rxdatavalid_i_1),
        .Q(rxheader_to_fifo_i),
        .UNSCRAMBLED_DATA_OUT(rxdata_to_fifo_i),
        .descrambler({descrambler_64b66b_gtx0_i_n_36,poly}),
        .\descrambler_reg[31]_0 (rxdata_from_gtx_i),
        .in0(rxlossofsync_out_q),
        .out(rxrecclk_to_fabric_i),
        .rxdatavalid_to_fifo_i(rxdatavalid_to_fifo_i),
        .tempData(unscrambled_data_i052_out));
  LUT6 #(
    .INIT(64'hFFFF000100000000)) 
    extend_cc_r_i_1
       (.I0(\txseq_counter_i_reg_n_0_[0] ),
        .I1(\txseq_counter_i_reg_n_0_[6] ),
        .I2(\TX_DATA[55]_i_3_n_0 ),
        .I3(\txseq_counter_i_reg_n_0_[1] ),
        .I4(extend_cc_r),
        .I5(extend_cc_r_reg),
        .O(\txseq_counter_i_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hard_err_cntr_r[0]_i_1 
       (.I0(hard_err_cntr_r_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hard_err_cntr_r[1]_i_1 
       (.I0(hard_err_cntr_r_reg[0]),
        .I1(hard_err_cntr_r_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hard_err_cntr_r[2]_i_1 
       (.I0(hard_err_cntr_r_reg[2]),
        .I1(hard_err_cntr_r_reg[0]),
        .I2(hard_err_cntr_r_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hard_err_cntr_r[3]_i_1 
       (.I0(hard_err_cntr_r_reg[3]),
        .I1(hard_err_cntr_r_reg[1]),
        .I2(hard_err_cntr_r_reg[0]),
        .I3(hard_err_cntr_r_reg[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hard_err_cntr_r[4]_i_1 
       (.I0(hard_err_cntr_r_reg[4]),
        .I1(hard_err_cntr_r_reg[1]),
        .I2(hard_err_cntr_r_reg[0]),
        .I3(hard_err_cntr_r_reg[3]),
        .I4(hard_err_cntr_r_reg[2]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hard_err_cntr_r[5]_i_1 
       (.I0(hard_err_cntr_r_reg[2]),
        .I1(hard_err_cntr_r_reg[3]),
        .I2(hard_err_cntr_r_reg[0]),
        .I3(hard_err_cntr_r_reg[1]),
        .I4(hard_err_cntr_r_reg[4]),
        .I5(hard_err_cntr_r_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \hard_err_cntr_r[6]_i_1 
       (.I0(hard_err_cntr_r_reg[6]),
        .I1(\hard_err_cntr_r[7]_i_6_n_0 ),
        .I2(hard_err_cntr_r_reg[5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \hard_err_cntr_r[7]_i_3 
       (.I0(hard_err_cntr_r_reg[7]),
        .I1(hard_err_cntr_r_reg[5]),
        .I2(hard_err_cntr_r_reg[6]),
        .I3(\hard_err_cntr_r[7]_i_6_n_0 ),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hard_err_cntr_r[7]_i_5 
       (.I0(hard_err_cntr_r_reg[1]),
        .I1(hard_err_cntr_r_reg[0]),
        .I2(hard_err_cntr_r_reg[3]),
        .I3(hard_err_cntr_r_reg[2]),
        .O(\hard_err_cntr_r[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \hard_err_cntr_r[7]_i_6 
       (.I0(hard_err_cntr_r_reg[2]),
        .I1(hard_err_cntr_r_reg[3]),
        .I2(hard_err_cntr_r_reg[0]),
        .I3(hard_err_cntr_r_reg[1]),
        .I4(hard_err_cntr_r_reg[4]),
        .O(\hard_err_cntr_r[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hard_err_cntr_r_reg[0] 
       (.C(init_clk),
        .CE(hard_err_cntr_r),
        .D(p_0_in__1[0]),
        .Q(hard_err_cntr_r_reg[0]),
        .R(HPCNT_RESET_IN));
  FDRE #(
    .INIT(1'b0)) 
    \hard_err_cntr_r_reg[1] 
       (.C(init_clk),
        .CE(hard_err_cntr_r),
        .D(p_0_in__1[1]),
        .Q(hard_err_cntr_r_reg[1]),
        .R(HPCNT_RESET_IN));
  FDRE #(
    .INIT(1'b0)) 
    \hard_err_cntr_r_reg[2] 
       (.C(init_clk),
        .CE(hard_err_cntr_r),
        .D(p_0_in__1[2]),
        .Q(hard_err_cntr_r_reg[2]),
        .R(HPCNT_RESET_IN));
  FDRE #(
    .INIT(1'b0)) 
    \hard_err_cntr_r_reg[3] 
       (.C(init_clk),
        .CE(hard_err_cntr_r),
        .D(p_0_in__1[3]),
        .Q(hard_err_cntr_r_reg[3]),
        .R(HPCNT_RESET_IN));
  FDRE #(
    .INIT(1'b0)) 
    \hard_err_cntr_r_reg[4] 
       (.C(init_clk),
        .CE(hard_err_cntr_r),
        .D(p_0_in__1[4]),
        .Q(hard_err_cntr_r_reg[4]),
        .R(HPCNT_RESET_IN));
  FDRE #(
    .INIT(1'b0)) 
    \hard_err_cntr_r_reg[5] 
       (.C(init_clk),
        .CE(hard_err_cntr_r),
        .D(p_0_in__1[5]),
        .Q(hard_err_cntr_r_reg[5]),
        .R(HPCNT_RESET_IN));
  FDRE #(
    .INIT(1'b0)) 
    \hard_err_cntr_r_reg[6] 
       (.C(init_clk),
        .CE(hard_err_cntr_r),
        .D(p_0_in__1[6]),
        .Q(hard_err_cntr_r_reg[6]),
        .R(HPCNT_RESET_IN));
  FDRE #(
    .INIT(1'b0)) 
    \hard_err_cntr_r_reg[7] 
       (.C(init_clk),
        .CE(hard_err_cntr_r),
        .D(p_0_in__1[7]),
        .Q(hard_err_cntr_r_reg[7]),
        .R(HPCNT_RESET_IN));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'hE)) 
    hard_err_rst_int_i_2
       (.I0(hard_err_cntr_r_reg[0]),
        .I1(hard_err_cntr_r_reg[1]),
        .O(hard_err_rst_int_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    hard_err_rst_int_i_3
       (.I0(hard_err_cntr_r_reg[4]),
        .I1(hard_err_cntr_r_reg[5]),
        .I2(hard_err_cntr_r_reg[6]),
        .I3(hard_err_cntr_r_reg[7]),
        .I4(hard_err_cntr_r_reg[3]),
        .I5(hard_err_cntr_r_reg[2]),
        .O(hard_err_rst_int_i_3_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    hard_err_rst_int_i_4
       (.I0(hard_err_cntr_r_reg[3]),
        .I1(hard_err_cntr_r_reg[2]),
        .I2(hard_err_cntr_r_reg[4]),
        .I3(hard_err_cntr_r_reg[7]),
        .I4(hard_err_cntr_r_reg[5]),
        .I5(hard_err_cntr_r_reg[6]),
        .O(hard_err_rst_int_i_4_n_0));
  FDRE hard_err_rst_int_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(u_cdc_hard_err_init_n_0),
        .Q(hard_err_rst_int),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hard_err_usr_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_usr0),
        .Q(hard_err_usr),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    new_gtx_rx_pcsreset_comb_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(new_gtx_rx_pcsreset_comb0),
        .Q(new_gtx_rx_pcsreset_comb),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[0] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[0]),
        .Q(pos_rxdata_from_gtx_i[0]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[10] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[10]),
        .Q(pos_rxdata_from_gtx_i[10]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[11] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[11]),
        .Q(pos_rxdata_from_gtx_i[11]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[12] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[12]),
        .Q(pos_rxdata_from_gtx_i[12]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[13] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[13]),
        .Q(pos_rxdata_from_gtx_i[13]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[14] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[14]),
        .Q(pos_rxdata_from_gtx_i[14]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[15] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[15]),
        .Q(pos_rxdata_from_gtx_i[15]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[16] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[16]),
        .Q(pos_rxdata_from_gtx_i[16]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[17] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[17]),
        .Q(pos_rxdata_from_gtx_i[17]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[18] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[18]),
        .Q(pos_rxdata_from_gtx_i[18]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[19] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[19]),
        .Q(pos_rxdata_from_gtx_i[19]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[1] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[1]),
        .Q(pos_rxdata_from_gtx_i[1]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[20] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[20]),
        .Q(pos_rxdata_from_gtx_i[20]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[21] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[21]),
        .Q(pos_rxdata_from_gtx_i[21]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[22] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[22]),
        .Q(pos_rxdata_from_gtx_i[22]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[23] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[23]),
        .Q(pos_rxdata_from_gtx_i[23]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[24] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[24]),
        .Q(pos_rxdata_from_gtx_i[24]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[25] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[25]),
        .Q(pos_rxdata_from_gtx_i[25]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[26] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[26]),
        .Q(pos_rxdata_from_gtx_i[26]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[27] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[27]),
        .Q(pos_rxdata_from_gtx_i[27]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[28] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[28]),
        .Q(pos_rxdata_from_gtx_i[28]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[29] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[29]),
        .Q(pos_rxdata_from_gtx_i[29]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[2] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[2]),
        .Q(pos_rxdata_from_gtx_i[2]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[30] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[30]),
        .Q(pos_rxdata_from_gtx_i[30]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[31] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[31]),
        .Q(pos_rxdata_from_gtx_i[31]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[3] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[3]),
        .Q(pos_rxdata_from_gtx_i[3]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[4] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[4]),
        .Q(pos_rxdata_from_gtx_i[4]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[5] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[5]),
        .Q(pos_rxdata_from_gtx_i[5]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[6] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[6]),
        .Q(pos_rxdata_from_gtx_i[6]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[7] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[7]),
        .Q(pos_rxdata_from_gtx_i[7]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[8] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[8]),
        .Q(pos_rxdata_from_gtx_i[8]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxdata_from_gtx_i_reg[9] 
       (.C(rxrecclk_to_fabric_i),
        .CE(pre_r4_rxdatavalid_i),
        .D(pre_r4_rxdata_from_gtx_i[9]),
        .Q(pos_rxdata_from_gtx_i[9]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE pos_rxdatavalid_i_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pre_r4_rxdatavalid_i),
        .Q(pos_rxdatavalid_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pos_rxheader_from_gtx_i[0]_i_1 
       (.I0(pre_r4_rxheader_from_gtx_i[0]),
        .I1(pre_r4_rxheadervalid_i),
        .I2(pos_rxheader_from_gtx_i[0]),
        .O(\pos_rxheader_from_gtx_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pos_rxheader_from_gtx_i[1]_i_1 
       (.I0(pre_r4_rxheader_from_gtx_i[1]),
        .I1(pre_r4_rxheadervalid_i),
        .I2(pos_rxheader_from_gtx_i[1]),
        .O(\pos_rxheader_from_gtx_i[1]_i_1_n_0 ));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxheader_from_gtx_i_reg[0] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(\pos_rxheader_from_gtx_i[0]_i_1_n_0 ),
        .Q(pos_rxheader_from_gtx_i[0]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pos_rxheader_from_gtx_i_reg[1] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(\pos_rxheader_from_gtx_i[1]_i_1_n_0 ),
        .Q(pos_rxheader_from_gtx_i[1]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE pos_rxheadervalid_i_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pre_r4_rxheadervalid_i),
        .Q(pos_rxheadervalid_i),
        .R(1'b0));
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r3_rxdatavalid_i_reg_srl3 " *) 
  SRL16E pre_r3_rxdatavalid_i_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdatavalid_i),
        .Q(pre_r3_rxdatavalid_i_reg_srl3_n_0));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r3_rxheader_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r3_rxheader_from_gtx_i_reg[0]_srl3 " *) 
  SRL16E \pre_r3_rxheader_from_gtx_i_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxheader_from_gtx_i[0]),
        .Q(\pre_r3_rxheader_from_gtx_i_reg[0]_srl3_n_0 ));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r3_rxheader_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r3_rxheader_from_gtx_i_reg[1]_srl3 " *) 
  SRL16E \pre_r3_rxheader_from_gtx_i_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxheader_from_gtx_i[1]),
        .Q(\pre_r3_rxheader_from_gtx_i_reg[1]_srl3_n_0 ));
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r3_rxheadervalid_i_reg_srl3 " *) 
  SRL16E pre_r3_rxheadervalid_i_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxheadervalid_i),
        .Q(pre_r3_rxheadervalid_i_reg_srl3_n_0));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[0]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[0]),
        .Q(pre_r4_rxdata_from_gtx_i[0]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[10]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[10]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[10]),
        .Q(pre_r4_rxdata_from_gtx_i[10]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[11]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[11]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[11]),
        .Q(pre_r4_rxdata_from_gtx_i[11]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[12]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[12]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[12]),
        .Q(pre_r4_rxdata_from_gtx_i[12]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[13]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[13]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[13]),
        .Q(pre_r4_rxdata_from_gtx_i[13]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[14]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[14]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[14]),
        .Q(pre_r4_rxdata_from_gtx_i[14]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[15]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[15]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[15]),
        .Q(pre_r4_rxdata_from_gtx_i[15]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[16]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[16]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[16]),
        .Q(pre_r4_rxdata_from_gtx_i[16]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[17]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[17]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[17]),
        .Q(pre_r4_rxdata_from_gtx_i[17]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[18]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[18]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[18]),
        .Q(pre_r4_rxdata_from_gtx_i[18]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[19]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[19]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[19]),
        .Q(pre_r4_rxdata_from_gtx_i[19]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[1]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[1]),
        .Q(pre_r4_rxdata_from_gtx_i[1]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[20]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[20]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[20]),
        .Q(pre_r4_rxdata_from_gtx_i[20]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[21]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[21]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[21]),
        .Q(pre_r4_rxdata_from_gtx_i[21]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[22]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[22]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[22]),
        .Q(pre_r4_rxdata_from_gtx_i[22]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[23]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[23]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[23]),
        .Q(pre_r4_rxdata_from_gtx_i[23]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[24]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[24]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[24]),
        .Q(pre_r4_rxdata_from_gtx_i[24]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[25]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[25]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[25]),
        .Q(pre_r4_rxdata_from_gtx_i[25]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[26]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[26]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[26]),
        .Q(pre_r4_rxdata_from_gtx_i[26]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[27]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[27]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[27]),
        .Q(pre_r4_rxdata_from_gtx_i[27]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[28]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[28]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[28]),
        .Q(pre_r4_rxdata_from_gtx_i[28]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[29]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[29]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[29]),
        .Q(pre_r4_rxdata_from_gtx_i[29]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[2]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[2]),
        .Q(pre_r4_rxdata_from_gtx_i[2]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[30]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[30]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[30]),
        .Q(pre_r4_rxdata_from_gtx_i[30]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[31]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[31]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[31]),
        .Q(pre_r4_rxdata_from_gtx_i[31]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[3]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[3]),
        .Q(pre_r4_rxdata_from_gtx_i[3]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[4]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[4]),
        .Q(pre_r4_rxdata_from_gtx_i[4]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[5]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[5]),
        .Q(pre_r4_rxdata_from_gtx_i[5]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[6]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[6]),
        .Q(pre_r4_rxdata_from_gtx_i[6]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[7]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[7]),
        .Q(pre_r4_rxdata_from_gtx_i[7]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[8]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[8]),
        .Q(pre_r4_rxdata_from_gtx_i[8]));
  (* srl_bus_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg " *) 
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/pre_r4_rxdata_from_gtx_i_reg[9]_srl4 " *) 
  SRL16E \pre_r4_rxdata_from_gtx_i_reg[9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rxrecclk_to_fabric_i),
        .D(pre_rxdata_from_gtx_i[9]),
        .Q(pre_r4_rxdata_from_gtx_i[9]));
  (* shift_extract = "{no}" *) 
  FDRE pre_r4_rxdatavalid_i_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pre_r3_rxdatavalid_i_reg_srl3_n_0),
        .Q(pre_r4_rxdatavalid_i),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pre_r4_rxheader_from_gtx_i_reg[0] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(\pre_r3_rxheader_from_gtx_i_reg[0]_srl3_n_0 ),
        .Q(pre_r4_rxheader_from_gtx_i[0]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \pre_r4_rxheader_from_gtx_i_reg[1] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(\pre_r3_rxheader_from_gtx_i_reg[1]_srl3_n_0 ),
        .Q(pre_r4_rxheader_from_gtx_i[1]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE pre_r4_rxheadervalid_i_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pre_r3_rxheadervalid_i_reg_srl3_n_0),
        .Q(pre_r4_rxheadervalid_i),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[0] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[0]),
        .Q(rxdata_from_gtx_i[0]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[10] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[10]),
        .Q(rxdata_from_gtx_i[10]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[11] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[11]),
        .Q(rxdata_from_gtx_i[11]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[12] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[12]),
        .Q(rxdata_from_gtx_i[12]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[13] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[13]),
        .Q(rxdata_from_gtx_i[13]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[14] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[14]),
        .Q(rxdata_from_gtx_i[14]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[15] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[15]),
        .Q(rxdata_from_gtx_i[15]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[16] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[16]),
        .Q(rxdata_from_gtx_i[16]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[17] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[17]),
        .Q(rxdata_from_gtx_i[17]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[18] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[18]),
        .Q(rxdata_from_gtx_i[18]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[19] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[19]),
        .Q(rxdata_from_gtx_i[19]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[1] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[1]),
        .Q(rxdata_from_gtx_i[1]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[20] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[20]),
        .Q(rxdata_from_gtx_i[20]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[21] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[21]),
        .Q(rxdata_from_gtx_i[21]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[22] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[22]),
        .Q(rxdata_from_gtx_i[22]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[23] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[23]),
        .Q(rxdata_from_gtx_i[23]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[24] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[24]),
        .Q(rxdata_from_gtx_i[24]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[25] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[25]),
        .Q(rxdata_from_gtx_i[25]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[26] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[26]),
        .Q(rxdata_from_gtx_i[26]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[27] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[27]),
        .Q(rxdata_from_gtx_i[27]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[28] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[28]),
        .Q(rxdata_from_gtx_i[28]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[29] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[29]),
        .Q(rxdata_from_gtx_i[29]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[2] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[2]),
        .Q(rxdata_from_gtx_i[2]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[30] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[30]),
        .Q(rxdata_from_gtx_i[30]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[31] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[31]),
        .Q(rxdata_from_gtx_i[31]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[3] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[3]),
        .Q(rxdata_from_gtx_i[3]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[4] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[4]),
        .Q(rxdata_from_gtx_i[4]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[5] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[5]),
        .Q(rxdata_from_gtx_i[5]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[6] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[6]),
        .Q(rxdata_from_gtx_i[6]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[7] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[7]),
        .Q(rxdata_from_gtx_i[7]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[8] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[8]),
        .Q(rxdata_from_gtx_i[8]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxdata_from_gtx_i_reg[9] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdata_from_gtx_i[9]),
        .Q(rxdata_from_gtx_i[9]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE rxdatavalid_i_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxdatavalid_i),
        .Q(rxdatavalid_i_1),
        .R(1'b0));
  FDRE rxdatavalid_to_fifo_i_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(rxdatavalid_i_1),
        .Q(rxdatavalid_to_fifo_i),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxheader_from_gtx_i_reg[0] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxheader_from_gtx_i[0]),
        .Q(rxheader_from_gtx_i[0]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE \rxheader_from_gtx_i_reg[1] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxheader_from_gtx_i[1]),
        .Q(rxheader_from_gtx_i[1]),
        .R(1'b0));
  FDRE \rxheader_to_fifo_i_reg[0] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(rxheader_from_gtx_i[0]),
        .Q(rxheader_to_fifo_i[0]),
        .R(1'b0));
  FDRE \rxheader_to_fifo_i_reg[1] 
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(rxheader_from_gtx_i[1]),
        .Q(rxheader_to_fifo_i[1]),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE rxheadervalid_i_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(pos_rxheadervalid_i),
        .Q(rxheadervalid_i),
        .R(1'b0));
  FDRE rxlossofsync_out_q_reg
       (.C(rxrecclk_to_fabric_i),
        .CE(1'b1),
        .D(rxlossofsync_out_i),
        .Q(rxlossofsync_out_q),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFGCE" *) 
  (* XILINX_TRANSFORM_PINMAP = "CE:CE0 I:I0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    rxrecclk_bufg_i
       (.CE0(rx_clk_locked_i),
        .CE1(1'b0),
        .I0(rxrecclk_from_gtx_i),
        .I1(1'b1),
        .IGNORE0(1'b0),
        .IGNORE1(1'b1),
        .O(rxrecclk_to_fabric_i),
        .S0(1'b1),
        .S1(1'b0));
  FDRE rxreset_for_lanes_q_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_reset_i),
        .Q(rxreset_for_lanes_q),
        .R(1'b0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_RX_STARTUP_FSM rxresetfsm_i
       (.AR(rxfsm_reset_i),
        .SR(gtrxreset_t),
        .fsm_resetdone_to_new_gtx_rx_comb(fsm_resetdone_to_new_gtx_rx_comb),
        .in0(rx_resetdone_i),
        .init_clk(init_clk),
        .new_gtx_rx_pcsreset_comb0(new_gtx_rx_pcsreset_comb0),
        .out(gtpll_locked_out_i),
        .rx_clk_locked_i(rx_clk_locked_i),
        .rx_fsm_resetdone_i(rx_fsm_resetdone_i),
        .rxuserrdy_t(rxuserrdy_t),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg(rxreset_for_lanes_q),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(stg1_aurora_64b66b_pcs_pma_cdc_to_reg),
        .stg4_reg(rxrecclk_to_fabric_i));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_SCRAMBLER_64B66B scrambler_64b66b_gtx0_i
       (.Q(Q),
        .SCRAMBLED_DATA_OUT(scrambled_data_i),
        .\SCRAMBLED_DATA_OUT_reg[0]_0 ({\txseq_counter_i_reg_n_0_[6] ,\txseq_counter_i_reg_n_0_[5] ,\txseq_counter_i_reg_n_0_[4] ,\txseq_counter_i_reg_n_0_[3] ,\txseq_counter_i_reg_n_0_[2] ,\txseq_counter_i_reg_n_0_[1] ,\txseq_counter_i_reg_n_0_[0] }),
        .\SCRAMBLED_DATA_OUT_reg[5]_0 (\SCRAMBLED_DATA_OUT_reg[5] ),
        .tx_data_i(tx_data_i),
        .\txseq_counter_i_reg[0] (scrambler_64b66b_gtx0_i_n_12),
        .user_clk(user_clk));
  FDRE \tx_hdr_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(tx_hdr_r[0]),
        .R(1'b0));
  FDRE \tx_hdr_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(tx_hdr_r[1]),
        .R(1'b0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_TX_STARTUP_FSM txresetfsm_i
       (.gt_to_common_qpllreset_out(gt_to_common_qpllreset_out),
        .gttxreset_t(gttxreset_t),
        .in0(txusrclk_gtx_reset_comb),
        .init_clk(init_clk),
        .mmcm_not_locked(mmcm_not_locked),
        .mmcm_reset_i(mmcm_reset_i),
        .out(gtpll_locked_out_i),
        .rst_drp(rst_drp),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg(tx_resetdone_i),
        .sync_clk(sync_clk),
        .tx_fsm_resetdone_i(tx_fsm_resetdone_i),
        .txuserrdy_t(txuserrdy_t));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F0E)) 
    \txseq_counter_i[0]_i_1 
       (.I0(\txseq_counter_i_reg_n_0_[6] ),
        .I1(\txseq_counter_i[0]_i_2_n_0 ),
        .I2(\txseq_counter_i_reg_n_0_[0] ),
        .I3(\txseq_counter_i_reg_n_0_[4] ),
        .I4(\txseq_counter_i_reg_n_0_[3] ),
        .I5(\txseq_counter_i_reg_n_0_[2] ),
        .O(txseq_counter_i[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \txseq_counter_i[0]_i_2 
       (.I0(\txseq_counter_i_reg_n_0_[1] ),
        .I1(\txseq_counter_i_reg_n_0_[5] ),
        .O(\txseq_counter_i[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \txseq_counter_i[1]_i_1 
       (.I0(\txseq_counter_i_reg_n_0_[0] ),
        .I1(\txseq_counter_i_reg_n_0_[1] ),
        .O(txseq_counter_i[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \txseq_counter_i[2]_i_1 
       (.I0(\txseq_counter_i_reg_n_0_[1] ),
        .I1(\txseq_counter_i_reg_n_0_[0] ),
        .I2(\txseq_counter_i_reg_n_0_[2] ),
        .O(txseq_counter_i[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \txseq_counter_i[3]_i_1 
       (.I0(\txseq_counter_i_reg_n_0_[2] ),
        .I1(\txseq_counter_i_reg_n_0_[0] ),
        .I2(\txseq_counter_i_reg_n_0_[1] ),
        .I3(\txseq_counter_i_reg_n_0_[3] ),
        .O(txseq_counter_i[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \txseq_counter_i[4]_i_1 
       (.I0(\txseq_counter_i_reg_n_0_[2] ),
        .I1(\txseq_counter_i_reg_n_0_[3] ),
        .I2(\txseq_counter_i_reg_n_0_[0] ),
        .I3(\txseq_counter_i_reg_n_0_[1] ),
        .I4(\txseq_counter_i_reg_n_0_[4] ),
        .O(txseq_counter_i[4]));
  LUT6 #(
    .INIT(64'hCCCC3C3CCCC8CCC8)) 
    \txseq_counter_i[5]_i_1 
       (.I0(\txseq_counter_i[5]_i_2_n_0 ),
        .I1(\txseq_counter_i_reg_n_0_[5] ),
        .I2(\txseq_counter_i_reg_n_0_[1] ),
        .I3(\txseq_counter_i_reg_n_0_[6] ),
        .I4(\txseq_counter_i[5]_i_3_n_0 ),
        .I5(\txseq_counter_i_reg_n_0_[0] ),
        .O(txseq_counter_i[5]));
  LUT3 #(
    .INIT(8'hFE)) 
    \txseq_counter_i[5]_i_2 
       (.I0(\txseq_counter_i_reg_n_0_[4] ),
        .I1(\txseq_counter_i_reg_n_0_[3] ),
        .I2(\txseq_counter_i_reg_n_0_[2] ),
        .O(\txseq_counter_i[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \txseq_counter_i[5]_i_3 
       (.I0(\txseq_counter_i_reg_n_0_[3] ),
        .I1(\txseq_counter_i_reg_n_0_[2] ),
        .I2(\txseq_counter_i_reg_n_0_[4] ),
        .O(\txseq_counter_i[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \txseq_counter_i[6]_i_1 
       (.I0(\txseq_counter_i_reg_n_0_[3] ),
        .I1(\txseq_counter_i_reg_n_0_[2] ),
        .I2(\txseq_counter_i_reg_n_0_[4] ),
        .I3(scrambler_64b66b_gtx0_i_n_12),
        .I4(\txseq_counter_i_reg_n_0_[5] ),
        .I5(\txseq_counter_i_reg_n_0_[6] ),
        .O(txseq_counter_i[6]));
  FDRE \txseq_counter_i_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(txseq_counter_i[0]),
        .Q(\txseq_counter_i_reg_n_0_[0] ),
        .R(gtx_reset_comb));
  FDRE \txseq_counter_i_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(txseq_counter_i[1]),
        .Q(\txseq_counter_i_reg_n_0_[1] ),
        .R(gtx_reset_comb));
  FDRE \txseq_counter_i_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(txseq_counter_i[2]),
        .Q(\txseq_counter_i_reg_n_0_[2] ),
        .R(gtx_reset_comb));
  FDRE \txseq_counter_i_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(txseq_counter_i[3]),
        .Q(\txseq_counter_i_reg_n_0_[3] ),
        .R(gtx_reset_comb));
  FDRE \txseq_counter_i_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(txseq_counter_i[4]),
        .Q(\txseq_counter_i_reg_n_0_[4] ),
        .R(gtx_reset_comb));
  FDRE \txseq_counter_i_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(txseq_counter_i[5]),
        .Q(\txseq_counter_i_reg_n_0_[5] ),
        .R(gtx_reset_comb));
  FDRE \txseq_counter_i_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(txseq_counter_i[6]),
        .Q(\txseq_counter_i_reg_n_0_[6] ),
        .R(gtx_reset_comb));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync_6 u_cdc__check_polarity
       (.Q(rxheader_from_gtx_i),
        .RX_NEG_OUT_reg(RX_NEG_OUT_reg_0),
        .out(rxrecclk_to_fabric_i),
        .rxheadervalid_i(rxheadervalid_i),
        .rxheadervalid_i_reg(u_cdc__check_polarity_n_0),
        .s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized1 u_cdc_gt_qplllock_i
       (.gt_pll_lock(gt_pll_lock),
        .gt_qplllock_in(gt_qplllock_in),
        .init_clk(init_clk),
        .mmcm_reset_i(mmcm_reset_i),
        .out(gtpll_locked_out_i));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized1_7 u_cdc_hard_err_init
       (.E(hard_err_cntr_r),
        .Q({hard_err_cntr_r_reg[7:4],hard_err_cntr_r_reg[1:0]}),
        .SR(HPCNT_RESET_IN),
        .\hard_err_cntr_r_reg[0] (\hard_err_cntr_r[7]_i_5_n_0 ),
        .hard_err_rst_int(hard_err_rst_int),
        .hard_err_rst_int_reg(u_cdc_hard_err_init_n_0),
        .hard_err_rst_int_reg_0(hard_err_rst_int_i_2_n_0),
        .hard_err_rst_int_reg_1(hard_err_rst_int_i_3_n_0),
        .hard_err_rst_int_reg_2(hard_err_rst_int_i_4_n_0),
        .in0(hard_err_usr),
        .init_clk(init_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized0 u_cdc_rx_elastic_buferr
       (.RXBUFSTATUS(int_rxbufstatus_i),
        .out(rx_elastic_buf_err),
        .p_level_in_d1_cdc_from_reg_0(rxrecclk_to_fabric_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized2 u_cdc_rxpolarity_
       (.out(sync_rx_polarity_r),
        .s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .s_level_out_d6_reg_0(rxrecclk_to_fabric_i));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0 u_rst_sync_blocksyncall_initclk_sync
       (.\FSM_onehot_cdr_reset_fsm_r_reg[0] (u_rst_sync_blocksyncall_initclk_sync_n_2),
        .\FSM_onehot_cdr_reset_fsm_r_reg[2] (u_rst_sync_blocksyncall_initclk_sync_n_0),
        .\FSM_onehot_cdr_reset_fsm_r_reg[2]_0 (u_rst_sync_blocksyncall_initclk_sync_n_1),
        .\FSM_onehot_cdr_reset_fsm_r_reg[2]_1 (\FSM_onehot_cdr_reset_fsm_r_reg_n_0_[0] ),
        .\FSM_onehot_cdr_reset_fsm_r_reg[2]_2 (\FSM_onehot_cdr_reset_fsm_r[2]_i_2_n_0 ),
        .allow_block_sync_propagation(allow_block_sync_propagation),
        .cdr_reset_fsm_lnkreset(cdr_reset_fsm_lnkreset),
        .in0(blocksync_all_lanes_inrxclk_q),
        .init_clk(init_clk),
        .p_2_in(p_2_in));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_8 u_rst_sync_blocksyncprop_inrxclk_sync
       (.blocksync_out_i(blocksync_out_i),
        .out(rxrecclk_to_fabric_i),
        .rxlossofsync_out_i(rxlossofsync_out_i),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(allow_block_sync_propagation_reg_n_0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_9 u_rst_sync_fsm_resetdone
       (.fsm_resetdone_to_new_gtx_rx_comb(fsm_resetdone_to_new_gtx_rx_comb),
        .out(rxrecclk_to_fabric_i),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(in0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_10 u_rst_sync_gtx_reset_comb
       (.SR(gtx_reset_comb),
        .in0(stableclk_gtx_reset_comb),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_11 u_rst_sync_reset_initclk
       (.SR(HPCNT_RESET_IN),
        .\hard_err_cntr_r_reg[7] (in0),
        .\hard_err_cntr_r_reg[7]_0 (cdr_reset_fsm_lnkreset_reg_n_0),
        .init_clk(init_clk),
        .out(rxfsm_reset_i),
        .reset_initclk(reset_initclk),
        .rst_drp(rst_drp),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(stg1_aurora_64b66b_pcs_pma_cdc_to_reg));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_12 u_rst_sync_txusrclk_gtx_reset_comb
       (.in0(txusrclk_gtx_reset_comb),
        .init_clk(init_clk),
        .stg5_reg_0(stableclk_gtx_reset_comb));
  LUT3 #(
    .INIT(8'h96)) 
    \unscrambled_data_i[13]_i_1 
       (.I0(poly),
        .I1(rxdata_from_gtx_i[13]),
        .I2(descrambler_64b66b_gtx0_i_n_36),
        .O(unscrambled_data_i052_out));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync
   (next_ready_c,
    next_begin_c,
    SYSTEM_RESET_reg,
    s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    user_clk,
    ready_r_reg,
    rx_lossofsync_i,
    ready_r,
    align_r,
    polarity_r,
    rx_polarity_dlyd_i,
    reset_lanes_i,
    begin_r_reg,
    rx_polarity_r_reg,
    rx_polarity_r_reg_0,
    prev_rx_polarity_r);
  output next_ready_c;
  output next_begin_c;
  output SYSTEM_RESET_reg;
  input s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input user_clk;
  input ready_r_reg;
  input rx_lossofsync_i;
  input ready_r;
  input align_r;
  input polarity_r;
  input rx_polarity_dlyd_i;
  input reset_lanes_i;
  input begin_r_reg;
  input rx_polarity_r_reg;
  input rx_polarity_r_reg_0;
  input prev_rx_polarity_r;

  wire SYSTEM_RESET_reg;
  wire align_r;
  wire begin_r_i_2_n_0;
  wire begin_r_reg;
  wire next_begin_c;
  wire next_ready_c;
  wire p_level_in_int;
  wire polarity_r;
  wire prev_rx_polarity_r;
  wire ready_r;
  wire ready_r_i_3_n_0;
  wire ready_r_reg;
  wire reset_lanes_i;
  wire rx_lossofsync_i;
  wire rx_polarity_dlyd_i;
  wire rx_polarity_r_reg;
  wire rx_polarity_r_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign p_level_in_int = s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFCA0A0)) 
    begin_r_i_1
       (.I0(rx_lossofsync_i),
        .I1(polarity_r),
        .I2(ready_r),
        .I3(align_r),
        .I4(reset_lanes_i),
        .I5(begin_r_i_2_n_0),
        .O(next_begin_c));
  LUT4 #(
    .INIT(16'h80FF)) 
    begin_r_i_2
       (.I0(s_level_out_d2),
        .I1(rx_polarity_dlyd_i),
        .I2(polarity_r),
        .I3(begin_r_reg),
        .O(begin_r_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  LUT6 #(
    .INIT(64'h8888888888888C88)) 
    ready_r_i_2
       (.I0(ready_r_i_3_n_0),
        .I1(ready_r_reg),
        .I2(rx_lossofsync_i),
        .I3(ready_r),
        .I4(align_r),
        .I5(polarity_r),
        .O(next_ready_c));
  LUT5 #(
    .INIT(32'h00000040)) 
    ready_r_i_3
       (.I0(s_level_out_d2),
        .I1(rx_polarity_dlyd_i),
        .I2(polarity_r),
        .I3(align_r),
        .I4(ready_r),
        .O(ready_r_i_3_n_0));
  LUT4 #(
    .INIT(16'h0454)) 
    rx_polarity_r_i_1
       (.I0(rx_polarity_r_reg),
        .I1(rx_polarity_r_reg_0),
        .I2(s_level_out_d2),
        .I3(prev_rx_polarity_r),
        .O(SYSTEM_RESET_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync_6
   (rxheadervalid_i_reg,
    s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    out,
    rxheadervalid_i,
    Q,
    RX_NEG_OUT_reg);
  output rxheadervalid_i_reg;
  input s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input out;
  input rxheadervalid_i;
  input [1:0]Q;
  input RX_NEG_OUT_reg;

  wire [1:0]Q;
  wire RX_NEG_OUT_reg;
  wire out;
  wire p_level_in_int;
  wire rxheadervalid_i;
  wire rxheadervalid_i_reg;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign p_level_in_int = s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  LUT5 #(
    .INIT(32'hFF200000)) 
    RX_NEG_OUT_i_1
       (.I0(rxheadervalid_i),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(RX_NEG_OUT_reg),
        .I4(s_level_out_d2),
        .O(rxheadervalid_i_reg));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(out),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized0
   (out,
    RXBUFSTATUS,
    p_level_in_d1_cdc_from_reg_0,
    user_clk);
  output out;
  input [0:0]RXBUFSTATUS;
  input p_level_in_d1_cdc_from_reg_0;
  input user_clk;

  wire [0:0]RXBUFSTATUS;
  wire p_level_in_d1_cdc_from_reg_0;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign out = s_level_out_d5;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  FDRE p_level_in_d1_cdc_from_reg
       (.C(p_level_in_d1_cdc_from_reg_0),
        .CE(1'b1),
        .D(RXBUFSTATUS),
        .Q(p_level_in_int),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized1
   (out,
    gt_pll_lock,
    gt_qplllock_in,
    init_clk,
    mmcm_reset_i);
  output out;
  output gt_pll_lock;
  input gt_qplllock_in;
  input init_clk;
  input mmcm_reset_i;

  wire gt_pll_lock;
  wire init_clk;
  wire mmcm_reset_i;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d5;
  assign p_level_in_int = gt_qplllock_in;
  LUT2 #(
    .INIT(4'h2)) 
    gt_pll_lock_INST_0
       (.I0(s_level_out_d5),
        .I1(mmcm_reset_i),
        .O(gt_pll_lock));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized1_26
   (\cb_bit_err_ext_cnt_reg[3] ,
    out,
    Q,
    reset_cbcc_comb_reg);
  output \cb_bit_err_ext_cnt_reg[3] ;
  input out;
  input [3:0]Q;
  input [0:0]reset_cbcc_comb_reg;

  wire [3:0]Q;
  wire \cb_bit_err_ext_cnt_reg[3] ;
  wire out;
  wire p_level_in_int;
  wire [0:0]reset_cbcc_comb_reg;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(p_level_in_int));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_199
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    reset_cbcc_comb_i_1
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(s_level_out_d5),
        .I5(reset_cbcc_comb_reg),
        .O(\cb_bit_err_ext_cnt_reg[3] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(out),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(out),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized1_34
   (s_level_out_d5_reg_0,
    in0,
    user_clk,
    CC_RXLOSSOFSYNC_OUT_reg);
  output s_level_out_d5_reg_0;
  input in0;
  input user_clk;
  input CC_RXLOSSOFSYNC_OUT_reg;

  wire CC_RXLOSSOFSYNC_OUT_reg;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  wire s_level_out_d5_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  assign p_level_in_int = in0;
  LUT2 #(
    .INIT(4'hD)) 
    CC_RXLOSSOFSYNC_OUT_i_1
       (.I0(s_level_out_d5),
        .I1(CC_RXLOSSOFSYNC_OUT_reg),
        .O(s_level_out_d5_reg_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized1_7
   (hard_err_rst_int_reg,
    E,
    in0,
    init_clk,
    hard_err_rst_int,
    hard_err_rst_int_reg_0,
    hard_err_rst_int_reg_1,
    hard_err_rst_int_reg_2,
    SR,
    Q,
    \hard_err_cntr_r_reg[0] );
  output hard_err_rst_int_reg;
  output [0:0]E;
  input in0;
  input init_clk;
  input hard_err_rst_int;
  input hard_err_rst_int_reg_0;
  input hard_err_rst_int_reg_1;
  input hard_err_rst_int_reg_2;
  input [0:0]SR;
  input [5:0]Q;
  input \hard_err_cntr_r_reg[0] ;

  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire hard_err_cntr_r1;
  wire \hard_err_cntr_r_reg[0] ;
  wire hard_err_rst_int;
  wire hard_err_rst_int_reg;
  wire hard_err_rst_int_reg_0;
  wire hard_err_rst_int_reg_1;
  wire hard_err_rst_int_reg_2;
  wire init_clk;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign p_level_in_int = in0;
  LUT6 #(
    .INIT(64'hAAAAAAAA2AAAAAAA)) 
    \hard_err_cntr_r[7]_i_2 
       (.I0(hard_err_cntr_r1),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(\hard_err_cntr_r_reg[0] ),
        .O(E));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \hard_err_cntr_r[7]_i_4 
       (.I0(hard_err_rst_int_reg_1),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(s_level_out_d5),
        .O(hard_err_cntr_r1));
  LUT6 #(
    .INIT(64'h00000000FF020F02)) 
    hard_err_rst_int_i_1
       (.I0(hard_err_rst_int),
        .I1(s_level_out_d5),
        .I2(hard_err_rst_int_reg_0),
        .I3(hard_err_rst_int_reg_1),
        .I4(hard_err_rst_int_reg_2),
        .I5(SR),
        .O(hard_err_rst_int_reg));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized2
   (out,
    s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    s_level_out_d6_reg_0);
  output out;
  input s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input s_level_out_d6_reg_0;

  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  wire s_level_out_d6_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d3;
  assign p_level_in_int = s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(s_level_out_d6_reg_0),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(s_level_out_d6_reg_0),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(s_level_out_d6_reg_0),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(s_level_out_d6_reg_0),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(s_level_out_d6_reg_0),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(s_level_out_d6_reg_0),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized3
   (cbcc_reset_cbstg2_rd_clk,
    overflow_flag_c,
    user_clk);
  input cbcc_reset_cbstg2_rd_clk;
  input overflow_flag_c;
  input user_clk;

  wire cbcc_reset_cbstg2_rd_clk;
  wire overflow_flag_c;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(overflow_flag_c),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(cbcc_reset_cbstg2_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(cbcc_reset_cbstg2_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(cbcc_reset_cbstg2_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(cbcc_reset_cbstg2_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(cbcc_reset_cbstg2_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(cbcc_reset_cbstg2_rd_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_cdc_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized3_35
   (out,
    cbcc_fifo_reset_rd_clk,
    wr_err_c,
    user_clk);
  output out;
  input cbcc_fifo_reset_rd_clk;
  input wr_err_c;
  input user_clk;

  wire cbcc_fifo_reset_rd_clk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [31:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire user_clk;
  wire wr_err_c;

  assign out = s_level_out_d5;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_aurora_64b66b_pcs_pma_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_100
       (.I0(1'b0),
        .O(s_level_out_bus_d3[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_101
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_102
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_103
       (.I0(1'b0),
        .O(s_level_out_bus_d4[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_104
       (.I0(1'b0),
        .O(s_level_out_bus_d4[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_105
       (.I0(1'b0),
        .O(s_level_out_bus_d4[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_106
       (.I0(1'b0),
        .O(s_level_out_bus_d4[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_107
       (.I0(1'b0),
        .O(s_level_out_bus_d4[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_108
       (.I0(1'b0),
        .O(s_level_out_bus_d4[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_109
       (.I0(1'b0),
        .O(s_level_out_bus_d4[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_110
       (.I0(1'b0),
        .O(s_level_out_bus_d4[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_111
       (.I0(1'b0),
        .O(s_level_out_bus_d4[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_112
       (.I0(1'b0),
        .O(s_level_out_bus_d4[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_113
       (.I0(1'b0),
        .O(s_level_out_bus_d4[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_114
       (.I0(1'b0),
        .O(s_level_out_bus_d4[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_115
       (.I0(1'b0),
        .O(s_level_out_bus_d4[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_116
       (.I0(1'b0),
        .O(s_level_out_bus_d4[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_117
       (.I0(1'b0),
        .O(s_level_out_bus_d4[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_118
       (.I0(1'b0),
        .O(s_level_out_bus_d4[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_119
       (.I0(1'b0),
        .O(s_level_out_bus_d4[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_120
       (.I0(1'b0),
        .O(s_level_out_bus_d4[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_121
       (.I0(1'b0),
        .O(s_level_out_bus_d4[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_122
       (.I0(1'b0),
        .O(s_level_out_bus_d4[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_123
       (.I0(1'b0),
        .O(s_level_out_bus_d4[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_124
       (.I0(1'b0),
        .O(s_level_out_bus_d4[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_125
       (.I0(1'b0),
        .O(s_level_out_bus_d4[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_126
       (.I0(1'b0),
        .O(s_level_out_bus_d4[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_127
       (.I0(1'b0),
        .O(s_level_out_bus_d4[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_128
       (.I0(1'b0),
        .O(s_level_out_bus_d4[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_129
       (.I0(1'b0),
        .O(s_level_out_bus_d4[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_130
       (.I0(1'b0),
        .O(s_level_out_bus_d4[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_131
       (.I0(1'b0),
        .O(s_level_out_bus_d4[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_132
       (.I0(1'b0),
        .O(s_level_out_bus_d4[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_133
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_134
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_135
       (.I0(1'b0),
        .O(s_level_out_bus_d5[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_136
       (.I0(1'b0),
        .O(s_level_out_bus_d5[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_137
       (.I0(1'b0),
        .O(s_level_out_bus_d5[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_138
       (.I0(1'b0),
        .O(s_level_out_bus_d5[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_139
       (.I0(1'b0),
        .O(s_level_out_bus_d5[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_140
       (.I0(1'b0),
        .O(s_level_out_bus_d5[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_141
       (.I0(1'b0),
        .O(s_level_out_bus_d5[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_142
       (.I0(1'b0),
        .O(s_level_out_bus_d5[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_143
       (.I0(1'b0),
        .O(s_level_out_bus_d5[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_144
       (.I0(1'b0),
        .O(s_level_out_bus_d5[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_145
       (.I0(1'b0),
        .O(s_level_out_bus_d5[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_146
       (.I0(1'b0),
        .O(s_level_out_bus_d5[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_147
       (.I0(1'b0),
        .O(s_level_out_bus_d5[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_148
       (.I0(1'b0),
        .O(s_level_out_bus_d5[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_149
       (.I0(1'b0),
        .O(s_level_out_bus_d5[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_150
       (.I0(1'b0),
        .O(s_level_out_bus_d5[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_151
       (.I0(1'b0),
        .O(s_level_out_bus_d5[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_152
       (.I0(1'b0),
        .O(s_level_out_bus_d5[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_153
       (.I0(1'b0),
        .O(s_level_out_bus_d5[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_154
       (.I0(1'b0),
        .O(s_level_out_bus_d5[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_155
       (.I0(1'b0),
        .O(s_level_out_bus_d5[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_156
       (.I0(1'b0),
        .O(s_level_out_bus_d5[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_157
       (.I0(1'b0),
        .O(s_level_out_bus_d5[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_158
       (.I0(1'b0),
        .O(s_level_out_bus_d5[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_159
       (.I0(1'b0),
        .O(s_level_out_bus_d5[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_160
       (.I0(1'b0),
        .O(s_level_out_bus_d5[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_161
       (.I0(1'b0),
        .O(s_level_out_bus_d5[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_162
       (.I0(1'b0),
        .O(s_level_out_bus_d5[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_163
       (.I0(1'b0),
        .O(s_level_out_bus_d5[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_164
       (.I0(1'b0),
        .O(s_level_out_bus_d5[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_165
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_166
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_167
       (.I0(1'b0),
        .O(s_level_out_bus_d6[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_168
       (.I0(1'b0),
        .O(s_level_out_bus_d6[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_169
       (.I0(1'b0),
        .O(s_level_out_bus_d6[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_170
       (.I0(1'b0),
        .O(s_level_out_bus_d6[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_171
       (.I0(1'b0),
        .O(s_level_out_bus_d6[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_172
       (.I0(1'b0),
        .O(s_level_out_bus_d6[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_173
       (.I0(1'b0),
        .O(s_level_out_bus_d6[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_174
       (.I0(1'b0),
        .O(s_level_out_bus_d6[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_175
       (.I0(1'b0),
        .O(s_level_out_bus_d6[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_176
       (.I0(1'b0),
        .O(s_level_out_bus_d6[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_177
       (.I0(1'b0),
        .O(s_level_out_bus_d6[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_178
       (.I0(1'b0),
        .O(s_level_out_bus_d6[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_179
       (.I0(1'b0),
        .O(s_level_out_bus_d6[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_180
       (.I0(1'b0),
        .O(s_level_out_bus_d6[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_181
       (.I0(1'b0),
        .O(s_level_out_bus_d6[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_182
       (.I0(1'b0),
        .O(s_level_out_bus_d6[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_183
       (.I0(1'b0),
        .O(s_level_out_bus_d6[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_184
       (.I0(1'b0),
        .O(s_level_out_bus_d6[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_185
       (.I0(1'b0),
        .O(s_level_out_bus_d6[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_186
       (.I0(1'b0),
        .O(s_level_out_bus_d6[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_187
       (.I0(1'b0),
        .O(s_level_out_bus_d6[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_188
       (.I0(1'b0),
        .O(s_level_out_bus_d6[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_189
       (.I0(1'b0),
        .O(s_level_out_bus_d6[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_190
       (.I0(1'b0),
        .O(s_level_out_bus_d6[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_191
       (.I0(1'b0),
        .O(s_level_out_bus_d6[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_192
       (.I0(1'b0),
        .O(s_level_out_bus_d6[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_193
       (.I0(1'b0),
        .O(s_level_out_bus_d6[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_194
       (.I0(1'b0),
        .O(s_level_out_bus_d6[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_195
       (.I0(1'b0),
        .O(s_level_out_bus_d6[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_196
       (.I0(1'b0),
        .O(s_level_out_bus_d6[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_197
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_198
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(s_level_out_bus_d2[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(s_level_out_bus_d2[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(s_level_out_bus_d2[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(s_level_out_bus_d2[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(s_level_out_bus_d2[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(s_level_out_bus_d2[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(s_level_out_bus_d2[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(s_level_out_bus_d2[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(s_level_out_bus_d2[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(s_level_out_bus_d2[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(s_level_out_bus_d2[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(s_level_out_bus_d2[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(s_level_out_bus_d2[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(s_level_out_bus_d2[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(s_level_out_bus_d2[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(s_level_out_bus_d2[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(s_level_out_bus_d2[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(s_level_out_bus_d2[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(s_level_out_bus_d2[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(s_level_out_bus_d2[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(s_level_out_bus_d2[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(s_level_out_bus_d2[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(s_level_out_bus_d2[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(s_level_out_bus_d2[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(s_level_out_bus_d2[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(s_level_out_bus_d2[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(s_level_out_bus_d2[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(s_level_out_bus_d2[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(s_level_out_bus_d2[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(s_level_out_bus_d2[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(s_level_out_bus_d3[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(s_level_out_bus_d3[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(s_level_out_bus_d3[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(s_level_out_bus_d3[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(s_level_out_bus_d3[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(s_level_out_bus_d3[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(s_level_out_bus_d3[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(s_level_out_bus_d3[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(s_level_out_bus_d3[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(s_level_out_bus_d3[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(s_level_out_bus_d3[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(s_level_out_bus_d3[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(s_level_out_bus_d3[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(s_level_out_bus_d3[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(s_level_out_bus_d3[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(s_level_out_bus_d3[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(s_level_out_bus_d3[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(s_level_out_bus_d3[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(s_level_out_bus_d3[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d1_aurora_64b66b_pcs_pma_cdc_to[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(s_level_out_bus_d3[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(s_level_out_bus_d3[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(s_level_out_bus_d3[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(s_level_out_bus_d3[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(s_level_out_bus_d3[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(s_level_out_bus_d3[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(s_level_out_bus_d3[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(s_level_out_bus_d3[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(s_level_out_bus_d3[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(s_level_out_bus_d3[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wr_err_c),
        .Q(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .R(cbcc_fifo_reset_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(s_level_out_d2),
        .R(cbcc_fifo_reset_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(cbcc_fifo_reset_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(cbcc_fifo_reset_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(cbcc_fifo_reset_rd_clk));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(cbcc_fifo_reset_rd_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_common_logic_cbcc" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_common_logic_cbcc
   (cb_bit_err_out,
    in0,
    master_do_rd_en_i,
    all_vld_btf_flag_i,
    cbcc_fifo_reset_wr_clk,
    out,
    all_vld_btf_out_reg_0,
    START_CB_WRITES_OUT,
    cbcc_fifo_reset_rd_clk,
    master_do_rd_en_out_reg_0,
    user_clk,
    ANY_VLD_BTF_FLAG);
  output cb_bit_err_out;
  output in0;
  output master_do_rd_en_i;
  output all_vld_btf_flag_i;
  input cbcc_fifo_reset_wr_clk;
  input out;
  input all_vld_btf_out_reg_0;
  input START_CB_WRITES_OUT;
  input cbcc_fifo_reset_rd_clk;
  input master_do_rd_en_out_reg_0;
  input user_clk;
  input ANY_VLD_BTF_FLAG;

  wire ANY_VLD_BTF_FLAG;
  wire START_CB_WRITES_OUT;
  wire all_vld_btf_flag_i;
  wire all_vld_btf_out_reg_0;
  wire cb_bit_err_out;
  wire cbcc_fifo_reset_rd_clk;
  wire cbcc_fifo_reset_wr_clk;
  wire in0;
  wire master_do_rd_en_i;
  wire master_do_rd_en_out_reg_0;
  wire out;
  wire second_cb_write_failed;
  wire user_clk;

  FDRE all_start_cb_writes_out_reg
       (.C(all_vld_btf_out_reg_0),
        .CE(1'b1),
        .D(START_CB_WRITES_OUT),
        .Q(in0),
        .R(cbcc_fifo_reset_wr_clk));
  FDRE all_vld_btf_out_reg
       (.C(all_vld_btf_out_reg_0),
        .CE(1'b1),
        .D(ANY_VLD_BTF_FLAG),
        .Q(all_vld_btf_flag_i),
        .R(cbcc_fifo_reset_wr_clk));
  FDRE cb_bit_err_out_reg
       (.C(all_vld_btf_out_reg_0),
        .CE(1'b1),
        .D(second_cb_write_failed),
        .Q(cb_bit_err_out),
        .R(cbcc_fifo_reset_wr_clk));
  FDRE master_do_rd_en_out_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(master_do_rd_en_out_reg_0),
        .Q(master_do_rd_en_i),
        .R(cbcc_fifo_reset_rd_clk));
  FDRE #(
    .INIT(1'b0)) 
    second_cb_write_failed_reg
       (.C(all_vld_btf_out_reg_0),
        .CE(1'b1),
        .D(out),
        .Q(second_cb_write_failed),
        .R(cbcc_fifo_reset_wr_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_common_reset_cbcc" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_common_reset_cbcc
   (SR,
    cbcc_fifo_reset_to_fifo_rd_clk,
    stg5_reg,
    cbcc_reset_cbstg2_rd_clk,
    cbcc_fifo_reset_wr_clk,
    cbcc_fifo_reset_rd_clk,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg,
    user_clk,
    out,
    cb_bit_err_out);
  output [0:0]SR;
  output cbcc_fifo_reset_to_fifo_rd_clk;
  output stg5_reg;
  output cbcc_reset_cbstg2_rd_clk;
  output cbcc_fifo_reset_wr_clk;
  output cbcc_fifo_reset_rd_clk;
  input [0:0]stg1_aurora_64b66b_pcs_pma_cdc_to_reg;
  input user_clk;
  input out;
  input cb_bit_err_out;

  wire [0:0]SR;
  wire [3:0]cb_bit_err_ext_cnt;
  wire \cb_bit_err_ext_cnt[0]_i_1_n_0 ;
  wire \cb_bit_err_ext_cnt[1]_i_1_n_0 ;
  wire \cb_bit_err_ext_cnt[2]_i_1_n_0 ;
  wire \cb_bit_err_ext_cnt[3]_i_1_n_0 ;
  wire cb_bit_err_out;
  wire cbc_rd_if_reset;
  wire cbc_wr_if_reset;
  wire cbcc_fifo_reset_rd_clk;
  wire cbcc_fifo_reset_to_fifo_rd_clk;
  wire cbcc_fifo_reset_to_fifo_rd_clk_dlyd;
  wire cbcc_fifo_reset_to_fifo_wr_clk_dlyd;
  wire cbcc_fifo_reset_wr_clk;
  wire cbcc_reset_cbstg2_rd_clk;
  wire fifo_reset_comb;
  wire fifo_reset_comb_read_clk;
  wire fifo_reset_comb_user_clk;
  wire fifo_reset_rd;
  wire out;
  wire rd_stg1;
  wire reset_cbcc_comb;
  wire [0:0]stg1_aurora_64b66b_pcs_pma_cdc_to_reg;
  wire stg5_reg;
  wire u_cdc_chan_bond_reset_n_0;
  wire u_rst_sync_reset_rd_clk_n_0;
  wire u_rst_sync_reset_to_fifo_rd_clk_n_1;
  wire u_rst_sync_reset_to_fifo_wr_clk_n_1;
  wire u_rst_sync_reset_wr_clk_n_0;
  wire u_rst_sync_rst_cbcc_rd_clk_n_0;
  wire u_rst_sync_rst_cbcc_rd_clk_n_1;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF5554)) 
    \cb_bit_err_ext_cnt[0]_i_1 
       (.I0(cb_bit_err_ext_cnt[0]),
        .I1(cb_bit_err_ext_cnt[2]),
        .I2(cb_bit_err_ext_cnt[3]),
        .I3(cb_bit_err_ext_cnt[1]),
        .I4(cb_bit_err_out),
        .O(\cb_bit_err_ext_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF9998)) 
    \cb_bit_err_ext_cnt[1]_i_1 
       (.I0(cb_bit_err_ext_cnt[0]),
        .I1(cb_bit_err_ext_cnt[1]),
        .I2(cb_bit_err_ext_cnt[2]),
        .I3(cb_bit_err_ext_cnt[3]),
        .I4(cb_bit_err_out),
        .O(\cb_bit_err_ext_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFE1E0)) 
    \cb_bit_err_ext_cnt[2]_i_1 
       (.I0(cb_bit_err_ext_cnt[1]),
        .I1(cb_bit_err_ext_cnt[0]),
        .I2(cb_bit_err_ext_cnt[2]),
        .I3(cb_bit_err_ext_cnt[3]),
        .I4(cb_bit_err_out),
        .O(\cb_bit_err_ext_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \cb_bit_err_ext_cnt[3]_i_1 
       (.I0(cb_bit_err_ext_cnt[0]),
        .I1(cb_bit_err_ext_cnt[1]),
        .I2(cb_bit_err_ext_cnt[2]),
        .I3(cb_bit_err_ext_cnt[3]),
        .I4(cb_bit_err_out),
        .O(\cb_bit_err_ext_cnt[3]_i_1_n_0 ));
  FDRE \cb_bit_err_ext_cnt_reg[0] 
       (.C(out),
        .CE(1'b1),
        .D(\cb_bit_err_ext_cnt[0]_i_1_n_0 ),
        .Q(cb_bit_err_ext_cnt[0]),
        .R(stg1_aurora_64b66b_pcs_pma_cdc_to_reg));
  FDRE \cb_bit_err_ext_cnt_reg[1] 
       (.C(out),
        .CE(1'b1),
        .D(\cb_bit_err_ext_cnt[1]_i_1_n_0 ),
        .Q(cb_bit_err_ext_cnt[1]),
        .R(stg1_aurora_64b66b_pcs_pma_cdc_to_reg));
  FDRE \cb_bit_err_ext_cnt_reg[2] 
       (.C(out),
        .CE(1'b1),
        .D(\cb_bit_err_ext_cnt[2]_i_1_n_0 ),
        .Q(cb_bit_err_ext_cnt[2]),
        .R(stg1_aurora_64b66b_pcs_pma_cdc_to_reg));
  FDRE \cb_bit_err_ext_cnt_reg[3] 
       (.C(out),
        .CE(1'b1),
        .D(\cb_bit_err_ext_cnt[3]_i_1_n_0 ),
        .Q(cb_bit_err_ext_cnt[3]),
        .R(stg1_aurora_64b66b_pcs_pma_cdc_to_reg));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    cbc_rd_if_reset_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(u_rst_sync_reset_to_fifo_rd_clk_n_1),
        .Q(cbc_rd_if_reset),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    cbc_wr_if_reset_reg
       (.C(out),
        .CE(1'b1),
        .D(u_rst_sync_reset_to_fifo_wr_clk_n_1),
        .Q(cbc_wr_if_reset),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cbcc_fifo_reset_rd_clk_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(u_rst_sync_reset_rd_clk_n_0),
        .Q(cbcc_fifo_reset_rd_clk),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    cbcc_fifo_reset_to_fifo_rd_clk_dlyd_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(cbcc_fifo_reset_to_fifo_rd_clk),
        .Q(cbcc_fifo_reset_to_fifo_rd_clk_dlyd),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    cbcc_fifo_reset_to_fifo_wr_clk_dlyd_reg
       (.C(out),
        .CE(1'b1),
        .D(SR),
        .Q(cbcc_fifo_reset_to_fifo_wr_clk_dlyd),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cbcc_fifo_reset_wr_clk_reg
       (.C(out),
        .CE(1'b1),
        .D(u_rst_sync_reset_wr_clk_n_0),
        .Q(cbcc_fifo_reset_wr_clk),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE cbcc_reset_cbstg2_rd_clk_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(u_rst_sync_rst_cbcc_rd_clk_n_1),
        .Q(cbcc_reset_cbstg2_rd_clk),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    fifo_reset_rd_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(fifo_reset_rd),
        .S(cbcc_reset_cbstg2_rd_clk));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    rd_stg1_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(u_rst_sync_rst_cbcc_rd_clk_n_0),
        .Q(rd_stg1),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    reset_cbcc_comb_reg
       (.C(out),
        .CE(1'b1),
        .D(u_cdc_chan_bond_reset_n_0),
        .Q(reset_cbcc_comb),
        .R(1'b0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_cdc_sync__parameterized1_26 u_cdc_chan_bond_reset
       (.Q(cb_bit_err_ext_cnt),
        .\cb_bit_err_ext_cnt_reg[3] (u_cdc_chan_bond_reset_n_0),
        .out(out),
        .reset_cbcc_comb_reg(stg1_aurora_64b66b_pcs_pma_cdc_to_reg));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_27 u_rst_sync_cbcc_fifo_reset_rd_clk
       (.in0(fifo_reset_comb_user_clk),
        .stg5_reg_0(fifo_reset_comb_read_clk),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_28 u_rst_sync_cbcc_only_reset_rd_clk
       (.stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(stg1_aurora_64b66b_pcs_pma_cdc_to_reg),
        .stg5_reg_0(stg5_reg),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized2 u_rst_sync_fifo_reset_user_clk
       (.in0(fifo_reset_comb),
        .out(out),
        .stg11_reg_0(fifo_reset_comb_user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_29 u_rst_sync_r_sync3
       (.in0(fifo_reset_rd),
        .out(out),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(reset_cbcc_comb),
        .stg5_reg_0(fifo_reset_comb));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_30 u_rst_sync_reset_rd_clk
       (.in0(cbc_rd_if_reset),
        .stg3_reg_0(u_rst_sync_reset_rd_clk_n_0),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized3 u_rst_sync_reset_to_fifo_rd_clk
       (.cbcc_fifo_reset_to_fifo_rd_clk(cbcc_fifo_reset_to_fifo_rd_clk),
        .cbcc_fifo_reset_to_fifo_rd_clk_dlyd(cbcc_fifo_reset_to_fifo_rd_clk_dlyd),
        .cbcc_fifo_reset_to_fifo_rd_clk_dlyd_reg(u_rst_sync_reset_to_fifo_rd_clk_n_1),
        .in0(cbc_rd_if_reset),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(fifo_reset_comb_read_clk),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized3_31 u_rst_sync_reset_to_fifo_wr_clk
       (.SR(SR),
        .cbcc_fifo_reset_to_fifo_wr_clk_dlyd(cbcc_fifo_reset_to_fifo_wr_clk_dlyd),
        .cbcc_fifo_reset_to_fifo_wr_clk_dlyd_reg(u_rst_sync_reset_to_fifo_wr_clk_n_1),
        .in0(cbc_wr_if_reset),
        .out(out),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(fifo_reset_comb_user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_32 u_rst_sync_reset_wr_clk
       (.in0(cbc_wr_if_reset),
        .out(out),
        .stg3_reg_0(u_rst_sync_reset_wr_clk_n_0));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_33 u_rst_sync_rst_cbcc_rd_clk
       (.rd_stg1(rd_stg1),
        .rd_stg1_reg(u_rst_sync_rst_cbcc_rd_clk_n_1),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0(reset_cbcc_comb),
        .stg5_reg_0(u_rst_sync_rst_cbcc_rd_clk_n_0),
        .user_clk(user_clk));
endmodule

(* BACKWARD_COMP_MODE1 = "1'b0" *) (* BACKWARD_COMP_MODE2 = "1'b0" *) (* BACKWARD_COMP_MODE3 = "1'b0" *) 
(* CC_FREQ_FACTOR = "5'b11000" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) 
(* INTER_CB_GAP = "5'b01001" *) (* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_core" *) (* SIM_GTXRESET_SPEEDUP = "TRUE" *) 
(* STABLE_CLOCK_PERIOD = "12" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_core
   (s_axi_tx_tdata,
    s_axi_tx_tvalid,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tvalid,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1,
    hard_err,
    soft_err,
    channel_up,
    lane_up,
    mmcm_not_locked,
    user_clk,
    sync_clk,
    sysreset_to_core,
    gt_rxcdrovrden_in,
    power_down,
    loopback,
    pma_init,
    gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in,
    gt_to_common_qpllreset_out,
    gt_qplllock_in,
    gt_qpllrefclklost_in,
    drp_clk_in,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_rresp,
    s_axi_rready,
    init_clk,
    link_reset_out,
    gt_pll_lock,
    sys_reset_out,
    tx_out_clk);
  input [63:0]s_axi_tx_tdata;
  input s_axi_tx_tvalid;
  output s_axi_tx_tready;
  output [63:0]m_axi_rx_tdata;
  output m_axi_rx_tvalid;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1;
  output hard_err;
  output soft_err;
  output channel_up;
  output lane_up;
  input mmcm_not_locked;
  input user_clk;
  input sync_clk;
  input sysreset_to_core;
  input gt_rxcdrovrden_in;
  input power_down;
  input [2:0]loopback;
  input pma_init;
  input gt_qpllclk_quad1_in;
  input gt_qpllrefclk_quad1_in;
  output gt_to_common_qpllreset_out;
  input gt_qplllock_in;
  input gt_qpllrefclklost_in;
  input drp_clk_in;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output s_axi_bvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output [1:0]s_axi_rresp;
  input s_axi_rready;
  input init_clk;
  output link_reset_out;
  output gt_pll_lock;
  output sys_reset_out;
  output tx_out_clk;

  wire \<const0> ;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_103;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_105;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_107;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_108;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_111;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_91;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_92;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_93;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_94;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_95;
  wire aurora_64b66b_pcs_pma_wrapper_i_n_96;
  wire aurora_lane_0_i_n_77;
  wire [65:0]\cbcc_gtx0_i/fifo_dout_i ;
  wire \channel_init_sm_i/reset_lanes_c ;
  wire channel_up;
  wire channel_up_tx_if;
  wire check_polarity_i;
  wire core_reset_logic_i_n_3;
  wire do_cc_i;
  wire drp_clk_in;
  wire [8:0]drpaddr_in_i;
  wire [15:0]drpdi_in_i;
  wire [15:0]drpdo_out_i;
  wire drpen_in_i;
  wire drprdy_out_i;
  wire drpwe_in_i;
  wire enable_err_detect_i;
  wire fsm_resetdone;
  wire gen_cc_i;
  wire gen_ch_bond_i;
  wire gen_na_idles_i;
  wire global_logic_i_n_10;
  wire global_logic_i_n_14;
  wire global_logic_i_n_15;
  wire got_idles_i;
  wire gt_pll_lock;
  wire gt_qpllclk_quad1_in;
  wire gt_qplllock_in;
  wire gt_qpllrefclk_quad1_in;
  wire gt_rxcdrovrden_in;
  wire gt_to_common_qpllreset_out;
  wire hard_err;
  wire hard_err_i;
  wire illegal_btf_i;
  wire init_clk;
  wire \lane_init_sm_i/ready_r_reg0 ;
  wire \lane_init_sm_i/reset_count_r0 ;
  wire lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [63:0]m_axi_rx_tdata;
  wire m_axi_rx_tvalid;
  wire mmcm_not_locked;
  wire p_0_in;
  wire [55:52]p_1_in;
  wire pma_init;
  wire power_down;
  wire remote_ready_i;
  wire reset_lanes_i;
  wire rst_drp;
  wire rx_lossofsync_i;
  wire rx_neg_i;
  wire [0:63]rx_pe_data_i;
  wire rx_pe_data_v_i;
  wire rx_polarity_i;
  wire \rx_stream_datapath_i/RX_D0 ;
  wire rxdatavalid_i;
  wire rxn;
  wire rxp;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [15:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [63:0]s_axi_tx_tdata;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire \scrambler_64b66b_gtx0_i/p_153_in ;
  wire \scrambler_64b66b_gtx0_i/p_157_in ;
  wire \scrambler_64b66b_gtx0_i/p_161_in ;
  wire \scrambler_64b66b_gtx0_i/p_165_in ;
  wire \scrambler_64b66b_gtx0_i/p_169_in ;
  wire \scrambler_64b66b_gtx0_i/p_173_in ;
  wire \scrambler_64b66b_gtx0_i/tempData0 ;
  wire \scrambler_64b66b_gtx0_i/tempData012_out ;
  wire \scrambler_64b66b_gtx0_i/tempData016_out ;
  wire \scrambler_64b66b_gtx0_i/tempData020_out ;
  wire \scrambler_64b66b_gtx0_i/tempData04_out ;
  wire \scrambler_64b66b_gtx0_i/tempData08_out ;
  wire soft_err;
  wire standard_cc_module_i_n_2;
  wire \sym_gen_i/rst_pma_init_usrclk ;
  wire sync_clk;
  wire sys_reset_out;
  wire sysreset_to_core;
  wire sysreset_to_core_sync;
  wire [0:57]tx_data_i;
  wire tx_header_0_i;
  wire tx_header_1_i;
  wire tx_out_clk;
  wire [0:63]tx_pe_data_i;
  wire tx_pe_data_v_i;
  wire tx_reset_i;
  wire \tx_stream_control_sm_i/R0 ;
  wire \tx_stream_control_sm_i/do_cc_r ;
  wire \tx_stream_control_sm_i/do_cc_r_reg0 ;
  wire \tx_stream_control_sm_i/extend_cc_r ;
  wire tx_stream_i_n_5;
  wire txdatavalid_i;
  wire txdatavalid_symgen_i;
  wire txn;
  wire txp;
  wire user_clk;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15:0] = \^s_axi_rdata [15:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_WRAPPER aurora_64b66b_pcs_pma_wrapper_i
       (.D({tx_header_1_i,tx_header_0_i}),
        .DRPADDR_IN(drpaddr_in_i),
        .DRPDI_IN(drpdi_in_i),
        .DRPDO_OUT(drpdo_out_i),
        .DRPRDY_OUT(drprdy_out_i),
        .ILLEGAL_BTF_reg(aurora_64b66b_pcs_pma_wrapper_i_n_108),
        .Q({aurora_64b66b_pcs_pma_wrapper_i_n_91,aurora_64b66b_pcs_pma_wrapper_i_n_92,aurora_64b66b_pcs_pma_wrapper_i_n_93,aurora_64b66b_pcs_pma_wrapper_i_n_94,aurora_64b66b_pcs_pma_wrapper_i_n_95,aurora_64b66b_pcs_pma_wrapper_i_n_96,\scrambler_64b66b_gtx0_i/p_173_in ,\scrambler_64b66b_gtx0_i/p_169_in ,\scrambler_64b66b_gtx0_i/p_165_in ,\scrambler_64b66b_gtx0_i/p_161_in ,\scrambler_64b66b_gtx0_i/p_157_in ,\scrambler_64b66b_gtx0_i/p_153_in }),
        .RX_NEG_OUT_reg_0(rx_neg_i),
        .\SCRAMBLED_DATA_OUT_reg[5] ({\scrambler_64b66b_gtx0_i/tempData020_out ,\scrambler_64b66b_gtx0_i/tempData016_out ,\scrambler_64b66b_gtx0_i/tempData012_out ,\scrambler_64b66b_gtx0_i/tempData08_out ,\scrambler_64b66b_gtx0_i/tempData04_out ,\scrambler_64b66b_gtx0_i/tempData0 }),
        .channel_up_tx_if(channel_up_tx_if),
        .drp_clk_in(drp_clk_in),
        .drpen_in_i(drpen_in_i),
        .drpwe_in_i(drpwe_in_i),
        .enable_err_detect_i(enable_err_detect_i),
        .extend_cc_r(\tx_stream_control_sm_i/extend_cc_r ),
        .extend_cc_r_reg(do_cc_i),
        .gt_pll_lock(gt_pll_lock),
        .gt_qpllclk_quad1_in(gt_qpllclk_quad1_in),
        .gt_qplllock_in(gt_qplllock_in),
        .gt_qpllrefclk_quad1_in(gt_qpllrefclk_quad1_in),
        .gt_rxcdrovrden_in(gt_rxcdrovrden_in),
        .gt_to_common_qpllreset_out(gt_to_common_qpllreset_out),
        .hard_err_usr_reg_0(channel_up),
        .hold_reg_reg(aurora_64b66b_pcs_pma_wrapper_i_n_111),
        .illegal_btf_i(illegal_btf_i),
        .in0(fsm_resetdone),
        .init_clk(init_clk),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .mmcm_not_locked(mmcm_not_locked),
        .rst_drp(rst_drp),
        .rst_pma_init_usrclk(\sym_gen_i/rst_pma_init_usrclk ),
        .rx_lossofsync_i(rx_lossofsync_i),
        .rxdatavalid_i(rxdatavalid_i),
        .rxn(rxn),
        .rxp(rxp),
        .s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg(check_polarity_i),
        .s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg_0(rx_polarity_i),
        .stg1_aurora_64b66b_pcs_pma_cdc_to_reg(sys_reset_out),
        .sync_clk(sync_clk),
        .tx_data_i({tx_data_i[0],tx_data_i[1],tx_data_i[2],tx_data_i[3],tx_data_i[4],tx_data_i[5],tx_data_i[6],tx_data_i[7],tx_data_i[8],tx_data_i[9],tx_data_i[10],tx_data_i[11],tx_data_i[12],tx_data_i[13],tx_data_i[14],tx_data_i[15],tx_data_i[16],tx_data_i[17],tx_data_i[18],tx_data_i[19],tx_data_i[20],tx_data_i[21],tx_data_i[22],tx_data_i[23],tx_data_i[24],tx_data_i[25],tx_data_i[26],tx_data_i[27],tx_data_i[28],tx_data_i[29],tx_data_i[30],tx_data_i[31],tx_data_i[32],tx_data_i[33],tx_data_i[34],tx_data_i[35],tx_data_i[36],tx_data_i[37],tx_data_i[38],tx_data_i[39],tx_data_i[40],tx_data_i[41],tx_data_i[42],tx_data_i[43],tx_data_i[44],tx_data_i[45],tx_data_i[46],tx_data_i[47],tx_data_i[48],tx_data_i[49],tx_data_i[50],tx_data_i[51],tx_data_i[52],tx_data_i[53],tx_data_i[54],tx_data_i[55],tx_data_i[56],tx_data_i[57]}),
        .tx_out_clk(tx_out_clk),
        .tx_reset_i(tx_reset_i),
        .txdatavalid_i(txdatavalid_i),
        .txdatavalid_symgen_i(txdatavalid_symgen_i),
        .txn(txn),
        .txp(txp),
        .\txseq_counter_i_reg[0]_0 (aurora_64b66b_pcs_pma_wrapper_i_n_103),
        .\txseq_counter_i_reg[1]_0 (aurora_64b66b_pcs_pma_wrapper_i_n_105),
        .user_clk(user_clk),
        .user_clk_0(\cbcc_gtx0_i/fifo_dout_i ),
        .wr_err_rd_clk_sync_reg(aurora_64b66b_pcs_pma_wrapper_i_n_107));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_AURORA_LANE aurora_lane_0_i
       (.D({tx_header_1_i,tx_header_0_i}),
        .HARD_ERR_reg(aurora_64b66b_pcs_pma_wrapper_i_n_107),
        .Q({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31],tx_pe_data_i[32],tx_pe_data_i[33],tx_pe_data_i[34],tx_pe_data_i[35],tx_pe_data_i[36],tx_pe_data_i[37],tx_pe_data_i[38],tx_pe_data_i[39],tx_pe_data_i[40],tx_pe_data_i[41],tx_pe_data_i[42],tx_pe_data_i[43],tx_pe_data_i[44],tx_pe_data_i[45],tx_pe_data_i[46],tx_pe_data_i[47],tx_pe_data_i[52],tx_pe_data_i[53],tx_pe_data_i[54],tx_pe_data_i[55],tx_pe_data_i[56],tx_pe_data_i[57],tx_pe_data_i[58],tx_pe_data_i[59],tx_pe_data_i[60],tx_pe_data_i[61],tx_pe_data_i[62],tx_pe_data_i[63]}),
        .RESET(rst_drp),
        .\RX_DATA_REG_reg[0] (aurora_64b66b_pcs_pma_wrapper_i_n_111),
        .RX_HEADER_1_REG_reg(\cbcc_gtx0_i/fifo_dout_i ),
        .RX_IDLE_reg(sys_reset_out),
        .\RX_PE_DATA_reg[0] ({rx_pe_data_i[0],rx_pe_data_i[1],rx_pe_data_i[2],rx_pe_data_i[3],rx_pe_data_i[4],rx_pe_data_i[5],rx_pe_data_i[6],rx_pe_data_i[7],rx_pe_data_i[8],rx_pe_data_i[9],rx_pe_data_i[10],rx_pe_data_i[11],rx_pe_data_i[12],rx_pe_data_i[13],rx_pe_data_i[14],rx_pe_data_i[15],rx_pe_data_i[16],rx_pe_data_i[17],rx_pe_data_i[18],rx_pe_data_i[19],rx_pe_data_i[20],rx_pe_data_i[21],rx_pe_data_i[22],rx_pe_data_i[23],rx_pe_data_i[24],rx_pe_data_i[25],rx_pe_data_i[26],rx_pe_data_i[27],rx_pe_data_i[28],rx_pe_data_i[29],rx_pe_data_i[30],rx_pe_data_i[31],rx_pe_data_i[32],rx_pe_data_i[33],rx_pe_data_i[34],rx_pe_data_i[35],rx_pe_data_i[36],rx_pe_data_i[37],rx_pe_data_i[38],rx_pe_data_i[39],rx_pe_data_i[40],rx_pe_data_i[41],rx_pe_data_i[42],rx_pe_data_i[43],rx_pe_data_i[44],rx_pe_data_i[45],rx_pe_data_i[46],rx_pe_data_i[47],rx_pe_data_i[48],rx_pe_data_i[49],rx_pe_data_i[50],rx_pe_data_i[51],rx_pe_data_i[52],rx_pe_data_i[53],rx_pe_data_i[54],rx_pe_data_i[55],rx_pe_data_i[56],rx_pe_data_i[57],rx_pe_data_i[58],rx_pe_data_i[59],rx_pe_data_i[60],rx_pe_data_i[61],rx_pe_data_i[62],rx_pe_data_i[63]}),
        .\SCRAMBLED_DATA_OUT_reg[5] ({aurora_64b66b_pcs_pma_wrapper_i_n_91,aurora_64b66b_pcs_pma_wrapper_i_n_92,aurora_64b66b_pcs_pma_wrapper_i_n_93,aurora_64b66b_pcs_pma_wrapper_i_n_94,aurora_64b66b_pcs_pma_wrapper_i_n_95,aurora_64b66b_pcs_pma_wrapper_i_n_96,\scrambler_64b66b_gtx0_i/p_173_in ,\scrambler_64b66b_gtx0_i/p_169_in ,\scrambler_64b66b_gtx0_i/p_165_in ,\scrambler_64b66b_gtx0_i/p_161_in ,\scrambler_64b66b_gtx0_i/p_157_in ,\scrambler_64b66b_gtx0_i/p_153_in }),
        .SOFT_ERR_reg(aurora_lane_0_i_n_77),
        .SOFT_ERR_reg_0(aurora_64b66b_pcs_pma_wrapper_i_n_108),
        .\TX_DATA_reg[44] ({\scrambler_64b66b_gtx0_i/tempData020_out ,\scrambler_64b66b_gtx0_i/tempData016_out ,\scrambler_64b66b_gtx0_i/tempData012_out ,\scrambler_64b66b_gtx0_i/tempData08_out ,\scrambler_64b66b_gtx0_i/tempData04_out ,\scrambler_64b66b_gtx0_i/tempData0 }),
        .\TX_DATA_reg[59] (aurora_64b66b_pcs_pma_wrapper_i_n_105),
        .\TX_DATA_reg[59]_0 (tx_stream_i_n_5),
        .\TX_DATA_reg[63] ({tx_data_i[0],tx_data_i[1],tx_data_i[2],tx_data_i[3],tx_data_i[4],tx_data_i[5],tx_data_i[6],tx_data_i[7],tx_data_i[8],tx_data_i[9],tx_data_i[10],tx_data_i[11],tx_data_i[12],tx_data_i[13],tx_data_i[14],tx_data_i[15],tx_data_i[16],tx_data_i[17],tx_data_i[18],tx_data_i[19],tx_data_i[20],tx_data_i[21],tx_data_i[22],tx_data_i[23],tx_data_i[24],tx_data_i[25],tx_data_i[26],tx_data_i[27],tx_data_i[28],tx_data_i[29],tx_data_i[30],tx_data_i[31],tx_data_i[32],tx_data_i[33],tx_data_i[34],tx_data_i[35],tx_data_i[36],tx_data_i[37],tx_data_i[38],tx_data_i[39],tx_data_i[40],tx_data_i[41],tx_data_i[42],tx_data_i[43],tx_data_i[44],tx_data_i[45],tx_data_i[46],tx_data_i[47],tx_data_i[48],tx_data_i[49],tx_data_i[50],tx_data_i[51],tx_data_i[52],tx_data_i[53],tx_data_i[54],tx_data_i[55],tx_data_i[56],tx_data_i[57]}),
        .\TX_DATA_reg[63]_0 (global_logic_i_n_14),
        .TX_HEADER_1_reg(global_logic_i_n_10),
        .channel_up_tx_if(channel_up_tx_if),
        .check_polarity_r_reg(check_polarity_i),
        .enable_err_detect_i(enable_err_detect_i),
        .gen_na_idles_i(gen_na_idles_i),
        .got_idles_i(got_idles_i),
        .hard_err_i(hard_err_i),
        .illegal_btf_i(illegal_btf_i),
        .lane_up_flop_i(lane_up),
        .p_1_in(p_1_in),
        .ready_r_reg0(\lane_init_sm_i/ready_r_reg0 ),
        .remote_ready_i(remote_ready_i),
        .reset_count_r0(\lane_init_sm_i/reset_count_r0 ),
        .reset_lanes_c(\channel_init_sm_i/reset_lanes_c ),
        .reset_lanes_i(reset_lanes_i),
        .rst_pma_init_usrclk(\sym_gen_i/rst_pma_init_usrclk ),
        .rx_lossofsync_i(rx_lossofsync_i),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .rx_polarity_r_reg(rx_polarity_i),
        .rxdatavalid_i(rxdatavalid_i),
        .s_level_out_d1_aurora_64b66b_pcs_pma_cdc_to_reg(rx_neg_i),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .tx_reset_i(tx_reset_i),
        .txdatavalid_symgen_i(txdatavalid_symgen_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_AXI_TO_DRP axi_to_drp_i
       (.D(drpdo_out_i),
        .DRPRDY_OUT(drprdy_out_i),
        .Q(drpaddr_in_i),
        .RESET(rst_drp),
        .drp_clk_in(drp_clk_in),
        .\drpdi_in_reg[15]_0 (drpdi_in_i),
        .drpen_in_i(drpen_in_i),
        .drpwe_in_i(drpwe_in_i),
        .s_axi_araddr(s_axi_araddr[10:2]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[10:2]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[15:0]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_RESET_LOGIC core_reset_logic_i
       (.SYSTEM_RESET_reg_0(sys_reset_out),
        .SYSTEM_RESET_reg_1(core_reset_logic_i_n_3),
        .hard_err_i(hard_err_i),
        .in0(fsm_resetdone),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .power_down(power_down),
        .ready_r_reg0(\lane_init_sm_i/ready_r_reg0 ),
        .reset_count_r0(\lane_init_sm_i/reset_count_r0 ),
        .sysreset_to_core_sync(sysreset_to_core_sync),
        .tx_reset_i(tx_reset_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_GLOBAL_LOGIC global_logic_i
       (.CHANNEL_UP_RX_IF_reg(channel_up),
        .CHANNEL_UP_RX_IF_reg_0(p_0_in),
        .CHANNEL_UP_RX_IF_reg_1(global_logic_i_n_15),
        .CHANNEL_UP_TX_IF_reg(sys_reset_out),
        .E(\rx_stream_datapath_i/RX_D0 ),
        .Q({tx_pe_data_i[48],tx_pe_data_i[49],tx_pe_data_i[50],tx_pe_data_i[51]}),
        .R0(\tx_stream_control_sm_i/R0 ),
        .SR(reset_lanes_i),
        .\TX_DATA_reg[63] (aurora_64b66b_pcs_pma_wrapper_i_n_105),
        .channel_up_tx_if(channel_up_tx_if),
        .gen_cc_flop_0_i(global_logic_i_n_14),
        .gen_cc_i(gen_cc_i),
        .gen_ch_bond_i(gen_ch_bond_i),
        .gen_ch_bond_int_reg(global_logic_i_n_10),
        .gen_na_idles_i(gen_na_idles_i),
        .got_idles_i(got_idles_i),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .p_1_in(p_1_in),
        .remote_ready_i(remote_ready_i),
        .reset_lanes_c(\channel_init_sm_i/reset_lanes_c ),
        .rst_pma_init_usrclk(\sym_gen_i/rst_pma_init_usrclk ),
        .rx_pe_data_v_i(rx_pe_data_v_i),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .txdatavalid_i(txdatavalid_i),
        .user_clk(user_clk),
        .wait_for_lane_up_r_reg(core_reset_logic_i_n_3));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync gt_reset_sync
       (.RESET(rst_drp),
        .init_clk(init_clk),
        .pma_init(pma_init));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_0 reset_pb_sync
       (.sysreset_to_core(sysreset_to_core),
        .sysreset_to_core_sync(sysreset_to_core_sync),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_RX_STREAM rx_stream_i
       (.D({rx_pe_data_i[0],rx_pe_data_i[1],rx_pe_data_i[2],rx_pe_data_i[3],rx_pe_data_i[4],rx_pe_data_i[5],rx_pe_data_i[6],rx_pe_data_i[7],rx_pe_data_i[8],rx_pe_data_i[9],rx_pe_data_i[10],rx_pe_data_i[11],rx_pe_data_i[12],rx_pe_data_i[13],rx_pe_data_i[14],rx_pe_data_i[15],rx_pe_data_i[16],rx_pe_data_i[17],rx_pe_data_i[18],rx_pe_data_i[19],rx_pe_data_i[20],rx_pe_data_i[21],rx_pe_data_i[22],rx_pe_data_i[23],rx_pe_data_i[24],rx_pe_data_i[25],rx_pe_data_i[26],rx_pe_data_i[27],rx_pe_data_i[28],rx_pe_data_i[29],rx_pe_data_i[30],rx_pe_data_i[31],rx_pe_data_i[32],rx_pe_data_i[33],rx_pe_data_i[34],rx_pe_data_i[35],rx_pe_data_i[36],rx_pe_data_i[37],rx_pe_data_i[38],rx_pe_data_i[39],rx_pe_data_i[40],rx_pe_data_i[41],rx_pe_data_i[42],rx_pe_data_i[43],rx_pe_data_i[44],rx_pe_data_i[45],rx_pe_data_i[46],rx_pe_data_i[47],rx_pe_data_i[48],rx_pe_data_i[49],rx_pe_data_i[50],rx_pe_data_i[51],rx_pe_data_i[52],rx_pe_data_i[53],rx_pe_data_i[54],rx_pe_data_i[55],rx_pe_data_i[56],rx_pe_data_i[57],rx_pe_data_i[58],rx_pe_data_i[59],rx_pe_data_i[60],rx_pe_data_i[61],rx_pe_data_i[62],rx_pe_data_i[63]}),
        .E(\rx_stream_datapath_i/RX_D0 ),
        .RX_SRC_RDY_N_reg_inv(global_logic_i_n_15),
        .SR(reset_lanes_i),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .user_clk(user_clk));
  FDRE soft_err_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(aurora_lane_0_i_n_77),
        .Q(soft_err),
        .R(sys_reset_out));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_STANDARD_CC_MODULE standard_cc_module_i
       (.DO_CC_reg_0(standard_cc_module_i_n_2),
        .Q(do_cc_i),
        .SR(p_0_in),
        .channel_up_tx_if(channel_up_tx_if),
        .\count_24d_srl_r_reg[22]_0 (channel_up),
        .do_cc_r(\tx_stream_control_sm_i/do_cc_r ),
        .do_cc_r_reg0(\tx_stream_control_sm_i/do_cc_r_reg0 ),
        .extend_cc_r(\tx_stream_control_sm_i/extend_cc_r ),
        .txdatavalid_i(txdatavalid_i),
        .user_clk(user_clk));
  aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_TX_STREAM tx_stream_i
       (.Q({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31],tx_pe_data_i[32],tx_pe_data_i[33],tx_pe_data_i[34],tx_pe_data_i[35],tx_pe_data_i[36],tx_pe_data_i[37],tx_pe_data_i[38],tx_pe_data_i[39],tx_pe_data_i[40],tx_pe_data_i[41],tx_pe_data_i[42],tx_pe_data_i[43],tx_pe_data_i[44],tx_pe_data_i[45],tx_pe_data_i[46],tx_pe_data_i[47],tx_pe_data_i[48],tx_pe_data_i[49],tx_pe_data_i[50],tx_pe_data_i[51],tx_pe_data_i[52],tx_pe_data_i[53],tx_pe_data_i[54],tx_pe_data_i[55],tx_pe_data_i[56],tx_pe_data_i[57],tx_pe_data_i[58],tx_pe_data_i[59],tx_pe_data_i[60],tx_pe_data_i[61],tx_pe_data_i[62],tx_pe_data_i[63]}),
        .R0(\tx_stream_control_sm_i/R0 ),
        .\TX_DATA_reg[59] (aurora_64b66b_pcs_pma_wrapper_i_n_105),
        .do_cc_r(\tx_stream_control_sm_i/do_cc_r ),
        .do_cc_r_reg0(\tx_stream_control_sm_i/do_cc_r_reg0 ),
        .extend_cc_r(\tx_stream_control_sm_i/extend_cc_r ),
        .extend_cc_r_reg(aurora_64b66b_pcs_pma_wrapper_i_n_103),
        .gen_cc_i(gen_cc_i),
        .gen_ch_bond_i(gen_ch_bond_i),
        .gen_na_idles_i(gen_na_idles_i),
        .rst_pma_init_usrclk(\sym_gen_i/rst_pma_init_usrclk ),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .stg5_reg(tx_stream_i_n_5),
        .tx_dst_rdy_n_r_reg(standard_cc_module_i_n_2),
        .tx_pe_data_v_i(tx_pe_data_v_i),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync
   (RESET,
    pma_init,
    init_clk);
  output RESET;
  input pma_init;
  input init_clk;

  wire RESET;
  wire init_clk;
  wire pma_init;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(pma_init),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(RESET),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_0
   (sysreset_to_core_sync,
    sysreset_to_core,
    user_clk);
  output sysreset_to_core_sync;
  input sysreset_to_core;
  input user_clk;

  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4;
  wire sysreset_to_core;
  wire sysreset_to_core_sync;
  wire user_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(sysreset_to_core),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg4),
        .Q(sysreset_to_core_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_1
   (link_reset_sync,
    link_reset_out,
    user_clk);
  output link_reset_sync;
  input link_reset_out;
  input user_clk;

  wire link_reset_out;
  wire link_reset_sync;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire user_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(link_reset_out),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(link_reset_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_2
   (power_down_sync,
    power_down,
    user_clk);
  output power_down_sync;
  input power_down;
  input user_clk;

  wire power_down;
  wire power_down_sync;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire user_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(power_down),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(power_down_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_22
   (rx_reset_r3,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    stg5_reg_0);
  output rx_reset_r3;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input stg5_reg_0;

  wire rx_reset_r3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(rx_reset_r3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_24
   (stg5_reg_0,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    stg4_reg_0,
    rx_reset_r3);
  output stg5_reg_0;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input stg4_reg_0;
  input rx_reset_r3;

  wire reset_r3;
  wire rx_reset_r3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_0;
  wire stg4_reg_n_0;
  wire stg5_reg_0;

  LUT2 #(
    .INIT(4'hE)) 
    FABRIC_PCS_RESET_i_1
       (.I0(reset_r3),
        .I1(rx_reset_r3),
        .O(stg5_reg_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(stg4_reg_0),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(stg4_reg_0),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(stg4_reg_0),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(stg4_reg_0),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(stg4_reg_0),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(reset_r3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_3
   (fsm_resetdone_sync,
    in0,
    user_clk);
  output fsm_resetdone_sync;
  input in0;
  input user_clk;

  wire fsm_resetdone_sync;
  wire in0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire user_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(fsm_resetdone_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_4
   (reset,
    SR,
    stg5_reg_0,
    stg5_reg_1,
    RESET,
    drp_clk_in,
    Q,
    tx_done,
    \s_axi_rdata_reg[0] ,
    drprdy_out,
    tx_done_r,
    ready_det__1,
    ready_det_r_reg);
  output reset;
  output [0:0]SR;
  output [0:0]stg5_reg_0;
  output stg5_reg_1;
  input RESET;
  input drp_clk_in;
  input [4:0]Q;
  input tx_done;
  input \s_axi_rdata_reg[0] ;
  input drprdy_out;
  input tx_done_r;
  input ready_det__1;
  input ready_det_r_reg;

  wire [4:0]Q;
  wire RESET;
  wire [0:0]SR;
  wire drp_clk_in;
  wire drprdy_out;
  wire ready_det__1;
  wire ready_det_r_reg;
  wire reset;
  wire \s_axi_rdata_reg[0] ;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4;
  wire [0:0]stg5_reg_0;
  wire stg5_reg_1;
  wire tx_done;
  wire tx_done_r;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \drpaddr_in[8]_i_1 
       (.I0(reset),
        .I1(Q[3]),
        .I2(tx_done),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(Q[2]),
        .O(SR));
  LUT6 #(
    .INIT(64'h2222220322222200)) 
    ready_det_r_i_1
       (.I0(ready_det__1),
        .I1(reset),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(ready_det_r_reg),
        .O(stg5_reg_1));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \s_axi_rdata[15]_i_1 
       (.I0(reset),
        .I1(\s_axi_rdata_reg[0] ),
        .I2(drprdy_out),
        .I3(tx_done_r),
        .I4(tx_done),
        .O(stg5_reg_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(RESET),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(drp_clk_in),
        .CE(1'b1),
        .D(stg4),
        .Q(reset),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync_5
   (stg5_reg_0,
    TX_HEADER_1_reg,
    stg5_reg_1,
    stg5_reg_2,
    stg5_reg_3,
    stg5_reg_4,
    stg5_reg_5,
    RESET,
    user_clk,
    D,
    txdatavalid_symgen_i,
    gen_na_idles_i,
    tx_pe_data_v_i,
    TX_HEADER_1_reg_0,
    channel_up_tx_if,
    Q);
  output stg5_reg_0;
  output TX_HEADER_1_reg;
  output stg5_reg_1;
  output stg5_reg_2;
  output stg5_reg_3;
  output stg5_reg_4;
  output stg5_reg_5;
  input RESET;
  input user_clk;
  input [1:0]D;
  input txdatavalid_symgen_i;
  input gen_na_idles_i;
  input tx_pe_data_v_i;
  input TX_HEADER_1_reg_0;
  input channel_up_tx_if;
  input [3:0]Q;

  wire [1:0]D;
  wire [3:0]Q;
  wire RESET;
  wire TX_HEADER_1_reg;
  wire TX_HEADER_1_reg_0;
  wire channel_up_tx_if;
  wire gen_na_idles_i;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4;
  wire stg5_reg_0;
  wire stg5_reg_1;
  wire stg5_reg_2;
  wire stg5_reg_3;
  wire stg5_reg_4;
  wire stg5_reg_5;
  wire tx_pe_data_v_i;
  wire txdatavalid_symgen_i;
  wire user_clk;

  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \TX_DATA[59]_i_1 
       (.I0(stg5_reg_0),
        .I1(channel_up_tx_if),
        .I2(Q[0]),
        .O(stg5_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \TX_DATA[60]_i_1 
       (.I0(stg5_reg_0),
        .I1(channel_up_tx_if),
        .I2(Q[1]),
        .O(stg5_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \TX_DATA[61]_i_1 
       (.I0(stg5_reg_0),
        .I1(channel_up_tx_if),
        .I2(Q[2]),
        .O(stg5_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \TX_DATA[62]_i_2 
       (.I0(stg5_reg_0),
        .I1(channel_up_tx_if),
        .I2(Q[3]),
        .O(stg5_reg_5));
  LUT6 #(
    .INIT(64'h0000050044444444)) 
    TX_HEADER_0_i_1
       (.I0(stg5_reg_0),
        .I1(D[0]),
        .I2(TX_HEADER_1_reg_0),
        .I3(tx_pe_data_v_i),
        .I4(gen_na_idles_i),
        .I5(txdatavalid_symgen_i),
        .O(stg5_reg_1));
  LUT6 #(
    .INIT(64'h00000000EEEEE2EE)) 
    TX_HEADER_1_i_1
       (.I0(D[1]),
        .I1(txdatavalid_symgen_i),
        .I2(gen_na_idles_i),
        .I3(tx_pe_data_v_i),
        .I4(TX_HEADER_1_reg_0),
        .I5(stg5_reg_0),
        .O(TX_HEADER_1_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RESET),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg4),
        .Q(stg5_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0
   (\FSM_onehot_cdr_reset_fsm_r_reg[2] ,
    \FSM_onehot_cdr_reset_fsm_r_reg[2]_0 ,
    \FSM_onehot_cdr_reset_fsm_r_reg[0] ,
    in0,
    init_clk,
    allow_block_sync_propagation,
    \FSM_onehot_cdr_reset_fsm_r_reg[2]_1 ,
    \FSM_onehot_cdr_reset_fsm_r_reg[2]_2 ,
    cdr_reset_fsm_lnkreset,
    p_2_in);
  output \FSM_onehot_cdr_reset_fsm_r_reg[2] ;
  output \FSM_onehot_cdr_reset_fsm_r_reg[2]_0 ;
  output \FSM_onehot_cdr_reset_fsm_r_reg[0] ;
  input in0;
  input init_clk;
  input allow_block_sync_propagation;
  input \FSM_onehot_cdr_reset_fsm_r_reg[2]_1 ;
  input \FSM_onehot_cdr_reset_fsm_r_reg[2]_2 ;
  input cdr_reset_fsm_lnkreset;
  input p_2_in;

  wire \FSM_onehot_cdr_reset_fsm_r_reg[0] ;
  wire \FSM_onehot_cdr_reset_fsm_r_reg[2] ;
  wire \FSM_onehot_cdr_reset_fsm_r_reg[2]_0 ;
  wire \FSM_onehot_cdr_reset_fsm_r_reg[2]_1 ;
  wire \FSM_onehot_cdr_reset_fsm_r_reg[2]_2 ;
  wire allow_block_sync_propagation;
  wire blocksync_all_lanes_instableclk;
  wire cdr_reset_fsm_lnkreset;
  wire in0;
  wire init_clk;
  wire p_2_in;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;

  LUT6 #(
    .INIT(64'hFFFFFFFF00020202)) 
    \FSM_onehot_cdr_reset_fsm_r[0]_i_1 
       (.I0(\FSM_onehot_cdr_reset_fsm_r_reg[2]_1 ),
        .I1(allow_block_sync_propagation),
        .I2(blocksync_all_lanes_instableclk),
        .I3(\FSM_onehot_cdr_reset_fsm_r_reg[2]_2 ),
        .I4(cdr_reset_fsm_lnkreset),
        .I5(p_2_in),
        .O(\FSM_onehot_cdr_reset_fsm_r_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000CCDDC8C8)) 
    \FSM_onehot_cdr_reset_fsm_r[1]_i_1 
       (.I0(allow_block_sync_propagation),
        .I1(\FSM_onehot_cdr_reset_fsm_r_reg[2]_1 ),
        .I2(blocksync_all_lanes_instableclk),
        .I3(\FSM_onehot_cdr_reset_fsm_r_reg[2]_2 ),
        .I4(cdr_reset_fsm_lnkreset),
        .I5(p_2_in),
        .O(\FSM_onehot_cdr_reset_fsm_r_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00000000FFEAAAAA)) 
    \FSM_onehot_cdr_reset_fsm_r[2]_i_1 
       (.I0(allow_block_sync_propagation),
        .I1(\FSM_onehot_cdr_reset_fsm_r_reg[2]_1 ),
        .I2(blocksync_all_lanes_instableclk),
        .I3(\FSM_onehot_cdr_reset_fsm_r_reg[2]_2 ),
        .I4(cdr_reset_fsm_lnkreset),
        .I5(p_2_in),
        .O(\FSM_onehot_cdr_reset_fsm_r_reg[2] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(blocksync_all_lanes_instableclk),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_10
   (SR,
    in0,
    user_clk);
  output [0:0]SR;
  input in0;
  input user_clk;

  wire [0:0]SR;
  wire in0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire user_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(SR),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_11
   (reset_initclk,
    SR,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    init_clk,
    out,
    \hard_err_cntr_r_reg[7] ,
    rst_drp,
    \hard_err_cntr_r_reg[7]_0 );
  output reset_initclk;
  output [0:0]SR;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input init_clk;
  input out;
  input \hard_err_cntr_r_reg[7] ;
  input rst_drp;
  input \hard_err_cntr_r_reg[7]_0 ;

  wire [0:0]SR;
  wire \hard_err_cntr_r_reg[7] ;
  wire \hard_err_cntr_r_reg[7]_0 ;
  wire init_clk;
  wire out;
  wire reset_initclk;
  wire rst_drp;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;

  LUT5 #(
    .INIT(32'hFFFFFF45)) 
    \hard_err_cntr_r[7]_i_1 
       (.I0(out),
        .I1(reset_initclk),
        .I2(\hard_err_cntr_r_reg[7] ),
        .I3(rst_drp),
        .I4(\hard_err_cntr_r_reg[7]_0 ),
        .O(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(reset_initclk),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_12
   (stg5_reg_0,
    in0,
    init_clk);
  output stg5_reg_0;
  input in0;
  input init_clk;

  wire in0;
  wire init_clk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4;
  wire stg5_reg_0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4),
        .Q(stg5_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_27
   (stg5_reg_0,
    in0,
    user_clk);
  output stg5_reg_0;
  input in0;
  input user_clk;

  wire in0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire user_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_28
   (stg5_reg_0,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    user_clk);
  output stg5_reg_0;
  input [0:0]stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input user_clk;

  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire [0:0]stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire user_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_29
   (stg5_reg_0,
    in0,
    out,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0);
  output stg5_reg_0;
  input in0;
  input out;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;

  wire fifo_reset_wr_sync3;
  wire in0;
  wire out;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;

  LUT2 #(
    .INIT(4'hE)) 
    prmry_in_inferred_i_1
       (.I0(fifo_reset_wr_sync3),
        .I1(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .O(stg5_reg_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(out),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(out),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(out),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(out),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(out),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(fifo_reset_wr_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_30
   (stg3_reg_0,
    in0,
    user_clk);
  output stg3_reg_0;
  input in0;
  input user_clk;

  wire in0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg3_reg_0;
  wire user_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/common_reset_cbcc_i/u_rst_sync_reset_rd_clk/stg5_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0003)) 
    stg5_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(stg3),
        .Q(stg3_reg_0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_32
   (stg3_reg_0,
    in0,
    out);
  output stg3_reg_0;
  input in0;
  input out;

  wire in0;
  wire out;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg3_reg_0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(out),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(out),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(out),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/common_reset_cbcc_i/u_rst_sync_reset_wr_clk/stg5_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0003)) 
    stg5_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(out),
        .D(stg3),
        .Q(stg3_reg_0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_33
   (stg5_reg_0,
    rd_stg1_reg,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    user_clk,
    rd_stg1);
  output stg5_reg_0;
  output rd_stg1_reg;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input user_clk;
  input rd_stg1;

  wire rd_stg1;
  wire rd_stg1_reg;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire user_clk;

  LUT2 #(
    .INIT(4'hE)) 
    cbcc_reset_cbstg2_rd_clk_i_1
       (.I0(rd_stg1),
        .I1(stg5_reg_0),
        .O(rd_stg1_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_36
   (stg3_reg_0,
    in0,
    init_clk);
  output stg3_reg_0;
  input in0;
  input init_clk;

  wire in0;
  wire init_clk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg3_reg_0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/cbcc_gtx0_i/u_rst_sync_btf_sync/stg5_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0003)) 
    stg5_reg_srl2
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(init_clk),
        .D(stg3),
        .Q(stg3_reg_0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_8
   (rxlossofsync_out_i,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    out,
    blocksync_out_i);
  output rxlossofsync_out_i;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input out;
  input blocksync_out_i;

  wire allow_block_sync_propagation_inrxclk;
  wire blocksync_out_i;
  wire out;
  wire rxlossofsync_out_i;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    rxlossofsync_out_q_i_1
       (.I0(allow_block_sync_propagation_inrxclk),
        .I1(blocksync_out_i),
        .O(rxlossofsync_out_i));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(out),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(out),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(out),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(out),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(out),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(allow_block_sync_propagation_inrxclk),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized0_9
   (fsm_resetdone_to_new_gtx_rx_comb,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    out);
  output fsm_resetdone_to_new_gtx_rx_comb;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input out;

  wire fsm_resetdone_to_new_gtx_rx_comb;
  wire out;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(out),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(out),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(out),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg4_reg
       (.C(out),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg5_reg
       (.C(out),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(fsm_resetdone_to_new_gtx_rx_comb),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1
   (stg5,
    \tx_state_reg[3] ,
    D,
    init_wait_done_reg,
    stg5_reg_0,
    out,
    init_clk,
    \tx_state_reg[6] ,
    \tx_state_reg[0] ,
    Q,
    time_out_2ms,
    reset_time_out_reg,
    \tx_state_reg[1] ,
    \tx_state_reg[1]_0 ,
    \tx_state_reg[1]_1 ,
    \tx_state_reg[1]_2 ,
    \tx_state_reg[1]_3 ,
    \tx_state_reg[0]_0 ,
    \tx_state_reg[0]_1 ,
    \tx_state_reg[0]_2 ,
    \tx_state_reg[0]_3 ,
    \tx_state_reg[6]_0 ,
    init_wait_done);
  output stg5;
  output \tx_state_reg[3] ;
  output [2:0]D;
  output init_wait_done_reg;
  output stg5_reg_0;
  input out;
  input init_clk;
  input \tx_state_reg[6] ;
  input \tx_state_reg[0] ;
  input [4:0]Q;
  input time_out_2ms;
  input [4:0]reset_time_out_reg;
  input \tx_state_reg[1] ;
  input \tx_state_reg[1]_0 ;
  input \tx_state_reg[1]_1 ;
  input \tx_state_reg[1]_2 ;
  input \tx_state_reg[1]_3 ;
  input \tx_state_reg[0]_0 ;
  input \tx_state_reg[0]_1 ;
  input \tx_state_reg[0]_2 ;
  input \tx_state_reg[0]_3 ;
  input \tx_state_reg[6]_0 ;
  input init_wait_done;

  wire [2:0]D;
  wire [4:0]Q;
  wire init_clk;
  wire init_wait_done;
  wire init_wait_done_reg;
  wire out;
  wire [4:0]reset_time_out_reg;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5;
  wire stg5_reg_0;
  wire time_out_2ms;
  wire \tx_state[0]_i_3_n_0 ;
  wire \tx_state[1]_i_2_n_0 ;
  wire \tx_state[6]_i_2_n_0 ;
  wire \tx_state_reg[0] ;
  wire \tx_state_reg[0]_0 ;
  wire \tx_state_reg[0]_1 ;
  wire \tx_state_reg[0]_2 ;
  wire \tx_state_reg[0]_3 ;
  wire \tx_state_reg[1] ;
  wire \tx_state_reg[1]_0 ;
  wire \tx_state_reg[1]_1 ;
  wire \tx_state_reg[1]_2 ;
  wire \tx_state_reg[1]_3 ;
  wire \tx_state_reg[3] ;
  wire \tx_state_reg[6] ;
  wire \tx_state_reg[6]_0 ;

  LUT6 #(
    .INIT(64'h0000010101011707)) 
    reset_time_out_i_4
       (.I0(reset_time_out_reg[2]),
        .I1(reset_time_out_reg[1]),
        .I2(reset_time_out_reg[0]),
        .I3(stg5),
        .I4(reset_time_out_reg[3]),
        .I5(reset_time_out_reg[4]),
        .O(\tx_state_reg[3] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(out),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0D0FFD0)) 
    \tx_state[0]_i_1 
       (.I0(\tx_state_reg[0]_0 ),
        .I1(\tx_state[0]_i_3_n_0 ),
        .I2(\tx_state_reg[0]_1 ),
        .I3(Q[0]),
        .I4(\tx_state_reg[0]_2 ),
        .I5(\tx_state_reg[0]_3 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h2222222230333030)) 
    \tx_state[0]_i_3 
       (.I0(init_wait_done),
        .I1(\tx_state_reg[0] ),
        .I2(time_out_2ms),
        .I3(stg5),
        .I4(Q[0]),
        .I5(\tx_state_reg[6] ),
        .O(\tx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1F3F1F3F103F1030)) 
    \tx_state[1]_i_1 
       (.I0(\tx_state[1]_i_2_n_0 ),
        .I1(\tx_state_reg[1] ),
        .I2(\tx_state_reg[1]_0 ),
        .I3(\tx_state_reg[1]_1 ),
        .I4(\tx_state_reg[1]_2 ),
        .I5(\tx_state_reg[1]_3 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h55555545)) 
    \tx_state[1]_i_2 
       (.I0(\tx_state_reg[6] ),
        .I1(\tx_state_reg[0] ),
        .I2(Q[1]),
        .I3(stg5),
        .I4(time_out_2ms),
        .O(\tx_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \tx_state[2]_i_8 
       (.I0(stg5),
        .I1(time_out_2ms),
        .O(stg5_reg_0));
  LUT6 #(
    .INIT(64'h2020202030303000)) 
    \tx_state[5]_i_3 
       (.I0(init_wait_done),
        .I1(\tx_state_reg[0] ),
        .I2(\tx_state_reg[1]_0 ),
        .I3(time_out_2ms),
        .I4(stg5),
        .I5(\tx_state_reg[6] ),
        .O(init_wait_done_reg));
  LUT6 #(
    .INIT(64'h10501010105F1010)) 
    \tx_state[6]_i_1 
       (.I0(\tx_state_reg[6] ),
        .I1(\tx_state[6]_i_2_n_0 ),
        .I2(\tx_state_reg[1]_0 ),
        .I3(\tx_state_reg[0]_2 ),
        .I4(Q[3]),
        .I5(\tx_state_reg[6]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \tx_state[6]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(stg5),
        .I5(time_out_2ms),
        .O(\tx_state[6]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_13
   (stg5_reg_0,
    clear,
    in0,
    sync_clk);
  output stg5_reg_0;
  output clear;
  input in0;
  input sync_clk;

  wire clear;
  wire in0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire sync_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(stg5_reg_0),
        .O(clear));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_14
   (stg5_reg_0,
    D,
    \tx_state_reg[6] ,
    stg5_reg_1,
    \tx_state_reg[7] ,
    in0,
    init_clk,
    \tx_state_reg[2] ,
    \tx_state_reg[7]_0 ,
    \tx_state_reg[7]_1 ,
    \tx_state_reg[7]_2 ,
    \tx_state_reg[7]_3 ,
    \tx_state_reg[2]_0 ,
    \tx_state_reg[2]_1 ,
    \tx_state_reg[2]_2 ,
    \tx_state_reg[2]_3 ,
    Q,
    \tx_state_reg[5] ,
    \tx_state_reg[5]_0 ,
    \tx_state_reg[5]_1 ,
    \tx_state_reg[5]_2 ,
    \tx_state_reg[2]_4 ,
    \tx_state_reg[2]_5 ,
    \tx_state_reg[2]_6 ,
    \tx_state_reg[2]_7 );
  output stg5_reg_0;
  output [2:0]D;
  output \tx_state_reg[6] ;
  output stg5_reg_1;
  output \tx_state_reg[7] ;
  input in0;
  input init_clk;
  input \tx_state_reg[2] ;
  input \tx_state_reg[7]_0 ;
  input \tx_state_reg[7]_1 ;
  input \tx_state_reg[7]_2 ;
  input \tx_state_reg[7]_3 ;
  input \tx_state_reg[2]_0 ;
  input \tx_state_reg[2]_1 ;
  input \tx_state_reg[2]_2 ;
  input \tx_state_reg[2]_3 ;
  input [6:0]Q;
  input \tx_state_reg[5] ;
  input \tx_state_reg[5]_0 ;
  input \tx_state_reg[5]_1 ;
  input \tx_state_reg[5]_2 ;
  input \tx_state_reg[2]_4 ;
  input \tx_state_reg[2]_5 ;
  input \tx_state_reg[2]_6 ;
  input \tx_state_reg[2]_7 ;

  wire [2:0]D;
  wire [6:0]Q;
  wire in0;
  wire init_clk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire stg5_reg_1;
  wire \tx_state[2]_i_3_n_0 ;
  wire \tx_state_reg[2] ;
  wire \tx_state_reg[2]_0 ;
  wire \tx_state_reg[2]_1 ;
  wire \tx_state_reg[2]_2 ;
  wire \tx_state_reg[2]_3 ;
  wire \tx_state_reg[2]_4 ;
  wire \tx_state_reg[2]_5 ;
  wire \tx_state_reg[2]_6 ;
  wire \tx_state_reg[2]_7 ;
  wire \tx_state_reg[5] ;
  wire \tx_state_reg[5]_0 ;
  wire \tx_state_reg[5]_1 ;
  wire \tx_state_reg[5]_2 ;
  wire \tx_state_reg[6] ;
  wire \tx_state_reg[7] ;
  wire \tx_state_reg[7]_0 ;
  wire \tx_state_reg[7]_1 ;
  wire \tx_state_reg[7]_2 ;
  wire \tx_state_reg[7]_3 ;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \tx_state[1]_i_5 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(stg5_reg_0),
        .O(\tx_state_reg[6] ));
  LUT6 #(
    .INIT(64'h000000005D5D005D)) 
    \tx_state[2]_i_1 
       (.I0(\tx_state_reg[2] ),
        .I1(\tx_state_reg[2]_4 ),
        .I2(\tx_state[2]_i_3_n_0 ),
        .I3(\tx_state_reg[2]_5 ),
        .I4(\tx_state_reg[2]_6 ),
        .I5(\tx_state_reg[2]_7 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000001055555555)) 
    \tx_state[2]_i_3 
       (.I0(\tx_state_reg[7]_3 ),
        .I1(\tx_state_reg[2]_0 ),
        .I2(\tx_state_reg[2]_1 ),
        .I3(\tx_state_reg[2]_2 ),
        .I4(\tx_state_reg[2]_3 ),
        .I5(\tx_state_reg[6] ),
        .O(\tx_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \tx_state[3]_i_3 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(Q[0]),
        .I4(stg5_reg_0),
        .O(\tx_state_reg[7] ));
  LUT6 #(
    .INIT(64'h0000001100100010)) 
    \tx_state[5]_i_1 
       (.I0(stg5_reg_1),
        .I1(\tx_state_reg[5] ),
        .I2(Q[4]),
        .I3(\tx_state_reg[5]_0 ),
        .I4(\tx_state_reg[5]_1 ),
        .I5(\tx_state_reg[5]_2 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0020)) 
    \tx_state[5]_i_2 
       (.I0(\tx_state_reg[2] ),
        .I1(\tx_state_reg[7]_2 ),
        .I2(stg5_reg_0),
        .I3(\tx_state_reg[7]_3 ),
        .O(stg5_reg_1));
  LUT6 #(
    .INIT(64'h0000000007050707)) 
    \tx_state[7]_i_2 
       (.I0(\tx_state_reg[2] ),
        .I1(\tx_state_reg[7]_0 ),
        .I2(\tx_state_reg[7]_1 ),
        .I3(\tx_state_reg[7]_2 ),
        .I4(stg5_reg_0),
        .I5(\tx_state_reg[7]_3 ),
        .O(D[2]));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_15
   (time_out_wait_bypass_reg,
    stg5_reg_0,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    sync_clk,
    in0,
    time_out_wait_bypass_reg_0,
    time_out_wait_bypass_reg_1);
  output time_out_wait_bypass_reg;
  output stg5_reg_0;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input sync_clk;
  input in0;
  input time_out_wait_bypass_reg_0;
  input time_out_wait_bypass_reg_1;

  wire in0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire stg5_reg_n_0;
  wire sync_clk;
  wire time_out_wait_bypass_reg;
  wire time_out_wait_bypass_reg_0;
  wire time_out_wait_bypass_reg_1;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1__0
       (.I0(in0),
        .I1(time_out_wait_bypass_reg_0),
        .I2(stg5_reg_n_0),
        .I3(time_out_wait_bypass_reg_1),
        .O(time_out_wait_bypass_reg));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(time_out_wait_bypass_reg_0),
        .I1(stg5_reg_n_0),
        .O(stg5_reg_0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_16
   (in0,
    out,
    sync_clk);
  output in0;
  input out;
  input sync_clk;

  wire in0;
  wire out;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire sync_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(out),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(sync_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(in0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_17
   (\tx_state_reg[0] ,
    mmcm_lock_r2_reg,
    D,
    time_out_500us_reg,
    stg5_reg_0,
    stg5_reg_1,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    init_clk,
    QPLL_RESET,
    out,
    reset_time_out_reg,
    reset_time_out_reg_0,
    reset_time_out,
    \tx_state_reg[4] ,
    \tx_state_reg[3] ,
    \tx_state_reg[0]_0 ,
    \tx_state_reg[5] ,
    \tx_state_reg[5]_0 ,
    \tx_state_reg[3]_0 ,
    \tx_state_reg[3]_1 ,
    \tx_state_reg[3]_2 ,
    Q,
    \tx_state_reg[4]_0 ,
    \tx_state_reg[4]_1 ,
    stg5,
    reset_time_out_reg_1,
    time_out_500us,
    \tx_state_reg[0]_1 ,
    \tx_state_reg[2] ,
    \tx_state_reg[2]_0 );
  output \tx_state_reg[0] ;
  output mmcm_lock_r2_reg;
  output [1:0]D;
  output time_out_500us_reg;
  output stg5_reg_0;
  output stg5_reg_1;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input init_clk;
  input QPLL_RESET;
  input [2:0]out;
  input reset_time_out_reg;
  input reset_time_out_reg_0;
  input reset_time_out;
  input \tx_state_reg[4] ;
  input \tx_state_reg[3] ;
  input \tx_state_reg[0]_0 ;
  input \tx_state_reg[5] ;
  input \tx_state_reg[5]_0 ;
  input \tx_state_reg[3]_0 ;
  input \tx_state_reg[3]_1 ;
  input \tx_state_reg[3]_2 ;
  input [3:0]Q;
  input \tx_state_reg[4]_0 ;
  input \tx_state_reg[4]_1 ;
  input stg5;
  input reset_time_out_reg_1;
  input time_out_500us;
  input \tx_state_reg[0]_1 ;
  input \tx_state_reg[2] ;
  input \tx_state_reg[2]_0 ;

  wire [1:0]D;
  wire [3:0]Q;
  wire QPLL_RESET;
  wire init_clk;
  wire mmcm_lock_r2_reg;
  wire [2:0]out;
  wire reset_time_out;
  wire reset_time_out_i_2_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5;
  wire stg5_reg_0;
  wire stg5_reg_1;
  wire stg5_reg_n_0;
  wire time_out_500us;
  wire time_out_500us_reg;
  wire \tx_state[3]_i_2_n_0 ;
  wire \tx_state[4]_i_2_n_0 ;
  wire \tx_state[5]_i_7_n_0 ;
  wire \tx_state_reg[0] ;
  wire \tx_state_reg[0]_0 ;
  wire \tx_state_reg[0]_1 ;
  wire \tx_state_reg[2] ;
  wire \tx_state_reg[2]_0 ;
  wire \tx_state_reg[3] ;
  wire \tx_state_reg[3]_0 ;
  wire \tx_state_reg[3]_1 ;
  wire \tx_state_reg[3]_2 ;
  wire \tx_state_reg[4] ;
  wire \tx_state_reg[4]_0 ;
  wire \tx_state_reg[4]_1 ;
  wire \tx_state_reg[5] ;
  wire \tx_state_reg[5]_0 ;

  LUT6 #(
    .INIT(64'hBBBABBBB888A8888)) 
    reset_time_out_i_1
       (.I0(reset_time_out_i_2_n_0),
        .I1(QPLL_RESET),
        .I2(out[0]),
        .I3(reset_time_out_reg),
        .I4(reset_time_out_reg_0),
        .I5(reset_time_out),
        .O(\tx_state_reg[0] ));
  LUT5 #(
    .INIT(32'h0000D0DD)) 
    reset_time_out_i_2
       (.I0(out[2]),
        .I1(stg5_reg_n_0),
        .I2(stg5),
        .I3(out[1]),
        .I4(reset_time_out_reg_1),
        .O(reset_time_out_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCCCCFFFFEFEEEFEE)) 
    \tx_state[0]_i_4 
       (.I0(time_out_500us),
        .I1(\tx_state_reg[3] ),
        .I2(stg5_reg_n_0),
        .I3(Q[0]),
        .I4(\tx_state_reg[0]_1 ),
        .I5(\tx_state_reg[0]_0 ),
        .O(time_out_500us_reg));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \tx_state[1]_i_6 
       (.I0(stg5_reg_n_0),
        .I1(Q[1]),
        .I2(time_out_500us),
        .I3(\tx_state_reg[4] ),
        .O(stg5_reg_1));
  LUT6 #(
    .INIT(64'h00000000F0FF3B3B)) 
    \tx_state[2]_i_6 
       (.I0(\tx_state[5]_i_7_n_0 ),
        .I1(\tx_state_reg[2] ),
        .I2(\tx_state_reg[0]_0 ),
        .I3(\tx_state_reg[2]_0 ),
        .I4(\tx_state_reg[3] ),
        .I5(\tx_state_reg[4] ),
        .O(stg5_reg_0));
  LUT6 #(
    .INIT(64'h000A0F0E000A0000)) 
    \tx_state[3]_i_1 
       (.I0(\tx_state[3]_i_2_n_0 ),
        .I1(\tx_state_reg[3]_0 ),
        .I2(\tx_state_reg[3]_1 ),
        .I3(\tx_state_reg[3] ),
        .I4(\tx_state_reg[3]_2 ),
        .I5(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \tx_state[3]_i_2 
       (.I0(\tx_state_reg[0]_0 ),
        .I1(stg5_reg_n_0),
        .I2(time_out_500us),
        .I3(\tx_state_reg[4] ),
        .O(\tx_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000005D)) 
    \tx_state[4]_i_1 
       (.I0(\tx_state_reg[4] ),
        .I1(Q[3]),
        .I2(\tx_state_reg[4]_0 ),
        .I3(\tx_state[4]_i_2_n_0 ),
        .I4(\tx_state_reg[4]_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0E0E0EFF)) 
    \tx_state[4]_i_2 
       (.I0(\tx_state_reg[3] ),
        .I1(time_out_500us),
        .I2(\tx_state_reg[4] ),
        .I3(Q[3]),
        .I4(stg5_reg_n_0),
        .I5(\tx_state_reg[0]_0 ),
        .O(\tx_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111110110101000)) 
    \tx_state[5]_i_4 
       (.I0(\tx_state_reg[4] ),
        .I1(\tx_state_reg[3] ),
        .I2(\tx_state_reg[0]_0 ),
        .I3(\tx_state_reg[5] ),
        .I4(\tx_state_reg[5]_0 ),
        .I5(\tx_state[5]_i_7_n_0 ),
        .O(mmcm_lock_r2_reg));
  LUT2 #(
    .INIT(4'hE)) 
    \tx_state[5]_i_7 
       (.I0(stg5_reg_n_0),
        .I1(time_out_500us),
        .O(\tx_state[5]_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_18
   (stg5_reg_0,
    reset_time_out_reg,
    \rx_state_reg[7] ,
    time_tlock_max_reg,
    stg5_reg_1,
    \rx_state_reg[5] ,
    init_clk,
    reset_time_out,
    reset_time_out_reg_0,
    out,
    reset_time_out_reg_1,
    reset_time_out_reg_2,
    reset_time_out_reg_3,
    Q,
    time_tlock_max,
    \rx_state_reg[2] );
  output stg5_reg_0;
  output reset_time_out_reg;
  output \rx_state_reg[7] ;
  output time_tlock_max_reg;
  output stg5_reg_1;
  output \rx_state_reg[5] ;
  input init_clk;
  input reset_time_out;
  input reset_time_out_reg_0;
  input [1:0]out;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;
  input reset_time_out_reg_3;
  input [7:0]Q;
  input time_tlock_max;
  input \rx_state_reg[2] ;

  wire [7:0]Q;
  wire init_clk;
  wire n_0_0;
  wire [1:0]out;
  wire reset_time_out;
  wire reset_time_out_i_2__0_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire reset_time_out_reg_3;
  wire \rx_state_reg[2] ;
  wire \rx_state_reg[5] ;
  wire \rx_state_reg[7] ;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire stg5_reg_1;
  wire time_tlock_max;
  wire time_tlock_max_reg;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(n_0_0));
  LUT3 #(
    .INIT(8'hB8)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out_i_2__0_n_0),
        .I1(reset_time_out),
        .I2(reset_time_out_reg_0),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h000000000000D0DD)) 
    reset_time_out_i_2__0
       (.I0(out[0]),
        .I1(reset_time_out_reg_1),
        .I2(stg5_reg_0),
        .I3(out[1]),
        .I4(reset_time_out_reg_2),
        .I5(reset_time_out_reg_3),
        .O(reset_time_out_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFEEFEEEEEEEEE)) 
    \rx_state[0]_i_5 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(stg5_reg_0),
        .I4(time_tlock_max),
        .I5(Q[3]),
        .O(\rx_state_reg[5] ));
  LUT6 #(
    .INIT(64'hFFFFFF10FFFFFF00)) 
    \rx_state[1]_i_4 
       (.I0(time_tlock_max),
        .I1(stg5_reg_0),
        .I2(Q[1]),
        .I3(Q[5]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(time_tlock_max_reg));
  LUT6 #(
    .INIT(64'hFFFFFFEFEEEEEEEE)) 
    \rx_state[2]_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[2]),
        .I3(time_tlock_max),
        .I4(stg5_reg_0),
        .I5(\rx_state_reg[2] ),
        .O(\rx_state_reg[7] ));
  LUT2 #(
    .INIT(4'hE)) 
    \rx_state[3]_i_4 
       (.I0(stg5_reg_0),
        .I1(time_tlock_max),
        .O(stg5_reg_1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(n_0_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_19
   (\rx_state_reg[1] ,
    stg5_reg_0,
    D,
    time_out_1us_reg,
    out,
    init_clk,
    \rx_state_reg[1]_0 ,
    \rx_state_reg[1]_1 ,
    Q,
    \rx_state_reg[1]_2 ,
    reset_time_out_i_2__0,
    \rx_state_reg[0] ,
    \rx_state_reg[2] ,
    \rx_state_reg[2]_0 ,
    \rx_state_reg[2]_1 ,
    \rx_state_reg[2]_2 ,
    \rx_state_reg[0]_0 ,
    \rx_state[0]_i_3_0 );
  output \rx_state_reg[1] ;
  output stg5_reg_0;
  output [0:0]D;
  output time_out_1us_reg;
  input out;
  input init_clk;
  input \rx_state_reg[1]_0 ;
  input \rx_state_reg[1]_1 ;
  input [3:0]Q;
  input \rx_state_reg[1]_2 ;
  input [1:0]reset_time_out_i_2__0;
  input \rx_state_reg[0] ;
  input \rx_state_reg[2] ;
  input \rx_state_reg[2]_0 ;
  input \rx_state_reg[2]_1 ;
  input \rx_state_reg[2]_2 ;
  input \rx_state_reg[0]_0 ;
  input \rx_state[0]_i_3_0 ;

  wire [0:0]D;
  wire [3:0]Q;
  wire init_clk;
  wire out;
  wire [1:0]reset_time_out_i_2__0;
  wire \rx_state[0]_i_3_0 ;
  wire \rx_state[0]_i_7_n_0 ;
  wire \rx_state[2]_i_2_n_0 ;
  wire \rx_state_reg[0] ;
  wire \rx_state_reg[0]_0 ;
  wire \rx_state_reg[1] ;
  wire \rx_state_reg[1]_0 ;
  wire \rx_state_reg[1]_1 ;
  wire \rx_state_reg[1]_2 ;
  wire \rx_state_reg[2] ;
  wire \rx_state_reg[2]_0 ;
  wire \rx_state_reg[2]_1 ;
  wire \rx_state_reg[2]_2 ;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire stg5_reg_n_0;
  wire time_out_1us_reg;

  LUT4 #(
    .INIT(16'h4F44)) 
    reset_time_out_i_5__0
       (.I0(stg5_reg_n_0),
        .I1(reset_time_out_i_2__0[1]),
        .I2(\rx_state_reg[0] ),
        .I3(reset_time_out_i_2__0[0]),
        .O(stg5_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFF8B0000008B)) 
    \rx_state[0]_i_3 
       (.I0(\rx_state_reg[0] ),
        .I1(Q[0]),
        .I2(\rx_state_reg[0]_0 ),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\rx_state[0]_i_7_n_0 ),
        .O(time_out_1us_reg));
  LUT6 #(
    .INIT(64'h8ACCBAFF8ACC8AFF)) 
    \rx_state[0]_i_7 
       (.I0(\rx_state[0]_i_3_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\rx_state_reg[1]_2 ),
        .I5(stg5_reg_n_0),
        .O(\rx_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444444454)) 
    \rx_state[1]_i_3 
       (.I0(\rx_state_reg[1]_0 ),
        .I1(\rx_state_reg[1]_1 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\rx_state_reg[1]_2 ),
        .I5(stg5_reg_n_0),
        .O(\rx_state_reg[1] ));
  LUT6 #(
    .INIT(64'hAAAB0000ABAB0303)) 
    \rx_state[2]_i_1 
       (.I0(Q[3]),
        .I1(\rx_state[2]_i_2_n_0 ),
        .I2(\rx_state_reg[2] ),
        .I3(\rx_state_reg[2]_0 ),
        .I4(Q[2]),
        .I5(\rx_state_reg[2]_1 ),
        .O(D));
  LUT5 #(
    .INIT(32'h0000FBFF)) 
    \rx_state[2]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(\rx_state_reg[1]_2 ),
        .I3(stg5_reg_n_0),
        .I4(\rx_state_reg[2]_2 ),
        .O(\rx_state[2]_i_2_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(out),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_20
   (SR,
    in0,
    stg5_reg_0);
  output SR;
  input in0;
  input stg5_reg_0;

  wire SR;
  wire in0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire stg5_reg_n_0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(stg5_reg_0),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    time_out_wait_bypass_i_1
       (.I0(stg5_reg_n_0),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_21
   (stg5_reg_0,
    stg5_reg_1,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    stg5_reg_2,
    \wait_bypass_count_reg[0] );
  output stg5_reg_0;
  output stg5_reg_1;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input stg5_reg_2;
  input \wait_bypass_count_reg[0] ;

  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire stg5_reg_1;
  wire stg5_reg_2;
  wire stg5_reg_n_0;
  wire \wait_bypass_count_reg[0] ;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(stg5_reg_2),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(stg5_reg_2),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(stg5_reg_2),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(stg5_reg_2),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(stg5_reg_2),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    time_out_wait_bypass_i_2
       (.I0(stg5_reg_n_0),
        .O(stg5_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(\wait_bypass_count_reg[0] ),
        .I1(stg5_reg_n_0),
        .O(stg5_reg_1));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_23
   (\rx_state_reg[5] ,
    D,
    stg5_reg_0,
    time_out_2ms_reg,
    in0,
    init_clk,
    out,
    Q,
    \rx_state_reg[3] ,
    \rx_state_reg[3]_0 ,
    \rx_state_reg[5]_0 ,
    \rx_state_reg[1] ,
    \rx_state_reg[1]_0 ,
    time_tlock_max,
    \rx_state_reg[4] ,
    \rx_state_reg[3]_1 );
  output \rx_state_reg[5] ;
  output [3:0]D;
  output stg5_reg_0;
  output time_out_2ms_reg;
  input in0;
  input init_clk;
  input [2:0]out;
  input [7:0]Q;
  input \rx_state_reg[3] ;
  input \rx_state_reg[3]_0 ;
  input \rx_state_reg[5]_0 ;
  input \rx_state_reg[1] ;
  input \rx_state_reg[1]_0 ;
  input time_tlock_max;
  input \rx_state_reg[4] ;
  input \rx_state_reg[3]_1 ;

  wire [3:0]D;
  wire [7:0]Q;
  wire in0;
  wire init_clk;
  wire [2:0]out;
  wire \rx_state[1]_i_2_n_0 ;
  wire \rx_state[3]_i_2_n_0 ;
  wire \rx_state[4]_i_2_n_0 ;
  wire \rx_state_reg[1] ;
  wire \rx_state_reg[1]_0 ;
  wire \rx_state_reg[3] ;
  wire \rx_state_reg[3]_0 ;
  wire \rx_state_reg[3]_1 ;
  wire \rx_state_reg[4] ;
  wire \rx_state_reg[5] ;
  wire \rx_state_reg[5]_0 ;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_0;
  wire stg5_reg_n_0;
  wire time_out_2ms_reg;
  wire time_tlock_max;

  LUT4 #(
    .INIT(16'h4F44)) 
    reset_time_out_i_4__0
       (.I0(out[1]),
        .I1(out[2]),
        .I2(stg5_reg_n_0),
        .I3(out[0]),
        .O(\rx_state_reg[5] ));
  LUT3 #(
    .INIT(8'hBA)) 
    \rx_state[0]_i_6 
       (.I0(\rx_state_reg[5]_0 ),
        .I1(stg5_reg_n_0),
        .I2(Q[0]),
        .O(time_out_2ms_reg));
  LUT6 #(
    .INIT(64'hFFFF111000001110)) 
    \rx_state[1]_i_1 
       (.I0(Q[6]),
        .I1(\rx_state[1]_i_2_n_0 ),
        .I2(\rx_state_reg[1] ),
        .I3(\rx_state_reg[1]_0 ),
        .I4(Q[7]),
        .I5(Q[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFCECFCFC)) 
    \rx_state[1]_i_2 
       (.I0(stg5_reg_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\rx_state_reg[5]_0 ),
        .I4(Q[1]),
        .O(\rx_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    \rx_state[2]_i_4 
       (.I0(stg5_reg_n_0),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\rx_state_reg[5]_0 ),
        .O(stg5_reg_0));
  LUT6 #(
    .INIT(64'hBABA3030AABA3030)) 
    \rx_state[3]_i_1 
       (.I0(Q[7]),
        .I1(\rx_state[3]_i_2_n_0 ),
        .I2(\rx_state_reg[3] ),
        .I3(\rx_state_reg[3]_0 ),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF0FF00770077)) 
    \rx_state[3]_i_2 
       (.I0(\rx_state_reg[3]_1 ),
        .I1(Q[2]),
        .I2(\rx_state_reg[5]_0 ),
        .I3(Q[3]),
        .I4(stg5_reg_n_0),
        .I5(Q[4]),
        .O(\rx_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA00AA03)) 
    \rx_state[4]_i_1 
       (.I0(Q[4]),
        .I1(\rx_state[4]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[6]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hEEEEEEEEF0FFFFFF)) 
    \rx_state[4]_i_2 
       (.I0(\rx_state_reg[5]_0 ),
        .I1(stg5_reg_n_0),
        .I2(time_tlock_max),
        .I3(\rx_state_reg[4] ),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\rx_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FF000020)) 
    \rx_state[5]_i_1 
       (.I0(Q[4]),
        .I1(\rx_state_reg[5]_0 ),
        .I2(stg5_reg_n_0),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(D[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized1_25
   (D,
    out,
    init_clk,
    Q,
    \rx_state_reg[0] ,
    \rx_state_reg[0]_0 ,
    \rx_state_reg[0]_1 ,
    \rx_state_reg[0]_2 );
  output [1:0]D;
  input out;
  input init_clk;
  input [4:0]Q;
  input \rx_state_reg[0] ;
  input \rx_state_reg[0]_0 ;
  input \rx_state_reg[0]_1 ;
  input \rx_state_reg[0]_2 ;

  wire [1:0]D;
  wire [4:0]Q;
  wire init_clk;
  wire out;
  wire \rx_state[0]_i_2_n_0 ;
  wire \rx_state_reg[0] ;
  wire \rx_state_reg[0]_0 ;
  wire \rx_state_reg[0]_1 ;
  wire \rx_state_reg[0]_2 ;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg4_reg_n_0;
  wire stg5_reg_n_0;

  LUT6 #(
    .INIT(64'hFFFF550155015501)) 
    \rx_state[0]_i_1 
       (.I0(\rx_state[0]_i_2_n_0 ),
        .I1(\rx_state_reg[0]_0 ),
        .I2(\rx_state_reg[0]_1 ),
        .I3(\rx_state_reg[0]_2 ),
        .I4(Q[4]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEFEEEFEEEFFFEFEE)) 
    \rx_state[0]_i_2 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(stg5_reg_n_0),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\rx_state_reg[0] ),
        .O(\rx_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8898)) 
    \rx_state[6]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(stg5_reg_n_0),
        .O(D[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(out),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg2_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg3_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg4_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg3),
        .Q(stg4_reg_n_0),
        .R(1'b0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    stg5_reg
       (.C(init_clk),
        .CE(1'b1),
        .D(stg4_reg_n_0),
        .Q(stg5_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized2
   (stg11_reg_0,
    in0,
    out);
  output stg11_reg_0;
  input in0;
  input out;

  wire in0;
  wire out;
  wire stg10_reg_srl7_n_0;
  wire stg11_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;

  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/common_reset_cbcc_i/u_rst_sync_fifo_reset_user_clk/stg10_reg_srl7 " *) 
  SRL16E #(
    .INIT(16'h007F)) 
    stg10_reg_srl7
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(out),
        .D(stg3),
        .Q(stg10_reg_srl7_n_0));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg11_reg
       (.C(out),
        .CE(1'b1),
        .D(stg10_reg_srl7_n_0),
        .Q(stg11_reg_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(out),
        .CE(1'b1),
        .D(in0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(out),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(out),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized3
   (cbcc_fifo_reset_to_fifo_rd_clk,
    cbcc_fifo_reset_to_fifo_rd_clk_dlyd_reg,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    user_clk,
    cbcc_fifo_reset_to_fifo_rd_clk_dlyd,
    in0);
  output cbcc_fifo_reset_to_fifo_rd_clk;
  output cbcc_fifo_reset_to_fifo_rd_clk_dlyd_reg;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input user_clk;
  input cbcc_fifo_reset_to_fifo_rd_clk_dlyd;
  input in0;

  wire cbcc_fifo_reset_to_fifo_rd_clk;
  wire cbcc_fifo_reset_to_fifo_rd_clk_dlyd;
  wire cbcc_fifo_reset_to_fifo_rd_clk_dlyd_reg;
  wire in0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg30_reg_srl27_n_0;
  wire user_clk;
  wire NLW_stg30_reg_srl27_Q31_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFFD0)) 
    cbc_rd_if_reset_i_1
       (.I0(cbcc_fifo_reset_to_fifo_rd_clk_dlyd),
        .I1(cbcc_fifo_reset_to_fifo_rd_clk),
        .I2(in0),
        .I3(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .O(cbcc_fifo_reset_to_fifo_rd_clk_dlyd_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/common_reset_cbcc_i/u_rst_sync_reset_to_fifo_rd_clk/stg30_reg_srl27 " *) 
  SRLC32E #(
    .INIT(32'h07FFFFFF)) 
    stg30_reg_srl27
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(user_clk),
        .D(stg3),
        .Q(stg30_reg_srl27_n_0),
        .Q31(NLW_stg30_reg_srl27_Q31_UNCONNECTED));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg31_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg30_reg_srl27_n_0),
        .Q(cbcc_fifo_reset_to_fifo_rd_clk),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_64b66b_pcs_pma_rst_sync" *) 
module aurora_64b66b_pcs_pmaaurora_64b66b_pcs_pma_rst_sync__parameterized3_31
   (SR,
    cbcc_fifo_reset_to_fifo_wr_clk_dlyd_reg,
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0,
    out,
    cbcc_fifo_reset_to_fifo_wr_clk_dlyd,
    in0);
  output [0:0]SR;
  output cbcc_fifo_reset_to_fifo_wr_clk_dlyd_reg;
  input stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  input out;
  input cbcc_fifo_reset_to_fifo_wr_clk_dlyd;
  input in0;

  wire [0:0]SR;
  wire cbcc_fifo_reset_to_fifo_wr_clk_dlyd;
  wire cbcc_fifo_reset_to_fifo_wr_clk_dlyd_reg;
  wire in0;
  wire out;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_aurora_64b66b_pcs_pma_cdc_to;
  wire stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;
  wire stg30_reg_srl27_n_0;
  wire NLW_stg30_reg_srl27_Q31_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFFD0)) 
    cbc_wr_if_reset_i_1
       (.I0(cbcc_fifo_reset_to_fifo_wr_clk_dlyd),
        .I1(SR),
        .I2(in0),
        .I3(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .O(cbcc_fifo_reset_to_fifo_wr_clk_dlyd_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_aurora_64b66b_pcs_pma_cdc_to_reg
       (.C(out),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to_reg_0),
        .Q(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(out),
        .CE(1'b1),
        .D(stg1_aurora_64b66b_pcs_pma_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* srl_name = "inst/\aurora_64b66b_pcs_pma_wrapper_i/common_reset_cbcc_i/u_rst_sync_reset_to_fifo_wr_clk/stg30_reg_srl27 " *) 
  SRLC32E #(
    .INIT(32'h07FFFFFF)) 
    stg30_reg_srl27
       (.A({1'b1,1'b1,1'b0,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(out),
        .D(stg3),
        .Q(stg30_reg_srl27_n_0),
        .Q31(NLW_stg30_reg_srl27_Q31_UNCONNECTED));
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg31_reg
       (.C(out),
        .CE(1'b1),
        .D(stg30_reg_srl27_n_0),
        .Q(SR),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(out),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
