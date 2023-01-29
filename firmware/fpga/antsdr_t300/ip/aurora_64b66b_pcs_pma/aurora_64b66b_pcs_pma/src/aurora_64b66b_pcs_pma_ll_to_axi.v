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
 //  LL_TO_AXI
 //
 //
 //  Description: This light wrapper/shim convertes Legacy LocalLink interface
 //               signals to AXI-4 Stream protocol signals
 //
 //
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns/1 ps

   (* core_generation_info = "aurora_64b66b_pcs_pma,aurora_64b66b_v12_0_0,{c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=10.3125,c_gt_type=gtx,c_qpll=true,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=156.25,c_simplex=false,c_simplex_mode=TX,c_stream=true,c_ufc=false,c_user_k=false,flow_mode=None,interface_mode=Streaming,dataflow_config=Duplex}" *) 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_LL_TO_AXI #
 (
     parameter            DATA_WIDTH         = 16, // DATA bus width
     parameter            STRB_WIDTH         = 2, // STROBE bus width
     parameter            USE_UFC_REM        = 0, // UFC REM bus width identifier 
     parameter            BC                 =  DATA_WIDTH>>3, //Byte count
     parameter            REM_WIDTH          = 1 // REM bus width
     
 )
 (
 
     // LocalLink input Interface
     LL_IP_DATA,
     LL_IP_SOF_N,
     LL_IP_EOF_N,
     LL_IP_REM,
     LL_IP_SRC_RDY_N,
     LL_OP_DST_RDY_N,
 
     // AXI4-S output signals
     AXI4_S_OP_TVALID,
     AXI4_S_OP_TDATA,
     AXI4_S_OP_TKEEP,
     AXI4_S_OP_TLAST,
     AXI4_S_IP_TREADY
 
 );
 
 `define DLY #1
 
 //***********************************Port Declarations*******************************
 
     // AXI4-Stream TX Interface
     output     [(DATA_WIDTH-1):0]     AXI4_S_OP_TDATA;
     output     [(STRB_WIDTH-1):0]     AXI4_S_OP_TKEEP;
     output                            AXI4_S_OP_TVALID;
     output                            AXI4_S_OP_TLAST;
     input                             AXI4_S_IP_TREADY;
 
 
     // LocalLink TX Interface
     input      [0:(DATA_WIDTH-1)]     LL_IP_DATA;
     input      [0:(REM_WIDTH-1)]      LL_IP_REM;
     input                             LL_IP_SOF_N;
     input                             LL_IP_EOF_N;
     input                             LL_IP_SRC_RDY_N;
     output                            LL_OP_DST_RDY_N;

 wire   [0:(STRB_WIDTH-1)]     AXI4_S_OP_TKEEP_i;
 
 //*********************************Main Body of Code**********************************
 
generate
  genvar i;
  for (i=0; i<BC; i=i+1) begin: pdu
    assign AXI4_S_OP_TDATA[((BC-1-i)*8)+7:((BC-1-i)*8)] = LL_IP_DATA[((BC-1-i)*8):((BC-1-i)*8)+7];
  end
endgenerate

generate
  genvar j;
  for (j=0; j<STRB_WIDTH; j=j+1) begin: strb_pdu
    assign AXI4_S_OP_TKEEP[j] = AXI4_S_OP_TKEEP_i[j];
  end
endgenerate
    
    assign AXI4_S_OP_TVALID = !LL_IP_SRC_RDY_N;
    assign AXI4_S_OP_TLAST  = !LL_IP_EOF_N;
 
    assign AXI4_S_OP_TKEEP_i  = (LL_IP_REM == {REM_WIDTH{1'b0}})? ({STRB_WIDTH{1'b1}}) :
                              (~({STRB_WIDTH{1'b1}}>>(LL_IP_REM)));
 
    assign LL_OP_DST_RDY_N  = !AXI4_S_IP_TREADY;
 
 endmodule
