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
 //  SYM_GEN
 //
 //
 //  Description: The SYM_GEN module is a symbol generator for Aurora Lane.
 //               Its inputs request the transmission of specific symbols, and its
 //               outputs drive the GTX interface to fulfil those requests.
 //
 //
 //               * Supports Virtex 5
 //
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns / 10 ps
 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_SYM_GEN
 (
 
     // TX Streaming Interface
     TX_PE_DATA,
     TX_PE_DATA_V,
 
 
 
 
 
     // Lane Init SM Interface
     GEN_NA_IDLE,
     GEN_CH_BOND,
 
     // Clock Correction Interface
     GEN_CC,
 
     // GTX Interface
     TX_HEADER_1,
     TX_HEADER_0,
     TX_DATA,
     TXDATAVALID_SYMGEN_IN,
 
     // Global Logic
     CHANNEL_UP,
 
     // System Interface
     USER_CLK,
     RESET
 );
 `define DLY #1
 
 //***********************************Port Declarations*******************************
 
     // TX Streaming Interface
 
       input    [63:0]     TX_PE_DATA; 
       input               TX_PE_DATA_V; 
 
 
     //Clock Correction Interface
       input               GEN_CC; 
     // Lane Init SM Interface
       input               GEN_NA_IDLE;       // Generate Not-Aligned Idle. 
       input               GEN_CH_BOND;       // Generate Channel Bond block code. 
 
     // GTX Interface
       output              TX_HEADER_1;  // Transmit bit 0 of sync header. 
       output              TX_HEADER_0; // Transmit bit 1 of sync header. 
       output   [63:0]     TX_DATA;          // Data to GTX for transmission to channel partner. 
       input               TXDATAVALID_SYMGEN_IN; // Pause for TX Gearbox 
 
     // Global Logic
       input               CHANNEL_UP; 
 
     // System Interface
       input               USER_CLK;          // Clock for all non-GTX Aurora Logic. 
       input               RESET;             // pma_init_sync connected from top
 //**************************External Register Declarations****************************
 
       reg      [63:0]     TX_DATA=64'd0; 
       reg                 TX_HEADER_1=1'b0; 
       reg                 TX_HEADER_0=1'b1; 
 
 //**************************Internal Register Declarations****************************
 
       reg      [63:0]     txdata_c; 
       reg                 tx_header_1_c; 
       reg                 tx_header_0_c; 
 
 //*********************************Wire Declarations**********************************
 
       wire                gen_idle_c; 
       wire     [63:0]     tx_data_ctrl_c; 
       wire                gen_ctrl_ch; 
       wire     [63:0]     txdata_s; 
 
 //*********************************Main Body of Code**********************************
     assign gen_ctrl_ch =   GEN_CC   | GEN_CH_BOND | GEN_NA_IDLE 
 


 
 ;
 
     // When none of the msb non_idle inputs are asserted, allow idle characters.
     assign  gen_idle_c     =   !(TX_PE_DATA_V | gen_ctrl_ch);
 
     // Generate data for MSB. Note that all inputs must be asserted exclusively, except
     // for the  GEN_NA_IDLE,   GEN_CH_BOND inputs which are ignored when other characters are asserted
 
     assign tx_data_ctrl_c[63:56] = (GEN_CC || GEN_CH_BOND ||    GEN_NA_IDLE ||  (gen_idle_c & !TX_PE_DATA_V)) ? 8'h78 : 
                                    8'h0;
 
     assign tx_data_ctrl_c[55:48] = (GEN_CC) ? 8'h80 : (GEN_CH_BOND) ? 8'h40 :  (GEN_NA_IDLE) ? 8'h30 :
 
                                    ((gen_idle_c & !TX_PE_DATA_V)) ? 8'h10 : 8'h0;
 
     assign tx_data_ctrl_c[47:0]  =  48'h0;
 
     assign txdata_s = {TX_PE_DATA[7:0],TX_PE_DATA[15:8],TX_PE_DATA[23:16],TX_PE_DATA[31:24],TX_PE_DATA[39:32],TX_PE_DATA[47:40],TX_PE_DATA[55:48],TX_PE_DATA[63:56]};
 
     always @ ( CHANNEL_UP or GEN_CC or  GEN_CH_BOND or txdata_s
              or  GEN_NA_IDLE
              or  gen_idle_c or  TX_PE_DATA_V
              or  tx_data_ctrl_c or TX_PE_DATA 
              )
     begin  
         if(GEN_CC   || GEN_CH_BOND 
 
                     || GEN_NA_IDLE || (gen_idle_c & !TX_PE_DATA_V) )               
         begin
             txdata_c =   tx_data_ctrl_c;                                 // Control Block
             tx_header_1_c = 1'b1;
             tx_header_0_c = 1'b0;
         end
         else if(TX_PE_DATA_V && CHANNEL_UP)     
         begin
             txdata_c =   txdata_s;      // Data Block
             tx_header_1_c = 1'b0;
             tx_header_0_c = 1'b1;
         end
         else 
         begin
             txdata_c =   64'b0;
             tx_header_1_c = 1'b0;
             tx_header_0_c = 1'b1;
         end
     end

     wire rst_pma_init_usrclk;
 aurora_64b66b_pcs_pma_rst_sync #
 (
     .c_mtbf_stages (5)
 )u_pma_init_data_sync
 (
     .prmry_in     (RESET),
     .scndry_aclk  (USER_CLK),
     .scndry_out   (rst_pma_init_usrclk)
 );
 
     always @ (posedge USER_CLK)
     begin
         if(rst_pma_init_usrclk)
         begin
             TX_DATA <= `DLY 64'd0;
             TX_HEADER_0 <= `DLY 1'b0; //Invalid HDR while in pma-init
             TX_HEADER_1 <= `DLY 1'b0;
         end
         else if(TXDATAVALID_SYMGEN_IN)
         begin
             TX_DATA <= `DLY txdata_c;
             TX_HEADER_0 <= `DLY tx_header_0_c;
             TX_HEADER_1 <= `DLY tx_header_1_c;
         end
     end
 
 endmodule
