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
 ///////////////////////////////////////////////////////////////////////////////
 //
 //  CH_BOND_CODE_GEN
 //
 
 //
 //  Description: This module generates the Channel Bond block code every 5 cycles when the 
 //               until the module is done with channel bonding and the remote is also up
 //               and it the CHANNEL_UP is asserted
 //               The GEN_CH_BOND port is used to indicate to the SYM_GEN module to insert the 
 //               Channel bond block code in the lanes.
 //               
 //               * Supports Virtex 5
 //
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns / 10 ps
 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_CHANNEL_BOND_GEN #
 (
    parameter  INTER_CB_GAP = 5'd9
 )
 (
     // Global Logic Interface
     CHANNEL_UP,
 
     // Lane Logic Interface
     GEN_CH_BOND,
     USER_CLK,
     TXDATAVALID_IN,
     RESET
 );
 
 `define DLY #1
 
 
 //***********************************Port Declarations*******************************
     // Global Logic Interface
       input                 CHANNEL_UP; 
 
       output                GEN_CH_BOND; 
 
     // System Interface
       input                  USER_CLK; 
       input                  TXDATAVALID_IN; 
       input                  RESET; 
 
 
 //*********************************Wire Declarations**********************************
       wire                  free_count_done; 
 
       reg        [0:4]      free_count_r=5'd0; 
       reg                   data_v_r; 
       
       reg        gen_ch_bond_int;
 
 //*********************************Main Body of Code**********************************
 
     always @(posedge USER_CLK)
               data_v_r <= `DLY TXDATAVALID_IN;
 
     always @(posedge USER_CLK)
       if(RESET)
               free_count_r <= `DLY 5'b0;
       else if(!data_v_r)
               free_count_r <= `DLY free_count_r;
       else if(free_count_done)
               free_count_r <= `DLY 5'b0;
       else
               free_count_r <= `DLY free_count_r+1'b1;
 
     assign free_count_done = (free_count_r==INTER_CB_GAP);
 
 
 // The pulse generaed by the shift register is registered and sent to the SYM_DEC logic
     always @(posedge USER_CLK)
     begin
         gen_ch_bond_int <= `DLY !CHANNEL_UP & free_count_done ;     
     end
     
     assign GEN_CH_BOND  = gen_ch_bond_int;
 
 endmodule
