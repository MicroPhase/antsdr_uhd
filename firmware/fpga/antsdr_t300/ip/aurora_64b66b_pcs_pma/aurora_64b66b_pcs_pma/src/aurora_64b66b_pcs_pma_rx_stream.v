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
 //  RX_STREAM
 //
 //
 //  Description: The RX_STREAM module receives data from the Aurora Channel,
 //               converts it to LocalLink and sends it to the user interface.
 //
 //
 //
 
 `timescale 1 ns / 10 ps
 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_RX_STREAM
 (
     // LocalLink Interface
     RX_D,
     RX_SRC_RDY_N,
 
 
 
     // Aurora Lane Interface
     RX_PE_DATA,
     RX_PE_DATA_V,
 
 
 
 
 
     // Global Logic
     CHANNEL_UP,
 
     // System Interface
     USER_CLK,
     RESET
 
 );
 
 `define DLY #1
 
 
 //***********************************Port Declarations*******************************
 
     // LocalLink RX Interface
       output   [0:63]     RX_D; 
       output              RX_SRC_RDY_N; 
 
 
 
     // Aurora Lane Interface
       input    [0:63]     RX_PE_DATA; 
       input               RX_PE_DATA_V; 
 
 
 
 
 
     // Global Logic
       input               CHANNEL_UP; 
 
 
     // System Interface
       input               USER_CLK; 
       input               RESET; 
 
 
 //*********************************Main Body of Code**********************************
 
     //____________________________RX STREAM Datapath _____________________________
 
aurora_64b66b_pcs_pma_RX_STREAM_DATAPATH rx_stream_datapath_i
     (
 
         // Aurora lane Interface
         .RX_PE_DATA(RX_PE_DATA),
         .RX_PE_DATA_V(RX_PE_DATA_V),
 
         // Global Logic Interface
         .CHANNEL_UP(CHANNEL_UP),
 
         // RX LocalLink Interface
         .RX_D(RX_D),
         .RX_SRC_RDY_N(RX_SRC_RDY_N),
 
         // System Interface
         .USER_CLK(USER_CLK),
         .RESET(RESET)
     );
 
 
 
 
 
 
 
 
 endmodule
