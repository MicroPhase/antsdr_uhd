 ///////////////////////////////////////////////////////////////////////////////
 //
 // Project:  Aurora 64B/66B
 // Company:  Xilinx
 //
 //
 //
 // (c) Copyright 2008 - 2009 Xilinx, Inc. All rights reserved.
 //
 // This file contains confidential and proprietary information
 // of Xilinx, Inc. and is protected under U.S. and
 // international copyright and other intellectual property
 // laws.
 //
 // DISCLAIMER
 // This disclaimer is not a license and does not grant any
 // rights to the materials distributed herewith. Except as
 // otherwise provided in a valid license issued to you by
 // Xilinx, and to the maximum extent permitted by applicable
 // law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
 // WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
 // AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
 // BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
 // INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
 // (2) Xilinx shall not be liable (whether in contract or tort,
 // including negligence, or under any other theory of
 // liability) for any loss or damage of any kind or nature
 // related to, arising under or in connection with these
 // materials, including for any direct, or any indirect,
 // special, incidental, or consequential loss or damage
 // (including loss of data, profits, goodwill, or any type of
 // loss or damage suffered as a result of any action brought
 // by a third party) even if such damage or loss was
 // reasonably foreseeable or Xilinx had been advised of the
 // possibility of the same.
 //
 // CRITICAL APPLICATIONS
 // Xilinx products are not designed or intended to be fail-
 // safe, or for use in any application requiring fail-safe
 // performance, such as life-support or safety devices or
 // systems, Class III medical devices, nuclear facilities,
 // applications related to the deployment of airbags, or any
 // other applications that could lead to death, personal
 // injury, or severe property or environmental damage
 // (individually and collectively, "Critical
 // Applications"). Customer assumes the sole risk and
 // liability of any use of Xilinx products in Critical
 // Applications, subject only to applicable laws and
 // regulations governing limitations on product liability.
 //
 // THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
 // PART OF THIS FILE AT ALL TIMES.
 
 //
 //
 ////////////////////////////////////////////////////////////////////////////////
 // Design Name: aurora_64b66b_pcs_pma_WRAPPER
 //
 // Module aurora_64b66b_pcs_pma_WRAPPER
 
 
 `timescale 1ns / 1ps
   (* core_generation_info = "aurora_64b66b_pcs_pma,aurora_64b66b_v12_0_0,{c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=10.3125,c_gt_type=gtx,c_qpll=true,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=156.25,c_simplex=false,c_simplex_mode=TX,c_stream=true,c_ufc=false,c_user_k=false,flow_mode=None,interface_mode=Streaming,dataflow_config=Duplex}" *) 
(* DowngradeIPIdentifiedWarnings="yes" *) 
 module aurora_64b66b_pcs_pma_WRAPPER #
 (
      parameter INTER_CB_GAP  = 5'd9,
      parameter SEQ_COUNT  = 4,
      parameter TRAVELLING_STAGES = 3'd2,
      parameter BACKWARD_COMP_MODE1 = 1'b0, //disable check for interCB gap
      parameter BACKWARD_COMP_MODE2 = 1'b0, //reduce RXCDR lock time, Block Sync SH max count, disable CDR FSM in wrapper
      parameter BACKWARD_COMP_MODE3 = 1'b0, //clear hot-plug counter with any valid btf detected
      parameter     STABLE_CLOCK_PERIOD = 12,           //Period of the stable clock driving this state-machine, unit is [ns]
     // Channel bond MASTER/SLAVE connection
      parameter CHAN_BOND_MODE_0      = 2'b00,
      parameter CHAN_BOND_MODE_1      = 2'b00,
 // Simulation attributes
     parameter   EXAMPLE_SIMULATION =   0       // Set to 1 to speed up sim reset
      //pragma translate_off
        | 1
      //pragma translate_on
      ,
     parameter   SIM_GTXRESET_SPEEDUP=   "FALSE"      // Set to 1 to speed up sim reset 
 )
 `define DLY #1
 (
 
    //----------------- Receive Ports - Channel Bonding Ports -----------------
       ENCHANSYNC_IN, 
       CHBONDDONE_OUT, 
     //RXLOSSOFSYNC indication
       RXLOSSOFSYNC_OUT, 
 //----------------- Receive Ports - Clock Correction Ports -----------------
       RXBUFERR_OUT, 
     //----------------- Receive Ports - RX Data Path interface -----------------
       RXDATA_OUT, 
       RXHEADER_OUT, 
       RXRESET_IN, 
       RXUSRCLK2_IN,
     //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
       RX1N_IN, 
       RX1P_IN, 
     //--------------- Receive Ports - RX Polarity Control Ports ----------------
       CHECK_POLARITY_IN, 
       RXPOLARITY_IN, 
       RX_NEG_OUT, 
 //------------------- Shared Ports - Tile and PLL Ports --------------------
       REFCLK1_IN,
       GTXRESET_IN,
       RESET,
       GT_RXCDROVRDEN_IN,
       CHAN_BOND_RESET,
       PLLLKDET_OUT, 
       POWERDOWN_IN,
       TXOUTCLK1_OUT, 
     //-------------- Transmit Ports - 64b66b TX Header Ports --------------
       TXHEADER_IN, 
     //---------------- Transmit Ports - TX Data Path interface -----------------
       TXDATA_IN, 
       TXRESET_IN, 
       TXUSRCLK_IN,
       TXUSRCLK2_IN,
       TXBUFERR_OUT, 
     //--------------Data Valid Signals for Local Link
       TXDATAVALID_OUT,
       TXDATAVALID_SYMGEN_OUT,
       RXDATAVALID_OUT, 
     //------------- Transmit Ports - TX Driver and OOB signalling --------------
       TX1N_OUT, 
       TX1P_OUT, 
    //---------------------- Loopback Port ----------------------
       LOOPBACK_IN,
       CHANNEL_UP_RX_IF,
       CHANNEL_UP_TX_IF,
    //---------------------- GTXE2 CHANNEL DRP Ports ----------------------
//---{
       gt_qpllclk_quad1_in,
       gt_qpllrefclk_quad1_in,


       gt_qplllock_in,
       gt_qpllrefclklost_in,

       gt_to_common_qpllreset_out,
//---}
       DRP_CLK_IN,
       DRPADDR_IN,
       DRPDI_IN,
       DRPDO_OUT, 
       DRPRDY_OUT, 
       DRPEN_IN, 
       DRPWE_IN, 

       TXCLK_LOCK,
       INIT_CLK,
       FSM_RESETDONE,
       LINK_RESET_OUT
 );
 //***************************** Port Declarations *****************************


     //---------------------- Loopback and Powerdown Ports ----------------------
     input    [2:0]      LOOPBACK_IN;
     input               CHANNEL_UP_RX_IF;
     input               CHANNEL_UP_TX_IF;
     //----------------- Receive Ports - Channel Bonding Ports -----------------
     //----------------- Receive Ports - Channel Bonding Ports -----------------
       input             ENCHANSYNC_IN;  
       output            CHBONDDONE_OUT; 
       output            RXLOSSOFSYNC_OUT; 
     //----------------- Receive Ports - Clock Correction Ports -----------------
       output            RXBUFERR_OUT; 
     //----------------- Receive Ports - RX Data Path interface -----------------
       output   [63:0]   RXDATA_OUT;  
       output   [1:0]    RXHEADER_OUT;  
       input             RXRESET_IN; 
     input               RXUSRCLK2_IN;
     //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
       input             RX1N_IN;   
       input             RX1P_IN;   
     //--------------- Receive Ports - RX Polarity Control Ports ----------------
       input             CHECK_POLARITY_IN; 
       input             RXPOLARITY_IN; 
       output reg        RX_NEG_OUT; 
     //------------------- Shared Ports - Tile and PLL Ports --------------------
       input               REFCLK1_IN;
       input               GTXRESET_IN;
       input               CHAN_BOND_RESET;
       output            PLLLKDET_OUT; 
       output            TXOUTCLK1_OUT; 
       input               POWERDOWN_IN;
       input               RESET;
       input               GT_RXCDROVRDEN_IN;
     //-------------- Transmit Ports - TX Header Control Port ----------------
       input    [1:0]    TXHEADER_IN;  
     //---------------- Transmit Ports - TX Data Path interface -----------------
       input    [63:0]   TXDATA_IN;  
       input             TXRESET_IN; 
       output            TXBUFERR_OUT; 
     input               TXUSRCLK_IN;
     input               TXUSRCLK2_IN;
     //------------- Transmit Ports - TX Driver and OOB signalling --------------
       output            TX1N_OUT; 
       output            TX1P_OUT; 
     output              TXDATAVALID_OUT;
     output              TXDATAVALID_SYMGEN_OUT;
       output            RXDATAVALID_OUT; 
    //---------------------- GTXE2 CHANNEL DRP Ports ----------------------

    input                     gt_qpllclk_quad1_in;
    input                     gt_qpllrefclk_quad1_in;

    input                     gt_qplllock_in; 
    input                     gt_qpllrefclklost_in; 

    output                    gt_to_common_qpllreset_out;

     input             DRP_CLK_IN;
       input   [8:0]     DRPADDR_IN;
       input   [15:0]    DRPDI_IN;
       output  [15:0]  DRPDO_OUT; 
       output          DRPRDY_OUT; 
       input           DRPEN_IN; 
       input           DRPWE_IN; 
     input             TXCLK_LOCK; 
     input             INIT_CLK;
     output   reg      LINK_RESET_OUT;
     output   reg      FSM_RESETDONE;

 //***************************** FIFO Watermark settings ************************
     localparam LOW_WATER_MARK_SLAVE  = 13'd450;
     localparam LOW_WATER_MARK_MASTER = 13'd450;

     localparam HIGH_WATER_MARK_SLAVE  = 13'd8;
     localparam HIGH_WATER_MARK_MASTER = 13'd14;

     localparam SH_CNT_MAX   = EXAMPLE_SIMULATION ? 16'd64 : (BACKWARD_COMP_MODE2) ? 16'd64 : 16'd60000;

     localparam SH_INVALID_CNT_MAX = 16'd16;
 //***************************** Wire Declarations *****************************
     // Ground and VCC signals
     wire                    tied_to_ground_i;
     wire    [63:0]          tied_to_ground_vec_i;
     // floating input port connection signals
       wire [1:0]  int_txbufstatus_i ;
       wire [2:0]  int_rxbufstatus_i ;

     //  wire to output lock signal
       wire                    tx_plllkdet_i; 
       wire                    rx_plllkdet_i; 
 
     // Electrical idle reset logic signals
     wire                    resetdone_i;
       wire                    rx_resetdone_i; 
       wire                    tx_resetdone_i; 
 
     // Channel Bonding 
       wire     [4:0]          chbondi; 
    
     wire     [4:0]          chbondi_unused_i;
     wire     [4:0]          chbondo_to_slaves_i;
     wire                    state;
     wire                    data_valid_i;
     wire  [6:0]             txsequence_i;
 
     reg   [6:0]             txseq_counter_i;
     reg   [2:0]             extend_reset_r;
     reg                     resetdone_r1;
     reg                     resetdone_r2;
     reg                     resetdone_r3;
     reg                     reset_r1;
     reg                     reset_r2;
     reg                     rx_reset_r1;
     reg                     rx_reset_r2;
     reg   [3:0]             reset_debounce_r;
     reg                     data_valid_r;
     //reg   [63:0]            pmaInitStage = 64'd0;
       wire  [1:0]             txheader_i; 
       wire  [63:0]            scrambled_data_i; 

