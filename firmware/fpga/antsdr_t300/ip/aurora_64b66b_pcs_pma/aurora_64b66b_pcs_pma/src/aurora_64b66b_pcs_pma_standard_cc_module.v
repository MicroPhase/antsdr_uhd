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
 //  STANDARD CC MODULE
 //
 //
 //  Description: This module drives the Aurora module's Clock Compensation 
 //               interface. Clock Compensation sequences are generated according
 //               to the requirements in the Aurora Protocol specification.
 //                  
 //
 //              
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns / 10 ps
 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_STANDARD_CC_MODULE #
 (
     parameter CC_FREQ_FACTOR1 = 5'd13,
     parameter CC_FREQ_FACTOR2 = 5'd16,
     parameter CC_FREQ_FACTOR = 5'd24
 )
 (
     //Clock Compensation Control Interface 
     DO_CC,
     
     
     //System Interface
     USER_CLK,
     CHANNEL_UP
 
 );
 
 `define DLY #1
 
 
 //***********************************Port Declarations*******************************
     
     //Clock Compensation Control Interface 
     output      DO_CC;
     
     
     //System Interface
     input       USER_CLK;
     input       CHANNEL_UP;
     
     
 //**************************** External Register Declarations*************************
 
     reg             DO_CC;
     
 
 //************************** Internal Register Declarations **************************
 
     reg     [0:5]   cc_count_r;
     reg             reset_r;
     
     reg     [0: CC_FREQ_FACTOR1 - 2]  count_13d_srl_r;
     reg             count_13d_flop_r;
     reg     [0: CC_FREQ_FACTOR2 - 2]  count_16d_srl_r;
     reg             count_16d_flop_r;
     reg     [0: CC_FREQ_FACTOR - 2]  count_24d_srl_r;
     reg             count_24d_flop_r;    
 
 
 
 //*********************************Wire Declarations**********************************
 
     wire    start_cc_c;
     wire    inner_count_done_r;
     wire    middle_count_done_c;
     wire    cc_idle_count_done_c;
     
    
 //*********************************Main Body of Code**********************************
 
 
  
  //________________________Clock Correction State Machine__________________________
  
  
     // The clock correction state machine consists of four sections:
     // The CC block code should be sent atleast once for every 5000 clock cycles.
     // The first three sections are Shift Register based counters and a FF of total 
     // bit width 13, 16 and 24 respectively. 
     // The CC block code is generated for 6 clock cycles after every  4992
     // clock cycles (incuding the 6).
     // The last section maintains the CC block code for  clock cycles.
 
     // The SRL counts 12 bits of the count    
     always @(posedge USER_CLK)
         count_13d_srl_r     <=  `DLY    {count_13d_flop_r, count_13d_srl_r[0:CC_FREQ_FACTOR1 - 3]};
         
     
     // The inner count is done when a 1 reaches the end of the SRL
     assign  inner_count_done_r  =  count_13d_srl_r[CC_FREQ_FACTOR1 - 2];
  
  
     // The flop extends the shift register to 13 bits for counting. It is held at 
     // zero while channel up is low to clear the register, and is seeded with a 
     // single 1 when channel up transitions from 0 to 1
     always @(posedge USER_CLK)
         if(~CHANNEL_UP)
             count_13d_flop_r    <=  `DLY    1'b0;
         else if(CHANNEL_UP && reset_r && (count_13d_srl_r == 'h0) )
             count_13d_flop_r    <=  `DLY    1'b1;
         else
             count_13d_flop_r    <=  `DLY    inner_count_done_r;
             
 
     // The middle count for the CC counter counts to 16.  Its count increments only
     // when the inner count is done.  It is implemented using an SRL16 and a flop
  
     
     // The SRL counts 15 bits of the count. It is enabled only when the inner count
     // is done
     always @(posedge USER_CLK)
         if(inner_count_done_r|| !CHANNEL_UP)
             count_16d_srl_r     <=  `DLY    {count_16d_flop_r, count_16d_srl_r[0:CC_FREQ_FACTOR2 - 3]};
             
     
     // The middle count is done when a 1 reaches the end of the SRL and the inner
     // count finishes
     assign  middle_count_done_c =   inner_count_done_r && count_16d_srl_r[CC_FREQ_FACTOR2 - 2];     
  
  
     
     // The flop extends the shift register to 16 bits for counting. It is held at
     // zero while channel up is low to clear the register, and is seeded with a 
     // single 1 when channel up transitions from 0 to 1
     always @(posedge USER_CLK)
         if(~CHANNEL_UP)
             count_16d_flop_r    <=  `DLY    1'b0;
         else if(CHANNEL_UP && reset_r && (count_16d_srl_r == 'h0) )
             count_16d_flop_r    <=  `DLY    1'b1;
         else if(inner_count_done_r)    
             count_16d_flop_r    <=  `DLY    middle_count_done_c;
  
 
     // The outer count (aka the cc idle count) is done when it reaches 24.  Its count
     // increments only when the middle count is done.      
     
     // The SRL counts 23 bits of the count. It is enabled only when the middle count is
     // done
     always @(posedge USER_CLK)
         if(middle_count_done_c || !CHANNEL_UP)
             count_24d_srl_r     <=  `DLY    {count_24d_flop_r, count_24d_srl_r[0:CC_FREQ_FACTOR - 3]};
             
             
     // The cc idle count is done when a 1 reaches the end of the SRL and the middle count finishes
     assign  cc_idle_count_done_c    =   middle_count_done_c & count_24d_srl_r[CC_FREQ_FACTOR - 2];
     
     // The flop extends the shift register to 24 bits for counting. It is held at
     // zero while channel up is low to clear the register, and is seeded with a single
     // 1 when channel up transitions from 0 to 1
     always @(posedge USER_CLK)
         if(~CHANNEL_UP)
             count_24d_flop_r    <=  `DLY    1'b0;
         else if(CHANNEL_UP && reset_r && (count_24d_srl_r == 'h0) )
             count_24d_flop_r    <=  `DLY    1'b1;
         else if(middle_count_done_c)
             count_24d_flop_r    <=  `DLY    cc_idle_count_done_c;   
             
     // Track the state of channel up on the previous cycle. We use this signal to determine
     // when to seed the shift register counters with ones
     always @(posedge USER_CLK)
         reset_r <=  `DLY    !CHANNEL_UP;
  
  
     //Do a CC after CHANNEL_UP is asserted 
     assign start_cc_c   =   cc_idle_count_done_c || (CHANNEL_UP && reset_r);
  
  
     // This SRL counter keeps track of the number of cycles spent in the CC
     // sequence.  It starts counting when the prepare_cc state ends, and
     // finishes counting after 6 cycles have passed.
 
     initial
          cc_count_r   = 6'b000000;
 
     always @(posedge USER_CLK)
          cc_count_r      <=  `DLY    {(!CHANNEL_UP|cc_idle_count_done_c),cc_count_r[0:4]};
         
         
     // The TX_LL module stays in the do_cc state for 6 cycles.  It starts
     // when the prepare_cc state ends.
     always @(posedge USER_CLK)
        if(!CHANNEL_UP)                 DO_CC <=  `DLY    1'b0;
        else if(start_cc_c)             DO_CC <=  `DLY    1'b1;
        else if(|cc_count_r)            DO_CC <=  `DLY    1'b1;         
        else                            DO_CC <=  `DLY    1'b0;         
          
 endmodule
 
 
