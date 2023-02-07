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
 
//*****************************************************************************

`timescale 1ns / 1ps
`define DLY #1

(* DowngradeIPIdentifiedWarnings="yes" *)
module aurora_64b66b_pcs_pma_RX_STARTUP_FSM #
   (
     parameter   EXAMPLE_SIMULATION =   0        // Set to 1 for simulation
      //pragma translate_off
        | 1
      //pragma translate_on
      ,
       parameter     BACKWARD_COMP_MODE2     = 1'b0,       //reduce RXCDR lock time
       parameter     GT_TYPE                 = "GTX",
       parameter     EQ_MODE                 = "DFE",       //Rx Equalization Mode - Set to DFE or LPM
       parameter     STABLE_CLOCK_PERIOD     = 12,           //Period of the stable clock driving this state-machine, unit is [ns]
       parameter     RETRY_COUNTER_BITWIDTH  = 8, 
       parameter     TX_QPLL_USED            = "FALSE",     // the TX and RX Reset FSMs must
       parameter     RX_QPLL_USED            = "FALSE",     // share these two generic values

       parameter     PHASE_ALIGNMENT_MANUAL  = "TRUE"       // Decision if a manual phase-alignment is necessary or the automatic 
                                                            // is enough. For single-lane applications the automatic alignment is 
                                                            // sufficient                         
   )
   ( 
       input       wire     STABLE_CLOCK,     //Stable Clock, either a stable clock from the PCB
                                              //or reference-clock present at startup.
       input       wire     RXUSERCLK,        //RXUSERCLK as used in the design
       input       wire     SOFT_RESET,       //User Reset, can be pulled any time
        
       input       wire     QPLLREFCLKLOST,   //QPLL Reference-clock for the GT is lost
       input       wire     CPLLREFCLKLOST,   //CPLL Reference-clock for the GT is lost
       input       wire     QPLLLOCK,         //Lock Detect from the QPLL of the GT
       input       wire     CPLLLOCK,         //Lock Detect from the CPLL of the GT
       input       wire     SYSTEM_RESET,         
       input       wire     RXRESET_IN,         
       output      reg      FABRIC_PCS_RESET,         
       input       wire     RXRESETDONE,
       input       wire     MMCM_LOCK,
       input       wire     RECCLK_STABLE,
       input       wire     RECCLK_MONITOR_RESTART,
       input       wire     DATA_VALID,
       input       wire     TXUSERRDY,               //TXUSERRDY from GT
       output      wire     GTRXRESET ,
       output      reg      MMCM_RESET = 1'b0,
       output      reg      QPLL_RESET = 1'b0,       //Reset QPLL (only if RX usese QPLL)
       output      reg      CPLL_RESET = 1'b0,       //Reset CPLL (only if RX usese CPLL)
       output               RX_FSM_RESET_DONE,       //Reset-sequence has sucessfully been finished.
       output      reg      RXUSERRDY = 1'b0,
       output      wire     RUN_PHALIGNMENT,
       input       wire     PHALIGNMENT_DONE,
       output      reg      RESET_PHALIGNMENT = 1'b0,           
       output      reg      RXDFEAGCHOLD  = 1'b0,
       output      reg      RXDFELFHOLD  = 1'b0,
       output      reg      RXLPMLFHOLD  = 1'b0,
       output      reg      RXLPMHFHOLD  = 1'b0,
       output      wire     RX_CLK_LOCKED,         
       output      wire     [RETRY_COUNTER_BITWIDTH-1:0] RETRY_COUNTER // Number of 
                                                                       // Retries it took to get the transceiver up and running
       ); 
           