(* shift_extract = "{no}"*)     wire  [31:0]            pre_rxdata_from_gtx_i; 
(* shift_extract = "{no}"*)     wire  [1:0]             pre_rxheader_from_gtx_i; 
(* shift_extract = "{no}"*)     wire                    pre_rxdatavalid_i; 
(* shift_extract = "{no}"*)     wire                    pre_rxheadervalid_i; 

(* shift_extract = "{no}"*)     reg   [31:0]            pre_r1_rxdata_from_gtx_i; 
(* shift_extract = "{no}"*)     reg   [1:0]             pre_r1_rxheader_from_gtx_i; 
(* shift_extract = "{no}"*)     reg                     pre_r1_rxdatavalid_i; 
(* shift_extract = "{no}"*)     reg                     pre_r1_rxheadervalid_i; 

(* shift_extract = "{no}"*)     reg   [31:0]            pre_r2_rxdata_from_gtx_i; 
(* shift_extract = "{no}"*)     reg   [1:0]             pre_r2_rxheader_from_gtx_i; 
(* shift_extract = "{no}"*)     reg                     pre_r2_rxdatavalid_i; 
(* shift_extract = "{no}"*)     reg                     pre_r2_rxheadervalid_i; 

(* shift_extract = "{no}"*)     reg   [31:0]            pre_r3_rxdata_from_gtx_i; 
(* shift_extract = "{no}"*)     reg   [1:0]             pre_r3_rxheader_from_gtx_i; 
(* shift_extract = "{no}"*)     reg                     pre_r3_rxdatavalid_i; 
(* shift_extract = "{no}"*)     reg                     pre_r3_rxheadervalid_i; 

(* shift_extract = "{no}"*)     reg   [31:0]            pre_r4_rxdata_from_gtx_i; 
(* shift_extract = "{no}"*)     reg   [1:0]             pre_r4_rxheader_from_gtx_i; 
(* shift_extract = "{no}"*)     reg                     pre_r4_rxdatavalid_i; 
(* shift_extract = "{no}"*)     reg                     pre_r4_rxheadervalid_i; 

(* shift_extract = "{no}"*)     reg   [31:0]            pos_rxdata_from_gtx_i; 
(* shift_extract = "{no}"*)     reg   [1:0]             pos_rxheader_from_gtx_i; 
(* shift_extract = "{no}"*)     reg                     pos_rxdatavalid_i; 
(* shift_extract = "{no}"*)     reg                     pos_rxheadervalid_i; 
(* shift_extract = "{no}"*)     reg   [31:0]            rxdata_from_gtx_i;
(* shift_extract = "{no}"*)     reg   [1:0]             rxheader_from_gtx_i; 
(* shift_extract = "{no}"*)     reg                     rxdatavalid_i; 
(* shift_extract = "{no}"*)     reg                     rxheadervalid_i; 

       wire                    rxgearboxslip_i; 
       wire                    open_rxheader_i; 
       wire                    rxlossofsync_out_i;   
       reg                     rxlossofsync_out_q;   
       wire  [31:0]            rxdata_to_fifo_i; 
       wire                    rxrecclk_from_gtx_i; 
       wire  [0:6]             not_connected_i; 
 
