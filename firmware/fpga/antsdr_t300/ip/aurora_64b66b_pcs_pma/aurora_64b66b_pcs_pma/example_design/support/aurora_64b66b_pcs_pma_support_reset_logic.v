 
 ///////////////////////////////////////////////////////////////////////////////
 // (c) Copyright 2008 Xilinx, Inc. All rights reserved.
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
 //  SUPPORT LEVEL AURORA RESET LOGIC
 //
 //
 //
 //  Description: Support level RESET logic generation using Debouncer
 //
 //         
 `timescale 1 ns / 1 ps

   (* core_generation_info = "aurora_64b66b_pcs_pma,aurora_64b66b_v12_0_0,{c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=10.3125,c_gt_type=gtx,c_qpll=true,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=156.25,c_simplex=false,c_simplex_mode=TX,c_stream=true,c_ufc=false,c_user_k=false,flow_mode=None,interface_mode=Streaming,dataflow_config=Duplex}" *) 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_SUPPORT_RESET_LOGIC
 (
     // User IO
     RESET,
     USER_CLK,
     INIT_CLK,
     GT_RESET_IN,
     SYSTEM_RESET,
     GT_RESET_OUT
 );
 
 `define DLY #1
 
 
 //***********************************Port Declarations*******************************
     // User I/O
       input              RESET; 
       input              USER_CLK; 
       input              INIT_CLK; 
       input              GT_RESET_IN; 
       output             SYSTEM_RESET; 
       output             GT_RESET_OUT; 
 
 //**************************Internal Register Declarations****************************
     reg             [0:3]      reset_debounce_r  = 4'h0; 
     reg                        SYSTEM_RESET = 1'b1; 
     reg                        gt_rst_r     = 1'b0; 
     reg     [19:0]  dly_gt_rst_r                     = 20'h00000;
(* ASYNC_REG = "true" *) (* shift_extract = "{no}" *) reg  [0:3]      debounce_gt_rst_r = 4'h0; 
     wire            gt_rst_sync;
 
 //*********************************Main Body of Code**********************************

//Reset sync from INIT_CLK to USER_CLK
 aurora_64b66b_pcs_pma_rst_sync_shared #
 (
     .c_mtbf_stages (5)
 )u_rst_sync_gt
 (
     .prmry_in     (gt_rst_r),
     .scndry_aclk  (USER_CLK),
     .scndry_out   (gt_rst_sync)
 );

 //_________________Debounce the Reset and PMA init signal___________________________
 // Simple Debouncer for Reset button. The debouncer has an
 // asynchronous reset tied to GT_RESET_IN. This is primarily for simulation, to ensure
 // that unknown values are not driven into the reset line
 
     always @(posedge USER_CLK )
         if(gt_rst_sync)
             reset_debounce_r    <=  4'b1111;    
         else
             reset_debounce_r    <=  {RESET,reset_debounce_r[0:2]}; 

     always @ (posedge USER_CLK)
       SYSTEM_RESET <= &reset_debounce_r;
 
 
 // Debounce the GT_RESET_IN signal using the INIT_CLK
     always @(posedge INIT_CLK)
         debounce_gt_rst_r <=  {GT_RESET_IN,debounce_gt_rst_r[0:2]};
 
      always @(posedge INIT_CLK)
        gt_rst_r        <=  `DLY &debounce_gt_rst_r;

 // Delay RESET assertion to GT.This will ensure all logic is reset first before GT is reset
      always @ (posedge INIT_CLK)
      begin
        dly_gt_rst_r <= `DLY {dly_gt_rst_r[18:0],gt_rst_r};
      end

     assign  GT_RESET_OUT    =   dly_gt_rst_r[18];
 
 endmodule

module aurora_64b66b_pcs_pma_rst_sync_shared
   # (
       parameter       c_init_val      = 1'b1,
       parameter [4:0] c_mtbf_stages   = 3    // Number of sync stages needed  max value 31
     )  
     (
       input                           prmry_in,
       input                           scndry_aclk,
       output                          scndry_out
      );

genvar i;



