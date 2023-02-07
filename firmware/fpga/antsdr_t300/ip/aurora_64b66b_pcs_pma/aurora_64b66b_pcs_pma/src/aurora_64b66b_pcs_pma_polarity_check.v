 ///////////////////////////////////////////////////////////////////////////////
 //
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

 //
 //
 ////////////////////////////////////////////////////////////////////////////////
 // Company: Xilinx
// Engineer: Manas Anant Savkoor (MAS)
// 
// Create Date: 05/26/2017 05:58:28 PM
// Design Name: 
// Module Name: aurora_POLARITY_CHECK
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
`timescale 1 ps / 1 ps
`define DLY #5
   (* core_generation_info = "aurora_64b66b_pcs_pma,aurora_64b66b_v12_0_0,{c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=10.3125,c_gt_type=gtx,c_qpll=true,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=156.25,c_simplex=false,c_simplex_mode=TX,c_stream=true,c_ufc=false,c_user_k=false,flow_mode=None,interface_mode=Streaming,dataflow_config=Duplex}" *)
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_POLARITY_CHECK #
(

    parameter SIZE = 5,
    parameter SEQ_COUNT = 4,
    parameter INTER_CB_GAP = 15,
    parameter NO_CB_ST = 5'b00001, CB_ST = 5'b00010, IDLE_ST = 5'b00100, INV_IDLE_ST = 5'b01000, NO_POL_ST = 5'b10000,
    parameter CB_BTF = 16'h7840,
    parameter IDLE_BTF = 16'h7810,
    parameter INV_CB_BTF = 16'h87BF,
    parameter INV_IDLE_BTF = 16'h87EF  

)
(
// -----------------------------------------------&&&&&&&
INPOLARITY_IN,                   
HLD_POLARITY_OUT,                  
POLARITY_VAL_OUT,                 
RXHEADER_IN,                   
RXHEADERVALID_IN,             
RXDATA_IN,                     
RXDATAVALID_IN,              
USER_CLK,                      
RESET                         
// -----------------------------------------------&&&&&&&
);

// -----------------------------------------------&&&&&&&
 input         INPOLARITY_IN;                   
 output        HLD_POLARITY_OUT;                  
 output        POLARITY_VAL_OUT;                 
 input  [ 1:0] RXHEADER_IN;                   
 input         RXHEADERVALID_IN;             
 input  [31:0] RXDATA_IN;                     
 input         RXDATAVALID_IN;              
 input         USER_CLK;                      
 input         RESET; 
// -----------------------------------------------&&&&&&&
// -----------------------------------------------&&&&&&&

    wire           POLARITY_IN = INPOLARITY_IN; // Assignment and declaration due to Ver 2001
    reg [SIZE-1:0] pol_state;
    reg [SIZE-1:0] nxt_pol_state;

   (* shift_extract = "{no}" *) reg        HLD_POLARITY_OUT;
    reg [31:0] prv_RXDATA_IN;
    reg [1:0]  prv_RXHEADER_IN;

    reg       reset_r;
    reg       cur_polarity;

    reg [7:0] pol_count;
    reg [7:0] inv_pol_count;

    reg [0:0] pol_count_r;
    reg [0:0] pol_count_r2;
    reg [0:0] pol_count_r3;
    reg [0:0] pol_count_r4;

    reg [7:0] idl_count;
    reg [7:0] inv_idl_count;

    reg [0:0] idl_count_r;
    wire      idl_count_i;
    wire      idl_count_j; // posedge
    reg [0:0] inv_idl_count_r;
    wire      inv_idl_count_i;
    wire      inv_idl_count_j; // posedge