wire sync_rx_polarity_r; 
wire check_polarity_r2;  
wire      gtpll_locked_out_r2;
     reg                     reset_blocksync_r;
     reg                    new_gtx_rx_pcsreset_comb = 1'b1;
 (* KEEP = "TRUE" *) wire    rx_clk_locked_i;
 (* KEEP = "TRUE" *) wire    rxrecclk_to_fabric_i;
 (* KEEP = "TRUE" *) wire    rxfsm_reset_i;
     wire                    clkfbout_i;
   
     wire                    locked_i;
     wire                    gtx_rx_pcsreset_comb;
     wire   enable_32_i = 1'b1;
 
     wire                    gtpll_locked_out_i;
     wire                    gt_qplllock_i;
     wire                    txusrclk_gtx_reset_comb;
     wire                    stableclk_gtx_reset_comb;
     wire                    gtx_reset_comb;
       reg   [1:0]             txheader_r; 
       reg   [1:0]             tx_hdr_r; 
      reg [1:0] cdr_reset_fsm_r = 2'd0;
      reg [7:0] cdr_reset_fsm_cntr_r = 8'd0;
      reg allow_block_sync_propagation = 1'b0;
      reg cdr_reset_fsm_lnkreset = 1'b0;
      localparam IDLE = 2'b00;
      localparam ASSERT_RXRESET = 2'b01;
      localparam DONE = 2'b10;
 
     wire allow_block_sync_propagation_inrxclk;
     wire blocksync_all_lanes_instableclk;
     wire                    blocksync_out_i;
     wire blocksync_all_lanes_inrxclk;
     reg  blocksync_all_lanes_inrxclk_q = 1'b0;
     wire hpreset_or_pma_init_in;
     wire hpreset_in;
     wire hp_reset_i;
       wire  [1:0]             rxbuferr_out_i; 
     wire  [1:0]             link_reset_0_c;
     wire                    link_reset_c;
 
    wire                     gt_qpllclk_quad1_i;
    wire                     gt_qpllrefclk_quad1_i;
     wire                    qpllreset_i;
     assign                  gt_to_common_qpllreset_out = qpllreset_i;
     wire                    gtxreset_i;
       reg                    rxdatavalid_to_fifo_i; 
       reg  [1:0]             rxheader_to_fifo_i; 
     wire                    tied_to_vcc_i;
     reg    [7:0]      reset_counter = 8'd0; 
     (* KEEP = "TRUE" *) wire                    rx_fsm_resetdone_i;     
     (* KEEP = "TRUE" *) wire                    tx_fsm_resetdone_i;     
     wire gtrxreset_t;     
     wire                    gtrxreset_i;     
     wire                    gttxreset_t;     
     wire                    txuserrdy_t;     
     wire                    rxuserrdy_t;     
     wire                    cpllreset_t;     
     wire                    qpllreset_t;     
     wire                    qpllrefclklost_i;     
     wire                    cpllrefclklost_i; 
     wire                    tx_resetdone_t;    
     wire                    rx_resetdone_t;    
     wire                    mmcm_reset_i;     
     wire                    enchansync_all_i;     
     wire                    txreset_for_lanes;     
     wire                    rxreset_for_lanes;     
     reg                     rxreset_for_lanes_q;     
     wire                    HPCNT_RESET_IN;
     wire                    sys_and_fsm_reset_for_hpcnt;

// Common CBCC Reset module wires
     wire                    cbcc_fifo_reset_wr_clk;
     wire                    cbcc_fifo_reset_to_fifo_wr_clk;
     wire                    cbcc_fifo_reset_rd_clk;
     wire                    cbcc_fifo_reset_to_fifo_rd_clk;
     wire                    cbcc_only_reset_rd_clk;
     wire                    cbcc_reset_cbstg2_rd_clk;
// Common Logic for CBCC module reg/wires
     wire                    any_vld_btf_i;
     wire                    start_cb_writes_i;
(* KEEP = "TRUE" *) wire     do_rd_en_i;
(* KEEP = "TRUE" *) wire     bit_err_chan_bond_i;
(* KEEP = "TRUE" *) wire     final_gater_for_fifo_din_i;
(* KEEP = "TRUE" *) wire      all_start_cb_writes_i  ;
(* KEEP = "TRUE" *) wire      master_do_rd_en_i      ;
(* KEEP = "TRUE" *) wire      all_vld_btf_flag_i     ;

     wire  cb_bit_err_i;

     wire fsm_resetdone_to_new_gtx_rx_comb;

 //********************************* Main Body of Code**************************
     //-------------------------  Static signal Assigments ---------------------   
     assign tied_to_ground_i             = 1'b0;
     assign tied_to_ground_vec_i         = 64'h0000000000000000;
     assign tied_to_vcc_i                = 1'b1;
 
     // Assign lock signals
 
   assign  PLLLKDET_OUT  = gt_qplllock_i & !mmcm_reset_i; 
 
 
        wire rx_elastic_buf_err;
        wire rx_elastic_buf_err_int = 1'b0
                                  || int_rxbufstatus_i[2]
         ;
