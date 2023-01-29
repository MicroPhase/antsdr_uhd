 ///////////////////////////////////////////////////////////////////////////////
 // (c) Copyright 2010 Xilinx, Inc. All rights reserved.
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
 //  AXI_TO_LL
 //
 //
 //  Description: This light wrapper/shim convertes Legacy LocalLink interface
 //               signals from AXI-4 Stream protocol signals
 //
 //
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns/1 ps

   (* core_generation_info = "aurora_64b66b_pcs_pma,aurora_64b66b_v12_0_0,{c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=10.3125,c_gt_type=gtx,c_qpll=true,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=156.25,c_simplex=false,c_simplex_mode=TX,c_stream=true,c_ufc=false,c_user_k=false,flow_mode=None,interface_mode=Streaming,dataflow_config=Duplex}" *) 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_AXI_TO_LL #
 (
     parameter            DATA_WIDTH         = 16, // DATA bus width
     parameter            STRB_WIDTH         = 2, // STROBE bus width
     parameter            BC                 =  DATA_WIDTH>>3, //Byte count
     parameter            USE_4_NFC          = 0, // 0 => PDU, 1 => NFC, 2 => UFC and 3 => USER K

     parameter            REM_WIDTH          = 1 // REM bus width
 )
 (
 
     // AXI4-S input signals
     AXI4_S_IP_TX_TVALID,
     AXI4_S_IP_TX_TREADY,
     AXI4_S_IP_TX_TDATA,
     AXI4_S_IP_TX_TKEEP,
     AXI4_S_IP_TX_TLAST,
 
     // LocalLink output Interface
     LL_OP_DATA,
     LL_OP_SOF_N,
     LL_OP_EOF_N,
     LL_OP_REM,
     LL_OP_SRC_RDY_N,
     LL_IP_DST_RDY_N,
 
     // System Interface
     USER_CLK,
     CHANNEL_UP
 
 );
 
 `define DLY #1
 
 //***********************************Port Declarations*******************************
 
     // AXI4-Stream Interface
    input   [(DATA_WIDTH-1):0]     AXI4_S_IP_TX_TDATA;
    input   [(STRB_WIDTH-1):0]     AXI4_S_IP_TX_TKEEP;
     input                          AXI4_S_IP_TX_TVALID;
     input                          AXI4_S_IP_TX_TLAST;
     output                         AXI4_S_IP_TX_TREADY;
 
     // LocalLink TX Interface
     output    [0:(DATA_WIDTH-1)]   LL_OP_DATA;
     output    [0:(REM_WIDTH-1)]    LL_OP_REM;
     output                         LL_OP_SRC_RDY_N;
     output                         LL_OP_SOF_N;
     output                         LL_OP_EOF_N;
     input                          LL_IP_DST_RDY_N;
 
     // System Interface
     input                          USER_CLK;
     input                          CHANNEL_UP;
  
     reg [0:(REM_WIDTH-1)]    LL_OP_REM;
     reg [(STRB_WIDTH-1):0] i;
     reg found_rem = 1'b0;
     reg                            new_pkt_r;
 
     wire                           new_pkt;
   wire   [0:(STRB_WIDTH-1)]     AXI4_S_IP_TX_TKEEP_i;
 
 //*********************************Main Body of Code**********************************
 
    assign AXI4_S_IP_TX_TREADY = !LL_IP_DST_RDY_N;
generate
if(USE_4_NFC==0)
begin
  genvar i;
  for (i=0; i<BC; i=i+1) begin: pdu
    assign LL_OP_DATA[((BC-1-i)*8):((BC-1-i)*8)+7] = AXI4_S_IP_TX_TDATA[((BC-1-i)*8)+7:((BC-1-i)*8)];
end
end
endgenerate






generate
if(USE_4_NFC==2)
begin
  genvar j;
  for (j=0; j<STRB_WIDTH; j=j+1) begin: strb_ufc
    assign AXI4_S_IP_TX_TKEEP_i[j] = AXI4_S_IP_TX_TKEEP[(STRB_WIDTH-1)-j];
end
end
endgenerate

generate
if(USE_4_NFC==0)
begin
  genvar k;
  for (k=0; k<STRB_WIDTH; k=k+1) begin: strb_pdu
    assign AXI4_S_IP_TX_TKEEP_i[k] = AXI4_S_IP_TX_TKEEP[k];
end
end
endgenerate



    assign LL_OP_SRC_RDY_N = !AXI4_S_IP_TX_TVALID;
    assign LL_OP_EOF_N = !AXI4_S_IP_TX_TLAST;
 
 


generate
if(USE_4_NFC==0)
begin
  always @ (found_rem or AXI4_S_IP_TX_TKEEP_i)
  begin
    found_rem = 1'b0;
    LL_OP_REM = {(STRB_WIDTH-1){1'b0}};
    for (i = 0; i < STRB_WIDTH; i = i + 1) begin
      if ((AXI4_S_IP_TX_TKEEP_i[i] == 1'b0) && (found_rem == 1'b0)) begin
         LL_OP_REM = i;
         found_rem = 1'b1;
      end
    end
  end
end 
endgenerate

    assign new_pkt = ( AXI4_S_IP_TX_TVALID && AXI4_S_IP_TX_TREADY && AXI4_S_IP_TX_TLAST ) ? 1'b0 : ((AXI4_S_IP_TX_TVALID && AXI4_S_IP_TX_TREADY && !AXI4_S_IP_TX_TLAST ) ? 1'b1 : new_pkt_r);
    
    assign LL_OP_SOF_N  = ~ ( ( AXI4_S_IP_TX_TVALID && AXI4_S_IP_TX_TREADY && AXI4_S_IP_TX_TLAST ) ? ((new_pkt_r) ? 1'b0 : 1'b1) : (new_pkt && (!new_pkt_r)));
 
 always @ (posedge USER_CLK)
 begin
   if(!CHANNEL_UP)
     new_pkt_r <= `DLY 1'b0;
   else
     new_pkt_r <= `DLY new_pkt;
 end
 
 endmodule
