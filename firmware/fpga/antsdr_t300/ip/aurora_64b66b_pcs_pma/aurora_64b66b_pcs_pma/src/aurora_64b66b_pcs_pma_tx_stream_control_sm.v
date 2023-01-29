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
 //  TX_STREAM_CONTROL_SM
 //
 //
 //  Description: This module provides the transmitter state machine
 //               control logic to connect the LocalLink interface to
 //               the Aurora Channel.
 //
 //
 //
 //
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns / 10 ps
 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module  aurora_64b66b_pcs_pma_TX_STREAM_CONTROL_SM
 (
     // LocalLink Interface
     TX_DST_RDY_N,
 
 
 
     
     // Clock Compensation Interface
     DO_CC,
 
     // Global Logic Interface
     CHANNEL_UP,
 
     // TX_STREAM Control Module Interface
 
 
     // Aurora Lane Interface
     GEN_CC,
 
 
 
 
 
 
     // GTX Interface
     TXDATAVALID_IN,
 
     // System Interface
     USER_CLK
 
 );
 
 `define DLY #1
 
 //***********************************Port Declarations******************************
     // LocalLink Interface
       output                   TX_DST_RDY_N; 
 
 
 
 
     // Clock Compensation Interface
       input                    DO_CC; 
       input                    TXDATAVALID_IN; 
 
     // Global Logic Interface
       input                    CHANNEL_UP; 
 
     // TX_STREAM Control Module Interface
 
     // Aurora Lane Interface
       output                   GEN_CC; 
 
 
 
 
     // System Interface
       input                    USER_CLK; 
 
 //**************************External Register Declarations****************************
 
 
 
 
 
 
 
 //**************************Internal Register Declarations****************************
 
       reg                      do_cc_r = 1'b0; 
       reg                      do_cc_r2 = 1'b0; 
       reg                      extend_cc_r; 
 
       reg                      tx_dst_rdy_n_r; 
 
       reg                      datavalid_in_r; 
 
 
 //*********************************Wire Declarations**********************************
 
       wire                     tx_dst_rdy_n_c; 
 
 //*********************************Main Body of Code**********************************
 
 
     //___________________________Clock Compensation________________________________
 
     // DO_CC signal has to be extended for one more cycle when TXDATAVALID_IN
     // coincides with DO_CC occurance
     // extend_cc_r extends the pulse by one cycle during TXDATAVALID_IN cycle
     always @(posedge USER_CLK)
         if(!TXDATAVALID_IN & DO_CC)
               extend_cc_r <=  `DLY    1'b1;
         else if(!DO_CC)
               extend_cc_r <=  `DLY    1'b0;
                                                                    
     always @(posedge USER_CLK)
               do_cc_r <=  `DLY    DO_CC | extend_cc_r;
 
     always @(posedge USER_CLK)
               do_cc_r2 <= `DLY do_cc_r;


     always @(posedge USER_CLK)
     begin
           datavalid_in_r     <=  `DLY  TXDATAVALID_IN;
     end
 
     //  TX_DST_RDY  is the critical path in this module.  It must be deasserted 
     // whenever an event occurs that prevents the pdu state machine from using the
     // Aurora channel to transmit PDUs.
     assign    tx_dst_rdy_n_c  =  !CHANNEL_UP |
                                   DO_CC | do_cc_r ;
      
     always @(posedge USER_CLK)
         if(!CHANNEL_UP)     tx_dst_rdy_n_r    <=  `DLY    1'b1;
         //else                tx_dst_rdy_n_r    <=  `DLY    tx_dst_rdy_n_c  |!TXDATAVALID_IN |!datavalid_in_r ;
         else                tx_dst_rdy_n_r    <=  `DLY    tx_dst_rdy_n_c  |!TXDATAVALID_IN;
 
     assign TX_DST_RDY_N = tx_dst_rdy_n_r ;
 
     // The flops for the GEN_CC signal are replicated for timing and instantiated to allow us
     // to set their value reliably on powerup.
     FDR gen_cc_flop_0_i
     (
         .D(do_cc_r),
         .C(USER_CLK),
         .R(~CHANNEL_UP),
         .Q(GEN_CC )
     );
 
 
     // Decrement the NFC pause required count whenever the state machine prevents new
     // PDU data from being sent except when the data is prevented by CC characters.
 
 
 
 
 
 endmodule