(* ASYNC_REG = "TRUE" *)(* shift_extract = "{no}"*)  reg  stg1_aurora_64b66b_pcs_pma_cdc_to = c_init_val;      
(* ASYNC_REG = "TRUE" *)(* shift_extract = "{no}"*)  reg  stg2 = c_init_val;      
(* ASYNC_REG = "TRUE" *)(* shift_extract = "{no}"*)  reg  stg3 = c_init_val;      

                        (* shift_extract = "{no}"*)  reg  stg4 = c_init_val;     
                        (* shift_extract = "{no}"*)  reg  stg5 = c_init_val;     
                        (* shift_extract = "{no}"*)  reg  stg6 = c_init_val;     
                        (* shift_extract = "{no}"*)  reg  stg7 = c_init_val;     
                        (* shift_extract = "{no}"*)  reg  stg8 = c_init_val;     
                        (* shift_extract = "{no}"*)  reg  stg9 = c_init_val;     
                        (* shift_extract = "{no}"*)  reg  stg10 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg11 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg12 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg13 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg14 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg15 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg16 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg17 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg18 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg19 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg20 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg21 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg22 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg23 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg24 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg25 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg26 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg27 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg28 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg29 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg30 = c_init_val;    
                        (* shift_extract = "{no}"*)  reg  stg31 = c_init_val;    

generate 

always @(posedge scndry_aclk)
begin
    stg1_aurora_64b66b_pcs_pma_cdc_to <= `DLY prmry_in;
    stg2 <= `DLY stg1_aurora_64b66b_pcs_pma_cdc_to;
    stg3 <= `DLY stg2;
    stg4 <= `DLY stg3;
    stg5 <= `DLY stg4;
    stg6 <= `DLY stg5;
    stg7 <= `DLY stg6;
    stg8 <= `DLY stg7;
    stg9 <= `DLY stg8;
    stg10 <= `DLY stg9;
    stg11 <= `DLY stg10; 
    stg12 <= `DLY stg11; 
    stg13 <= `DLY stg12; 
    stg14 <= `DLY stg13; 
    stg15 <= `DLY stg14; 
    stg16 <= `DLY stg15; 
    stg17 <= `DLY stg16; 
    stg18 <= `DLY stg17; 
    stg19 <= `DLY stg18; 
    stg20 <= `DLY stg19; 
    stg21 <= `DLY stg20; 
    stg22 <= `DLY stg21; 
    stg23 <= `DLY stg22; 
    stg24 <= `DLY stg23; 
    stg25 <= `DLY stg24; 
    stg26 <= `DLY stg25; 
    stg27 <= `DLY stg26; 
    stg28 <= `DLY stg27; 
    stg29 <= `DLY stg28; 
    stg30 <= `DLY stg29; 
    stg31 <= `DLY stg30; 
end

if(c_mtbf_stages <= 3)  assign scndry_out = stg3;
if(c_mtbf_stages == 4)  assign scndry_out = stg4;
if(c_mtbf_stages == 5)  assign scndry_out = stg5;
if(c_mtbf_stages == 6)  assign scndry_out = stg6;
if(c_mtbf_stages == 7)  assign scndry_out = stg7;
if(c_mtbf_stages == 8)  assign scndry_out = stg8;
if(c_mtbf_stages == 9)  assign scndry_out = stg9;
if(c_mtbf_stages == 10)  assign scndry_out = stg10;
if(c_mtbf_stages == 11)  assign scndry_out = stg11;
if(c_mtbf_stages == 12)  assign scndry_out = stg12;
if(c_mtbf_stages == 13)  assign scndry_out = stg13;
if(c_mtbf_stages == 14)  assign scndry_out = stg14;
if(c_mtbf_stages == 15)  assign scndry_out = stg15;
if(c_mtbf_stages == 16)  assign scndry_out = stg16;
if(c_mtbf_stages == 17)  assign scndry_out = stg17;
if(c_mtbf_stages == 18)  assign scndry_out = stg18;
if(c_mtbf_stages == 19)  assign scndry_out = stg19;
if(c_mtbf_stages == 20)  assign scndry_out = stg20;
if(c_mtbf_stages == 21)  assign scndry_out = stg21;
if(c_mtbf_stages == 22)  assign scndry_out = stg22;
if(c_mtbf_stages == 23)  assign scndry_out = stg23;
if(c_mtbf_stages == 24)  assign scndry_out = stg24;
if(c_mtbf_stages == 25)  assign scndry_out = stg25;
if(c_mtbf_stages == 26)  assign scndry_out = stg26;
if(c_mtbf_stages == 27)  assign scndry_out = stg27;
if(c_mtbf_stages == 28)  assign scndry_out = stg28;
if(c_mtbf_stages == 29)  assign scndry_out = stg29;
if(c_mtbf_stages == 30)  assign scndry_out = stg30;
if(c_mtbf_stages == 31)  assign scndry_out = stg31;

endgenerate

endmodule
