//------------------------------------------------------------------------------
// Title      : Top-level Transceiver GT wrapper for Ethernet
// Project    : 1G/2.5G Ethernet PCS/PMA or SGMII LogiCORE
// File       : one_gig_eth_pcs_pma_transceiver.v
// Author     : Xilinx
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
// Description:  This is the top-level Transceiver GT wrapper. It
//               instantiates the lower-level wrappers produced by
//               the Series-7 FPGA Transceiver GT Wrapper Wizard.
//------------------------------------------------------------------------------

`timescale 1 ps / 1 ps
(* DowngradeIPIdentifiedWarnings="yes" *)

module one_gig_eth_pcs_pma_transceiver #
(
    parameter EXAMPLE_SIMULATION                     =  0         // Set to 1 for simulation
)
(
   output           mmcm_reset,
   output           recclk_mmcm_reset,
   input            encommaalign,
   input            powerdown,
   input            usrclk,
   input            usrclk2,
   input            rxusrclk,
   input            rxusrclk2,
   input            data_valid,
   input            independent_clock,
   input            txreset,
   input      [7:0] txdata,
   input            txchardispmode,
   input            txchardispval,
   input            txcharisk,
   input            rxreset,
   output reg       rxchariscomma,
   output reg       rxcharisk,
   output reg [2:0] rxclkcorcnt,
   output reg [7:0] rxdata,
   output reg       rxdisperr,
   output reg       rxnotintable,
   output reg       rxrundisp,
   output reg       rxbuferr,
   output reg       txbuferr,
   output           plllkdet,
   output           txoutclk,
   output           rxoutclk,
   output           txn,
   output           txp,
   input            rxn,
   input            rxp,
   input            gtrefclk,
   input            gtrefclk_bufg,
     
   input            pmareset,
   input            mmcm_locked,
   output           resetdone,
   output           gt0_rxbyteisaligned_out,
   output           gt0_rxbyterealign_out,
   output           gt0_rxcommadet_out,
   input            gt0_txpolarity_in,
   input            gt0_txinhibit_in,
   input   [3:0]    gt0_txdiffctrl_in,
   input   [4:0]    gt0_txpostcursor_in,
   input   [4:0]    gt0_txprecursor_in,
   input            gt0_rxpolarity_in,
   input            gt0_rxdfelpmreset_in,
   input            gt0_rxdfeagcovrden_in,
   input            gt0_rxlpmen_in,
   input   [2:0]    gt0_txprbssel_in,
   input            gt0_txprbsforceerr_in,
   input            gt0_rxprbscntreset_in,
   output           gt0_rxprbserr_out,
   input   [2:0]    gt0_rxprbssel_in,
   input   [2:0]    gt0_loopback_in,
   output           gt0_txresetdone_out,
   output           gt0_rxresetdone_out,
   input            gt0_eyescanreset_in,
   output           gt0_eyescandataerror_out,
   input            gt0_eyescantrigger_in,
   input            gt0_rxcdrhold_in,
   output  [6:0]    gt0_rxmonitorout_out,
   input   [1:0]    gt0_rxmonitorsel_in,
   input   [8:0]    gt0_drpaddr_in,
   input            gt0_drpclk_in,
   input   [15:0]   gt0_drpdi_in,
   output  [15:0]   gt0_drpdo_out,
   input            gt0_drpen_in,
   output           gt0_drprdy_out,
   input            gt0_drpwe_in,  
   input            gt0_txpmareset_in,
   input            gt0_txpcsreset_in,
   input            gt0_rxpmareset_in,
   input            gt0_rxpcsreset_in,
   input            gt0_rxbufreset_in,
   output [2:0]     gt0_rxbufstatus_out,
   output [1:0]     gt0_txbufstatus_out,  
   output [7:0]    gt0_dmonitorout_out,   
   //____________________________COMMON PORTS________________________________
   input           gt0_qplloutclk,                    
   input           gt0_qplloutrefclk  
);


  //----------------------------------------------------------------------------
  // Signal declarations
  //----------------------------------------------------------------------------

   wire             cplllock;
   wire             gt_reset_rx;
   wire             gt_reset_tx;
   wire             resetdone_tx;
   wire             resetdone_rx;
   wire             pcsreset;
   wire             data_valid_reg2;
   wire             wtd_rxpcsreset_in;
   wire             rxpcsreset_comb; 

   wire      [2:0]  rxbufstatus;
   wire      [1:0]  txbufstatus;
   reg       [2:0]  rxbufstatus_reg;
   reg       [1:0]  txbufstatus_reg;
   wire      [1:0]  rxclkcorcnt_int;
   reg              txpowerdown_reg = 1'b0;
   reg              txpowerdown_double = 1'b0;
   reg              txpowerdown = 1'b0;
   wire      [1:0]  txpowerdown_int;

   // signal used to control sampling during bus width conversions
   reg              toggle;

   // signals reclocked onto the 62.5MHz userclk source of the GT transceiver
   wire             encommaalign_int;
   wire             txreset_int;
   wire             rxreset_int;

   // Register transmitter signals from the core
   reg        [7:0] txdata_reg;
   reg              txchardispmode_reg;
   reg              txchardispval_reg;
   reg              txcharisk_reg;

   // Signals for data bus width doubling on the transmitter path from the core
   // to the GT transceiver
   reg       [15:0] txdata_double;
   reg        [1:0] txchardispmode_double;
   reg        [1:0] txchardispval_double;
   reg        [1:0] txcharisk_double;

   // Double width signals reclocked onto the 62.5MHz userclk source of the GT
   // transceiver
   reg       [15:0] txdata_int;
   reg        [1:0] txchardispmode_int;
   reg        [1:0] txchardispval_int;
   reg        [1:0] txcharisk_int;

   // Double width signals output from the GT transceiver on the 62.5MHz clock
   // source
   wire       [1:0] rxchariscomma_int;
   wire       [1:0] rxcharisk_int;
   wire      [15:0] rxdata_int;
   wire       [1:0] rxdisperr_int;
   wire       [1:0] rxnotintable_int;
   wire       [1:0] rxrundisp_int;

   // Double width signals reclocked on the GT's 62.5MHz clock source
   reg        [1:0] rxchariscomma_reg;
   reg        [1:0] rxcharisk_reg;
   reg       [15:0] rxdata_reg;
   reg        [1:0] rxclkcorcnt_reg;
   reg        [1:0] rxdisperr_reg;
   reg        [1:0] rxnotintable_reg;
   reg        [1:0] rxrundisp_reg;
   reg              rxpowerdown_reg = 1'b0;

   // Double width signals reclocked onto the 125MHz clock source
   reg        [1:0] rxchariscomma_double;
   reg        [1:0] rxcharisk_double;
   reg       [15:0] rxdata_double;
   reg        [1:0] rxclkcorcnt_double;
   reg        [1:0] rxdisperr_double;
   reg        [1:0] rxnotintable_double;
   reg        [1:0] rxrundisp_double;
   reg              rxpowerdown_double = 1'b0;

   reg              rxpowerdown = 1'b0;
   wire       [1:0] rxpowerdown_int;
   wire             wtd_rxpcsreset_in_comb;
   wire             gt0_rxprbssel_in_orded;

   one_gig_eth_pcs_pma_sync_block sync_block_data_valid
          (
             .clk             (independent_clock),
             .data_in         (data_valid),
             .data_out        (data_valid_reg2)
          );

   one_gig_eth_pcs_pma_reset_wtd_timer reset_wtd_timer
          (
             .clk             (independent_clock),
             .data_valid      (data_valid_reg2),
             .reset           (wtd_rxpcsreset_in)
          );
   
   assign gt0_rxprbssel_in_orded = |(gt0_rxprbssel_in);
   assign wtd_rxpcsreset_in_comb = gt0_rxprbssel_in_orded ? 1'b0 : wtd_rxpcsreset_in;
   assign rxpcsreset_comb = (wtd_rxpcsreset_in_comb || gt0_rxpcsreset_in);

   assign gt0_txbufstatus_out = txbufstatus;
   assign gt0_rxbufstatus_out = rxbufstatus;
   assign txpowerdown_int = {2{txpowerdown}};
   assign rxpowerdown_int = {2{rxpowerdown}};

   //---------------------------------------------------------------------------
   // The core works from a 125MHz clock source, the GT transceiver fabric
   // interface works from a 62.5MHz clock source.  The following signals
   // sourced by the core therefore need to be reclocked onto the 62.5MHz
   // clock
   //---------------------------------------------------------------------------

   // Reclock encommaalign
   one_gig_eth_pcs_pma_reset_sync reclock_encommaalign
   (
      .clk       (usrclk),
      .reset_in  (encommaalign),
      .reset_out (encommaalign_int)
   );


   // Reclock txreset
   one_gig_eth_pcs_pma_reset_sync reclock_txreset
   (
      .clk       (independent_clock),
      .reset_in  (txreset),
      .reset_out (txreset_int)
   );


   // Reclock rxreset
   one_gig_eth_pcs_pma_reset_sync reclock_rxreset
   (
      .clk       (independent_clock),
      .reset_in  (rxreset),
      .reset_out (rxreset_int)
   );


   //---------------------------------------------------------------------------
   // toggle signal used to control sampling during bus width conversions
   //---------------------------------------------------------------------------

   always @(posedge usrclk2)
   begin
     if (txreset) begin
       toggle <= 1'b0;
     end
     else begin
       toggle <= !toggle;
     end
   end


   //---------------------------------------------------------------------------
   // The core works from a 125MHz clock source, the GT transceiver fabric
   // interface works from a 62.5MHz clock source.  The following signals
   // sourced by the core therefore need to be converted to double width, then
   // resampled on the GT's 62.5MHz clock
   //---------------------------------------------------------------------------

   // Reclock the transmitter signals
   always @(posedge usrclk2)
   begin
     if (txreset) begin
       txdata_reg         <= 8'b0;
       txchardispmode_reg <= 1'b0;
       txchardispval_reg  <= 1'b0;
       txcharisk_reg      <= 1'b0;
       txpowerdown_reg    <= 1'b0;
     end
     else begin
       txdata_reg         <= txdata;
       txchardispmode_reg <= txchardispmode;
       txchardispval_reg  <= txchardispval;
       txcharisk_reg      <= txcharisk;
       txpowerdown_reg    <= powerdown;
     end
   end


   // Double the data width
   always @(posedge usrclk2)
   begin
     if (txreset) begin
       txdata_double                <= 16'b0;
       txchardispmode_double        <= 2'b0;
       txchardispval_double         <= 2'b0;
       txcharisk_double             <= 2'b0;
       txpowerdown_double           <= 1'b0;
     end
     else begin
       if (!toggle) begin
         txdata_double[7:0]         <= txdata_reg;
         txchardispmode_double[0]   <= txchardispmode_reg;
         txchardispval_double[0]    <= txchardispval_reg;
         txcharisk_double[0]        <= txcharisk_reg;
         txdata_double[15:8]        <= txdata;
         txchardispmode_double[1]   <= txchardispmode;
         txchardispval_double[1]    <= txchardispval;
         txcharisk_double[1]        <= txcharisk;
       end
       txpowerdown_double         <= txpowerdown_reg;
     end
   end


   // Cross the clock domain
   always @(posedge usrclk)
   begin
     txdata_int         <= txdata_double;
     txchardispmode_int <= txchardispmode_double;
     txchardispval_int  <= txchardispval_double;
     txcharisk_int      <= txcharisk_double;
     txbufstatus_reg    <= txbufstatus;
     txpowerdown        <= txpowerdown_double;
   end



   //---------------------------------------------------------------------------
   // The core works from a 125MHz clock source, the GT transceiver fabric
   // interface works from a 62.5MHz clock source.  The following signals
   // sourced by the GT transceiver therefore need to converted to half width
   //---------------------------------------------------------------------------

  // Sample the double width received data from the GT transsciever on the GT's
  // 62.5MHz clock
  always @(posedge usrclk)
  begin
    rxchariscomma_reg  <= rxchariscomma_int;
    rxcharisk_reg      <= rxcharisk_int;
    rxdata_reg         <= rxdata_int;
    rxclkcorcnt_reg    <= rxclkcorcnt_int;
    rxdisperr_reg      <= rxdisperr_int;
    rxnotintable_reg   <= rxnotintable_int;
    rxrundisp_reg      <= rxrundisp_int;
    rxbufstatus_reg    <= rxbufstatus;
    rxpowerdown        <= rxpowerdown_reg;
  end


  // Reclock the double width received data from the GT transsciever onto the
  // 125MHz clock source.   Both clock domains are frequency related and are
  // derived from the same MMCM: the Xilinx tools will accont for this.

  always @(posedge usrclk2)
  begin
    if (rxreset) begin
      rxchariscomma_double  <= 2'b0;
      rxcharisk_double      <= 2'b0;
      rxdata_double         <= 16'b0;
      rxclkcorcnt_double    <= 2'b0;
      rxdisperr_double      <= 2'b0;
      rxnotintable_double   <= 2'b0;
      rxrundisp_double      <= 2'b0;
      rxpowerdown_double    <= 1'b0;
    end
    else if (toggle) begin
      rxchariscomma_double  <= rxchariscomma_reg;
      rxcharisk_double      <= rxcharisk_reg;
      rxdata_double         <= rxdata_reg;
      rxclkcorcnt_double    <= rxclkcorcnt_reg;
      rxdisperr_double      <= rxdisperr_reg;
      rxnotintable_double   <= rxnotintable_reg;
      rxrundisp_double      <= rxrundisp_reg;
    end
    rxpowerdown_double      <= powerdown;
  end


  // Halve the bus width
  always @(posedge usrclk2)
  begin
    if (rxreset) begin
      rxchariscomma    <= 1'b0;
      rxcharisk        <= 1'b0;
      rxdata           <= 8'b0;
      rxclkcorcnt      <= 3'b0;
      rxdisperr        <= 1'b0;
      rxnotintable     <= 1'b0;
      rxrundisp        <= 1'b0;
      rxpowerdown_reg  <= 1'b0;
    end
    else begin
      if (!toggle) begin
        rxchariscomma  <= rxchariscomma_double[0];
        rxcharisk      <= rxcharisk_double[0];
        rxdata         <= rxdata_double[7:0];
        rxclkcorcnt    <= {1'b0, rxclkcorcnt_double};
        rxdisperr      <= rxdisperr_double[0];
        rxnotintable   <= rxnotintable_double[0];
        rxrundisp      <= rxrundisp_double[0];
      end
      else begin
        rxchariscomma  <= rxchariscomma_double[1];
        rxcharisk      <= rxcharisk_double[1];
        rxdata         <= rxdata_double[15:8];
        rxclkcorcnt    <= {1'b0, rxclkcorcnt_double};
        rxdisperr      <= rxdisperr_double[1];
        rxnotintable   <= rxnotintable_double[1];
        rxrundisp      <= rxrundisp_double[1];
      end
      rxpowerdown_reg  <= rxpowerdown_double;
    end
  end


   //---------------------------------------------------------------------------
   // Instantiate the Series-7 GTX
   //---------------------------------------------------------------------------
   // Direct from the Transceiver Wizard output
   one_gig_eth_pcs_pma_GTWIZARD  #
    (
        .EXAMPLE_SIMULATION             (EXAMPLE_SIMULATION)
    ) 
   gtwizard_inst
   (
        .mmcm_reset                     (mmcm_reset),
        .recclk_mmcm_reset              (recclk_mmcm_reset),
    //----------------------------- Loopback Ports -----------------------------
        .gt0_loopback_in                 (gt0_loopback_in),
    //------------------- RX Initialization and Reset Ports --------------------
        .gt0_eyescanreset_in             (gt0_eyescanreset_in),
    //------------------------ RX Margin Analysis Ports ------------------------
        .gt0_eyescandataerror_out        (gt0_eyescandataerror_out),
        .gt0_eyescantrigger_in           (gt0_eyescantrigger_in),
    //----------------------- Receive Ports - CDR Ports ------------------------
        .gt0_rxcdrhold_in                (gt0_rxcdrhold_in),
    //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt0_rxprbserr_out               (gt0_rxprbserr_out),
        .gt0_rxprbssel_in                (gt0_rxprbssel_in),
    //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt0_rxprbscntreset_in           (gt0_rxprbscntreset_in),
    //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
        .gt0_rxbyteisaligned_out         (gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out           (gt0_rxbyterealign_out),
        .gt0_rxcommadet_out              (gt0_rxcommadet_out),
    //------------------- Receive Ports - RX Equalizer Ports -------------------
        .gt0_rxdfeagcovrden_in           (gt0_rxdfeagcovrden_in),
        .gt0_rxdfelpmreset_in            (gt0_rxdfelpmreset_in),
        .gt0_rxmonitorout_out            (gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in             (gt0_rxmonitorsel_in),
    //---------------- Receive Ports - RX Margin Analysis ports ----------------
        .gt0_rxlpmen_in                  (gt0_rxlpmen_in),
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
        .gt0_rxpolarity_in               (gt0_rxpolarity_in),
    //---------------------- TX Configurable Driver Ports ----------------------
        .gt0_txpostcursor_in             (gt0_txpostcursor_in),
        .gt0_txprecursor_in              (gt0_txprecursor_in),
    //---------------- Transmit Ports - Pattern Generator Ports ----------------
        .gt0_txprbsforceerr_in           (gt0_txprbsforceerr_in),
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
        .gt0_txdiffctrl_in               (gt0_txdiffctrl_in),
        .gt0_txinhibit_in                (gt0_txinhibit_in),
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt0_txpolarity_in               (gt0_txpolarity_in),
    //---------------- Transmit Ports - pattern Generator Ports ----------------
        .gt0_txprbssel_in                (gt0_txprbssel_in),
        .gt0_drpaddr_in                  (gt0_drpaddr_in) ,
        .gt0_drpclk_in                   (gt0_drpclk_in ) ,
        .gt0_drpdi_in                    (gt0_drpdi_in  ) ,
        .gt0_drpdo_out                   (gt0_drpdo_out ) ,
        .gt0_drpen_in                    (gt0_drpen_in  ) ,
        .gt0_drprdy_out                  (gt0_drprdy_out) ,
        .gt0_drpwe_in                    (gt0_drpwe_in  ) ,
        .sysclk_in                       (independent_clock),
        .soft_reset_tx_in                   (pmareset),
        .soft_reset_rx_in                   (pmareset),
        .dont_reset_on_data_error_in    (gt0_rxprbssel_in_orded),
        .gt0_tx_fsm_reset_done_out       (resetdone_tx),
        .gt0_rx_fsm_reset_done_out       (resetdone_rx),
        .gt0_data_valid_in               (data_valid_reg2),
        //----------------------- channel - ref clock ports //------------------
        .gt0_gtrefclk0_in                (gtrefclk),
        .gt0_gtrefclk0_bufg_in           (gtrefclk_bufg),
     
        //------------------------------ channel pll //-------------------------
        .gt0_cpllfbclklost_out           (),
        .gt0_cplllock_out                (cplllock),
        .gt0_cplllockdetclk_in           (independent_clock),
        .gt0_cpllreset_in                (pmareset),
        //---------------------- loopback and powerdown ports //----------------
        .gt0_rxpd_in                     (rxpowerdown_int),
        .gt0_txpd_in                     (txpowerdown_int),
        //----------------------------- receive ports --------------------------
        .gt0_rxuserrdy_in                (mmcm_locked),
        //--------------------- receive ports - 8b10b decoder //----------------
        .gt0_rxchariscomma_out           (rxchariscomma_int),
        .gt0_rxcharisk_out               (rxcharisk_int),
        .gt0_rxdisperr_out               (rxdisperr_int),
        .gt0_rxnotintable_out            (rxnotintable_int),
        //----------------- receive ports - clock correction ports //-----------
        .gt0_rxclkcorcnt_out             (rxclkcorcnt_int),
        //------------- receive ports - comma detection and alignment //--------
        .gt0_rxmcommaalignen_in          (encommaalign_int),
        .gt0_rxpcommaalignen_in          (encommaalign_int),
        //----------------- receive ports - rx data path interface //-----------
        .gt0_gtrxreset_in                (gt_reset_rx),
        .gt0_rxpmareset_in               (gt0_rxpmareset_in),
//        .gt0_gtrxreset_in              (gt_reset_rx),
        .gt0_rxdata_out                  (rxdata_int),
        .gt0_rxoutclk_out                (rxoutclk),
        .gt0_rxusrclk_in                 (rxusrclk),
        .gt0_rxusrclk2_in                (rxusrclk2),
        //----- receive ports - rx driver),oob signalling),coupling and eq.),cdr //
        .gt0_gtxrxn_in                   (rxn),
        .gt0_gtxrxp_in                   (rxp),
        //------ receive ports - rx elastic buffer and phase alignment ports //-
        .gt0_rxbufreset_in               (gt0_rxbufreset_in),
        .gt0_rxbufstatus_out             (rxbufstatus),
        //---------------------- receive ports - rx pll ports //----------------
        .gt0_rxresetdone_out             (),
        //----------------------------- transmit ports -------------------------
        .gt0_txuserrdy_in                (mmcm_locked),
        //-------------- transmit ports - 8b10b encoder control ports //--------
        .gt0_txchardispmode_in           (txchardispmode_int),
        .gt0_txchardispval_in            (txchardispval_int),
        .gt0_txcharisk_in                (txcharisk_int),
        //---------------- transmit ports - tx data path interface //-----------
        .gt0_gttxreset_in                (gt_reset_tx),
//        .gt0_gttxreset_in              (txreset_int),
        .gt0_txdata_in                   (txdata_int),
        .gt0_txoutclk_out                (txoutclk),
        .gt0_txoutclkfabric_out          (),
        .gt0_txoutclkpcs_out             (),
        //.gt0_txpcsreset_in             (pcsreset),
        .gt0_txusrclk_in                 (usrclk),
        .gt0_txusrclk2_in                (usrclk),
        //-------------- transmit ports - tx driver and oob signaling //--------
        .gt0_gtxtxn_out                  (txn),
        .gt0_gtxtxp_out                  (txp),
        //--------- transmit ports - tx elastic buffer and phase alignment //---
        .gt0_txbufstatus_out             (txbufstatus),
        //--------------------- transmit ports - tx pll ports //----------------
        .gt0_txresetdone_out             (),
    //--------------- transmit ports - tx ports for pci express ----------------
        .gt0_txelecidle_in               (txpowerdown),
        //____________________________common ports________________________________
        //-------------------- common block  - ref clock ports ---------------------
        .gt0_txpmareset_in               (gt0_txpmareset_in),   
        .gt0_txpcsreset_in               (gt0_txpcsreset_in),   
        .gt0_rxpcsreset_in               (rxpcsreset_comb),   
        .gt0_dmonitorout_out             (gt0_dmonitorout_out),   
        .gt0_qplloutclk_in               (gt0_qplloutclk),
        .gt0_qplloutrefclk_in            (gt0_qplloutrefclk)
   );


   // Hold the transmitter and receiver paths of the GT transceiver in reset
   // until the PLL has locked.
   assign gt_reset_rx         = (rxreset_int & resetdone_rx);
   assign gt_reset_tx         = (txreset_int & resetdone_tx);
   assign gt0_rxresetdone_out = resetdone_rx;
   assign gt0_txresetdone_out = resetdone_tx;

   // Output the PLL locked status
   assign plllkdet            = cplllock;

   // Report overall status for both transmitter and receiver reset done signals
   assign resetdone           = cplllock;

   // reset to PCS part of GT
   assign pcsreset            = !mmcm_locked;

   // temporary
   assign rxrundisp_int       = 2'b0;

   // Decode the GT transceiver buffer status signals
  always @(posedge usrclk2)
  begin
    rxbuferr    <= rxbufstatus_reg[2];
    txbuferr    <= txbufstatus_reg[1];
  end

endmodule
