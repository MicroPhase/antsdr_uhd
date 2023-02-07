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
 //  CHANNEL_INIT_SM
 //
 //
 //  Description: the CHANNEL_INIT_SM module is a state machine for managing channel
 //               bonding.
 //
 //               The channel init state machine is reset until the lane up signals
 //               of all the lanes that constitute the channel are asserted.  It then
 //               requests channel bonding until the lanes have been bonded.Channel 
 
 //               bonding is skipped if there is only one lane in the channel.  
 //               If bonding is unsuccessful, the lanes are reset.
 //
 //               After CHANNEL_UP_TX_IF goes high, the state machine is quiescent, and will
 //               reset only if one of the lanes goes down, a hard error is detected, or
 //               a general reset is requested.
 //
 //
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns / 10 ps
 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_CHANNEL_INIT_SM
 (
     // GT Interface
     CH_BOND_DONE,
     EN_CHAN_SYNC,
     CHAN_BOND_RESET,
 
     // Aurora Lane Interface
     GEN_NA_IDLES,
     RESET_LANES,
     RX_NA_IDLES,
     RX_CC,
     REMOTE_READY,
     RX_CB,    
     RX_IDLES,
     
     // System Interface
     USER_CLK,
     RESET,
     LANE_UP,
     CHANNEL_UP_RX_IF,
     CHANNEL_UP_TX_IF
 
 );
 
 `define DLY #1
 
 
 
 //***********************************Port Declarations*******************************
 
     // MGT Interface
       input                   CH_BOND_DONE; 
       output                  EN_CHAN_SYNC; 
       output                  CHAN_BOND_RESET; 
     
     // Aurora Lane Interface
       output                  GEN_NA_IDLES; 
       output                  RESET_LANES; 
       input                   RX_NA_IDLES; 
       input                   RX_CC; 
       input                   REMOTE_READY; 
       input                   RX_CB; 
       input                   RX_IDLES; 
     
     // System Interface
       input                   USER_CLK; 
       input                   RESET; 
       input                   LANE_UP; 
       output                  CHANNEL_UP_RX_IF; 
       output                  CHANNEL_UP_TX_IF; 
 
 //***************************External Register Declarations***************************
 
       reg                       CHANNEL_UP_RX_IF = 1'b0;
       reg                       CHANNEL_UP_TX_IF = 1'b0;
 
 //***************************Internal Register Declarations***************************
     // State registers
       reg                      wait_for_lane_up_r = 1'b0; 
       wire                      bond_passed_r = 1'b0;
       reg                      wait_for_remote_r = 1'b0; 
       reg                      ready_r = 1'b0; 
       reg                      any_na_idles_r = 1'b0; 
       reg                      any_idles_r = 1'b0; 
       reg                      rx_cc_r = 1'b0; 
       reg                      remote_ready_r = 1'b0; 
       reg           [0:5]      idle_xmit_cntr = 6'd0;
       reg           [0:3]      rx_na_idles_cntr = 1'b0;
       reg           channel_bond_q  = 1'b0;  
       reg           channel_bond_qq = 1'b0;  
       reg  [8:0]    chan_bond_timer = 9'd0;
(* KEEP = "TRUE" *) reg reset_watchdog = 1'b0;
 
 //*********************************Wire Declarations**********************************
 
       wire                     reset_lanes_c; 
       wire                     channel_up_c; 
       wire                     channel_up_rx_c; 

 
     // Next state signals
       wire                     next_wait_for_remote_c; 
       wire                     next_ready_c; 
       wire                     txidle_64d_done;
       wire                     rx_na_idles_16d_done; 
       wire                     rst_ready_r_state; 

       wire          set_enchansync_pulse;
(* KEEP = "TRUE"*) wire  [8:0]  chan_bond_timeout_val = 9'd500;

                 
 
 //*********************************Main Body of Code**********************************
 
 
     //________________Main state machine for bonding and verification________________
 
 
     always @(posedge USER_CLK)
      begin
        if(wait_for_remote_r) 
          rx_na_idles_cntr <= `DLY 4'h0;
	else if(ready_r & any_na_idles_r)    
          rx_na_idles_cntr <= `DLY rx_na_idles_cntr + 1'b1; 
	else   
          rx_na_idles_cntr <= `DLY 4'h0;
      end

    assign rx_na_idles_16d_done = &rx_na_idles_cntr;
    assign rst_ready_r_state = (ready_r & !remote_ready_r & bond_passed_r); 


    always @(posedge USER_CLK)
     begin
        if(wait_for_lane_up_r) 
          idle_xmit_cntr <= `DLY 6'h0;
        else if(rst_ready_r_state) 
          idle_xmit_cntr <= `DLY 6'h0;
        else if(idle_xmit_cntr == 6'b111111)
           idle_xmit_cntr <= `DLY idle_xmit_cntr; 
        else if(wait_for_remote_r)
        begin
           if(any_idles_r & (idle_xmit_cntr == 6'h0))
              idle_xmit_cntr <= `DLY 6'h1;
           else
              idle_xmit_cntr <= `DLY (idle_xmit_cntr != 6'h0) ? idle_xmit_cntr + 1'b1 : idle_xmit_cntr; 
        end
     end

    assign txidle_64d_done = &idle_xmit_cntr;

     // State registers
     always @(posedge USER_CLK)
     begin 
         if(RESET|!(&LANE_UP))
         begin
             wait_for_lane_up_r <=  `DLY    1'b1;
             wait_for_remote_r  <=  `DLY    1'b0;
             ready_r            <=  `DLY    1'b0;
         end
         else
         begin
             wait_for_lane_up_r <=  `DLY    1'b0;
             wait_for_remote_r  <=  `DLY    next_wait_for_remote_c;
             ready_r            <=  `DLY    next_ready_c;
         end
     end
 
 
     // Next state logic
/*
     assign  next_wait_for_remote_c   =   (wait_for_lane_up_r) |
                                          (wait_for_remote_r & (any_na_idles_r | rx_cc_r)) |
                                          (wait_for_remote_r & (!remote_ready_r | !txidle_64d_done)) |
                                          (ready_r & rx_na_idles_16d_done);
 
     assign  next_ready_c             =   (wait_for_remote_r & remote_ready_r & txidle_64d_done)|
                                          (ready_r & !rx_na_idles_16d_done ) ; 
*/
     assign  next_wait_for_remote_c   =   (wait_for_lane_up_r)|
                                          (wait_for_remote_r & (!remote_ready_r | !txidle_64d_done)) |
                                          (ready_r & !remote_ready_r );

     assign  next_ready_c             =   (wait_for_remote_r & remote_ready_r & txidle_64d_done )|
                                          (ready_r & remote_ready_r) ; 

 
 
     // Output Logic Channel up is high as long as the Global Logic is in the ready state.
     assign  channel_up_c             =   ready_r & !next_wait_for_remote_c ;
     assign  channel_up_rx_c          =   channel_up_c | remote_ready_r ;

 
  
     always @(posedge USER_CLK)
     begin
          if(RESET)
                   CHANNEL_UP_TX_IF   <=  `DLY  1'b0;
          else
                   CHANNEL_UP_TX_IF   <=  `DLY  channel_up_c;
     end

     always @(posedge USER_CLK)
     begin
         if(RESET)
             CHANNEL_UP_RX_IF <= `DLY 1'b0;
         else
             CHANNEL_UP_RX_IF <= `DLY channel_up_rx_c;
     end
             
 
 
 
     //__________________________Channel Reset _________________________________
 
     // Some problems during channel bonding and verification require the lanes to
     // be reset.  When this happens, we assert the Reset Lanes signal, which gets
     // sent to all Aurora Lanes.  When the Aurora Lanes reset, their LANE_UP signals
     // go down.  This causes the Channel Error Detector to assert the Reset Channel
     // signal.
     assign reset_lanes_c = (!(&LANE_UP) & !wait_for_lane_up_r)|
                             RESET;
 
 
     FD #(
         .INIT(1'b1)
     ) reset_lanes_flop_0_i (
         .D(reset_lanes_c),
         .C(USER_CLK),
         .Q(RESET_LANES)
 
     );
 
     assign EN_CHAN_SYNC     = 1'b1;
 
     assign CHAN_BOND_RESET  = 1'b0;
 
 
     //_____________________________Idle Pattern Generation and Reception_______________________________
 
     // Generate NA idles when until channel bonding is complete
     assign GEN_NA_IDLES   = wait_for_lane_up_r;
 
     // The NA IDles will be coming in on all the lanes. OR them to decide when to go into and out of
     // wait_for_remote_r state. This OR gate may need to be pipelined for greater number of lanes
     always @(posedge USER_CLK)
     begin
         rx_cc_r        <= `DLY |( RX_CC);
         remote_ready_r <= `DLY &( REMOTE_READY);
         any_na_idles_r <= `DLY |( RX_NA_IDLES);
         any_idles_r    <= `DLY |( RX_IDLES);
     end
 
 endmodule