aurora_64b66b_pcs_pma_cdc_sync
   # (
      .c_cdc_type    (1),  // 0 Pulse synchronizer, 1 level synchronizer 2 level synchronizer with ACK 
      .c_flop_input  (1),  // 1 Adds one flop stage to the input prmry_in signal
      .c_reset_state (0),  // 1 Reset needed for sync flops 
      .c_single_bit  (1),  // 1 single bit input.
      .c_mtbf_stages (5)   // Number of sync stages needed
     )   u_cdc_rx_elastic_buferr
     (
       .prmry_aclk      (rxrecclk_to_fabric_i),
       .prmry_rst_n     (1'b1 ),
       .prmry_in        (rx_elastic_buf_err_int),
       .prmry_vect_in   (32'd0 ),
       .scndry_aclk     (TXUSRCLK2_IN ),
       .scndry_rst_n    (1'b1 ),
       .prmry_ack       ( ),
       .scndry_out      (rx_elastic_buf_err),
       .scndry_vect_out ( )
      );
     wire rx_hard_err_usr;
   assign  RXBUFERR_OUT  =   rxbuferr_out_i[1]  || rxbuferr_out_i[0] || rx_elastic_buf_err;
   assign rx_hard_err_usr = 1'b0 
                            || RXBUFERR_OUT 
            ;
 
     wire tx_hard_err_usr;
// TXBUFERR_OUT ports are not used & are tied to ground
   assign  TXBUFERR_OUT  =  int_txbufstatus_i[1];
   assign tx_hard_err_usr = 1'b0 
                            || TXBUFERR_OUT 
            ;
  // Logic to infer hard error
  reg hard_err_usr = 0;
  wire hard_err_init_sync;
  always @(posedge TXUSRCLK2_IN)
  begin
    hard_err_usr <= (tx_hard_err_usr && CHANNEL_UP_TX_IF) || (rx_hard_err_usr && CHANNEL_UP_RX_IF);
  end
aurora_64b66b_pcs_pma_cdc_sync
   # (
      .c_cdc_type    (1),  // 0 Pulse synchronizer, 1 level synchronizer 2 level synchronizer with ACK 
      .c_flop_input  (0),  // 1 Adds one flop stage to the input prmry_in signal
      .c_reset_state (0),  // 1 Reset needed for sync flops 
      .c_single_bit  (1),  // 1 single bit input.
      .c_mtbf_stages (5)   // Number of sync stages needed
     )   u_cdc_hard_err_init
     (
       .prmry_aclk      (1'b0),
       .prmry_rst_n     (1'b1 ),
       .prmry_in        (hard_err_usr),
       .prmry_vect_in   (32'd0 ),
       .scndry_aclk     (INIT_CLK ),
       .scndry_rst_n    (1'b1 ),
       .prmry_ack       ( ),
       .scndry_out      (hard_err_init_sync),
       .scndry_vect_out ( )
      );
    
     reg [7:0]  hard_err_cntr_r = 8'd0;
     reg        hard_err_rst_int;
     
     always @(posedge INIT_CLK)
     begin
       if(HPCNT_RESET_IN)
       begin
         hard_err_cntr_r <= 8'd0;
         hard_err_rst_int <= 1'b0;
       end
       else if(hard_err_init_sync || (|hard_err_cntr_r))
       begin
         if(&hard_err_cntr_r)
           hard_err_cntr_r <= hard_err_cntr_r;
         else
           hard_err_cntr_r <= hard_err_cntr_r + 1'b1;
         
         if((hard_err_cntr_r > 8'h03) & (hard_err_cntr_r < 8'hFD))
           hard_err_rst_int <= 1'b1;
         else
           hard_err_rst_int <= 1'b0;

       end
     end
 
     // Channel Bonding
   assign  chbondi_unused_i  = 5'b0;
 
   assign  chbondi = chbondi_unused_i;
 
   assign tx_resetdone_t = tx_resetdone_i;
   assign rx_resetdone_t = rx_resetdone_i;


      always @(posedge INIT_CLK)
        FSM_RESETDONE <= `DLY tx_fsm_resetdone_i & rx_fsm_resetdone_i;

aurora_64b66b_pcs_pma_rst_sync u_rst_sync_txusrclk_gtx_reset_comb
    (
      .prmry_in (txusrclk_gtx_reset_comb),
      .scndry_aclk (INIT_CLK),
      .scndry_out(stableclk_gtx_reset_comb)
    );

aurora_64b66b_pcs_pma_rst_sync u_rst_sync_gtx_reset_comb
    (
      .prmry_in (stableclk_gtx_reset_comb),
      .scndry_aclk (TXUSRCLK2_IN),
      .scndry_out(gtx_reset_comb)
    );
  
 
     //------------------------- External Sequence Counter--------------------------
     always @(posedge TXUSRCLK2_IN)
     begin
         if(gtx_reset_comb)
             txseq_counter_i <=  `DLY  7'd0;
         else if(txseq_counter_i == 32)
             txseq_counter_i <=  `DLY  7'd0;
         else
             txseq_counter_i <=  `DLY txseq_counter_i + 7'd1;
     end
 
     assign txsequence_i = txseq_counter_i;
 
 
     //Assign the Data Valid signal
     assign TXDATAVALID_OUT           = (txseq_counter_i != 28);
 
     //Assign TXDATAVALID to sym gen by accounting for the latency
     assign TXDATAVALID_SYMGEN_OUT    = (txseq_counter_i != 30);
 
     //_______________________________ Data Valid Signal ____ ________________________
     assign data_valid_i = (txseq_counter_i != 31);
 
     //#########################Clock Source########################
     BUFGCE rxrecclk_bufg_i
     (
         .I                           (rxrecclk_from_gtx_i),
         .CE                          (rx_clk_locked_i),
         .O                           (rxrecclk_to_fabric_i)
     );

 

  //Clocking onto the INIT-clock.
aurora_64b66b_pcs_pma_cdc_sync
   # (
      .c_cdc_type    (1),  // 0 Pulse synchronizer, 1 level synchronizer 2 level synchronizer with ACK 
      .c_flop_input  (0),  // 1 Adds one flop stage to the input prmry_in signal
      .c_reset_state (0),  // 1 Reset needed for sync flops 
      .c_single_bit  (1),  // 1 single bit input.
      .c_mtbf_stages (5)   // Number of sync stages needed
     )   u_cdc_gt_qplllock_i
     (
       .prmry_aclk      (1'b0),
       .prmry_rst_n     (1'b1 ),
       .prmry_in        (gt_qplllock_in),
       .prmry_vect_in   (32'd0 ),
       .scndry_aclk     (INIT_CLK ),
       .scndry_rst_n    (1'b1 ),
       .prmry_ack       ( ),
       .scndry_out      (gt_qplllock_i),
       .scndry_vect_out ( )
      );


       assign gtpll_locked_out_i = (gt_qplllock_i );

       assign gtpll_locked_out_r2 = gtpll_locked_out_i;

 
       assign qpllrefclklost_i = (gt_qpllrefclklost_in );
 
 
 
 
//----------------------------------Reset signal for TX Start up FSM--------------------------------
// GT Reset is delayed to ensure all core logics are in reset before clocks are removed by GT

//always @(posedge INIT_CLK) 
//begin
//    pmaInitStage[63:0] <= {pmaInitStage[62:0], GTXRESET_IN};
//end

     //---------------------------------- Start Up FSM for GTs--------------------------------

aurora_64b66b_pcs_pma_TX_STARTUP_FSM #
          (
           .GT_TYPE                  ("GTX"), //GTX or GTH or GTP
           .STABLE_CLOCK_PERIOD      (STABLE_CLOCK_PERIOD),           // Period of the stable clock driving this state-machine, unit is [ns]
           .RETRY_COUNTER_BITWIDTH   (8),
           .EXAMPLE_SIMULATION(EXAMPLE_SIMULATION),
 
           .TX_QPLL_USED             ("TRUE"),                       // the TX and RX Reset FSMs must
           .RX_QPLL_USED             ("TRUE"),                       // share these two generic values
           .PHASE_ALIGNMENT_MANUAL   ("FALSE")               // Decision if a manual phase-alignment is necessary or the automatic 
                                                                     // is enough. For single-lane applications the automatic alignment is 
                                                                     // sufficient              
             ) 
txresetfsm_i      
            ( 
        .STABLE_CLOCK                   (INIT_CLK),
        .TXUSERCLK                      (TXUSRCLK_IN),
        .SOFT_RESET                     (GTXRESET_IN),
        //.SOFT_RESET                     (pmaInitStage[63]),
        .SYSTEM_RESET                   (RESET),
        .TXRESET_IN                     (txreset_for_lanes),
        .FABRIC_PCS_RESET               (txusrclk_gtx_reset_comb),
 
        .QPLLREFCLKLOST                 (qpllrefclklost_i),
        .CPLLREFCLKLOST                 (tied_to_ground_i),
        .QPLLLOCK                       (gtpll_locked_out_r2),
        .CPLLLOCK                       (tied_to_vcc_i),
        .QPLL_RESET                     (qpllreset_i),
        .CPLL_RESET                     (),
        .TXRESETDONE                    (tx_resetdone_t),
        .MMCM_LOCK                      (TXCLK_LOCK),
        .GTTXRESET                      (gttxreset_t),
        .MMCM_RESET                     (mmcm_reset_i),
        .TX_FSM_RESET_DONE              (tx_fsm_resetdone_i),
        .TXUSERRDY                      (txuserrdy_t),
        .RUN_PHALIGNMENT                (),
        .RESET_PHALIGNMENT              (),
        .PHALIGNMENT_DONE               (tied_to_vcc_i),
        .RETRY_COUNTER                  ()
           );


aurora_64b66b_pcs_pma_RX_STARTUP_FSM  #
          (
           .EXAMPLE_SIMULATION       (EXAMPLE_SIMULATION),
           .BACKWARD_COMP_MODE2      (BACKWARD_COMP_MODE2),
           .GT_TYPE                  ("GTX"), //GTX or GTH or GTP
           .EQ_MODE                  ("DFE"),                          //Rx Equalization Mode - Set to DFE or LPM
           .STABLE_CLOCK_PERIOD      (STABLE_CLOCK_PERIOD),              //Period of the stable clock driving this state-machine, unit is [ns]
           .RETRY_COUNTER_BITWIDTH   (8), 
 
           .TX_QPLL_USED             ("TRUE"),                       // the TX and RX Reset FSMs must
           .RX_QPLL_USED             ("TRUE"),                       // share these two generic values
           .PHASE_ALIGNMENT_MANUAL   ("FALSE")                 // Decision if a manual phase-alignment is necessary or the automatic 
                                                                         // is enough. For single-lane applications the automatic alignment is 
                                                                         // sufficient              
             )     
rxresetfsm_i
             ( 
        .STABLE_CLOCK                   (INIT_CLK),
        .RXUSERCLK                      (rxrecclk_to_fabric_i),
        .SOFT_RESET                     (rxfsm_reset_i),
        .SYSTEM_RESET                   (RESET),
        .RXRESET_IN                     (rxreset_for_lanes_q),
        .FABRIC_PCS_RESET               (gtx_rx_pcsreset_comb),
 
        .QPLLREFCLKLOST                 (qpllrefclklost_i),
        .CPLLREFCLKLOST                 (tied_to_ground_i),
        .QPLLLOCK                       (gtpll_locked_out_r2),
        .CPLLLOCK                       (tied_to_vcc_i),
        .QPLL_RESET                     (),
        .CPLL_RESET                     (),
        .RXRESETDONE                    (rx_resetdone_t),
        .MMCM_LOCK                      (tied_to_vcc_i),
        .RECCLK_STABLE                  (tied_to_vcc_i),
        .RECCLK_MONITOR_RESTART         (tied_to_ground_i),
        .DATA_VALID                     (tied_to_vcc_i),
        .TXUSERRDY                      (tied_to_vcc_i),
        .GTRXRESET                      (gtrxreset_t),
        .MMCM_RESET                     (),
        .RX_FSM_RESET_DONE              (rx_fsm_resetdone_i),
        .RXUSERRDY                      (rxuserrdy_t),
        .RUN_PHALIGNMENT                (),
        .RESET_PHALIGNMENT              (),
        .PHALIGNMENT_DONE               (tied_to_vcc_i),
        .RXDFELFHOLD                    (),
        .RXLPMLFHOLD                    (),
        .RXLPMHFHOLD                    (),
        .RXDFEAGCHOLD                   (),
        .RX_CLK_LOCKED                  (rx_clk_locked_i),
        .RETRY_COUNTER                  ()
           );

wire reset_initclk;           

aurora_64b66b_pcs_pma_rst_sync u_rst_sync_reset_initclk
  (
      .prmry_in (RESET),
      .scndry_aclk (INIT_CLK),
      .scndry_out(reset_initclk)
  );

     assign  rxfsm_reset_i               = hpreset_or_pma_init_in | cdr_reset_fsm_lnkreset;
     assign sys_and_fsm_reset_for_hpcnt  = rxfsm_reset_i ? 1'b0 : (reset_initclk | ~FSM_RESETDONE);
     assign  hp_reset_i                  = hpreset_in | cdr_reset_fsm_lnkreset;
     assign  HPCNT_RESET_IN = GTXRESET_IN | sys_and_fsm_reset_for_hpcnt | cdr_reset_fsm_lnkreset ;
     assign  blocksync_all_lanes_inrxclk = blocksync_out_i ;
     assign rxlossofsync_out_i        = allow_block_sync_propagation_inrxclk ? blocksync_out_i : 1'b0; 

 always @(posedge rxrecclk_to_fabric_i)
 begin
     rxlossofsync_out_q <= `DLY rxlossofsync_out_i;
 end
     

 

always @(posedge rxrecclk_to_fabric_i)
begin
    blocksync_all_lanes_inrxclk_q <= `DLY blocksync_all_lanes_inrxclk;
end


aurora_64b66b_pcs_pma_rst_sync u_rst_sync_blocksyncall_initclk_sync
  (
      .prmry_in (blocksync_all_lanes_inrxclk_q),
      .scndry_aclk (INIT_CLK),
      .scndry_out(blocksync_all_lanes_instableclk)
  );
  
aurora_64b66b_pcs_pma_rst_sync u_rst_sync_blocksyncprop_inrxclk_sync
  (
      .prmry_in (allow_block_sync_propagation),
      .scndry_aclk (rxrecclk_to_fabric_i),
      .scndry_out(allow_block_sync_propagation_inrxclk)
  );

     always @(posedge INIT_CLK)  begin
        if(hpreset_or_pma_init_in | BACKWARD_COMP_MODE2) begin
            cdr_reset_fsm_r <= IDLE;
            cdr_reset_fsm_cntr_r <= 8'h0;
            cdr_reset_fsm_lnkreset <= 1'b0;
            allow_block_sync_propagation <= BACKWARD_COMP_MODE2;
        end else begin
            case(cdr_reset_fsm_r)
            IDLE: begin
                cdr_reset_fsm_cntr_r <= 8'h0;
                allow_block_sync_propagation <= 1'b0;
                cdr_reset_fsm_lnkreset <= 1'b0;
                if(blocksync_all_lanes_instableclk) begin
                    cdr_reset_fsm_r <= ASSERT_RXRESET;
                end
            end
            ASSERT_RXRESET: begin
                allow_block_sync_propagation <= 1'b0;
                cdr_reset_fsm_lnkreset <= 1'b1;
                if(cdr_reset_fsm_cntr_r == 8'hFF) begin
                    cdr_reset_fsm_r <= DONE;
                end else begin
                    cdr_reset_fsm_cntr_r <= cdr_reset_fsm_cntr_r +  8'h1;
                end
            end
            DONE: begin
                cdr_reset_fsm_cntr_r <= 8'h0;
                cdr_reset_fsm_r      <= DONE;
                cdr_reset_fsm_lnkreset <= 1'b0;
                allow_block_sync_propagation <= 1'b1;
            end
            endcase
        end
     end
 

  
 
     // qualifying the reset from gtx_rx_pcsreset_comb  with !FSM_RESETDONE to
     // avoid X propagation

aurora_64b66b_pcs_pma_rst_sync u_rst_sync_fsm_resetdone
     (
         .prmry_in(FSM_RESETDONE),
         .scndry_aclk(rxrecclk_to_fabric_i),
         .scndry_out(fsm_resetdone_to_new_gtx_rx_comb)

     );

   always @(posedge rxrecclk_to_fabric_i) 
   begin
      new_gtx_rx_pcsreset_comb <=  gtx_rx_pcsreset_comb | (!fsm_resetdone_to_new_gtx_rx_comb) ;
   end

   assign rxreset_for_lanes = RXRESET_IN;

always @(posedge RXUSRCLK2_IN)
begin
    rxreset_for_lanes_q <= `DLY rxreset_for_lanes;
end

     assign  hpreset_or_pma_init_in = GTXRESET_IN | hpreset_in | hard_err_rst_int;
     assign  hpreset_in             = link_reset_0_c[0];
 
     assign  gtrxreset_i = gtrxreset_t;

 
     always @ (posedge TXUSRCLK2_IN)
     begin
           tx_hdr_r   <= `DLY TXHEADER_IN; 
     end

   assign txreset_for_lanes = TXRESET_IN;


     always @ (posedge INIT_CLK) 
          LINK_RESET_OUT <= `DLY  cdr_reset_fsm_lnkreset |  link_reset_0_c[0];
 
 
     //*************************************************************************************************
     //-----------------------------------GTX INSTANCE-----------------------------------------------
     //*************************************************************************************************
 
aurora_64b66b_pcs_pma_MULTI_GT #
 (
       .WRAPPER_SIM_GTRESET_SPEEDUP (SIM_GTXRESET_SPEEDUP)        // Set to 1 to speed up sim reset 
 )
aurora_64b66b_pcs_pma_multi_gt_i
 (

//---{
                   .gt_qpllclk_quad1_in    (gt_qpllclk_quad1_in    ),
                   .gt_qpllrefclk_quad1_in (gt_qpllrefclk_quad1_in ),   

//---}


    //-------------------------- Channel - DRP Ports  --------------------------
         .gt0_drpaddr_in                   (DRPADDR_IN),
         .gt0_drp_clk_in                   (DRP_CLK_IN),
         .gt0_drpdi_in                     (DRPDI_IN),
         .gt0_drpdo_out                    (DRPDO_OUT),
         .gt0_drpen_in                     (DRPEN_IN),
         .gt0_drprdy_out                   (DRPRDY_OUT),
         .gt0_drpwe_in                     (DRPWE_IN),
    //----------------------------- Loopback Ports -----------------------------
         .GT0_LOOPBACK_IN                  (LOOPBACK_IN),
    //------------------- RX Initialization and Reset Ports --------------------
         .GT0_RXUSERRDY_IN                 (rxuserrdy_t),
         .GT0_RX_POLARITY_IN               (sync_rx_polarity_r),
         .GT0_RXUSRCLK_IN                  (rxrecclk_to_fabric_i),
         .GT0_RXUSRCLK2_IN                 (rxrecclk_to_fabric_i),
         .GT0_RXDATA_OUT                   (pre_rxdata_from_gtx_i),
    //---------------------- Receive Ports - RX AFE Ports ----------------------
         .GT0_GTXRXN_IN                       (RX1N_IN),
         .GT0_GTXRXP_IN                       (RX1P_IN),
    //----------------- Receive Ports - RX Buffer Bypass Ports -----------------
         .GT0_RXBUFSTATUS_OUT                 (int_rxbufstatus_i),
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
         .GT0_RXOUTCLK_OUT                    (rxrecclk_from_gtx_i),
    //-------------------- Receive Ports - RX Gearbox Ports --------------------
         .GT0_RXDATAVALID_OUT                 (pre_rxdatavalid_i),
         .GT0_RXHEADER_OUT                    (pre_rxheader_from_gtx_i),
         .GT0_RXHEADERVALID_OUT               (pre_rxheadervalid_i),
    //------------------- Receive Ports - RX Gearbox Ports  --------------------
         .GT0_RXGEARBOXSLIP_IN                (rxgearboxslip_i),
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
         .GT0_GTRXRESET_IN                    (gtrxreset_i),
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
         .GT0_RXRESETDONE_OUT                 (rx_resetdone_i), 
    //------------------- TX Initialization and Reset Ports --------------------
         .GT0_GTTXRESET_IN                    (gttxreset_t), 
         .GT0_TXUSERRDY_IN                    (txuserrdy_t),
    //------------ Transmit Ports - 64b66b and 64b67b Gearbox Ports ------------
         .GT0_TXHEADER_IN                     (tx_hdr_r),   
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
         .GT0_TXUSRCLK_IN                     (TXUSRCLK_IN), 
         .GT0_TXUSRCLK2_IN                    (TXUSRCLK2_IN), 
    //---------------- Transmit Ports - TX Data Path interface -----------------
           .GT0_TXDATA_IN                     (scrambled_data_i), 
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
          .GT0_GTXTXN_OUT                     (TX1N_OUT), 
          .GT0_GTXTXP_OUT                     (TX1P_OUT), 
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
          .GT0_TXOUTCLK_OUT                   (TXOUTCLK1_OUT), 
          .GT0_TXOUTCLKFABRIC_OUT             (), 
          .GT0_TXOUTCLKPCS_OUT                (),
    //------------------- Transmit Ports - TX Gearbox Ports --------------------
          .GT0_TXSEQUENCE_IN                  (txsequence_i), 
    //----------------------- Receive Ports - CDR Ports ------------------------
         .GT0_RXCDROVRDEN_IN               (GT_RXCDROVRDEN_IN),
         .gt0_RXPMARESET_IN                (tied_to_ground_i),
         .gt0_txpmareset_in                (tied_to_ground_i),
         .gt0_txpcsreset_in                (tied_to_ground_i),
         .gt0_rxpcsreset_in                (tied_to_ground_i),
         .gt0_rxbufreset_in                (tied_to_ground_i),
         .gt0_txprbssel_in                 (tied_to_ground_vec_i[2:0]    ),
         .gt0_rxprbssel_in                 (tied_to_ground_vec_i[2:0]     ),
         .gt0_txprbsforceerr_in            (tied_to_ground_i),
         .gt0_rxprbserr_out                (),
         .gt0_rxprbscntreset_in            (tied_to_ground_i),
         .gt0_dmonitorout_out              (),
         .gt0_txbufstatus_out              (int_txbufstatus_i),
    //------------------------ RX Margin Analysis Ports ------------------------
         .GT0_eyescandataerror_out         (),
         .GT0_eyescanreset_in              (tied_to_ground_i),
         .GT0_eyescantrigger_in            (tied_to_ground_i),
    //------------------- Receive Ports - RX Equalizer Ports -------------------
         .GT0_rxcdrhold_in                 (tied_to_ground_i),
         .GT0_rxlpmhfovrden_in             (tied_to_ground_i),
         .GT0_rxdfeagchold_in              (tied_to_ground_i),
         .GT0_rxdfeagcovrden_in            (tied_to_ground_i),
         .GT0_rxdfelfhold_in               (tied_to_ground_i),
         .GT0_rxdfelpmreset_in             (tied_to_ground_i),
         .GT0_rxlpmlfklovrden_in           (tied_to_ground_i),
         .GT0_rxmonitorout_out             (),
         .GT0_rxmonitorsel_in              (2'b00),
         .GT0_rxlpmen_in                   (tied_to_ground_i),
        //---------------------- TX Configurable Driver Ports ----------------------
        .GT0_txpostcursor_in               (5'b00000),
        .GT0_txdiffctrl_in                 (4'b1000),
        .GT0_txmaincursor_in               (7'b0000000),
        .gt0_txprecursor_in                (5'b00000),
        //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .GT0_txpolarity_in                 (tied_to_ground_i),
        .gt0_txinhibit_in                  (tied_to_ground_i),
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
          .GT0_TXRESETDONE_OUT                (tx_resetdone_i) 

 );


always @(posedge rxrecclk_to_fabric_i)
begin
    pre_r1_rxdata_from_gtx_i    <= `DLY  pre_rxdata_from_gtx_i    ;
    pre_r2_rxdata_from_gtx_i    <= `DLY  pre_r1_rxdata_from_gtx_i ;
    pre_r3_rxdata_from_gtx_i    <= `DLY  pre_r2_rxdata_from_gtx_i ;
    pre_r4_rxdata_from_gtx_i    <= `DLY  pre_r3_rxdata_from_gtx_i ;
    pre_r1_rxdatavalid_i        <= `DLY  pre_rxdatavalid_i        ;
    pre_r2_rxdatavalid_i        <= `DLY  pre_r1_rxdatavalid_i     ;
    pre_r3_rxdatavalid_i        <= `DLY  pre_r2_rxdatavalid_i     ;
    pre_r4_rxdatavalid_i        <= `DLY  pre_r3_rxdatavalid_i     ;
end

always @(posedge rxrecclk_to_fabric_i)
begin
    if(pre_r4_rxdatavalid_i)
    begin
        pos_rxdata_from_gtx_i <= `DLY pre_r4_rxdata_from_gtx_i;
        pos_rxdatavalid_i     <= `DLY 1'b1;
    end
    else
    begin
        pos_rxdatavalid_i     <= `DLY 1'b0;
    end
end

always @(posedge rxrecclk_to_fabric_i)
begin
    pre_r1_rxheader_from_gtx_i    <= `DLY  pre_rxheader_from_gtx_i    ;
    pre_r2_rxheader_from_gtx_i    <= `DLY  pre_r1_rxheader_from_gtx_i ;
    pre_r3_rxheader_from_gtx_i    <= `DLY  pre_r2_rxheader_from_gtx_i ;
    pre_r4_rxheader_from_gtx_i    <= `DLY  pre_r3_rxheader_from_gtx_i ;
    pre_r1_rxheadervalid_i        <= `DLY  pre_rxheadervalid_i        ;
    pre_r2_rxheadervalid_i        <= `DLY  pre_r1_rxheadervalid_i     ;
    pre_r3_rxheadervalid_i        <= `DLY  pre_r2_rxheadervalid_i     ;
    pre_r4_rxheadervalid_i        <= `DLY  pre_r3_rxheadervalid_i     ;
end

always @(posedge rxrecclk_to_fabric_i)
begin
    if(pre_r4_rxheadervalid_i)
    begin
        pos_rxheader_from_gtx_i <= `DLY pre_r4_rxheader_from_gtx_i;
        pos_rxheadervalid_i     <= `DLY 1'b1;
    end
    else
    begin
        pos_rxheadervalid_i     <= `DLY 1'b0;
    end
end


//---- Final stage of posedge flop -----
always @(posedge rxrecclk_to_fabric_i)
begin
    rxdata_from_gtx_i            <= `DLY  pos_rxdata_from_gtx_i;
    rxdatavalid_i                <= `DLY  pos_rxdatavalid_i;
    rxheader_from_gtx_i          <= `DLY  pos_rxheader_from_gtx_i;
    rxheadervalid_i              <= `DLY  pos_rxheadervalid_i;
end
 
 // Common_reset_cbcc module to generate & control reset for CBCC module
 // This will drive reset to all CBCC instances used in the core
 
   assign  enchansync_all_i =  ENCHANSYNC_IN;  

aurora_64b66b_pcs_pma_common_reset_cbcc  common_reset_cbcc_i
     (
        .enchansync                     (enchansync_all_i             ),
        .chan_bond_reset                (CHAN_BOND_RESET              ),
        .cb_bit_err                     (cb_bit_err_i                 ),
        .reset                          (new_gtx_rx_pcsreset_comb     ),
        .rd_clk                         ( RXUSRCLK2_IN                ),
        .init_clk                       ( INIT_CLK                    ),
        .user_clk                       ( rxrecclk_to_fabric_i        ),
        .cbcc_fifo_reset_wr_clk         ( cbcc_fifo_reset_wr_clk      ),
        .cbcc_fifo_reset_to_fifo_wr_clk ( cbcc_fifo_reset_to_fifo_wr_clk ),
        .cbcc_fifo_reset_rd_clk         ( cbcc_fifo_reset_rd_clk      ),
        .cbcc_fifo_reset_to_fifo_rd_clk ( cbcc_fifo_reset_to_fifo_rd_clk ),
        .cbcc_only_reset_rd_clk         ( cbcc_only_reset_rd_clk      ),
        .cbcc_reset_cbstg2_rd_clk       ( cbcc_reset_cbstg2_rd_clk    )
     );




aurora_64b66b_pcs_pma_common_logic_cbcc #
     (
         .BACKWARD_COMP_MODE1(BACKWARD_COMP_MODE1)
     )common_logic_cbcc_i
     (
        .start_cb_writes_in   ( start_cb_writes_i ),
        .do_rd_en_in          ( do_rd_en_i ),
        .bit_err_chan_bond_in ( bit_err_chan_bond_i ),
        .final_gater_for_fifo_din_in ( final_gater_for_fifo_din_i ),
        .any_vld_btf_in       ( any_vld_btf_i ),
        .all_start_cb_writes_out                ( all_start_cb_writes_i ),
        .cbcc_fifo_reset_wr_clk                 ( cbcc_fifo_reset_wr_clk      ),
        .cbcc_fifo_reset_rd_clk                 ( cbcc_fifo_reset_rd_clk      ),
        .master_do_rd_en_out                    ( master_do_rd_en_i ),
        .cb_bit_err_out                         ( cb_bit_err_i ),
        .all_vld_btf_out                        ( all_vld_btf_flag_i ),
        .rxusrclk2_in                           ( RXUSRCLK2_IN                ),
        .rxrecclk_to_fabric                     ( rxrecclk_to_fabric_i )
     );



    //#########################scrambler instantiation########################
aurora_64b66b_pcs_pma_SCRAMBLER_64B66B #
     (
        .TX_DATA_WIDTH(64)
     )
       scrambler_64b66b_gtx0_i 
     (
       // User Interface
        .UNSCRAMBLED_DATA_IN(TXDATA_IN), 
        .SCRAMBLED_DATA_OUT(scrambled_data_i), 
        .DATA_VALID_IN(data_valid_i),
 
        // System Interface
        .USER_CLK(TXUSRCLK2_IN),
        .SYSTEM_RESET(gtx_reset_comb)
     );
 
     //---------------------------Polarity Control Logic---------------------
     //Double synchronize CHECK_POLARITY_IN signal to account for domain crossing

aurora_64b66b_pcs_pma_cdc_sync
   # (
      .c_cdc_type    (1),  // 0 Pulse synchronizer, 1 level synchronizer 2 level synchronizer with ACK 
      .c_flop_input  (0),  // 1 Adds one flop stage to the input prmry_in signal
      .c_reset_state (0),  // 1 Reset needed for sync flops 
      .c_single_bit  (1),  // 1 single bit input.
      .c_mtbf_stages (2)   // Number of sync stages needed
     )   u_cdc__check_polarity
     (
       .prmry_aclk      (1'b0 ),
       .prmry_rst_n     (1'b1 ),
       .prmry_in        (CHECK_POLARITY_IN),
       .prmry_vect_in   (32'd0 ),
       .scndry_aclk     (rxrecclk_to_fabric_i ),
       .scndry_rst_n    (1'b1 ),
       .prmry_ack       ( ),
       .scndry_out      (check_polarity_r2),
       .scndry_vect_out ( )
      );
 
     //Logic to account for polarity reversal
     always @(posedge rxrecclk_to_fabric_i)
     begin
         if(check_polarity_r2 && (rxheader_from_gtx_i == 2'b01) && rxheadervalid_i) 
             RX_NEG_OUT     <= `DLY   1'b1; 
       else if(check_polarity_r2 && RX_NEG_OUT )
             RX_NEG_OUT     <= `DLY   1'b1; 
       else
             RX_NEG_OUT     <= `DLY   1'b0; 
     end
 
     //Finally double synchronize RX_POLARITY_IN signal and port map to RXPOLARITY0/1
aurora_64b66b_pcs_pma_cdc_sync
   # (
      .c_cdc_type    (1),  // 0 Pulse synchronizer, 1 level synchronizer 2 level synchronizer with ACK 
      .c_flop_input  (0),  // 1 Adds one flop stage to the input prmry_in signal
      .c_reset_state (0),  // 1 Reset needed for sync flops 
      .c_single_bit  (1),  // 1 single bit input.
      .c_mtbf_stages (3)   // Number of sync stages needed
     )   u_cdc_rxpolarity_
     (
       .prmry_aclk      (RXUSRCLK2_IN ),
       .prmry_rst_n     (1'b1 ),
       .prmry_in        (RXPOLARITY_IN ),
       .prmry_vect_in   (32'd0 ),
       .scndry_aclk     (rxrecclk_to_fabric_i ),
       .scndry_rst_n    (1'b1 ),
       .prmry_ack       ( ),
       .scndry_out      (sync_rx_polarity_r ),
       .scndry_vect_out ( )
      );

             
 
     always @(posedge rxrecclk_to_fabric_i)
     begin
             rxdatavalid_to_fifo_i  <= `DLY rxdatavalid_i; 
             rxheader_to_fifo_i     <= `DLY rxheader_from_gtx_i; 
     end
 
     //##########################descrambler instantiation########################
aurora_64b66b_pcs_pma_DESCRAMBLER_64B66B #
     (
        .RX_DATA_WIDTH(32)
     )
       descrambler_64b66b_gtx0_i 
     (
        // User Interface
        .SCRAMBLED_DATA_IN(rxdata_from_gtx_i), 
        .UNSCRAMBLED_DATA_OUT(rxdata_to_fifo_i), 
        .DATA_VALID_IN(rxdatavalid_i), 
 
        // System Interface
        .USER_CLK(rxrecclk_to_fabric_i),
        .SYSTEM_RESET(!rxlossofsync_out_q) 
     );
 
     //#########################block sync instantiation############################## 
aurora_64b66b_pcs_pma_BLOCK_SYNC_SM #
     (
       .SH_CNT_MAX(SH_CNT_MAX),
       .SH_INVALID_CNT_MAX(SH_INVALID_CNT_MAX)
     )
       block_sync_sm_gtx0_i 
     (
       // User Interface
       .BLOCKSYNC_OUT(blocksync_out_i), 
       .RXGEARBOXSLIP_OUT(rxgearboxslip_i), 
       .RXHEADER_IN(rxheader_from_gtx_i), 
       .RXHEADERVALID_IN(rxheadervalid_i), 
 
       // System Interface
       .USER_CLK(rxrecclk_to_fabric_i),
       .SYSTEM_RESET(new_gtx_rx_pcsreset_comb)
     );

    
     //#########################CBCC module instantiation########################
aurora_64b66b_pcs_pma_CLOCK_CORRECTION_CHANNEL_BONDING #
     (
     .INTER_CB_GAP(INTER_CB_GAP),
     .EXAMPLE_SIMULATION (EXAMPLE_SIMULATION),
    .LOW_WATER_MARK    (LOW_WATER_MARK_MASTER),
    .HIGH_WATER_MARK   (HIGH_WATER_MARK_MASTER),
       .BACKWARD_COMP_MODE3 (BACKWARD_COMP_MODE3),
       .CH_BOND_MAX_SKEW (2'b10),
       .CH_BOND_MODE   (CHAN_BOND_MODE_0) 
 
     )
       cbcc_gtx0_i 
     (
 
       //Write Interface 
         .GTX_RX_DATA_IN (rxdata_to_fifo_i), 
         .GTX_RX_DATAVALID_IN(rxdatavalid_to_fifo_i), 
         .GTX_RX_HEADER_IN(rxheader_to_fifo_i), 
         .WR_ENABLE(enable_32_i),
         .USER_CLK(rxrecclk_to_fabric_i),
         .RXLOSSOFSYNC_IN(rxlossofsync_out_q), 
         .ENCHANSYNC(ENCHANSYNC_IN), 
         .CHAN_BOND_RESET(CHAN_BOND_RESET),
 
       //Read Interface
         .CC_RX_DATA_OUT(RXDATA_OUT), 
         .CC_RX_BUF_STATUS_OUT(rxbuferr_out_i), 
         .CC_RX_DATAVALID_OUT(RXDATAVALID_OUT), 
         .CC_RX_HEADER_OUT(RXHEADER_OUT), 
         .CC_RXLOSSOFSYNC_OUT(RXLOSSOFSYNC_OUT), 
 
         .CHBONDI (chbondi),
         .CHBONDO (chbondo_to_slaves_i),
         .RXCHANISALIGNED(CHBONDDONE_OUT),
         .CBCC_FIFO_RESET_WR_CLK(cbcc_fifo_reset_wr_clk),
         .CBCC_FIFO_RESET_TO_FIFO_WR_CLK( cbcc_fifo_reset_to_fifo_wr_clk),
         .CBCC_FIFO_RESET_RD_CLK(cbcc_fifo_reset_rd_clk),
         .CBCC_FIFO_RESET_TO_FIFO_RD_CLK (cbcc_fifo_reset_to_fifo_rd_clk ),
         .CBCC_ONLY_RESET_RD_CLK(cbcc_only_reset_rd_clk),
         .CBCC_RESET_CBSTG2_RD_CLK(cbcc_reset_cbstg2_rd_clk),
         .ANY_VLD_BTF_FLAG(any_vld_btf_i ),
         .START_CB_WRITES_OUT(start_cb_writes_i ),
         .ALL_START_CB_WRITES_IN(all_start_cb_writes_i),
         .ALL_VLD_BTF_FLAG_IN(all_vld_btf_flag_i ),
         .PERLN_DO_RD_EN(do_rd_en_i ),
         .MASTER_DO_RD_EN(master_do_rd_en_i ),
         .FIRST_CB_BITERR_CB_RESET_OUT(bit_err_chan_bond_i),
         .FINAL_GATER_FOR_FIFO_DIN(final_gater_for_fifo_din_i ),
         .RESET(new_gtx_rx_pcsreset_comb),
         .RD_CLK (RXUSRCLK2_IN),
         .HPCNT_RESET_IN(HPCNT_RESET_IN),
         .GTXRESET_IN (GTXRESET_IN),
         .INIT_CLK (INIT_CLK),
         .LINK_RESET(link_reset_0_c)
     );
 
 
 endmodule
 