//Interdependencies:
// * Timing depends on the frequency of the stable clock. Hence counters-sizes
//   are calculated at design-time based on the Generics
//   
// * if either of the PLLs is reset during TX-startup, it does not need to be reset again by RX
//   => signal which PLL has been reset
// * 


  localparam [7:0] 
             INIT                 = 8'b00000000,
             ASSERT_ALL_RESETS    = 8'b00000001,
             RELEASE_PLL_RESET    = 8'b00000010,
             VERIFY_RECCLK_STABLE = 8'b00000100,
             RELEASE_MMCM_RESET   = 8'b00001000,
             WAIT_RESET_DONE      = 8'b00010000,
             DO_PHASE_ALIGNMENT   = 8'b00100000,
             MONITOR_DATA_VALID   = 8'b01000000,
             FSM_DONE             = 8'b10000000;
    
  (* KEEP = "TRUE" *)reg [7:0] rx_state = INIT;


  //This function decides how many clock-cycle need to be waited until 
  // a time-out occurs for bypassing the TX-Buffer
  function [12:0] get_max_wait_bypass;
    input manual_mode;
    reg [12:0] max_wait_cnt;
  begin
    if (manual_mode == "TRUE") 
      max_wait_cnt = 5000;
    else
      max_wait_cnt = 3100;
    get_max_wait_bypass = max_wait_cnt;
  end
  endfunction

  localparam MMCM_LOCK_CNT_MAX = 100;
  localparam STARTUP_DELAY = 500;//AR43482: Transceiver needs to wait for 500 ns after configuration
  localparam WAIT_CYCLES = STARTUP_DELAY / STABLE_CLOCK_PERIOD; // Number of Clock-Cycles to wait after configuration
  localparam WAIT_MAX = WAIT_CYCLES + 10;                       // 500 ns plus some additional margin
    
  localparam WAIT_TIMEOUT_2ms   = 2000000 / STABLE_CLOCK_PERIOD;  //2 ms time-out
  localparam WAIT_TLOCK_MAX     = 100000 / STABLE_CLOCK_PERIOD;   //100 us time-out
  localparam WAIT_TIMEOUT_500us = 500000 / STABLE_CLOCK_PERIOD;   //500 us time-out
  localparam WAIT_TIMEOUT_1us   = 1000 / STABLE_CLOCK_PERIOD;     //1 us time-out
  localparam WAIT_TIMEOUT_100us = 100000 / STABLE_CLOCK_PERIOD;   //100us time-out
  integer    WAIT_TIME_ADAPT    = (37000000 /3.125)/STABLE_CLOCK_PERIOD;

  localparam RX_CDRLOCK_TIME      = (EXAMPLE_SIMULATION == 1) ? 1000 : (BACKWARD_COMP_MODE2) ?   50000/10.3125 : 37000000/10.3125;

 localparam integer   WAIT_TIME_CDRLOCK    = RX_CDRLOCK_TIME / STABLE_CLOCK_PERIOD;
 integer  rx_cdrlock_counter= 0;
 reg              rx_cdrlocked = 1'b0;
    
  reg [7:0] init_wait_count = 0;
  reg       init_wait_done = 1'b0;
  reg       pll_reset_asserted = 1'b0;

  (* KEEP = "TRUE" *)reg       rx_fsm_reset_done_int = 1'b0;
  wire      rx_fsm_reset_done_int_s3;

  localparam MAX_RETRIES = 2**RETRY_COUNTER_BITWIDTH-1; 
  reg [7:0]  retry_counter_int = 0;  
  reg [18:0] time_out_counter = 0;
  reg [1:0]  recclk_mon_restart_count = 0 ;
  reg        recclk_mon_count_reset = 0;
  
  reg        reset_time_out = 1'b0;
  reg        time_out_2ms = 1'b0;  //--\Flags that the various time-out points 
  reg        time_tlock_max = 1'b0; //--|have been reached.
  reg        time_out_500us = 1'b0; //--|
  reg        time_out_1us = 1'b0;   //--|
  reg        time_out_100us = 1'b0;  //--/
  reg        check_tlock_max = 1'b0;
  reg        entered_init_soft_reset_flag = 1'b1;
    
  //reg [9:0]  mmcm_lock_count = 1'b0;
  //reg        mmcm_lock_int = 1'b0;
  wire       mmcm_lock_r2 ;
  wire      pll_lock_sync2;

  reg [3:0]  mmcm_lock_reclocked = 1'b0;
    
  reg       run_phase_alignment_int = 1'b0;
  wire      run_phase_alignment_int_s3;

  wire      rx_reset_r3;  
  wire      reset_r3; 
  reg       gtrxreset_i = 1'b0; 


  localparam MAX_WAIT_BYPASS = 5000;//5000 RXUSRCLK cycles is the max time for Multi Lane designs

  reg [12:0] wait_bypass_count = 0;