// -----------------------------------------------&&&&&&&
// -----------------------------------------------&&&&&&&

    always @(posedge USER_CLK)
    begin
      HLD_POLARITY_OUT <= ((pol_state != NO_POL_ST) & !(pol_count_r | pol_count_r2 | pol_count_r3 | pol_count_r4));
    end

    assign POLARITY_VAL_OUT = cur_polarity;
     

    // Variables for use
    always @(posedge USER_CLK)
          reset_r <= `DLY !RESET;

    always @(posedge USER_CLK)
      if ( reset_r)
          prv_RXDATA_IN <= `DLY 32'h0;
      else   
          prv_RXDATA_IN <= `DLY RXDATA_IN;

    always @(posedge USER_CLK)
      if ( reset_r)
          prv_RXHEADER_IN <= `DLY 2'h0;
      else   
          prv_RXHEADER_IN <= `DLY RXHEADER_IN;

    always @(posedge USER_CLK)
      if ( reset_r)
          cur_polarity <= `DLY 1'h0;
      // Add lane init fsm's polarity as gater
      else if (!cur_polarity && (inv_pol_count == SEQ_COUNT))  
          cur_polarity <= `DLY 1'b1;
      else   
          cur_polarity <= `DLY cur_polarity;

    // SEQUENCE COUNTERS
    always @(posedge USER_CLK)
      if ( reset_r)
          pol_count <= `DLY 8'h0;
      else if (pol_state == INV_IDLE_ST)  
          pol_count <= `DLY 8'h0;
      else if (pol_count == SEQ_COUNT)  
          pol_count <= `DLY 8'h0;
      else if ((pol_state == IDLE_ST) && idl_count_j)  
          pol_count <= `DLY pol_count + 1'b1;
      else   
          pol_count <= `DLY pol_count;

    always @(posedge USER_CLK)
      if ( reset_r)
          inv_pol_count <= `DLY 8'h0;
      else if (pol_state == IDLE_ST)  
          inv_pol_count <= `DLY 8'h0;
      else if (inv_pol_count == SEQ_COUNT)  
          inv_pol_count <= `DLY 8'h0;
      else if ((pol_state == INV_IDLE_ST) && inv_idl_count_j)  
          inv_pol_count <= `DLY inv_pol_count + 1'b1;
      else   
          inv_pol_count <= `DLY inv_pol_count;

    // INTRA-SEQUENCE COUNTERS

    // MAS - Check spillover 
    always @(posedge USER_CLK)
      if ( reset_r || (idl_count > INTER_CB_GAP))
          idl_count <= `DLY 8'h0;
      else if ((pol_state == IDLE_ST) && ((RXHEADER_IN == 2'b10) && (RXDATA_IN[31:16] == IDLE_BTF) && (|RXDATA_IN[15:0] == 1'b0)))  
          idl_count <= `DLY idl_count + 1'b1;
      else if (pol_state != IDLE_ST)  
          idl_count <= `DLY 8'h0;

    assign idl_count_i = (idl_count == INTER_CB_GAP);
    assign idl_count_j = idl_count_i & !idl_count_r;

    always @(posedge USER_CLK)
      if ( reset_r)
          idl_count_r <= `DLY 1'h0;
      else   
          idl_count_r <= `DLY idl_count_i;

    always @(posedge USER_CLK)
      if ( reset_r || (inv_idl_count > INTER_CB_GAP))
          inv_idl_count <= `DLY 8'h0;
      else if ((pol_state == INV_IDLE_ST) && ((RXHEADER_IN == 2'b01) && (RXDATA_IN[31:16] == INV_IDLE_BTF) && (&RXDATA_IN[15:0] == 1'b1)))  
          inv_idl_count <= `DLY inv_idl_count + 1'b1;
      else if (pol_state != INV_IDLE_ST)  
          inv_idl_count <= `DLY 8'h0;

    assign inv_idl_count_i = (inv_idl_count == INTER_CB_GAP);
    assign inv_idl_count_j = inv_idl_count_i & !inv_idl_count_r;

    always @(posedge USER_CLK)
      if ( reset_r)
          inv_idl_count_r <= `DLY 1'h0;
      else   
          inv_idl_count_r <= `DLY inv_idl_count_i;

    // Done Pulse extension circuit  
    always @(posedge USER_CLK)
      if ( reset_r)
          pol_count_r <= `DLY 1'b0;
      else if (pol_count == SEQ_COUNT)   
          pol_count_r <= `DLY 1'b1;
      else if (pol_count != SEQ_COUNT)   
          pol_count_r <= `DLY 1'b0;

    always @(posedge USER_CLK)
      if ( reset_r)
          pol_count_r2 <= `DLY 1'b0;
      else   
          pol_count_r2 <= `DLY pol_count_r;

    always @(posedge USER_CLK)
      if ( reset_r)
          pol_count_r3 <= `DLY 1'b0;
      else   
          pol_count_r3 <= `DLY pol_count_r2;

    always @(posedge USER_CLK)
      if ( reset_r)
          pol_count_r4 <= `DLY 1'b0;
      else   
          pol_count_r4 <= `DLY pol_count_r3;

    // FSM implementation  
    always @(posedge USER_CLK)
      if ( reset_r)
          pol_state <= `DLY NO_POL_ST;
      else if (RXDATAVALID_IN)   
          pol_state <= `DLY nxt_pol_state;

     always @(*)
     begin
       nxt_pol_state = NO_POL_ST;  
       if ( reset_r)
           nxt_pol_state = NO_POL_ST;
       else
         case (pol_state)
           NO_CB_ST:
               if (POLARITY_IN)
                   nxt_pol_state = CB_ST;
               // Below 2 only for GTH
               else if (POLARITY_IN && (RXHEADER_IN == 2'b10) && (RXDATA_IN[31:16] == CB_BTF) && (|RXDATA_IN[15:0] == 1'b0))
                   nxt_pol_state = CB_ST;
               else if (POLARITY_IN && (RXHEADER_IN == 2'b01) && (RXDATA_IN[31:16] == INV_CB_BTF) && (&RXDATA_IN[15:0] == 1'b1))
                   nxt_pol_state = CB_ST;
               else
                   nxt_pol_state = NO_CB_ST;
           CB_ST:

               // PASS CONDITION
               if (pol_count == SEQ_COUNT)
                   nxt_pol_state = NO_POL_ST;
               // Fail condition
               else if (cur_polarity && (RXHEADER_IN == 2'b01) && (RXDATA_IN[31:16] == INV_CB_BTF) && (&RXDATA_IN[15:0] == 1'b1))
                   nxt_pol_state = NO_CB_ST;

               // Check 
               else if ((RXHEADER_IN == 2'b10) && (RXDATA_IN[31:16] == CB_BTF) && (|RXDATA_IN[15:0] == 1'b0))
                   nxt_pol_state = CB_ST;
               else if ((RXHEADER_IN == 2'b01) && (RXDATA_IN[31:16] == INV_CB_BTF) && (&RXDATA_IN[15:0] == 1'b1))
                   nxt_pol_state = CB_ST;
               else if (((prv_RXHEADER_IN == 2'b10) && (prv_RXDATA_IN[31:16] == CB_BTF) && (|prv_RXDATA_IN[15:0] == 1'b0)) && ((RXHEADER_IN == 2'b10) && (|RXDATA_IN[31:0] == 1'b0)))
                   nxt_pol_state = IDLE_ST;
               else if (((prv_RXHEADER_IN == 2'b01) && (prv_RXDATA_IN[31:16] == INV_CB_BTF) && (&RXDATA_IN[15:0] == 1'b1)) && ((RXHEADER_IN == 2'b01) && (&RXDATA_IN[31:0] == 1'b1)))
                   nxt_pol_state = INV_IDLE_ST;
               else
                   nxt_pol_state = NO_CB_ST;

           IDLE_ST:
               // Fail condition
               if (cur_polarity && (RXHEADER_IN == 2'b01) && (RXDATA_IN[31:16] == INV_IDLE_BTF) && (&RXDATA_IN[15:0] == 1'b1))
                   nxt_pol_state = NO_CB_ST;

               // Exit 
               else if (pol_count == SEQ_COUNT)
                   nxt_pol_state = NO_POL_ST;
               else if (idl_count_j)
                   nxt_pol_state = CB_ST;

               // Check 
               else if ((RXHEADER_IN == 2'b10) && (RXDATA_IN[31:16] == IDLE_BTF) && (|RXDATA_IN[15:0] == 1'b0))
                   nxt_pol_state = IDLE_ST;
               else if (((prv_RXHEADER_IN == 2'b10) && (prv_RXDATA_IN[31:16] == IDLE_BTF) && (|prv_RXDATA_IN[15:0] == 1'b0)) && ((RXHEADER_IN == 2'b10) && (|RXDATA_IN[31:0] == 1'b0)))
                   nxt_pol_state = IDLE_ST;
               else if (((prv_RXHEADER_IN == 2'b10) && (|prv_RXDATA_IN[31:0] == 1'b0)) && ((RXHEADER_IN == 2'b10) && (RXDATA_IN[31:16] == IDLE_BTF) && (|RXDATA_IN[15:0] == 1'b0)))
                   nxt_pol_state = IDLE_ST;
               else
                   nxt_pol_state = NO_CB_ST;

           INV_IDLE_ST:
               // Fail condition
               if (cur_polarity && (RXHEADER_IN == 2'b01) && (RXDATA_IN[31:16] == INV_IDLE_BTF) && (&RXDATA_IN[15:0] == 1'b1))
                   nxt_pol_state = NO_CB_ST;

               // Exit 
               else if (inv_pol_count == SEQ_COUNT)
                   nxt_pol_state = CB_ST;
               else if (inv_idl_count_j)
                   nxt_pol_state = CB_ST;

               // Check 
               else if ((RXHEADER_IN == 2'b01) && (RXDATA_IN[31:16] == INV_IDLE_BTF) && (&RXDATA_IN[15:0] == 1'b1))
                   nxt_pol_state = INV_IDLE_ST;
               else if (((prv_RXHEADER_IN == 2'b01) && (prv_RXDATA_IN[31:16] == INV_IDLE_BTF) && (&RXDATA_IN[15:0] == 1'b1)) && ((RXHEADER_IN == 2'b01) && (&RXDATA_IN[31:0] == 1'b1)))
                   nxt_pol_state = INV_IDLE_ST;
               else if (((prv_RXHEADER_IN == 2'b01) && (&prv_RXDATA_IN[31:0] == 1'b1)) && ((RXHEADER_IN == 2'b01) && (RXDATA_IN[31:16] == INV_IDLE_BTF) && (&RXDATA_IN[15:0] == 1'b1)))
                   nxt_pol_state = INV_IDLE_ST;
               else
                   nxt_pol_state = NO_CB_ST;

           NO_POL_ST:
               if (POLARITY_IN)
                   nxt_pol_state = NO_CB_ST;
               else
                   nxt_pol_state = NO_POL_ST;

           default:
              nxt_pol_state = NO_POL_ST;
         endcase
     end

// -----------------------------------------------&&&&&&&

endmodule

