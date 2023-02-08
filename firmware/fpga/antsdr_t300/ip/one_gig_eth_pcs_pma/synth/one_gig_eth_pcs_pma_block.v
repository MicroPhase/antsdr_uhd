
//------------------------------------------------------------------------------
// File       : one_gig_eth_pcs_pma_block.v
// Author     : Xilinx Inc.
//------------------------------------------------------------------------------
// (c) Copyright 2009 Xilinx, Inc. All rights reserved.
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
//------------------------------------------------------------------------------
// Description: This Core Block Level wrapper connects the core to a
//              Series-7 Transceiver.
//
//
//   ------------------------------------------------------------
//   |                      Core Block wrapper                  |
//   |                                                          |
//   |        ------------------          -----------------     |
//   |        |      Core      |          | Transceiver   |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
// ---------->| GMII           |--------->|           TXP |-------->
//   |        | Tx             |          |           TXN |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        | GMII           |          |           RXP |     |
// <----------| Rx             |<---------|           RXN |<--------
//   |        |                |          |               |     |
//   |        ------------------          -----------------     |
//   |                                                          |
//   ------------------------------------------------------------
//
//


`timescale 1 ps/1 ps
(* DowngradeIPIdentifiedWarnings="yes" *)

//------------------------------------------------------------------------------
// The module declaration for the Core Block wrapper.
//------------------------------------------------------------------------------

module one_gig_eth_pcs_pma_block #
   (
    parameter EXAMPLE_SIMULATION                     =  0
   )
   (
      // Transceiver Interface
      //----------------------

      input        gtrefclk,            
      input        gtrefclk_bufg,
      output       txp,                   // Differential +ve of serial transmission from PMA to PMD.
      output       txn,                   // Differential -ve of serial transmission from PMA to PMD.
      input        rxp,                   // Differential +ve for serial reception from PMD to PMA.
      input        rxn,                   // Differential -ve for serial reception from PMD to PMA.

      output       txoutclk,              
      output       rxoutclk,              
      output       resetdone,             // The GT transceiver has completed its reset cycle
      output       cplllock,             // The GT transceiver has completed its reset cycle
      output       mmcm_reset, 
      input        mmcm_locked,           // locked indication from MMCM
      input        userclk,               
      input        userclk2,              
      input        rxuserclk,            
      input        rxuserclk2,           
      input        independent_clock_bufg,
      input        pma_reset,             // transceiver PMA reset signal
      // GMII Interface
      //---------------
      input [7:0]  gmii_txd,              // Transmit data from client MAC.
      input        gmii_tx_en,            // Transmit control signal from client MAC.
      input        gmii_tx_er,            // Transmit control signal from client MAC.
      output [7:0] gmii_rxd,              // Received Data to client MAC.
      output       gmii_rx_dv,            // Received control signal to client MAC.
      output       gmii_rx_er,            // Received control signal to client MAC.
      output       gmii_isolate,          // Tristate control to electrically isolate GMII.

      // Management: MDIO Interface
      //---------------------------

      input        mdc,                   // Management Data Clock
      input        mdio_i,                // Management Data In
      output       mdio_o,                // Management Data Out
      output       mdio_t,                // Management Data Tristate
      input [4:0]  phyaddr,
      input [4:0]  configuration_vector,  // Alternative to MDIO interface.
      input        configuration_valid,   // Validation signal for Config vector

      // General IO's
      //-------------
      output [15:0] status_vector,         // Core status.
      input        reset,                 // Asynchronous reset for entire core.
      
      input        signal_detect,          // Input from PMD to indicate presence of optical input.
      input gt0_qplloutclk_in,                          
      input gt0_qplloutrefclk_in
   );


   //---------------------------------------------------------------------------
   // Internal signals used in this block level wrapper.
   //---------------------------------------------------------------------------

   // Core <=> Transceiver interconnect
   wire         plllock;                  // The PLL Locked status of the Transceiver
   wire         mgt_rx_reset;             // Reset for the receiver half of the Transceiver
   wire         mgt_tx_reset;             // Reset for the transmitter half of the Transceiver
   wire [1:0]   rxbufstatus;              // Elastic Buffer Status (bit 1 asserted indicates  overflow or underflow).
   wire         rxchariscomma;            // Comma detected in RXDATA.
   wire         rxcharisk;                // K character received (or extra data bit) in RXDATA.
   wire [2:0]   rxclkcorcnt;              // Indicates clock correction.
   wire [7:0]   rxdata;                   // Data after 8B/10B decoding.
   wire         rxrundisp;                // Running Disparity after current byte, becomes 9th data bit when RXNOTINTABLE='1'.
   wire         rxdisperr;                // Disparity-error in RXDATA.
   wire         rxnotintable;             // Non-existent 8B/10 code indicated.
   wire         txbuferr;                 // TX Buffer error (overflow or underflow).
   wire         powerdown;                // Powerdown the Transceiver
   wire         txchardispmode;           // Set running disparity for current byte.
   wire         txchardispval;            // Set running disparity value.
   wire         txcharisk;                // K character transmitted in TXDATA.
   wire [7:0]   txdata;                   // Data for 8B/10B encoding.
   wire         enablealign;              // Allow the transceivers to serially realign to a comma character.

   wire [15:0] rx_gt_nominal_latency;


   wire gt0_txresetdone_out_i;
   wire gt0_rxresetdone_out_i;
   wire resetdone_i;
   wire tx_reset_done_i;
   wire rx_reset_done_i;
   wire reset_done_i;

   wire mdio_o_int;
assign rx_gt_nominal_latency = 'd248;




assign mdio_o  =  mdio_o_int;



   //---------------------------------------------------------------------------
   // Instantiate the core
   //---------------------------------------------------------------------------
   gig_ethernet_pcs_pma_v16_1_6 #(
       .C_ELABORATION_TRANSIENT_DIR ("BlankString"),
       .C_COMPONENT_NAME            ("one_gig_eth_pcs_pma"),
       .C_RX_GMII_CLK               ("TXOUTCLK"),
       .C_FAMILY                    ("zynq"),
       .C_IS_SGMII                  (1'b0),
       .C_USE_TRANSCEIVER           (1'b1),
       .C_HAS_TEMAC                 (1'b1),
       .C_USE_TBI                   (1'b0),
       .C_USE_LVDS                  (1'b0),
       .C_HAS_AN                    (1'b0),
       .C_HAS_MDIO                  (1'b1),
       .C_SGMII_PHY_MODE            (1'b0),
       .C_DYNAMIC_SWITCHING         (1'b0),
       .C_SGMII_FABRIC_BUFFER       (1'b1),
       .C_1588                      (0 ),
       .B_SHIFTER_ADDR              (10'b0101001110),
       .C_2_5G                      (1'b0),
       .GT_RX_BYTE_WIDTH            (1 )
     )
   one_gig_eth_pcs_pma_core
     (
      .mgt_rx_reset          (mgt_rx_reset),
      .mgt_tx_reset          (mgt_tx_reset),
      .speed_is_10_100       (1'b0),
      .speed_is_100          (1'b0),
      
      .rx_gt_nominal_latency (rx_gt_nominal_latency),
      .userclk               (userclk2),
      .userclk2              (userclk2),
      .dcm_locked            (mmcm_locked),
      .rxbufstatus           (rxbufstatus),
      .rxchariscomma         (rxchariscomma),
      .rxcharisk             (rxcharisk),
      .rxclkcorcnt           (rxclkcorcnt),
      .rxdata                (rxdata),
      .rxdisperr             (rxdisperr),
      .rxnotintable          (rxnotintable),
      .rxrundisp             (rxrundisp),
      .txbuferr              (txbuferr),
      .powerdown             (powerdown),
      .txchardispmode        (txchardispmode),
      .txchardispval         (txchardispval),
      .txcharisk             (txcharisk),
      .txdata                (txdata),
      .enablealign           (enablealign),
      .rxrecclk              (rxuserclk2),
      .gmii_txd              (gmii_txd),
      .gmii_tx_en            (gmii_tx_en),
      .gmii_tx_er            (gmii_tx_er),
      .gmii_rxd              (gmii_rxd),
      .gmii_rx_dv            (gmii_rx_dv),
      .gmii_rx_er            (gmii_rx_er),
      .gmii_isolate          (gmii_isolate),
      .mdc                   (mdc),
      .mdio_in               (mdio_i),
      .mdio_out              (mdio_o_int),
      .mdio_tri              (mdio_t),
      .phyad                 (phyaddr),
      .configuration_vector  (configuration_vector),
      .configuration_valid   (configuration_valid),
      .an_interrupt          (),
      .an_adv_config_vector  (16'b0),
      .an_restart_config     (1'b0),
      .link_timer_value      (10'b0),
      .an_adv_config_val     (1'b0),
      .link_timer_basex      (10'b0),
      .link_timer_sgmii      (10'b0),
      .basex_or_sgmii        (1'b0),
      .status_vector          (status_vector),
      .an_enable              (),
      .speed_selection        (),
      .reset                  (reset),
      .signal_detect          (signal_detect),
      // drp interface used in 1588 mode
      .drp_dclk               (1'b0),
      .drp_gnt                (1'b0),        
      .drp_drdy               (1'b0),        
      .drp_do                 (16'b0),
      .drp_req                (),
      .drp_den                (),
      .drp_dwe                (),
      .drp_daddr              (),
      .drp_di                 (),
      // 1588 Timer input
      .systemtimer_s_field    (48'b0),
      .systemtimer_ns_field   (32'b0),
      .correction_timer       (64'b0),
      .rxphy_s_field          (),
      .rxphy_ns_field         (),
      .rxphy_correction_timer (),
      
      .gtx_clk                (1'b0),
      .rx_code_group0         (10'b0),
      .rx_code_group1         (10'b0),
      .pma_rx_clk0            (1'b0),
      .pma_rx_clk1            (1'b0),
      .tx_code_group         (),
      .loc_ref               (),
      .ewrap                 (),
      .en_cdet               (),
      .reset_done             (reset_done_i)

      );



   //---------------------------------------------------------------------------
   //  Component Instantiation for the Series-7 Transceiver wrapper
   //---------------------------------------------------------------------------

   one_gig_eth_pcs_pma_transceiver #
    (
        .EXAMPLE_SIMULATION             (EXAMPLE_SIMULATION)
    )  
transceiver_inst (

      .encommaalign          (enablealign),
      .powerdown             (powerdown),
      .usrclk                (userclk),
      .usrclk2               (userclk2),
      .rxusrclk                (rxuserclk),
      .rxusrclk2               (rxuserclk2),
      .independent_clock     (independent_clock_bufg),
      .data_valid            (status_vector[1]),
      .txreset               (mgt_tx_reset),
      .txchardispmode        (txchardispmode),
      .txchardispval         (txchardispval),
      .txcharisk             (txcharisk),
      .txdata                (txdata),
      .rxreset               (mgt_rx_reset),
      .rxchariscomma         (rxchariscomma),
      .rxcharisk             (rxcharisk),
      .rxclkcorcnt           (rxclkcorcnt),
      .rxdata                (rxdata),
      .rxdisperr             (rxdisperr),
      .rxnotintable          (rxnotintable),
      .rxrundisp             (rxrundisp),
      .rxbuferr              (rxbufstatus[1]),
      .txbuferr              (txbuferr),
      .plllkdet              (cplllock),
      .mmcm_reset            (mmcm_reset),
      .recclk_mmcm_reset     (),
      .txoutclk              (txoutclk),
      .rxoutclk              (rxoutclk),
      .txn                   (txn),
      .txp                   (txp),
      .rxn                   (rxn),
      .rxp                   (rxp),

      .gtrefclk              (gtrefclk),
      .gtrefclk_bufg         (gtrefclk_bufg),
      .pmareset              (pma_reset),
      .mmcm_locked           (mmcm_locked),
      
      .gt0_txpmareset_in            (1'b0),
      .gt0_txpcsreset_in            (1'b0),
      .gt0_rxpmareset_in            (1'b0),
      .gt0_rxpcsreset_in            (1'b0),
      .gt0_rxbufreset_in            (1'b0),
      .gt0_rxbufstatus_out          (),
      .gt0_txbufstatus_out          (),
      .gt0_drpaddr_in               (9'b0),
      .gt0_drpclk_in                (gtrefclk_bufg),
      .gt0_drpdi_in                 (16'b0),
      .gt0_drpdo_out                (),
      .gt0_drpen_in                 (1'b0),
      .gt0_drprdy_out               (),
      .gt0_drpwe_in                 (1'b0),
      .gt0_rxbyteisaligned_out      (),
      .gt0_rxbyterealign_out        (),
      .gt0_rxdfeagcovrden_in        (1'b0),
      .gt0_rxmonitorout_out         (),
      .gt0_rxmonitorsel_in          (2'b00),
      .gt0_rxcommadet_out           (),
      .gt0_txpolarity_in            (1'b0),
      .gt0_txdiffctrl_in            (4'b1000),
      .gt0_txinhibit_in             (1'b0),
      .gt0_txpostcursor_in          (5'b00000),
      .gt0_txprecursor_in           (5'b00000),
      .gt0_rxpolarity_in            (1'b0),
      .gt0_rxdfelpmreset_in         (1'b0),
      .gt0_rxlpmen_in               (1'b1),
      .gt0_txprbssel_in             (3'b000),
      .gt0_txprbsforceerr_in        (1'b0),
      .gt0_rxprbscntreset_in        (1'b0),
      .gt0_rxprbserr_out            (),
      .gt0_rxprbssel_in             (3'b000),
      .gt0_loopback_in              (3'b000),
      .gt0_txresetdone_out          (gt0_txresetdone_out_i),
      .gt0_rxresetdone_out          (gt0_rxresetdone_out_i),
      .gt0_eyescanreset_in          (1'b0),
      .gt0_eyescandataerror_out     (),
      .gt0_eyescantrigger_in        (1'b0),
      .gt0_rxcdrhold_in             (1'b0),
      .gt0_dmonitorout_out          (),      
      
      .resetdone                    (),
      .gt0_qplloutclk               (gt0_qplloutclk_in),                          
      .gt0_qplloutrefclk            (gt0_qplloutrefclk_in)
   );


  one_gig_eth_pcs_pma_sync_block sync_block_tx_reset_done
  (
     .clk             (userclk2),
     .data_in         (gt0_txresetdone_out_i),
     .data_out        (tx_reset_done_i)
  );
  one_gig_eth_pcs_pma_sync_block sync_block_rx_reset_done
  (
     .clk             (userclk2),
     .data_in         (gt0_rxresetdone_out_i),
     .data_out        (rx_reset_done_i)
  );
  assign  reset_done_i = rx_reset_done_i & tx_reset_done_i;
  assign resetdone  = reset_done_i;




  // Unused
  assign rxbufstatus[0]           = 1'b0;



endmodule // one_gig_eth_pcs_pma_block

