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
 //  CLOCK_MODULE
 //
 //
 //  Description: This module takes the reference clock as
 //               input, and produces a divided clock on a global clock net suitable
 //               for driving application logic connected to the Aurora User Interface.
 //

 `timescale 1 ns / 10 ps

(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_CLOCK_MODULE #
 (
       parameter   MULT            =   10,

       parameter   DIVIDE          =   5,

       parameter   CLK_PERIOD      =   3.103	,

       parameter   OUT0_DIVIDE     =   4,

       parameter   OUT1_DIVIDE     =   2,
       parameter   OUT2_DIVIDE     =   6,
       parameter   OUT3_DIVIDE     =   8
 )
 (
     INIT_CLK_P,
     INIT_CLK_N,
     INIT_CLK_O,
     CLK,
     CLK_LOCKED,
     USER_CLK,
     SYNC_CLK,
     MMCM_NOT_LOCKED

 );

 `define DLY #1


 //***********************************Port Declarations*******************************

     input       INIT_CLK_P;
     input       INIT_CLK_N;
     output      INIT_CLK_O;
     input       CLK;
     input       CLK_LOCKED;
     output      USER_CLK;
     output      SYNC_CLK;
     output      MMCM_NOT_LOCKED;

 //*********************************Wire Declarations**********************************

    (* KEEP = "TRUE" *)    wire            clk_not_locked_i;
     wire            INIT_CLK_IN;
     wire            sync_clk_i;
     wire            user_clk_i;
     wire            clkfbout_i;
     wire            clkfbout;
     wire            locked_i;
     wire            clk_in_i;

 //*********************************Main Body of Code**********************************

 // 7 series MMCM module starts here

     // Invert gtp clock locked
     assign  clk_not_locked_i    = !CLK_LOCKED;

     assign MMCM_NOT_LOCKED           = !locked_i;

   MMCME2_ADV
   #(.BANDWIDTH            ("OPTIMIZED"),
     .CLKOUT4_CASCADE      ("FALSE"),
     .COMPENSATION         ("ZHOLD"),
     .STARTUP_WAIT         ("FALSE"),
     .DIVCLK_DIVIDE        (DIVIDE),
     .CLKFBOUT_MULT_F      (MULT),
     .CLKFBOUT_PHASE       (0.000),
     .CLKFBOUT_USE_FINE_PS ("FALSE"),
     .CLKOUT0_DIVIDE_F     (OUT0_DIVIDE),
     .CLKOUT0_PHASE        (0.000),
     .CLKOUT0_DUTY_CYCLE   (0.500),
     .CLKOUT0_USE_FINE_PS  ("FALSE"),
     .CLKIN1_PERIOD        (CLK_PERIOD),
     .CLKOUT1_DIVIDE       (OUT1_DIVIDE),
     .CLKOUT1_PHASE        (0.000),
     .CLKOUT1_DUTY_CYCLE   (0.500),
     .CLKOUT1_USE_FINE_PS  ("FALSE"),
     .CLKOUT2_DIVIDE       (OUT2_DIVIDE),
     .CLKOUT2_PHASE        (0.000),
     .CLKOUT2_DUTY_CYCLE   (0.500),
     .CLKOUT2_USE_FINE_PS  ("FALSE"),
     .CLKOUT3_DIVIDE       (OUT3_DIVIDE),
     .CLKOUT3_PHASE        (0.000),
     .CLKOUT3_DUTY_CYCLE   (0.500),
     .CLKOUT3_USE_FINE_PS  ("FALSE"),
     .REF_JITTER1          (0.010))

   mmcm_adv_inst
     // Output clocks
    (.CLKFBOUT            (clkfbout),
     .CLKFBOUTB           (),
     .CLKOUT0             (user_clk_i),
     .CLKOUT0B            (),
     .CLKOUT1             (sync_clk_i),
     .CLKOUT1B            (),
     .CLKOUT2             (),
     .CLKOUT2B            (),
     .CLKOUT3             (),
     .CLKOUT3B            (),
     .CLKOUT4             (),
     .CLKOUT5             (),
     .CLKOUT6             (),
      // Input clock control
     .CLKFBIN             (clkfbout),
     .CLKIN1              (clk_in_i),
     .CLKIN2              (1'b0),
      // Tied to always select the primary input clock
     .CLKINSEL            (1'b1),
     // Ports for dynamic reconfiguration
     .DADDR               (7'h0),
     .DCLK                (1'b0),
     .DEN                 (1'b0),
     .DI                  (16'h0),
     .DO                  (),
     .DRDY                (),
     .DWE                 (1'b0),
     // Ports for dynamic phase shift
     .PSCLK               (1'b0),
     .PSEN                (1'b0),
     .PSINCDEC            (1'b0),
     .PSDONE              (),
     // Other control and status signals
     .LOCKED              (locked_i),
     .CLKINSTOPPED        (),
     .CLKFBSTOPPED        (),
     .PWRDWN              (1'b0),
     .RST                 (clk_not_locked_i));

     // BUFG for the feedback clock.  The feedback signal is phase aligned to the input
     // and must come from the CLK0 or CLK2X output of the PLL.  In this case, we use
     // the CLK0 output.
     BUFG txout_clock_net_i
     (
         .I(CLK),
         .O(clk_in_i)
     );
     BUFG sync_clock_net_i
     (
         .I(sync_clk_i),
         .O(SYNC_CLK)
     );


     BUFG user_clk_net_i
     (
         .I(user_clk_i),
         .O(USER_CLK)
     );

   IBUFDS IBUFDS_INIT_CLK
   (
      .I  (INIT_CLK_P),
      .IB (INIT_CLK_N),
      .O  (INIT_CLK_IN)
   );
 
     BUFG initclk_bufg_i
     (
         .I  (INIT_CLK_IN),
         .O  (INIT_CLK_O)
     );
// 7 series MMCM module ends here

endmodule