(* ASYNC_REG = "TRUE" *) (* shift_extract = "{no}" *)   reg        time_out_wait_bypass = 1'b0;
  wire       time_out_wait_bypass_s3;
  wire       refclk_lost;
  wire      rxresetdone_s3;
  integer    adapt_count = 0;
  reg        time_out_adapt = 1'b0;
  reg        adapt_count_reset = 1'b0;

  //Alias section, signals used within this module mapped to output ports:
  assign    RETRY_COUNTER     = retry_counter_int;
  assign    RUN_PHALIGNMENT   = run_phase_alignment_int;
  assign    RX_FSM_RESET_DONE = rx_fsm_reset_done_int;
  assign    GTRXRESET = gtrxreset_i;  

  always @(posedge STABLE_CLOCK or posedge SOFT_RESET)
  begin
      // The counter starts running when configuration has finished and 
      // the clock is stable. When its maximum count-value has been reached,
      // the 500 ns from Answer Record 43482 have been passed.
      if (SOFT_RESET)
      begin
          init_wait_count <= `DLY  8'h0;
          init_wait_done <= `DLY  1'b0;
      end
      else if(init_wait_count == WAIT_MAX) 
          init_wait_done <= `DLY  1'b1;
      else
        init_wait_count <= `DLY  init_wait_count + 1;
  end 

 

  always @(posedge STABLE_CLOCK)
  begin
    //This counter monitors, how many retries the CDR Lock Detection
    //runs. If during startup too many retries are necessary, the whole 
    //initialisation-process of the transceivers gets restarted.
      if (recclk_mon_count_reset == 1)
        recclk_mon_restart_count <= `DLY  0;
      else if (RECCLK_MONITOR_RESTART == 1) 
      begin
        if (recclk_mon_restart_count == 3)
          recclk_mon_restart_count <= `DLY  0;
        else 
          recclk_mon_restart_count <= `DLY  recclk_mon_restart_count + 1;
      end
  end

generate
 if(EXAMPLE_SIMULATION == 1)
 begin
    always @(posedge STABLE_CLOCK)
    begin
        time_out_adapt <= `DLY  1'b1;
    end 
 end

 else
 begin
  always @(posedge STABLE_CLOCK)
  begin
      if (adapt_count_reset == 1'b1)
      begin
        adapt_count    <= `DLY  0;
        time_out_adapt <= `DLY  1'b0;
      end
      else 
      begin
        if (adapt_count >= WAIT_TIME_ADAPT)
          time_out_adapt <= `DLY  1'b1;
        else 
          adapt_count <= `DLY  adapt_count + 1;
      end
  end

 end 
endgenerate

  always @(posedge STABLE_CLOCK)
  begin
      // One common large counter for generating three time-out signals.
      // Intermediate time-outs are derived from calculated values, based
      // on the period of the provided clock.
      if (reset_time_out == 1)
      begin
        time_out_counter  <= `DLY  0;
        time_out_2ms      <= `DLY  1'b0;
        time_tlock_max    <= `DLY  1'b0;
        time_out_500us    <= `DLY  1'b0;
        time_out_1us      <= `DLY  1'b0;
        time_out_100us    <= `DLY  1'b0;
      end
      else
      begin
        if (time_out_counter == WAIT_TIMEOUT_2ms)
          time_out_2ms <= `DLY  1'b1;
        else
          time_out_counter <= `DLY  time_out_counter + 1;
        
        if (time_out_counter > WAIT_TLOCK_MAX && check_tlock_max == 1)
        begin
          time_tlock_max <= `DLY  1'b1;
        end

        if (time_out_counter == WAIT_TIMEOUT_500us)
        begin
          time_out_500us <= `DLY  1'b1;
        end

        if (time_out_counter == WAIT_TIMEOUT_1us)
        begin
          time_out_1us <= `DLY  1'b1;
        end

        if (time_out_counter == WAIT_TIMEOUT_100us)
        begin
          time_out_100us <= `DLY  1'b1;
        end

      end
  end

//always @(posedge RXUSERCLK)
//begin
//  //The lock-signal from the MMCM is not immediately used but 
//  //enabling a counter. Only when the counter hits its maximum,
//  //the MMCM is considered as "really" locked. 
//  //The counter avoids that the FSM already starts on only a 
//  //coarse lock of the MMCM (=toggling of the LOCK-signal).
//    if (MMCM_LOCK == 1'b0)
//    begin
//      mmcm_lock_count <= `DLY  0;
//      mmcm_lock_int   <= `DLY  1'b0;
//    end
//    else
//    begin       
//      if (mmcm_lock_count < MMCM_LOCK_CNT_MAX - 1)
//        mmcm_lock_count <= `DLY  mmcm_lock_count + 1;
//      else
//        mmcm_lock_int <= `DLY  1'b1;
//    end
//end 
 
  wire plllock = (RX_QPLL_USED == "TRUE") ?  QPLLLOCK : CPLLLOCK;

  //Reclocking onto the FSM-clock.
 aurora_64b66b_pcs_pma_rst_sync #
 (
     .c_init_val (1'b0),
     .c_mtbf_stages (5)
 )u_rst_sync_mmcm_lock
 (
     .prmry_in     (MMCM_LOCK),
     .scndry_aclk  (STABLE_CLOCK),
     .scndry_out   (mmcm_lock_r2)
 );
 
 aurora_64b66b_pcs_pma_rst_sync #
 (
     .c_init_val (1'b0),
     .c_mtbf_stages (5)
 )u_rst_sync_plllock
 (
     .prmry_in     (plllock),
     .scndry_aclk  (STABLE_CLOCK),
     .scndry_out   (pll_lock_sync2)
 );
 
  //Clock Domain Crossing
 aurora_64b66b_pcs_pma_rst_sync #
 (
     .c_init_val (1'b0),
     .c_mtbf_stages (5)
 )u_rst_sync_run_phase_align
 (
     .prmry_in     (run_phase_alignment_int),
     .scndry_aclk  (RXUSERCLK),
     .scndry_out   (run_phase_alignment_int_s3)
 );

 aurora_64b66b_pcs_pma_rst_sync #
 (
     .c_init_val (1'b0),
     .c_mtbf_stages (5)
 )u_rst_sync_rx_fsm_reset_done
 (
     .prmry_in     (rx_fsm_reset_done_int),
     .scndry_aclk  (RXUSERCLK),
     .scndry_out   (rx_fsm_reset_done_int_s3)
 );

aurora_64b66b_pcs_pma_rst_sync #
(
    .c_init_val (1'b0),
    .c_mtbf_stages (5)
)u_rst_sync_time_out_wait_bypass
(
    .prmry_in     (time_out_wait_bypass),
    .scndry_aclk  (STABLE_CLOCK),
    .scndry_out   (time_out_wait_bypass_s3)
);


aurora_64b66b_pcs_pma_rst_sync #
(
    .c_init_val (1'b0),
    .c_mtbf_stages (5)
)u_rst_sync_rxresetdone
(
    .prmry_in     (RXRESETDONE),
    .scndry_aclk  (STABLE_CLOCK),
    .scndry_out   (rxresetdone_s3)
);

  always @(posedge RXUSERCLK)
  begin
      if (run_phase_alignment_int_s3 == 1'b0)
      begin 
        wait_bypass_count     <= `DLY  0;
        time_out_wait_bypass  <= `DLY  1'b0;
      end
      else if ((run_phase_alignment_int_s3 == 1'b1) && (rx_fsm_reset_done_int_s3 == 1'b0))
      begin
        if (wait_bypass_count == MAX_WAIT_BYPASS - 1)
          time_out_wait_bypass <= `DLY  1'b1;
        else
          wait_bypass_count <= `DLY  wait_bypass_count + 1;
      end
  end

   assign refclk_lost = ( RX_QPLL_USED == "TRUE"  && QPLLREFCLKLOST == 1'b1) ? 1'b1 : 
                       ( RX_QPLL_USED == "FALSE" && CPLLREFCLKLOST == 1'b1) ? 1'b1 : 1'b0;


  //FSM for resetting the GTX/GTH/GTP in the 7-series. 
  //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  //
  // Following steps are performed:
  // 1) After configuration wait for approximately 500 ns as specified in 
  //    answer-record 43482
  // 2) Assert all resets on the GT and on an MMCM potentially connected. 
  //    After that wait until a reference-clock has been detected.
  // 3) Release the reset to the GT and wait until the GT-PLL has locked.
  // 4) Release the MMCM-reset and wait until the MMCM has signalled lock.
  //    Also get info from the TX-side which PLL has been reset.
  // 5) Wait for the RESET_DONE-signal from the GT.
  // 6) Signal to start the phase-alignment procedure and wait for it to 
  //    finish.
  // 7) Reset-sequence has successfully run through. Signal this to the 
  //    rest of the design by asserting RX_FSM_RESET_DONE.
  
  always @(posedge STABLE_CLOCK or posedge SOFT_RESET)
  begin
      //if (SOFT_RESET == 1'b1 || (rx_state != INIT && rx_state != ASSERT_ALL_RESETS && refclk_lost == 1'b1))
      if(SOFT_RESET == 1'b1)
      begin 
        entered_init_soft_reset_flag  <= `DLY 1'b1;
        rx_state                <= `DLY  INIT;
        RXUSERRDY               <= `DLY  1'b0;
        gtrxreset_i             <= `DLY  1'b0;
        MMCM_RESET              <= `DLY  1'b0;
        rx_fsm_reset_done_int   <= `DLY  1'b0;
        QPLL_RESET              <= `DLY  1'b0;
        CPLL_RESET              <= `DLY  1'b0;
        pll_reset_asserted      <= `DLY  1'b0;
        reset_time_out          <= `DLY  1'b1;
        retry_counter_int       <= `DLY  0;
        run_phase_alignment_int <= `DLY  1'b0;
        check_tlock_max         <= `DLY  1'b0;
        RESET_PHALIGNMENT       <= `DLY  1'b1;
        recclk_mon_count_reset  <= `DLY  1'b1;
        adapt_count_reset       <= `DLY  1'b1;
        RXDFEAGCHOLD            <= `DLY  1'b0;
        RXDFELFHOLD             <= `DLY  1'b0;
        RXLPMLFHOLD             <= `DLY  1'b0;
        RXLPMHFHOLD             <= `DLY  1'b0;
      end
        
      else
      begin
        
        case (rx_state)
           INIT :
           begin 
            //Initial state after configuration. This state will be left after
            //approx. 500 ns and not be re-entered. 
            reset_time_out        <= `DLY  1'b1;
            if (init_wait_done == 1'b1)
              rx_state  <= `DLY  ASSERT_ALL_RESETS;
           end

           ASSERT_ALL_RESETS :
           begin 
            //This is the state into which the FSM will always jump back if any
            //time-outs will occur. 
            //The number of retries is reported on the output RETRY_COUNTER. In 
            //case the transceiver never comes up for some reason, this machine 
            //will still continue its best and rerun until the FPGA is turned off
            //or the transceivers come up correctly.
             if (RX_QPLL_USED == "TRUE")
             begin
              if (pll_reset_asserted == 1'b0)
              begin
                QPLL_RESET          <= `DLY  (entered_init_soft_reset_flag) ? 1'b1 : 1'b0;
                pll_reset_asserted  <= `DLY  1'b1;
              end
              else
                QPLL_RESET          <= `DLY  1'b0;
             end 
            else
            begin
              if (pll_reset_asserted == 1'b0)
              begin
                CPLL_RESET <= `DLY  (entered_init_soft_reset_flag) ? 1'b1 : 1'b0;
                pll_reset_asserted  <= `DLY  1'b1;
              end
              else
                CPLL_RESET          <= `DLY  1'b0;
            end
            RXUSERRDY               <= `DLY  1'b0;
            gtrxreset_i             <= `DLY  1'b1;
            MMCM_RESET              <= `DLY  (entered_init_soft_reset_flag) ? 1'b1 : 1'b0;
            run_phase_alignment_int <= `DLY  1'b0;    
            RESET_PHALIGNMENT       <= `DLY  1'b1;
            check_tlock_max         <= `DLY  1'b0;
            recclk_mon_count_reset  <= `DLY  1'b1;
            adapt_count_reset       <= `DLY  1'b1;
            reset_time_out          <= `DLY  1'b0;

            
            /*
            if ((RX_QPLL_USED == "TRUE" && TX_QPLL_USED == "FALSE" && QPLLREFCLKLOST == 1'b0 && pll_reset_asserted) ||
                (RX_QPLL_USED == "FALSE"&& TX_QPLL_USED == "TRUE"  && CPLLREFCLKLOST == 1'b0 && pll_reset_asserted) ||
                (RX_QPLL_USED == "TRUE" && TX_QPLL_USED == "TRUE"  && QPLLREFCLKLOST == 1'b0 ) ||
                (RX_QPLL_USED == "FALSE"&& TX_QPLL_USED == "FALSE" && CPLLREFCLKLOST == 1'b0 ) 
               ) 
            */
            //In Tx we are using 10us and here we are using 1us which is still OK
           if(time_out_1us) 

           begin
              rx_state              <= `DLY  RELEASE_PLL_RESET;
              reset_time_out        <= `DLY  1'b1;
           end 
           end           
            
           RELEASE_PLL_RESET : 
           begin
            //PLL-Reset of the GTX gets released and the time-out counter
            //starts running.
            entered_init_soft_reset_flag  <= `DLY 1'b0;
            pll_reset_asserted  <= `DLY  1'b0;
            QPLL_RESET          <= `DLY  1'b0;
            CPLL_RESET          <= `DLY  1'b0;
            reset_time_out      <= `DLY  1'b0;
            
           // if ((RX_QPLL_USED == "TRUE" && QPLLLOCK == 1'b1) ||
           //    (RX_QPLL_USED == "FALSE" && CPLLLOCK == 1'b1))
            if(pll_lock_sync2)
            begin 
              rx_state                <= `DLY  VERIFY_RECCLK_STABLE;
              reset_time_out          <= `DLY  1'b1;
              recclk_mon_count_reset  <= `DLY  1'b0;
              adapt_count_reset       <= `DLY  1'b0;
            end 
            
            if (time_out_2ms == 1'b1) 
            begin
              if (retry_counter_int == MAX_RETRIES) 
                // If too many retries are performed compared to what is specified in 
                // the generic, the counter simply wraps around.
                retry_counter_int <= `DLY  0;
              else
              begin
                retry_counter_int <= `DLY  retry_counter_int + 1;
              end
              rx_state            <= `DLY  ASSERT_ALL_RESETS; 
            end            
           end

           VERIFY_RECCLK_STABLE :
           begin
            //reset_time_out  <= `DLY  '0';
            //Time-out counter is not released in this state as here the FSM
            //does not wait for a certain period of time but checks on the number
            //of retries in the CDR PPM detector. 
            gtrxreset_i <= `DLY  1'b0;
            if (rx_cdrlocked == 1'b1)
            begin
              rx_state        <= `DLY  RELEASE_MMCM_RESET;
              reset_time_out  <= `DLY  1'b1;
            end           

            if (recclk_mon_restart_count == 2)
            begin
              //If two retries are performed in the CDR "Lock" (=CDR PPM-detector) 
              //the whole initialisation-sequence gets restarted.
              if (retry_counter_int == MAX_RETRIES) 
                // If too many retries are performed compared to what is specified in 
                // the generic, the counter simply wraps around.
                retry_counter_int <= `DLY  0;
              else
              begin
                retry_counter_int <= `DLY  retry_counter_int + 1;
              end 
              rx_state            <= `DLY  ASSERT_ALL_RESETS; 
            end   
           end          
          
           RELEASE_MMCM_RESET :
           begin 
            //Release of the MMCM-reset. Waiting for the MMCM to lock.
            reset_time_out  <= `DLY  1'b0;
            check_tlock_max <= `DLY  1'b1;
            
            MMCM_RESET <= `DLY  1'b0;
            if (mmcm_lock_r2 == 1'b1)
            begin
              rx_state <= `DLY  WAIT_RESET_DONE;
              reset_time_out  <= `DLY  1'b1;
            end           
            
            if (time_tlock_max == 1'b1)
            begin
              if (retry_counter_int == MAX_RETRIES)
                // If too many retries are performed compared to what is specified in 
                // the generic, the counter simply wraps around.
                retry_counter_int <= `DLY  0;
              else
              begin
                retry_counter_int <= `DLY  retry_counter_int + 1;
              end
              rx_state            <= `DLY  ASSERT_ALL_RESETS; 
            end 
           end            
            
           WAIT_RESET_DONE :
           begin
           //When TXOUTCLK is the source for RXUSRCLK, RXUSERRDY depends on TXUSERRDY
           //If RXOUTCLK is the source for RXUSRCLK, TXUSERRDY can be tied to '1'

            //In Tx we wait for 10us after MMClock is achieved to assert rxrdy and here we wait for 1us which is still Okay.
            //Trying to reuse the existing timers instead of adding timers
            if(TXUSERRDY & time_out_1us)
               RXUSERRDY    <= `DLY  1'b1;
 
            reset_time_out  <= `DLY  1'b0;
            if (rxresetdone_s3 == 1'b1)
            begin
              rx_state        <= `DLY  DO_PHASE_ALIGNMENT; 
              reset_time_out  <= `DLY  1'b1;
            end           

            if (time_out_2ms == 1'b1)
            begin
              if (retry_counter_int == MAX_RETRIES) 
                // If too many retries are performed compared to what is specified in 
                // the generic, the counter simply wraps around.
                retry_counter_int <= `DLY  0;
              else 
              begin
                retry_counter_int <= `DLY  retry_counter_int + 1;
              end 
              rx_state            <= `DLY  ASSERT_ALL_RESETS; 
            end 
           end            
          
           DO_PHASE_ALIGNMENT :
           begin 
            //The direct handling of the signals for the Phase Alignment is done outside
            //this state-machine. 
            RESET_PHALIGNMENT       <= `DLY  1'b0;
            run_phase_alignment_int <= `DLY  1'b1;
            reset_time_out          <= `DLY  1'b0;
            
            if (PHALIGNMENT_DONE == 1'b1)
            begin
              rx_state        <= `DLY  MONITOR_DATA_VALID;
              reset_time_out  <= `DLY  1'b1;
            end 
            
            if (time_out_wait_bypass_s3 == 1'b1)
            begin
              if (retry_counter_int == MAX_RETRIES)
                // If too many retries are performed compared to what is specified in 
                // the generic, the counter simply wraps around.
                retry_counter_int <= `DLY  0;
              else
              begin
                retry_counter_int <= `DLY   retry_counter_int + 1;
              end 
              rx_state            <= `DLY  ASSERT_ALL_RESETS; 
            end            
           end
         
           MONITOR_DATA_VALID :
           begin 
            reset_time_out  <= `DLY  1'b0;

            if (DATA_VALID == 1'b0 && time_out_100us == 1'b1)
            begin
              rx_state              <= `DLY  ASSERT_ALL_RESETS; 
              rx_fsm_reset_done_int <= `DLY  1'b0;
            end
            else if (DATA_VALID == 1'b1)
            begin
              rx_state              <= `DLY  FSM_DONE; 
              rx_fsm_reset_done_int <= `DLY  1'b0;
              reset_time_out        <= `DLY  1'b1;
            end

           end            
          
           FSM_DONE :
           begin 
            reset_time_out        <= `DLY  1'b0;

            if (DATA_VALID == 1'b0)
            begin
               rx_fsm_reset_done_int <= `DLY  1'b0;
               reset_time_out        <= `DLY  1'b1;
               rx_state              <= `DLY  MONITOR_DATA_VALID; 
            end
            else if(time_out_1us == 1'b1)  
               rx_fsm_reset_done_int <= `DLY  1'b1;

            if(time_out_adapt)
            begin
               if(EQ_MODE == "DFE")
               begin
                  RXDFEAGCHOLD  <= `DLY 1'b1;
                  RXDFELFHOLD   <= `DLY 1'b1;
                  RXLPMHFHOLD   <= `DLY 1'b0;
                  RXLPMLFHOLD   <= `DLY 1'b0;
               end
               else
               begin
                  RXDFEAGCHOLD  <= `DLY 1'b0;
                  RXDFELFHOLD   <= `DLY 1'b0;
                  RXLPMHFHOLD   <= `DLY 1'b0;
                  RXLPMLFHOLD   <= `DLY 1'b0;
               end
             end

               
            

           end

        endcase
      end
  end 

  always @(posedge STABLE_CLOCK)
  begin
        if(gtrxreset_i)
        begin
          rx_cdrlocked       <= `DLY    1'b0;
          rx_cdrlock_counter <= `DLY    0;      
        end                
        else if (rx_cdrlock_counter == WAIT_TIME_CDRLOCK) 
        begin
          rx_cdrlocked       <= `DLY    1'b1;
          rx_cdrlock_counter <= `DLY    rx_cdrlock_counter;
        end
        else
          rx_cdrlock_counter <= `DLY    rx_cdrlock_counter + 1;
  end


// fabric reset for aurora pcs modules
 aurora_64b66b_pcs_pma_rst_sync #
 (
     .c_init_val (1'b1),
     .c_mtbf_stages (5)
 )u_rst_sync_rx_reset
 (
     .prmry_in     (RXRESET_IN),
     .scndry_aclk  (RXUSERCLK),
     .scndry_out   (rx_reset_r3)
 );
 aurora_64b66b_pcs_pma_rst_sync #
 (
     .c_init_val (1'b1),
     .c_mtbf_stages (5)
 )u_rst_sync_system_reset
 (
     .prmry_in     (SYSTEM_RESET),
     .scndry_aclk  (RXUSERCLK),
     .scndry_out   (reset_r3)
 );
  
     always @(posedge RXUSERCLK)
       FABRIC_PCS_RESET <= `DLY reset_r3 | rx_reset_r3;

  assign RX_CLK_LOCKED = rx_cdrlocked;

endmodule


