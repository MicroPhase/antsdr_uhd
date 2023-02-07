  ///////////////////////////////////////////////////////////////////////////
 // Project:  Aurora 64B/66B
 // Company:  Xilinx
 //
 //
 //
 // (c) Copyright 2008 - 2014 Xilinx, Inc. All rights reserved.
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

 ////////////////////////////////////////////////////////////////////////////
 //
 //  CLOCK_CORRECTION_CHANNEL_BONDING
 //
 //
 //
 //  Description: This module is used to detect Clock correction Sequence as
 //               defined in Aurora Protocol Standard. If the FIFO is about to
 //               underflow or overflow due to difference in Transmit and local
 //               receive clock, clock correction sequences are inserted or deleted
 //               If the lanes are skewed, channel bonding logic takes care of
 //               proper data alignment by adjusting the read FIFO pointers
 //
 /////////////////////////////////////////////////////////////////////////////

 `timescale 1 ns/ 10 ps
 `define DLY #1
(* DowngradeIPIdentifiedWarnings="yes" *)
 module  aurora_64b66b_pcs_pma_CLOCK_CORRECTION_CHANNEL_BONDING #
 (
    parameter INTER_CB_GAP  = 5'd9,
     parameter   EXAMPLE_SIMULATION =   0       // RXCDR lock time
      //pragma translate_off
        | 1
      //pragma translate_on
      ,
    parameter LOW_WATER_MARK    = 13'd450,
    parameter HIGH_WATER_MARK   = 13'd10,
    parameter BACKWARD_COMP_MODE3 = 0,
    parameter CH_BOND_MAX_SKEW  = 2'b10,
    parameter CH_BOND_MODE      = 2'b11,
    parameter ENABLE_HOTPLUG    =  1  // Its highly recommended NOT to change this parameter for predictable operation of the link
 )
 (

   // Write Interface:These signals are wrt RXRECCLK(WR_CLK) of GTX
    GTX_RX_DATA_IN,
    GTX_RX_DATAVALID_IN,
    GTX_RX_HEADER_IN,
    ENCHANSYNC,
    CHAN_BOND_RESET,
    RXLOSSOFSYNC_IN,


    // Read Interface: Synchronized wrt RXUSRCLK2, FIFO output signals
    CC_RX_DATA_OUT,
    CC_RX_BUF_STATUS_OUT,
    CC_RX_DATAVALID_OUT,
    CC_RX_HEADER_OUT,
    CC_RXLOSSOFSYNC_OUT,

    // CHBONDI and CHBONDO are external signals:for Master and Slave
    CHBONDI,
    CHBONDO,

    // Channel Bonding Indication
    RXCHANISALIGNED,

    // Reset and Read and Write clock
    RESET,
    WR_ENABLE,
    HPCNT_RESET_IN,
    GTXRESET_IN,
    USER_CLK,
    RD_CLK,
    CBCC_FIFO_RESET_WR_CLK,
    CBCC_FIFO_RESET_TO_FIFO_WR_CLK,
    CBCC_FIFO_RESET_RD_CLK,
    CBCC_FIFO_RESET_TO_FIFO_RD_CLK,
    CBCC_ONLY_RESET_RD_CLK,
    CBCC_RESET_CBSTG2_RD_CLK,
    ANY_VLD_BTF_FLAG,
    START_CB_WRITES_OUT,
    ALL_START_CB_WRITES_IN,
    ALL_VLD_BTF_FLAG_IN,
    PERLN_DO_RD_EN,
    MASTER_DO_RD_EN,
    FIRST_CB_BITERR_CB_RESET_OUT,
    FINAL_GATER_FOR_FIFO_DIN,
    INIT_CLK,
    LINK_RESET
 );


 //***************** Parameter Declarations ****************************

     // Match character for CC
     localparam CC_CHARACTER      = 16'h7880;
     localparam CB_CHARACTER      = 16'h7840;
     localparam IDLE_CHARACTER    = 16'h7810;
     localparam NA_CHARACTER      = 16'h7830;

     // Write Interface
 
     input   [31:0]    GTX_RX_DATA_IN;
 
     input             GTX_RX_DATAVALID_IN;
     input   [1:0]     GTX_RX_HEADER_IN;
     input             ENCHANSYNC;
     input             CHAN_BOND_RESET;
     input             RXLOSSOFSYNC_IN;

     // Read Interface
     output  [63:0]    CC_RX_DATA_OUT;
     output  [1:0]     CC_RX_BUF_STATUS_OUT;
     output            CC_RX_DATAVALID_OUT;
     output  [1:0]     CC_RX_HEADER_OUT;
     output  reg       CC_RXLOSSOFSYNC_OUT;

     output  reg       RXCHANISALIGNED;

     input             CBCC_FIFO_RESET_WR_CLK;
     input             CBCC_FIFO_RESET_TO_FIFO_WR_CLK;
     input             CBCC_FIFO_RESET_RD_CLK;
     input             CBCC_FIFO_RESET_TO_FIFO_RD_CLK;
     input             CBCC_ONLY_RESET_RD_CLK;
     input             CBCC_RESET_CBSTG2_RD_CLK;
     output            ANY_VLD_BTF_FLAG;
     output            START_CB_WRITES_OUT;
     input             ALL_START_CB_WRITES_IN;
     input             ALL_VLD_BTF_FLAG_IN;
     output            PERLN_DO_RD_EN;
     input             MASTER_DO_RD_EN;
     output            FIRST_CB_BITERR_CB_RESET_OUT;
     output            FINAL_GATER_FOR_FIFO_DIN;

     // Master Slave Connection
     input   [4:0]     CHBONDI;
     output  [4:0]     CHBONDO;

     // Clock and Reset
     input             RESET;
     input             RD_CLK;
     input             INIT_CLK;
     input             WR_ENABLE;
     input             HPCNT_RESET_IN;
     input             GTXRESET_IN;
     input             USER_CLK;
     output  reg [1:0] LINK_RESET;


 //********************** External Register Declarations ****************
     reg     [4:0]     CHBONDO;
     reg  START_CB_WRITES_OUT = 1'b0;
     reg FIRST_CB_BITERR_CB_RESET_OUT = 1'b0;
     reg FINAL_GATER_FOR_FIFO_DIN = 1'b0;
     reg ANY_VLD_BTF_FLAG = 1'b0;

 //********************** Internal Register Declarations ****************

     // Status Interface
     wire               overflow_flag_sync_r_r;
 
     (* shift_extract = "{no}" *) reg     [34:0]     raw_data_r_r;
 
     reg                do_rd_en = 1'b0;
     reg                do_wr_en = 1'b0;
     reg                CB_align_ver;
     reg                gtx_rxdatavalid_r;
     reg                rxdatavalid_dlyd1_r;
     reg                CC_detect_pulse_r;
     reg    [3:0]       cc_state_count_r;
     reg                CC_detect_dlyd1;
     reg                CB_detect_dlyd1;
     reg                CB_detect_dlyd0p5;
     reg                CB_detect_dlyd1p0;
     reg                cc_datavalid_mask_r;
     reg    [23:0]      count_for_reset_r;
     reg                valid_btf_detect_dlyd1;
     reg                hold_reg;
     reg    [1:0]       wait_for_wr_en = 2'h0;
     reg    [1:0]       wait_for_wr_en_wr = 2'h0;
     reg    [1:0]       wait_for_wr_en_wr2 = 2'h0;
     reg    [1:0]       wait_for_wr_en_wr3 = 2'h0;
     reg    [1:0]       wait_for_wr_en_wr4 = 2'h0;
     reg    [3:0]       wait_for_rd_en = 4'h0;
     (* shift_extract = "{no}" *) reg                valid_btf_detect;
     reg   [4:0]        valid_btf_detect_extend_r =  5'd0;
     reg                valid_btf_detect_extend_r2;
 
     reg any_vld_btf_fifo_din_detect_dlyd = 1'b1;
     reg  rd_err_q;
     reg  rd_err_pre;
 (*shift_extract = "{no}" *)    reg  wr_err_rd_clk_sync;
     wire              wr_err_rd_clk_pre;
      reg                new_underflow_flag_c;
     reg                underflow_flag_r1;
     reg                underflow_flag_r2;
     reg                underflow_flag_r3;
     (* shift_extract = "{no}" *) reg  master_do_rd_en_q;
 
     reg cb_fifo_din_detect_q = 1'b0;
     reg                start_cb_writes_mastr = 1'b0;
     reg                start_cb_writes_stg1 = 1'b0;
     reg                start_cb_writes_stg2 = 1'b0;
     reg                start_cb_writes_stg3 = 1'b0;
     reg                start_cb_writes_stg4 = 1'b0;
     reg                start_cb_writes_stg5 = 1'b0;
     reg                start_cb_writes_stg6 = 1'b0;
     reg                start_cb_writes_stg7 = 1'b0;
     reg mod_do_wr_en         = 1'b0;
 
     (* shift_extract = "{no}" *) reg [39:0]  wdth_conv_1stage = 40'd0;
     (* shift_extract = "{no}" *) reg [39:0]  wdth_conv_2stage = 40'd0;
     (* shift_extract = "{no}" *) reg [39:0]  wdth_conv_3stage = 40'd0;
     reg [1:0]  wdth_conv_count = 2'd0;
     reg first_cb_to_write_to_fifo_dlyd = 1'b0;
     reg  [4:0] wr_monitor_flag ;
     reg  new_do_wr_en = 1'b0;
     reg CB_flag_flopped;


 //********************** Wire Declarations *****************************

     // Internal wire declaration
     wire               hold_rd_ptr_i;
     wire   [12:0]       write_ptr_c;
     wire   [12:0]       read_ptr_c;
     wire               i_am_slave;
     wire               i_am_master;
     wire               buffer_too_empty_c;
     wire               buffer_too_full_c;
     wire               CB_detect;
     wire               CB_detect0;
     wire               CC_detect;
 
     wire    [34:0]     raw_data_c;
     wire    [39:0]     fifo_din_i;
 
     wire               rd_err_c;
     wire               wr_err_c;
     wire    [71:0]     fifo_dout_i;
     wire               rxchanisaligned_i;
     wire   [1:0]       ch_bond_c;
     wire   [1:0]       ch_bond_m;
     wire   [4:0]       ch_bond_comb;
     wire               underflow_flag_c;
     wire               overflow_flag_c;
 
     wire   [34:0]      raw_data_srl_out;
     (* shift_extract = "{no}" *) reg   [34:0]      raw_data_r;
     wire               enchansync_dlyd_i;
     wire               CC_detect_pulse_i;
     wire               cc_rden_mask;
     wire               cc_detect_mask;
     wire               cc_datavalid_mask;
     wire               cc_datavalid_mask_i;
     wire               CC_detect_dlyd5;
     wire               rxdatavalid_i;
     wire               rxdatavalid_lookahead_i;
     wire               rxdatavalid_lookahead_rdfifo;
     wire               rd_en_datavalid;
     wire               CB_enb_stop;
     wire               CB_flag_direct;
     wire               CB_flag_dlyd1;
     wire               CC_enb_stop;
     wire               CC_flag_direct;
     wire               CC_flag_dlyd1;
     wire               valid_btf_detect_c;
     wire               valid_btf_detect_pulse_i;
     wire               link_reset_0;
     wire               link_reset_1;
     wire               any_vld_btf_fifo_din_detect;
     wire               cb_fifo_din_detect;

     wire               valid_btf_detect_sync3;
     wire [71:0]  new_fifo_din_i;
     wire [79:0]        en32_fifo_din_i;
     wire               bit80_prsnt;
     wire               first_cb_to_write_to_fifo;
     wire               do_rd_en_i;
     wire               cc_rxlossofsync_r3;


     genvar             i;

     //################################# Beginning of Code ##############################

      always @(posedge RD_CLK)
      begin
          if(CBCC_FIFO_RESET_RD_CLK)
          begin
              underflow_flag_r1 <= `DLY 1'b1;
              underflow_flag_r2 <= `DLY 1'b1;
              underflow_flag_r3 <= `DLY 1'b1;

              new_underflow_flag_c  <= `DLY 1'b1;
          end
          else
          begin
              underflow_flag_r1  <= `DLY (underflow_flag_c | buffer_too_empty_c );
              underflow_flag_r2 <= `DLY underflow_flag_r1;
              underflow_flag_r3 <= `DLY underflow_flag_r2;

              new_underflow_flag_c  <= `DLY underflow_flag_r3 && (underflow_flag_c | buffer_too_empty_c);
          end
      end

      always @(posedge RD_CLK)
      begin
          if(CBCC_FIFO_RESET_RD_CLK) begin
              master_do_rd_en_q <= `DLY 1'b0;
          end 
          else begin
              master_do_rd_en_q <= `DLY MASTER_DO_RD_EN; //fifo gives valid read values in the next cycle of read, so use _q for gating
          end
      end

      aurora_64b66b_pcs_pma_cdc_sync
         # (
            .c_cdc_type    (1),  // 0 Pulse synchronizer, 1 level synchronizer 2 level synchronizer with ACK
            .c_flop_input  (0),  // 1 Adds one flop stage to the input prmry_in signal
            .c_reset_state (1),  // 1 Reset needed for sync flops
            .c_single_bit  (1),  // 1 single bit input.
            .c_mtbf_stages (5)   // Number of sync stages needed
           )   u_cdc_wr_err_rd_clk
           (
             .prmry_aclk      (USER_CLK ),
             .prmry_rst_n     (1'b1 ),
             .prmry_in        (wr_err_c),
             .prmry_vect_in   (32'd0 ),
             .scndry_aclk     (RD_CLK ),
             .scndry_rst_n    (!CBCC_FIFO_RESET_RD_CLK),
             .prmry_ack       ( ),
             .scndry_out      (wr_err_rd_clk_pre),
             .scndry_vect_out ( )
            );

      always @(posedge RD_CLK)
      begin
          if(CBCC_FIFO_RESET_RD_CLK)
          begin
              wr_err_rd_clk_sync <= `DLY 1'b0;
          end
          else if(wait_for_rd_en<4'h6)
          begin
              wr_err_rd_clk_sync <= `DLY 1'b0;
          end
          else
          begin
              wr_err_rd_clk_sync <= `DLY wr_err_rd_clk_pre;
          end
      end

      always @(posedge RD_CLK)
      begin
          if(CBCC_FIFO_RESET_RD_CLK)
          begin
              rd_err_q           <= `DLY 1'b0;
              rd_err_pre         <= `DLY 1'b0;
          end
          else if(wait_for_rd_en<4'h6)
          begin
              rd_err_q           <= `DLY 1'b0;
              rd_err_pre         <= `DLY 1'b0;
          end
          else
          begin
              rd_err_pre         <= `DLY rd_err_c;
              rd_err_q           <= `DLY rd_err_pre;
          end
      end


     // Assign alignment status based on Master/Slave's CB detection and subsequent wait for MAX_SKEW
     always @(posedge RD_CLK)
     begin
           if(CBCC_RESET_CBSTG2_RD_CLK)
                      RXCHANISALIGNED <= `DLY 1'b0;
           else if(CH_BOND_MODE==2'b00)
                      RXCHANISALIGNED <= `DLY 1'b1;
           else
                      RXCHANISALIGNED <= `DLY rxchanisaligned_i;
     end

     // Assign Master/Slave based on CH_BOND_MODE
     assign i_am_slave  =(CH_BOND_MODE[1]) ;
     assign i_am_master =(CH_BOND_MODE[0]);

     SRLC32E #(
             .INIT(32'h00000000)
     ) SRLC32E_inst_0 (
             .Q(enchansync_dlyd_i),  // SRL data output
             .Q31(),                 // SRL cascade output pin
             .A(5'b10000),           // 5-bit shift depth select input
             .CE(1'b1),              // Clock enable input
             .CLK(RD_CLK),           // Clock input
             .D(ENCHANSYNC)          // SRL data input
     );

     // Detect CB or CC from the incoming data
 
     assign CC_detect   =   ((GTX_RX_HEADER_IN == 2'b10) && (GTX_RX_DATA_IN[31:16] == CC_CHARACTER) && GTX_RX_DATAVALID_IN);
 
     always @(posedge USER_CLK)
     begin
           if(CBCC_FIFO_RESET_WR_CLK)
                      CC_detect_dlyd1   <= `DLY 1'b0;
           else
                      CC_detect_dlyd1   <= `DLY CC_detect;
     end

     assign CC_detect_pulse_i = CC_detect && (!CC_detect_dlyd1);

     always @(posedge USER_CLK)
     begin
         CC_detect_pulse_r     <= `DLY CC_detect_pulse_i;
     end

     // Reset link if CC is not detected after 10000 clk cycles
     // This circuit for auto-recovery of the link during hot-plug scenario
     // Incoming control blocks are decoded to detmine CC reception
     // valid_btf_detect is used as the reset for the count_for_reset_r, which would reset the link
     // after the defined time. link_reset_0 is used to reset the GT & link_reset_1 is used to reset
     // the Aurora lanes inorder to reinitialize the lanes

// Use below code if CC is not used in the design. This will clear the reset counter based on any valid BTF received
//   assign valid_btf_detect_c   =  ((GTX_RX_HEADER_IN == 2'b10) &&
//                                  ((GTX_RX_DATA_IN[31:16] == CC_CHARACTER) ||
//                                  (GTX_RX_DATA_IN[31:16] == CB_CHARACTER) ||
//                                  (GTX_RX_DATA_IN[31:16] == IDLE_CHARACTER) ||
//                                  (GTX_RX_DATA_IN[31:16] == NA_CHARACTER)) && GTX_RX_DATAVALID_IN);

// This will clear the reset counter based only on CC being received, and will enable hotplug logic to kickin
// if multiple channel_bond_resets were happening and because of untolerable skews, it can try to reset the rx part
// BACKWARD_COMP_MODE3 to be set to 1 for systems working based on pre v9.3 version of the core that needs hot-plug counter 
// to be cleared on reception of any valid BTF

generate
  if(BACKWARD_COMP_MODE3)
 
     assign valid_btf_detect_c   =  ((GTX_RX_HEADER_IN == 2'b10) &&
                                    ((GTX_RX_DATA_IN[31:16] == CC_CHARACTER) ||
                                    (GTX_RX_DATA_IN[31:16] == CB_CHARACTER) ||
                                    (GTX_RX_DATA_IN[31:16] == IDLE_CHARACTER) ||
                                    (GTX_RX_DATA_IN[31:16] == NA_CHARACTER)) && GTX_RX_DATAVALID_IN);
 
  else
 
     assign valid_btf_detect_c   =  ((GTX_RX_HEADER_IN == 2'b10) &&
                                    (GTX_RX_DATA_IN[31:16] == CC_CHARACTER)
                                     && GTX_RX_DATAVALID_IN);
 
                                     
endgenerate

     always @(posedge USER_CLK)
          valid_btf_detect  <= `DLY valid_btf_detect_c;
                                     


   //Extend the valid_btf_detect pulse for 4 clock cycles
   //This extension is required when INIT_CLK is slower than USER_CLK
   //INIT_CLK frequency should be atleast 4 times of USER_CLK frequency

   always @ (posedge USER_CLK)
   begin
     if(RESET)
       valid_btf_detect_extend_r  <= `DLY  5'd0;
     else
       valid_btf_detect_extend_r  <= {valid_btf_detect,valid_btf_detect_extend_r[4:1]};
   end

   always @ (posedge USER_CLK)
    valid_btf_detect_extend_r2  <= |valid_btf_detect_extend_r;

aurora_64b66b_pcs_pma_rst_sync u_rst_sync_btf_sync
(
    .prmry_in (valid_btf_detect_extend_r2),
    .scndry_aclk (INIT_CLK),
    .scndry_out(valid_btf_detect_sync3)
);


     always @(posedge INIT_CLK)
         valid_btf_detect_dlyd1 <= `DLY valid_btf_detect_sync3;

     always @(posedge INIT_CLK)
     begin
        //if(HPCNT_RESET_IN)
        if(HPCNT_RESET_IN | (EXAMPLE_SIMULATION & count_for_reset_r == 24'h0FFFFF))
            count_for_reset_r <= `DLY 24'h0;
        else if(valid_btf_detect_dlyd1)
            count_for_reset_r <= `DLY 24'h0;
        else
            count_for_reset_r <= `DLY count_for_reset_r + 1'b1;
     end

generate
  if(ENABLE_HOTPLUG == 1)
    begin
     if(EXAMPLE_SIMULATION)
       assign link_reset_0 =( (count_for_reset_r > 24'h0FFF00) & (count_for_reset_r < 24'h0FFFFA) ) ? 1'b1 : 1'b0;
     else
       assign link_reset_0 =( (count_for_reset_r > 24'hFFFF00) & (count_for_reset_r < 24'hFFFFFA) ) ? 1'b1 : 1'b0;

       assign link_reset_1 = 1'b0;
    end
  else
    begin
       assign link_reset_0 = 1'b0;
       assign link_reset_1 = 1'b0;
    end
endgenerate

     always @(posedge INIT_CLK)
        LINK_RESET <= `DLY {link_reset_1,link_reset_0};



 
     assign CB_detect0   =   ((GTX_RX_HEADER_IN == 2'b10) && (GTX_RX_DATA_IN[31:16] == CB_CHARACTER) && GTX_RX_DATAVALID_IN);
 
     // ENCHANSYNC enabled
     always @(posedge USER_CLK)
     begin
           if(CBCC_FIFO_RESET_WR_CLK) begin
                      CB_detect_dlyd1   <= `DLY 1'b0;
                      CB_detect_dlyd0p5   <= `DLY 1'b0;
                      CB_detect_dlyd1p0   <= `DLY 1'b0;
           end
           else begin
                      CB_detect_dlyd0p5 <= `DLY CB_detect0;
                      CB_detect_dlyd1p0 <= `DLY CB_detect_dlyd0p5;
                      CB_detect_dlyd1   <= `DLY CB_detect_dlyd0p5 | CB_detect_dlyd1p0;
           end
     end
     assign CB_detect = CB_detect0 | CB_detect_dlyd0p5;

     // Double synchronize RXLOSSOFSYNC_IN to account for the clock crossing
aurora_64b66b_pcs_pma_cdc_sync
   # (
      .c_cdc_type    (1),  // 0 Pulse synchronizer, 1 level synchronizer 2 level synchronizer with ACK
      .c_flop_input  (0),  // 1 Adds one flop stage to the input prmry_in signal
      .c_reset_state (0),  // 1 Reset needed for sync flops
      .c_single_bit  (1),  // 1 single bit input.
      .c_mtbf_stages (5)   // Number of sync stages needed
     )   u_cdc_rxlossofsync_in
     (
       .prmry_aclk      (USER_CLK ),
       .prmry_rst_n     (1'b1 ),
       .prmry_in        (RXLOSSOFSYNC_IN),
       .prmry_vect_in   (32'd0 ),
       .scndry_aclk     (RD_CLK ),
       .scndry_rst_n    (1'b1 ),
       .prmry_ack       ( ),
       .scndry_out      (cc_rxlossofsync_r3),
       .scndry_vect_out ( )
      );

     always @(posedge RD_CLK)
     begin
          if(CBCC_ONLY_RESET_RD_CLK)
          CC_RXLOSSOFSYNC_OUT    <= `DLY 1'b1;
          else
          CC_RXLOSSOFSYNC_OUT    <= `DLY  !cc_rxlossofsync_r3;
     end

     // _________________ Logic for writing to the elastic buffer ______________
     // Combine incoming data into a raw data signal
     // RXLOSSOFSYNC_IN  and GTX_RX_DATAVALID_IN are generated wrt RXRECCLK. Move these siignals to RD_CLK domain through FIFO
 
     assign raw_data_c   =   {
                                 GTX_RX_DATAVALID_IN,
                                 GTX_RX_HEADER_IN,
                                 GTX_RX_DATA_IN[31:0]
                              };
 
     // Caputure all raw data in a register
     // Delay write data to FIFO by 6 cycles allowing Channel Bonding logic
     // to decide whether to wait on CB or not
 
     generate for(i=0;i<35;i=i+1) begin:srlc32e
 
     SRLC32E #(
             .INIT(32'h00000000)
     ) SRLC32E_inst_1 (
             .Q(raw_data_srl_out[i]),  // SRL data output
             .Q31(),             // SRL cascade output pin
             .A(5'b00100),       // 4-bit shift depth select input
             .CE(WR_ENABLE),          // Clock enable input
             .CLK(USER_CLK),       // Clock input
             .D(raw_data_c[i])   // SRL data input
     );                          // End of SRLC32E_inst instantiation
     end endgenerate

    //making sure last stage wouldn't be SRL output to ease timing
     always @(posedge USER_CLK)
     begin
 
         raw_data_r[34:0] <= `DLY raw_data_srl_out;
 
     end

     // Pipeline the raw data to give the cc matching logic enough time to search for CC
     // sequences
     always @(posedge USER_CLK)
     begin
 
          raw_data_r_r    <=  `DLY    raw_data_r;
 
     end

     // Delay CC_detect_dlyd1 by six cycles to account datapath delay
     SRLC32E #(
             .INIT(32'h00000000)
     ) SRLC32E_inst_2 (
             .Q(CC_detect_dlyd5),    // SRL data output
             .Q31(),                 // SRL cascade output pin
             .A(5'b00101),           // 5-bit shift depth select input
             .CE(WR_ENABLE),              // Clock enable input
             .CLK(USER_CLK),           // Clock input
             .D(CC_detect_dlyd1)     // SRL data input
     );

     always @(posedge RD_CLK)
     begin
           cc_datavalid_mask_r   <= `DLY  cc_datavalid_mask_i;
     end

     assign  rd_en_datavalid = i_am_slave?CHBONDI[2]:i_am_master?rxdatavalid_dlyd1_r:rxdatavalid_i;

     assign  cc_datavalid_mask = i_am_slave?CHBONDI[4]:i_am_master?cc_datavalid_mask_r :cc_datavalid_mask_i;

     assign  rxdatavalid_i                 = master_do_rd_en_q & fifo_dout_i[68];

     assign  rxdatavalid_lookahead_rdfifo  = master_do_rd_en_q & fifo_dout_i[66];

     // Delay GTX_RX_DATAVALID_IN by two cycles
     // to enable CB logic wait on CB
     SRLC32E #(
             .INIT(32'h00000000)
     ) SRLC32E_inst_4 (
             .Q(rxdatavalid_lookahead_i), // SRL data output
             .Q31(),                      // SRL cascade output pin
             .A(5'b00010),                // 2-bit shift depth select input
             .CE(WR_ENABLE),                   // Clock enable input
             .CLK(USER_CLK),                // Clock input
             .D(GTX_RX_DATAVALID_IN)      // SRL data input
     );

    always @(posedge USER_CLK)
    begin
        if(CBCC_FIFO_RESET_WR_CLK)
          wait_for_wr_en <=  `DLY 2'h0;
        else if(wait_for_wr_en < 2'h3)
          wait_for_wr_en <=  `DLY wait_for_wr_en + 1'b1;
        else
          wait_for_wr_en <=  `DLY wait_for_wr_en;
    end

    always @(posedge USER_CLK)
    begin
       wait_for_wr_en_wr <= `DLY  wait_for_wr_en;
       wait_for_wr_en_wr2 <= `DLY  wait_for_wr_en_wr;
       wait_for_wr_en_wr3 <= `DLY  wait_for_wr_en_wr2;
       wait_for_wr_en_wr4 <= `DLY  wait_for_wr_en_wr3;
    end

    always @(posedge RD_CLK)
    begin
        if(CBCC_FIFO_RESET_RD_CLK)
          wait_for_rd_en <=  `DLY 4'h0;
        else if(wait_for_rd_en < 4'h6)
          wait_for_rd_en <=  `DLY wait_for_rd_en + 1'b1;
        else
          wait_for_rd_en <=  `DLY wait_for_rd_en;
    end

     always @(posedge RD_CLK)
     begin
         if(CBCC_FIFO_RESET_RD_CLK)
                      do_rd_en        <=  `DLY    1'b0;
         else if((wait_for_rd_en<4'h6))
                      do_rd_en        <=  `DLY    1'b0;
         else if(!new_underflow_flag_c)
                      do_rd_en        <=  `DLY    1'b1;
       //else if(!rd_en_datavalid & !ENCHANSYNC & !cc_datavalid_mask)
       //             do_rd_en        <=  `DLY    1'b0;
         else
                      do_rd_en        <=  `DLY    1'b0;
     end

     // do_rd_en is generated based on the CC reception and Channel Bonding read stop request
     generate

     if((CH_BOND_MODE==2'b01)||(CH_BOND_MODE==2'b10))
     begin:master_slave
     assign do_rd_en_i = do_rd_en & !hold_rd_ptr_i;
     end
     else
     begin:no_cb
     assign do_rd_en_i = do_rd_en;
     end
     endgenerate

     assign PERLN_DO_RD_EN = do_rd_en_i;

//--------{
     //logic to stop writes into fifo untill some CC_CHARACTER or
     //CB_CHARACTER or IDLE_CHARACTER or NA_CHARACTER  are seen

//--- even any_vld_btf_fifo_din_detect is also being used same as CB_detect to reduce uncertainity

 
     assign any_vld_btf_fifo_din_detect =  ((fifo_din_i[33:32] == 2'b10) && (raw_data_r_r[34]) && (fifo_din_i[31:16] == CB_CHARACTER));
 
     always @(posedge USER_CLK)
     begin
         if(CBCC_FIFO_RESET_WR_CLK)
             any_vld_btf_fifo_din_detect_dlyd <= `DLY 1'b0;
         else if(wait_for_wr_en_wr4 != 2'h3)
             any_vld_btf_fifo_din_detect_dlyd <= `DLY 1'b0;
         else
             any_vld_btf_fifo_din_detect_dlyd <= `DLY any_vld_btf_fifo_din_detect;
     end

     always @(posedge USER_CLK)
     begin
         if(CBCC_FIFO_RESET_WR_CLK)
             ANY_VLD_BTF_FLAG <= `DLY 1'b0;
         else if(wait_for_wr_en_wr4 != 2'h3)
             ANY_VLD_BTF_FLAG <= `DLY 1'b0;
 
         else if(any_vld_btf_fifo_din_detect_dlyd && (raw_data_r_r[34]))   //prev cycle valid btf and pres cycle valid
             ANY_VLD_BTF_FLAG <= `DLY 1'b1;
     end

 
     assign cb_fifo_din_detect =  ((fifo_din_i[33:32] == 2'b10) && (raw_data_r_r[34]) && (fifo_din_i[31:16] == CB_CHARACTER));

 
     always @(posedge USER_CLK)
     begin
         if(CBCC_FIFO_RESET_WR_CLK)
             cb_fifo_din_detect_q <= `DLY 1'b0;
         else
             cb_fifo_din_detect_q <= `DLY cb_fifo_din_detect;
     end

 generate //{

     if(CH_BOND_MODE==2'b01)
     begin //{master

         always @(posedge USER_CLK)
         begin
             if(CBCC_FIFO_RESET_WR_CLK)
                 start_cb_writes_mastr <= `DLY 1'b0;
 
             else if(ALL_VLD_BTF_FLAG_IN & cb_fifo_din_detect_q & (raw_data_r_r[34]))
                 start_cb_writes_mastr <= `DLY 1'b1;
         end

         always @(posedge USER_CLK)
         begin
             if(CBCC_FIFO_RESET_WR_CLK)
             begin
                start_cb_writes_stg1 <= `DLY 1'b0;
                start_cb_writes_stg2 <= `DLY 1'b0;
                start_cb_writes_stg3 <= `DLY 1'b0;
                start_cb_writes_stg4 <= `DLY 1'b0;
                start_cb_writes_stg5 <= `DLY 1'b0;
                start_cb_writes_stg6 <= `DLY 1'b0;
                start_cb_writes_stg7 <= `DLY 1'b0;
                START_CB_WRITES_OUT  <= `DLY 1'b0;
             end
             else
             begin
                start_cb_writes_stg1 <= `DLY start_cb_writes_mastr;
                start_cb_writes_stg2 <= `DLY start_cb_writes_stg1;
                start_cb_writes_stg3 <= `DLY start_cb_writes_stg2;
                start_cb_writes_stg4 <= `DLY start_cb_writes_stg3;
                start_cb_writes_stg5 <= `DLY start_cb_writes_stg4;
                start_cb_writes_stg6 <= `DLY start_cb_writes_stg5;
                start_cb_writes_stg7 <= `DLY start_cb_writes_stg6;
 
                START_CB_WRITES_OUT  <= `DLY start_cb_writes_stg7;
             end
         end

         always @(posedge USER_CLK)
         begin
             if(CBCC_FIFO_RESET_WR_CLK)
                 FINAL_GATER_FOR_FIFO_DIN <= `DLY 1'b0;
 
             else if(ALL_START_CB_WRITES_IN & (cb_fifo_din_detect_q && (raw_data_r_r[34]))) //since requirement is to write a valid 64 bit grouping from 32 bit grouping
                 FINAL_GATER_FOR_FIFO_DIN <= `DLY 1'b1;
         end

     end//}

     else if(CH_BOND_MODE==2'b10)
     begin//{slave
         always @(posedge USER_CLK)
         begin
             if(CBCC_FIFO_RESET_WR_CLK)
                 START_CB_WRITES_OUT <= `DLY 1'b0;
             else if(ALL_VLD_BTF_FLAG_IN)
             //else if(ALL_VLD_BTF_FLAG_IN & cb_fifo_din_detect_q & (raw_data_r_r[34]))
                 START_CB_WRITES_OUT <= `DLY 1'b1;
         end

         always @(posedge USER_CLK)
         begin
             if(CBCC_FIFO_RESET_WR_CLK)
                 FINAL_GATER_FOR_FIFO_DIN <= `DLY 1'b0;
 
             else if(ALL_START_CB_WRITES_IN & (cb_fifo_din_detect_q && (raw_data_r_r[34]))) //since requirement is to write a valid 64 bit grouping from 32 bit grouping
                 FINAL_GATER_FOR_FIFO_DIN <= `DLY 1'b1;
         end

     end//}

     else if(CH_BOND_MODE==2'b00)
     begin//{single lane
         always @(posedge USER_CLK)
         begin
             if(CBCC_FIFO_RESET_WR_CLK)
                 START_CB_WRITES_OUT <= `DLY 1'b0;
 
             else if(ALL_VLD_BTF_FLAG_IN & cb_fifo_din_detect_q & (raw_data_r_r[34]))
                 START_CB_WRITES_OUT <= `DLY 1'b1;
         end

         always @(posedge USER_CLK)
         begin
             if(CBCC_FIFO_RESET_WR_CLK)
                 FINAL_GATER_FOR_FIFO_DIN <= `DLY 1'b0;
 
             else if(ALL_START_CB_WRITES_IN & (cb_fifo_din_detect_q && (raw_data_r_r[34]))) //since requirement is to write a valid 64 bit grouping from 32 bit grouping
                 FINAL_GATER_FOR_FIFO_DIN <= `DLY 1'b1;
         end

     end//}


 endgenerate //}



//--------}

   always @(posedge USER_CLK)
   begin
       if(CBCC_FIFO_RESET_WR_CLK)
           do_wr_en         <=  `DLY    1'b0;
         else if(wait_for_wr_en_wr4 != 2'h3)
           do_wr_en         <=  `DLY    1'b0;
       else
       begin
           if(overflow_flag_c)
               do_wr_en         <=  `DLY    1'b0;
 
           else if(!raw_data_r[34])
               do_wr_en         <=  `DLY    1'b0;
           else
               do_wr_en         <=  `DLY    (FINAL_GATER_FOR_FIFO_DIN | (ALL_START_CB_WRITES_IN & (cb_fifo_din_detect_q && (raw_data_r_r[34]))));
 
       end
   end

 
     assign CC_flag_direct = master_do_rd_en_q & fifo_dout_i[71];
     assign CC_flag_dlyd1  = master_do_rd_en_q & fifo_dout_i[67];
 

     assign CC_enb_stop=(CC_flag_direct & !rxdatavalid_i)?CC_flag_direct:CC_flag_dlyd1;

     // This CC counter counts for 3 cycles and RDEN gets deasserted for these many cycles
     always @(posedge RD_CLK)
     begin
           if(CBCC_RESET_CBSTG2_RD_CLK)
                      cc_state_count_r  <=  `DLY 4'b0000;
           else if(CC_enb_stop & !cc_detect_mask & gtx_rxdatavalid_r)
                      cc_state_count_r  <=  `DLY 4'b1111;
           else if((cc_state_count_r== 14) && !rxdatavalid_lookahead_rdfifo)
                      cc_state_count_r  <=  `DLY cc_state_count_r-2;
           else if((cc_state_count_r== 15) && !gtx_rxdatavalid_r)
                      cc_state_count_r  <=  `DLY cc_state_count_r;
           else if((cc_state_count_r> 10) && rxdatavalid_i)
                      cc_state_count_r  <=  `DLY cc_state_count_r-1;
           else if((cc_state_count_r> 10) && !rxdatavalid_i)
                      cc_state_count_r  <=  `DLY cc_state_count_r-2;
           else if(cc_state_count_r> 1)
                      cc_state_count_r  <=  `DLY cc_state_count_r-1;
           else
                      cc_state_count_r  <=  `DLY 4'b0000;
     end

     assign cc_rden_mask      = ((cc_state_count_r > 5) && (cc_state_count_r < 9))?1'b1:1'b0;

     assign cc_detect_mask    = (cc_state_count_r > 1)?1'b1:1'b0;

     assign cc_datavalid_mask_i = ((cc_state_count_r <= 15) && (cc_state_count_r >2))?1'b1:1'b0;

     // __________________________ Memory Blocks _________________________________
     // Fetch CB_detect and CC_detect ahead of data to decide stoppage over CB
     assign  fifo_din_i[33:0]     =   raw_data_r_r[33:0];
     assign  fifo_din_i[34]       =   rxdatavalid_lookahead_i;
     assign  fifo_din_i[35]       =   CC_detect_pulse_r;
     assign  fifo_din_i[36]       =   raw_data_r_r[34];
     assign  fifo_din_i[37]       =   CB_detect_dlyd1;
     assign  fifo_din_i[38]       =   CB_detect;
     assign  fifo_din_i[39]       =   CC_detect_pulse_i;
     always @(posedge RD_CLK)
     begin
           rxdatavalid_dlyd1_r <= `DLY rxdatavalid_i;
     end

     assign CB_flag_direct  = master_do_rd_en_q & fifo_dout_i[70];
     assign CB_flag_dlyd1   = master_do_rd_en_q & fifo_dout_i[69];

     // Muxing logic is required because data valid in between ENCHASYNC can mess
     // timing. We adopt a strategy of sending both CB_detect and registered CB_detect
     // so that in case one is missed, other can substitute
     assign CB_enb_stop=(CB_flag_direct | ((~CB_flag_flopped) & CB_flag_dlyd1));
     always @(posedge RD_CLK)
     begin
         CB_flag_flopped <= CB_flag_direct;
     end

     always @(posedge RD_CLK)
     begin
         if(CBCC_RESET_CBSTG2_RD_CLK)
            CB_align_ver  <= `DLY  1'b0;
         else
            CB_align_ver  <= `DLY  (master_do_rd_en_q) && (fifo_dout_i[63:48]==CB_CHARACTER) && (fifo_dout_i[65:64]==2'b10);
     end

 
     assign new_fifo_din_i = {en32_fifo_din_i[79:74], en32_fifo_din_i[73:72], en32_fifo_din_i[71:40], en32_fifo_din_i[31:00]};

    assign bit80_prsnt = (wdth_conv_count > 2'd1);

    assign first_cb_to_write_to_fifo = ((raw_data_r[33:32] == 2'b10) && (raw_data_r[34]) && (raw_data_r[31:16] == CB_CHARACTER));

always @(posedge USER_CLK)
begin
    if(CBCC_FIFO_RESET_WR_CLK)
        first_cb_to_write_to_fifo_dlyd <= `DLY 1'b0;
    else
        first_cb_to_write_to_fifo_dlyd <= `DLY first_cb_to_write_to_fifo;
end


always @(*)
begin
    if(do_wr_en)
        mod_do_wr_en = 1'b1;
 
    else if(ALL_START_CB_WRITES_IN && first_cb_to_write_to_fifo_dlyd && raw_data_r[34])
        mod_do_wr_en = 1'b1;
    else if(ALL_START_CB_WRITES_IN & cb_fifo_din_detect_q & (raw_data_r_r[34]))
        mod_do_wr_en = 1'b1;
    else
        mod_do_wr_en = 1'b0;
end


 
   always @(posedge USER_CLK)
   begin
       if(CBCC_FIFO_RESET_WR_CLK)
           wdth_conv_count <= `DLY 2'd0;
         else if(wait_for_wr_en_wr4 != 2'h3)
           wdth_conv_count <= `DLY 2'd0;
       else
       begin
           case({bit80_prsnt,mod_do_wr_en})
               2'b01:
               begin
                   wdth_conv_count <= `DLY wdth_conv_count + 2'd1;
               end
               2'b10:
               begin
                   wdth_conv_count <= `DLY wdth_conv_count - 2'd2;
               end
               2'b11:
               begin
                   wdth_conv_count <= `DLY wdth_conv_count - 2'd1;
               end
               default:
               begin
                   wdth_conv_count <= `DLY wdth_conv_count;
               end
           endcase
       end
   end


   always @(posedge USER_CLK)
   begin
       if(CBCC_FIFO_RESET_WR_CLK)
           wdth_conv_1stage <= `DLY 40'd0;
       else if(mod_do_wr_en)
           wdth_conv_1stage <= `DLY fifo_din_i;
   end

   always @(posedge USER_CLK)
   begin
       if(CBCC_FIFO_RESET_WR_CLK)
           wdth_conv_2stage <= `DLY 40'd0;
       else
           wdth_conv_2stage <= `DLY wdth_conv_1stage;
   end

   always @(posedge USER_CLK)
   begin
       if(CBCC_FIFO_RESET_WR_CLK)
           wdth_conv_3stage <= `DLY 40'd0;
       else
           wdth_conv_3stage <= `DLY wdth_conv_2stage;
   end


   always @(posedge USER_CLK)
   begin
     if(CBCC_FIFO_RESET_WR_CLK || (wait_for_wr_en_wr4 != 2'h3))
       new_do_wr_en <= `DLY 1'b0;
     else
       new_do_wr_en <= `DLY bit80_prsnt;
   end

   assign en32_fifo_din_i = {wdth_conv_3stage,wdth_conv_2stage};
     //---- Logic to detect bit errors ----
     // By architecture, 1st CB that goes in to FIFO would Be CB, and the next
     // CB is expected to be after 9 NA idles, ie, the 11th Write should be
     // CB, Also  between 2nd to 10th writes, CB character should not be
     // written in to FIFO;


     always @(posedge USER_CLK)
     begin
         if(CBCC_FIFO_RESET_TO_FIFO_WR_CLK)
             wr_monitor_flag <= `DLY 5'd0;
         else if (wr_monitor_flag >= (INTER_CB_GAP + 2))
             wr_monitor_flag <= `DLY wr_monitor_flag;
         else if(new_do_wr_en)
             wr_monitor_flag <= `DLY wr_monitor_flag + 1'b1;
     end

     always @(posedge USER_CLK)
     begin
         if(CBCC_FIFO_RESET_TO_FIFO_WR_CLK)
             FIRST_CB_BITERR_CB_RESET_OUT <= `DLY 1'b0;
         else if(wr_monitor_flag == 5'd0 || wr_monitor_flag >= (INTER_CB_GAP + 2))
             FIRST_CB_BITERR_CB_RESET_OUT <= `DLY 1'b0;
         else if(wr_monitor_flag == INTER_CB_GAP + 1)
         begin
             if(new_do_wr_en) //header info is not sent to fifo, so allowing this change, need to review
                 FIRST_CB_BITERR_CB_RESET_OUT <= `DLY !((new_fifo_din_i[63:48] == CB_CHARACTER) && (new_fifo_din_i[68]));
             else
                 FIRST_CB_BITERR_CB_RESET_OUT <= `DLY FIRST_CB_BITERR_CB_RESET_OUT;
         end
         else
         begin
             if(new_do_wr_en) //header info is not sent to fifo, so allowing this change, need to review
                 FIRST_CB_BITERR_CB_RESET_OUT <= `DLY ((new_fifo_din_i[63:48] == CB_CHARACTER) && (new_fifo_din_i[68]));
             else
                 FIRST_CB_BITERR_CB_RESET_OUT <= `DLY FIRST_CB_BITERR_CB_RESET_OUT;
         end
     end

//   // Instantiate a FIFO
//             aurora_64b66b_pcs_pma_fifo_512x72 #
//             (
//                 .FULL_OFFSET  (LOW_WATER_MARK),
//                 .EMPTY_OFFSET (HIGH_WATER_MARK)
//             )data_fifo
//             (
//                 .WR_CLK      (USER_CLK),
//                 .RD_CLK      (RD_CLK),
//                 .RST         (CBCC_FIFO_RESET_TO_FIFO_RD_CLK),
//                 .DIN         (new_fifo_din_i),
//                 .WR_EN       (new_do_wr_en),
//                 .RD_EN       (MASTER_DO_RD_EN),
//                 .DOUT        (fifo_dout_i),
//                 .FULL        (overflow_flag_c),
//                 .EMPTY       (underflow_flag_c),
//                 .PROG_FULL   (buffer_too_full_c),
//                 .PROG_EMPTY  (buffer_too_empty_c),
//                 .OVERFLOW    (wr_err_c),
//                 .UNDERFLOW   (rd_err_c),
//                 .WR_PNTR     (write_ptr_c[8:0]),
//                 .RD_PNTR     (read_ptr_c[8:0])
//              );

// Instantiate a FIFO
// 7 series FIFO instantiation starts -- 

FIFO36E1 #(
              .SIM_DEVICE               ("7SERIES"), // Must be set to "7SERIES" for simulation behavior
              .FIFO_MODE                ("FIFO36_72"),
              .DATA_WIDTH               (72),
              .EN_ECC_READ              ("FALSE"), // Enable ECC decoder, FALSE, TRUE
              .EN_ECC_WRITE             ("FALSE"), // Enable ECC encoder, FALSE, TRUE
              .FIRST_WORD_FALL_THROUGH  ("FALSE"), // Sets the FIFO FWFT to &VALUES
              .SRVAL                    (72'd0),// Set/Reset value for output port
              .INIT                     (72'd0), // Initial values on output port
              .DO_REG                   (1),                                          // Set for asynchronous FIFO operation
              .EN_SYN                   ("FALSE"),                                       // When FALSE, keeps RDCLK & WRCLK separate
              .ALMOST_FULL_OFFSET       (LOW_WATER_MARK),                    // sets the difference between full
              .ALMOST_EMPTY_OFFSET      (HIGH_WATER_MARK)
           ) data_fifo (
              .REGCE                    (1'b1),
              .RSTREG                   (1'b0), // 1-bit input: Output register set/reset
              .DBITERR                  (),
              .ECCPARITY                (),
              .RDCOUNT                  (read_ptr_c),
              .RDERR                    (rd_err_c),
              .SBITERR                  (),
              .WRCOUNT                  (write_ptr_c),
              .WRERR                    (wr_err_c),

              .DIP                      (new_fifo_din_i[71:64]),
              .DOP                      (fifo_dout_i[71:64]),
              .ALMOSTEMPTY              (buffer_too_empty_c ),
              .ALMOSTFULL               (buffer_too_full_c),
              .EMPTY                    (underflow_flag_c),              //*
              .FULL                     (overflow_flag_c),               //*
              .INJECTDBITERR            (1'b0),                          //*
              .INJECTSBITERR            (1'b0),                          //*
              .DO                       (fifo_dout_i[63:0]),             //*
              .DI                       (new_fifo_din_i[63:0]),          //*
              .RDCLK                    (RD_CLK),                        //*
              .RDEN                     (MASTER_DO_RD_EN),               //*
              .RST                      (CBCC_FIFO_RESET_TO_FIFO_RD_CLK),//*
              //.RST(CBCC_FIFO_RESET_TO_FIFO_WR_CLK),
              .WRCLK                    (USER_CLK),                      //*
              .WREN                     (new_do_wr_en)                   //*
           );


aurora_64b66b_pcs_pma_cdc_sync
   # (
      .c_cdc_type    (1),  // 0 Pulse synchronizer, 1 level synchronizer 2 level synchronizer with ACK
      .c_flop_input  (0),  // 1 Adds one flop stage to the input prmry_in signal
      .c_reset_state (1),  // 1 Reset needed for sync flops
      .c_single_bit  (1),  // 1 single bit input.
      .c_mtbf_stages (5)   // Number of sync stages needed
     )   u_cdc_overflow_flag_c
     (
       .prmry_aclk      (USER_CLK ),
       .prmry_rst_n     (1'b1 ),
       .prmry_in        (overflow_flag_c),
       .prmry_vect_in   (32'd0 ),
       .scndry_aclk     (RD_CLK ),
       .scndry_rst_n    (!CBCC_RESET_CBSTG2_RD_CLK ),
       .prmry_ack       ( ),
       .scndry_out      (overflow_flag_sync_r_r),
       .scndry_vect_out ( )
      );

     always @(posedge RD_CLK)
     begin
           if(CBCC_RESET_CBSTG2_RD_CLK)
                      gtx_rxdatavalid_r           <= `DLY 1'b0;
           else if(!rd_en_datavalid & !ENCHANSYNC & !cc_datavalid_mask)
                      gtx_rxdatavalid_r           <= `DLY 1'b0;
           else
                      gtx_rxdatavalid_r           <= `DLY 1'b1;
     end

     // Set status indicators
     assign  CC_RX_BUF_STATUS_OUT[1] =  wr_err_rd_clk_sync;          // ERROR status signal for Aurora's init module
     assign  CC_RX_BUF_STATUS_OUT[0] =  rd_err_q;          // ERROR status signal for Aurora's init module
     assign  CC_RX_DATAVALID_OUT     =  (master_do_rd_en_q & fifo_dout_i[68]);
     assign  CC_RX_HEADER_OUT        =  ( hold_reg == 0 ) ? 2'b00 : fifo_dout_i[65:64];// RD_CLK SH
     assign  CC_RX_DATA_OUT          =  ( hold_reg == 0 ) ? 'h0 : fifo_dout_i[63:0]; // RD_CLK RX_DATA


     always @(posedge RD_CLK)
     begin
      if(CBCC_ONLY_RESET_RD_CLK) begin
        hold_reg   <= `DLY 1'b0;
      end
      else if (do_rd_en) begin
        hold_reg   <= `DLY 1'b1;
      end 
     end

     assign  ch_bond_comb            =  {cc_datavalid_mask_i, 1'b0, rxdatavalid_lookahead_rdfifo, ch_bond_m};

     always @(posedge RD_CLK)
     begin
          if(CBCC_RESET_CBSTG2_RD_CLK)
                      CHBONDO       <=  `DLY 5'b0;
          else if(CH_BOND_MODE==2'b00)
                      CHBONDO       <=  `DLY 5'b0;
          else
                      CHBONDO       <=  `DLY i_am_slave ? 5'b0 : ch_bond_comb;
     end

     assign ch_bond_c = i_am_slave?CHBONDI[1:0]:2'b0;

     //------------------------------channel bonding---------------------------------------
     generate
     if(CH_BOND_MODE==2'b01)
     begin:master
aurora_64b66b_pcs_pma_CH_BOND_MASTER #(
                                   .CHAN_BOND_MODE (CH_BOND_MODE),
                                   .CHAN_BOND_MAX_SKEW(CH_BOND_MAX_SKEW)
                                 )
                 master          (
                                   .enchansync  (enchansync_dlyd_i),
                                   .CB_enb_stop (CB_enb_stop),
                                   .CB_enb_stop_dlyd (CB_flag_dlyd1),
                                   .CB_align_ver(CB_align_ver),
                                   .ch_bond_m   (ch_bond_m),
                                   .rxchanisaligned(rxchanisaligned_i),
                                   .hold_rd_ptr (hold_rd_ptr_i),
                                   .rd_clk      (RD_CLK),
                                   .overflow_rd_clk(overflow_flag_sync_r_r),
                                   .underflow_rd_clk(underflow_flag_c),
                                   .reset       (CBCC_RESET_CBSTG2_RD_CLK),
                                   .rxdatavalid(rxdatavalid_i),
                                   .rxdatavalid_lookahead(rxdatavalid_lookahead_rdfifo)
                                  );

     end
     else if(CH_BOND_MODE==2'b10)
     begin:slave
aurora_64b66b_pcs_pma_CH_BOND_SLAVE  #(
                                  .CHAN_BOND_MODE(CH_BOND_MODE),
                                  .CHAN_BOND_MAX_SKEW(CH_BOND_MAX_SKEW)

                                )
                slave           (
                                  .ch_bond_c  (ch_bond_c),
                                  .rd_clk     (RD_CLK),
                                  .CB_enb_stop (CB_enb_stop),
                                  .CB_enb_stop_dlyd (CB_flag_dlyd1),
                                  .CB_align_ver(CB_align_ver),
                                  .enchansync(enchansync_dlyd_i),
                                  .underflow_rd_clk(underflow_flag_c),
                                  .hold_rd_ptr(hold_rd_ptr_i),
                                  .rxchanisaligned(rxchanisaligned_i),
                                  .reset       (CBCC_RESET_CBSTG2_RD_CLK),
                                  .overflow_rd_clk(overflow_flag_sync_r_r),
                                  .rxdatavalid(rxdatavalid_i),
                                  .rxdatavalid_lookahead(rxdatavalid_lookahead_rdfifo)
                                );
     assign ch_bond_m = 2'b00;
     end
     else
     assign ch_bond_m = 2'b00;
     endgenerate

 endmodule



 //################################# Module for mater GTX .these send signals to slaves through 'ch_bond_m'############################

 module aurora_64b66b_pcs_pma_CH_BOND_MASTER #
 (
   parameter CHAN_BOND_MODE=2'b01,
   parameter CHAN_BOND_MAX_SKEW=2'b10
 )
 (
   enchansync,
   CB_enb_stop,
   CB_enb_stop_dlyd,
   CB_align_ver,
   ch_bond_m,
   rxchanisaligned,
   underflow_rd_clk,
   hold_rd_ptr,
   rd_clk,
   overflow_rd_clk,
   reset,
   rxdatavalid,
   rxdatavalid_lookahead
 );

     input enchansync;
     input CB_enb_stop;
     input CB_enb_stop_dlyd;
     input CB_align_ver;
     input rd_clk;
     input reset;
     input overflow_rd_clk;
     input underflow_rd_clk;
     input rxdatavalid;
     input rxdatavalid_lookahead;

     output [1:0]ch_bond_m;
     output hold_rd_ptr;
     output rxchanisaligned;

     reg rxchanisaligned;
     reg hold_rd_ptr;
     reg alignment_done_r;
     reg [2:0]count_maxskew_load;
     reg [2:0]cb_rxdatavalid_cnt;

     wire CB_enb_stop_dlyd5;

     // Assign read pointer control based on channel bond mode and enchansync and channel bond detect
     wire i_am_master= CHAN_BOND_MODE[0];

     // Master is always aligned when it detects CB
     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                      rxchanisaligned <=  `DLY 1'b0;
           else if(overflow_rd_clk)
                      rxchanisaligned <=  `DLY 1'b0;
           else if(underflow_rd_clk)
                      rxchanisaligned <=  `DLY 1'b0;
           else
                      rxchanisaligned <=  `DLY 1'b1;
     end

     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                      alignment_done_r   <=  `DLY 1'b0;
           else if (count_maxskew_load ==CHAN_BOND_MAX_SKEW+2)
                      alignment_done_r   <=  `DLY 1'b1;
           else if(!enchansync)
                      alignment_done_r   <=  `DLY 1'b0;
     end

     // Delay CB_enb_stop signal by 5 cycles to account for delayed CB data
     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                   cb_rxdatavalid_cnt <=  `DLY 3'b000;
           else if(CB_enb_stop & !rxdatavalid_lookahead & enchansync)
                   cb_rxdatavalid_cnt <=  `DLY 3'b110;
           else if(CB_enb_stop_dlyd & !rxdatavalid & enchansync)
                   cb_rxdatavalid_cnt <=  `DLY 3'b110;
           else if(CB_enb_stop & enchansync)
                   cb_rxdatavalid_cnt <=  `DLY 3'b111;
           else if((cb_rxdatavalid_cnt==7) && !rxdatavalid_lookahead)
                   cb_rxdatavalid_cnt <=  `DLY cb_rxdatavalid_cnt - 2;
           else if((cb_rxdatavalid_cnt>1) && rxdatavalid)
                   cb_rxdatavalid_cnt <=  `DLY cb_rxdatavalid_cnt - 1;
           else if((cb_rxdatavalid_cnt>4) && !rxdatavalid)
                   cb_rxdatavalid_cnt <=  `DLY cb_rxdatavalid_cnt - 2;
           else if((cb_rxdatavalid_cnt==4) && !rxdatavalid)
                   cb_rxdatavalid_cnt <=  `DLY cb_rxdatavalid_cnt - 1;
           else
                   cb_rxdatavalid_cnt <=  `DLY 3'b000;
     end

     assign CB_enb_stop_dlyd5 = (cb_rxdatavalid_cnt==3)?1'b1:1'b0;

     // Master will wait for MAX_SKEW cycles in CB state allowing all slaves to get into sync.
     // Slave's stoppage is dictated by master through master_align_done port
     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                      count_maxskew_load <=  `DLY 3'b0;
           else if(CB_enb_stop_dlyd5 & enchansync & !alignment_done_r)
                      count_maxskew_load <=  `DLY CHAN_BOND_MAX_SKEW+2 ;
           else if(count_maxskew_load>0)
                      count_maxskew_load <=  `DLY count_maxskew_load -1;
           else
                      count_maxskew_load <=  `DLY 3'b0;
     end

     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                     hold_rd_ptr        <=  `DLY 1'b0;
           else if(CB_enb_stop_dlyd5 & enchansync & !alignment_done_r)
                     hold_rd_ptr        <=  `DLY 1'b1;
           else if(count_maxskew_load<=CHAN_BOND_MAX_SKEW+2 & count_maxskew_load>0)
                     hold_rd_ptr        <=  `DLY 1'b1;
           else
                     hold_rd_ptr        <=  `DLY 1'b0;
     end

     // Generate channel bonding stop enabler for slave. This accounts for one cycle latency in CHBONDO
     // pipelining. This muxing logic indicates when slave's read pointer should stop
     wire  master_align_done = (count_maxskew_load==CHAN_BOND_MAX_SKEW)?1'b1:1'b0;

     // master_detect_cb is used for alignent verification after channel bonding
     wire  master_detect_cb = CB_align_ver & !enchansync;

     // ch_bond_m decode:
     // Bit field             Inference
     // [1:0] ch_bond_m
     // 0   0                 No operation
     // 0   1                 Master detect CB:used for alignment verification
     // 1   0                 Read FIFO CB: Master
     // 1   1                 Master alignment is done
     // Based on the decoded value, slave will compare its CB_detect signal. Master will send the alignment opearation indicator
     // to let slave know when to stop the operation. Master CB_detect will act as alignment verifier
     // Qualify CB_enb_stop wrt enchansync signal
     // finally send ch_bond_m status to slave
     wire   CB_enb_stop_i = CB_enb_stop & enchansync & !alignment_done_r;

     assign ch_bond_m = master_align_done?2'b11:master_detect_cb?2'b01:CB_enb_stop_i?2'b10:2'b00;

 endmodule


 //########################################Module for slave GTX .Master sends aligned status through CHBONDI port######################################


 module aurora_64b66b_pcs_pma_CH_BOND_SLAVE #
 (
   parameter CHAN_BOND_MODE =2'b10,
   parameter CHAN_BOND_MAX_SKEW=2'b10
 )
 (
   ch_bond_c,
   rd_clk,
   CB_enb_stop,
   CB_enb_stop_dlyd,
   CB_align_ver,
   enchansync,
   hold_rd_ptr,
   rxchanisaligned,
   reset,
   overflow_rd_clk,
   underflow_rd_clk,
   rxdatavalid,
   rxdatavalid_lookahead
 );



     input [1:0]ch_bond_c;
     input CB_enb_stop;
     input CB_enb_stop_dlyd;
     input CB_align_ver;
     input enchansync;
     input rd_clk;
     input reset;
     input overflow_rd_clk;
     input underflow_rd_clk;
     input rxdatavalid;
     input rxdatavalid_lookahead;

     output rxchanisaligned;
     output hold_rd_ptr;

     reg  rxchanisaligned;
     reg  hold_rd_ptr;

     wire master_cb_detect;
     wire master_cb_stagger;
     wire master_cb_av;
     wire CB_enb_stop_dlyd5;
     wire enb_load_stagger;
     wire master_ack_wait;

     reg  master_stop_prev_cb_r;
     reg  master_stop_next_cb_r;
     reg  slave_stop_cb_r;
     reg  CB_av_s_r;
     reg  [1:0]master_ack_cnt;
     reg  [2:0]cb_rxdatavalid_cnt;

     // Decode the ch_bond_c bus
     // [1:0]   ch_bond_c
     // 0   0   No op
     // 0   1   Master CB detect used for alignment verification
     // 1   0   Master CB for Enabling load  in slave
     // 1   1   Master CB alignement done
     assign master_cb_detect  = (ch_bond_c==2'b01)?1'b1:1'b0;
     assign master_cb_stagger = (ch_bond_c==2'b11)?1'b1:1'b0;
     assign master_cb_av      = (ch_bond_c==2'b10)?1'b1:1'b0;

     // Register the CB detect of Slave. Since Master's chbondo is pipelined,
     // comparison is done only after registering
     // CB_enb_stop is registered to check for Alignment Verification.
     // Once channel is bonded, CB on read side of the FIFO should
     // come simultaneously.
     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                    CB_av_s_r <=  `DLY 1'b0;
           else
                    CB_av_s_r <=  `DLY (CB_align_ver & !enchansync);
     end

     // rxchanisaligned is assigned when
     // --Asserted when Channel is bonded wrt Master
     // --Deasserted when CBs don't match after bonding
     // --Deasserted when underflow or overflow
     always@(posedge rd_clk or posedge reset)
     begin
           if(reset)
                    rxchanisaligned <=  `DLY 1'b0;
           else if(underflow_rd_clk)
                    rxchanisaligned <=  `DLY 1'b0;
           else if(hold_rd_ptr)
                    rxchanisaligned <=  `DLY 1'b1;
           else if(master_cb_detect & !CB_av_s_r)
                    rxchanisaligned <=  `DLY 1'b0;
     end

     // Hold_rd_ptr will disable write to FIFO.Slave should deassert this signal
     // synchrounously with Master. This is ensured by Master's wait window
     always@(posedge rd_clk or posedge reset)
     begin
           if(reset)
                    hold_rd_ptr     <=  `DLY 1'b0;
           else if(CB_enb_stop_dlyd5 & (master_stop_prev_cb_r | master_stop_next_cb_r) & enchansync)
                    hold_rd_ptr     <=  `DLY 1'b1;
           else if(enb_load_stagger)
                    hold_rd_ptr     <=  `DLY 1'b1;
           else
                    hold_rd_ptr     <=  `DLY 1'b0;
     end

     // Delay CB_enb_stop signal by 5 cycles to account for delayed CB data
     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                   cb_rxdatavalid_cnt <=  `DLY 3'b000;
           else if(CB_enb_stop & !rxdatavalid_lookahead)
                   cb_rxdatavalid_cnt <=  `DLY 3'b110;
           else if(CB_enb_stop_dlyd & !rxdatavalid & enchansync)
                   cb_rxdatavalid_cnt <=  `DLY 3'b110;
           else if(CB_enb_stop)
                   cb_rxdatavalid_cnt <=  `DLY 3'b111;
           else if((cb_rxdatavalid_cnt==7) && !rxdatavalid_lookahead)
                   cb_rxdatavalid_cnt <=  `DLY cb_rxdatavalid_cnt - 2;
           else if((cb_rxdatavalid_cnt>1) && rxdatavalid)
                   cb_rxdatavalid_cnt <=  `DLY cb_rxdatavalid_cnt - 1;
           else if((cb_rxdatavalid_cnt>4) && !rxdatavalid)
                   cb_rxdatavalid_cnt <=  `DLY cb_rxdatavalid_cnt - 2;
           else if((cb_rxdatavalid_cnt==4) && !rxdatavalid)
                   cb_rxdatavalid_cnt <=  `DLY cb_rxdatavalid_cnt - 1;
           else
                   cb_rxdatavalid_cnt <=  `DLY 3'b000;
     end

     assign CB_enb_stop_dlyd5 = (cb_rxdatavalid_cnt==3)?1'b1:1'b0;

     // Following sequential logic accounts for Master detecting channel
     // bonding sequence before slave
     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                    master_stop_prev_cb_r <=  `DLY 1'b0;
           else if(master_cb_av & enchansync)
                    master_stop_prev_cb_r <=  `DLY 1'b1;
           else if(master_cb_stagger)
                    master_stop_prev_cb_r <=  `DLY 1'b0;
     end

     // This portion of sequential logic accounts for channel bonding sequence
     // in Master appearing after slave's sequence.
     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                    master_stop_next_cb_r <=  `DLY 1'b0;
           else if(master_cb_av & master_ack_wait & enchansync)
                    master_stop_next_cb_r <=  `DLY 1'b1;
           else if(master_cb_stagger)
                    master_stop_next_cb_r <=  `DLY 1'b0;
     end

     // Increment a counter whenever CB is detected in slave
     // This counter is implemented to ensure Master's indication
     // of CB detection arrives within 3 clocks after slave's CB detection
     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                    master_ack_cnt  <=  `DLY 2'b11;
           else if(CB_enb_stop & enchansync)
                    master_ack_cnt  <=  `DLY 2'b00;
           else if(master_ack_cnt <2'b11)
                    master_ack_cnt  <=  `DLY master_ack_cnt+1;
     end

     assign master_ack_wait = ((master_ack_cnt>=0) && (master_ack_cnt <3)) ? 1'b1:1'b0;

     always @(posedge rd_clk or posedge reset)
     begin
           if(reset)
                    slave_stop_cb_r  <=  `DLY 1'b0;
           else if(CB_enb_stop_dlyd5 & (master_stop_prev_cb_r | master_stop_next_cb_r) & enchansync)
                    slave_stop_cb_r  <=  `DLY 1'b1;
           else if(slave_stop_cb_r & (master_stop_prev_cb_r | master_stop_next_cb_r) & enchansync)
                    slave_stop_cb_r  <=  `DLY 1'b1;
           else
                    slave_stop_cb_r  <=  `DLY 1'b0;
     end

     // Qualify the enchansync in the Slave Logic also. Once Channel is bonded,
     // Deassertion of enchansync will stop overflow
     assign enb_load_stagger =  (master_stop_prev_cb_r | master_stop_next_cb_r) & slave_stop_cb_r ;

 endmodule

