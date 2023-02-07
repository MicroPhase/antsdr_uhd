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
 ///////////////////////////////////////////////////////////////////////////////
 //
 //  AURORA_LANE
 //
 //
 //  Description: The AURORA_LANE module provides a full duplex  aurora
 //               lane connection using a single GTX.  The module handles lane
 //               initialization, symbol generation and decoding as well as
 //               error detection.  It also decodes some of the channel bonding
 //               indicator signals needed by the Global logic.
 //
 //               * Supports Virtex 5
 //
 ///////////////////////////////////////////////////////////////////////////////
 
 
 `timescale 1 ns / 10 ps

(* DowngradeIPIdentifiedWarnings="yes" *) 
 module aurora_64b66b_pcs_pma_AURORA_LANE
 (
     // TX Streaming Interface
 
     TX_PE_DATA,
     TX_PE_DATA_V,
 
 
 
 
     GEN_CC,
     CHANNEL_UP,
 
    // RX Stream Interface
 
 
     RX_PE_DATA,
     RX_PE_DATA_V,
 
 
 
     // GTX Interface
     RX_DATA,
     RX_HEADER_1,
     RX_HEADER_0,
     RX_BUF_ERR,
     TX_BUF_ERR,
     CHECK_POLARITY,
     RX_NEG,
     RX_POLARITY,
     RX_RESET,
     TX_HEADER_1,
     TX_HEADER_0,
     TX_DATA,
     TX_RESET,
     RX_LOSSOFSYNC,
 
     TXDATAVALID_SYMGEN_IN,
     RXDATAVALID_IN,
 
     // Global Logic Interface
     GEN_NA_IDLE,
     GEN_CH_BOND,
     LANE_UP,
     HARD_ERR,
     SOFT_ERR,
     GOT_CC,
     REMOTE_READY,
     GOT_CB,
     GOT_NA_IDLE,
     GOT_IDLE,
     
     //System Interface
     USER_CLK,
     RESET_LANES,
     GTXRESET_IN,
     RESET
 );
 
 //***********************************Port Declarations*******************************
 
     // TX  Interface
       input     [0:63]     TX_PE_DATA; 
       input                TX_PE_DATA_V; 
 
 
 
 
       input                GEN_CC;  
       input                CHANNEL_UP;  
 
     // RX  Interface
       output    [0:63]     RX_PE_DATA; 
       output               RX_PE_DATA_V; 
 
     // GTX Interface
       input     [63:0]     RX_DATA;               // 8-byte data bus from the MGT. 
       input                RX_HEADER_1 ;           // Bit 0 sync header of block code on RX_DATA. 
       input                RX_HEADER_0 ;          // Bit 1 sync header of block code on RX_DATA. 
       input                RX_LOSSOFSYNC;          // Alignment status from block lock state machine in mgt 
       input                RX_BUF_ERR;             // Overflow/Underflow of RX buffer detected. 
       input                TX_BUF_ERR;             // Overflow/Underflow of TX buffer detected. 
       output               CHECK_POLARITY;         // Controls interpreted polarity of serial data inputs. 
       input                RX_NEG;                 // Controls interpreted polarity of serial data inputs. 
       output               RX_POLARITY;            // Controls interpreted polarity of serial data inputs. 
       output               RX_RESET;               // Reset RX side of MGT logic. 
       output               TX_HEADER_1;       // Bit 1 sync header of block code on RX_DATA. 
       output               TX_HEADER_0;      // Bit 0 sync header of block code on RX_DATA. 
       output    [63:0]     TX_DATA;               // 2-byte data bus to the MGT. 
       output               TX_RESET;               // Reset TX side of MGT logic. 
 
     // Data Valid Interface
       input                RXDATAVALID_IN;   
       input                TXDATAVALID_SYMGEN_IN;   
 
 
     // Global Logic Interface
       input                GEN_NA_IDLE;            // Not-Aligned generation request from Global Logic. 
       input                GEN_CH_BOND;            // Channel Bond block code generation request from Global Logic. 
 
       output               LANE_UP;                // Lane is ready for bonding and verification. 
       output               HARD_ERR;             // Hard error detected. 
       output               SOFT_ERR;             // Soft error detected. 
       output               GOT_NA_IDLE;            // Not-Aligned Idle symbols received. 
       output               GOT_CC;                 // Not-Aligned Idle symbols received. 
       output               REMOTE_READY;           // Remote Ready signal for channel init sm. 
       output               GOT_CB;                 // Not-Aligned Idle symbols received. 
       output               GOT_IDLE;               // Aligned Idle symbols received. 
 
 
     // System Interface
       input                USER_CLK;               // System clock for all non-MGT Aurora Logic. 
       input                RESET_LANES;                  // Reset the lane. 
       input                GTXRESET_IN;                  // pma_init
       input                RESET;                  // Global Reset . 
 
 //*********************************Wire Declarations**********************************
 
       wire                  enable_err_detect_i; 
       wire                  hard_err_reset_i; 
       wire                  illegal_btf_i; 
     
 //*********************************Main Body of Code**********************************
 
 
     // Lane Initialization state machine
aurora_64b66b_pcs_pma_LANE_INIT_SM lane_init_sm_i
     (
         // GTX Interface
         .RX_LOSSOFSYNC(RX_LOSSOFSYNC),
 
         .RX_RESET(RX_RESET),
         .TX_RESET(TX_RESET),
         .RX_POLARITY(RX_POLARITY),
 
         // Symbol Decoder Interface
         .RX_NEG(RX_NEG),
         .CHECK_POLARITY(CHECK_POLARITY),
 
         // Error Detection Logic Interface
         .HARD_ERR_RESET(hard_err_reset_i),
 
         .ENABLE_ERR_DETECT(enable_err_detect_i),
 
         // Global Logic Interface
         .LANE_UP(LANE_UP),
 
         // System Interface
         .USER_CLK(USER_CLK),
         .RESET_LANES(RESET_LANES),
         .RESET(RESET)
     );
 
     // Symbol Generation module
aurora_64b66b_pcs_pma_SYM_GEN sym_gen_i
     (
         // TX Interface
         .TX_PE_DATA(TX_PE_DATA),
         .TX_PE_DATA_V(TX_PE_DATA_V),
 
 
 
         // Clock Correction Interface
         .GEN_CC(GEN_CC),
 
         // Global Logic Interface
         .GEN_NA_IDLE(GEN_NA_IDLE),
         .GEN_CH_BOND(GEN_CH_BOND),
 
         // GTX Interface
         .TX_HEADER_1(TX_HEADER_1),
         .TX_HEADER_0(TX_HEADER_0),
         .TX_DATA(TX_DATA),
         .CHANNEL_UP(CHANNEL_UP),
 
         .TXDATAVALID_SYMGEN_IN(TXDATAVALID_SYMGEN_IN),        
 
         // System Interface
         .USER_CLK(USER_CLK),
         .RESET(GTXRESET_IN)
     );
 
     // Symbol Decode module
aurora_64b66b_pcs_pma_SYM_DEC sym_dec_i
     (
         // Lane Init SM Interface
         .LANE_UP(LANE_UP),
 
         .RX_NA_IDLE(GOT_NA_IDLE),
         .RX_CC(GOT_CC),
         .REMOTE_READY(REMOTE_READY),
         .RX_CB(GOT_CB),
         .RX_IDLE(GOT_IDLE),
 
         // RX  Interface
         .RX_PE_DATA(RX_PE_DATA),
         .RX_PE_DATA_V(RX_PE_DATA_V),
 
 
         //Error Detect Interface
         .ILLEGAL_BTF(illegal_btf_i),
 
         // GTX Interface
         .RX_DATA(RX_DATA),
 
         .RX_HEADER_1(RX_HEADER_1),
         .RX_HEADER_0(RX_HEADER_0),
         .RXDATAVALID_IN(RXDATAVALID_IN),
 
         // System Interface
         .USER_CLK(USER_CLK),
         .RESET(RESET)
     );
 
 
     // Error Detection module
aurora_64b66b_pcs_pma_ERR_DETECT err_detect_i
     (
         // Lane Init SM Interface
         .ENABLE_ERR_DETECT(enable_err_detect_i),
 
         .HARD_ERR_RESET(hard_err_reset_i),
 
         // Global Logic Interface
         .HARD_ERR(HARD_ERR),
         .SOFT_ERR(SOFT_ERR),
 
         //Sym decoder interface
         .ILLEGAL_BTF(illegal_btf_i),
   
         // GTX Interface
         .RX_BUF_ERR(RX_BUF_ERR),
         .TX_BUF_ERR(TX_BUF_ERR),
         .RX_HEADER_1(RX_HEADER_1),
         .RX_HEADER_0(RX_HEADER_0),
         .RXDATAVALID_IN(RXDATAVALID_IN),
         // System Interface
         .USER_CLK(USER_CLK)
     );
 
 endmodule
