 ///////////////////////////////////////////////////////////////////////////////
 //
 // Project:  Aurora 64B66B
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
 ///////////////////////////////////////////////////////////////////////////////
 //
 //  GLOBAL_LOGIC
 //
 //  Description: The GLOBAL_LOGIC module handles channel bonding, channel error manangement 
 //               and channel bond block code generation.
 //
 //
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns / 10 ps
 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_GLOBAL_LOGIC #
 (
    parameter  INTER_CB_GAP = 5'd9
 )
 (
     // GTX Interface
     CH_BOND_DONE,
     EN_CHAN_SYNC,
     CHAN_BOND_RESET,
 
     // Aurora Lane Interface
     LANE_UP,
     HARD_ERR,
 
     GEN_NA_IDLES,
     GEN_CH_BOND,
     RESET_LANES,
     GOT_NA_IDLES,
     GOT_CCS,
     REMOTE_READY,
     GOT_CBS,
     GOT_IDLES,
      
     // System Interface
     USER_CLK,
     RESET,
     CHANNEL_UP_RX_IF,
     CHANNEL_UP_TX_IF,
     CHANNEL_HARD_ERR,
     TXDATAVALID_IN
 
 
 );
 
 `define DLY #1
 
 
 
 //***********************************Port Declarations*******************************
 
     // GTX Interface
       input                  CH_BOND_DONE; 
       output                 EN_CHAN_SYNC; 
       output                 CHAN_BOND_RESET; 
 
     // Aurora Lane Interface
       input                  LANE_UP; 
       input                  HARD_ERR; 
       input                  GOT_NA_IDLES; 
       input                  GOT_CCS; 
       input                  REMOTE_READY; 
       input                  GOT_CBS;     
       input                  GOT_IDLES; 
       output                 GEN_NA_IDLES; 
       output                 GEN_CH_BOND; 
       output                 RESET_LANES; 
 
     // System Interface
       input                  USER_CLK; 
       input                  RESET; 
       input                  TXDATAVALID_IN; 
       output                 CHANNEL_UP_RX_IF; 
       output                 CHANNEL_UP_TX_IF; 
       output                 CHANNEL_HARD_ERR; 
 
 
 //*********************************Wire Declarations**********************************
 
       wire                   reset_channel_i; 
 
 
 //*********************************Main Body of Code**********************************
 
 
     // State Machine for channel bonding and verification.
aurora_64b66b_pcs_pma_CHANNEL_INIT_SM channel_init_sm_i
     (
         // GTX Interface
         .CH_BOND_DONE(CH_BOND_DONE),
         .EN_CHAN_SYNC(EN_CHAN_SYNC),
         .CHAN_BOND_RESET(CHAN_BOND_RESET),
 
         // Aurora Lane Interface
         .GEN_NA_IDLES(GEN_NA_IDLES),
         .RX_NA_IDLES(GOT_NA_IDLES),
         .RX_CC(GOT_CCS),
         .REMOTE_READY(REMOTE_READY),
         .RX_CB(GOT_CBS),
         .RX_IDLES(GOT_IDLES),
         .RESET_LANES(RESET_LANES),
 
         // System Interface
         .USER_CLK(USER_CLK),
         .RESET(RESET),
         .LANE_UP(LANE_UP),
         .CHANNEL_UP_TX_IF(CHANNEL_UP_TX_IF),
         .CHANNEL_UP_RX_IF(CHANNEL_UP_RX_IF)
 
     );
 
     // Idle and verification sequence generator module.
aurora_64b66b_pcs_pma_CHANNEL_BOND_GEN #
     (
        .INTER_CB_GAP (INTER_CB_GAP)
     )channel_bond_gen_i 
     (
         // Channel Init SM Interface
         .CHANNEL_UP(CHANNEL_UP_TX_IF),
 
         // Aurora Lane Interface
         .GEN_CH_BOND(GEN_CH_BOND),
 
         // System Interface
         .USER_CLK(USER_CLK),
         .RESET(RESET),
         .TXDATAVALID_IN(TXDATAVALID_IN)
 
     );
 
     // Channel Error Management module.
aurora_64b66b_pcs_pma_CHANNEL_ERR_DETECT channel_err_detect_i
     (
         // Aurora Lane Interface
         .HARD_ERR(HARD_ERR),
         .LANE_UP(LANE_UP),
 
         // System Interface
         .USER_CLK(USER_CLK),
         .CHANNEL_HARD_ERR(CHANNEL_HARD_ERR)
 
     );
 
 endmodule
