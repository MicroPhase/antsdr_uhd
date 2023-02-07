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
 //
 //  ERR_DETECT
 //
 //
 //  Description: The ERR_DETECT module monitors the GTX to detect hard
 //                errors. All errors are reported to the Global Logic Interface.
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns / 10 ps
 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_ERR_DETECT
 (
     // Lane Init SM Interface
     ENABLE_ERR_DETECT,
     HARD_ERR_RESET,
 
     // Global Logic Interface
     HARD_ERR,
     SOFT_ERR,
 
     //Sym Decoder interface
     ILLEGAL_BTF,
 
     // GTX Interface
     RX_BUF_ERR,
     TX_BUF_ERR,
     RX_HEADER_0,
     RX_HEADER_1,
     RXDATAVALID_IN,
 
     // System Interface
     USER_CLK
 );
 
 
 `define DLY #1
 
 //***********************************Port Declarations*******************************
 
     // Lane Init SM Interface
       input                ENABLE_ERR_DETECT; 
       output               HARD_ERR_RESET; 
 
     // Sym decoder Interface
       input                ILLEGAL_BTF; 
 
     // GTX Interface
       input                RX_BUF_ERR; 
       input                TX_BUF_ERR; 
       input                RX_HEADER_0; 
       input                RX_HEADER_1; 
       input                RXDATAVALID_IN; 
 
     // System Interface
       input                USER_CLK; 
 
     // Global Logic Interface
       output               HARD_ERR; 
       output               SOFT_ERR; 
 
 //**************************External Register Declarations****************************
 
       reg                  HARD_ERR; 
       reg                  SOFT_ERR; 
 
       wire                 soft_err_detect; 
 //*********************************Main Body of Code**********************************
 
 
     //____________________________ Error Processing _________________________________
     assign soft_err_detect = (((RX_HEADER_0 == RX_HEADER_1) | ILLEGAL_BTF) & RXDATAVALID_IN);
     // Detect Soft Errors
     always @(posedge USER_CLK)
         if(ENABLE_ERR_DETECT & soft_err_detect)
         begin
             SOFT_ERR         <=  `DLY 1'b1;
         end
         else
         begin
             SOFT_ERR         <=  `DLY 1'b0;
         end
 
     // Detect Hard Errors
     always @(posedge USER_CLK)
         if(ENABLE_ERR_DETECT)
         begin
             HARD_ERR         <=  `DLY (RX_BUF_ERR | TX_BUF_ERR);
         end
         else
         begin
             HARD_ERR          <=  `DLY    1'b0;
         end
 
 
     // Assert hard error reset when there is a hard error.  This assignment
     // just renames the two fanout branches of the hard error signal.
     assign HARD_ERR_RESET =   HARD_ERR;
 
 
 endmodule
