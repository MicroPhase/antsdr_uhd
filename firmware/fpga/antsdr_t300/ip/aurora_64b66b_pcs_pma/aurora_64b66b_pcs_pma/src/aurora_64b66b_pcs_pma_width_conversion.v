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
 // Width and clock rate converter
 //
 // Description: This module is used as a shim between the Aurora protocol and
 //              the gtx in the 64B66B protocol.It is required to convert data
 //              at 16 from gtx to 32 into the aurora. 
 /////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns / 10 ps
 
 module aurora_64b66b_pcs_pma_WIDTH_CONVERSION #
 (
     parameter INPUT_WIDTH =2,
     parameter OUTPUT_WIDTH=4
 )
 (
     //Output to the Aurora Protocol interface
     DATA_OUT,
 
     //Input from the GTX
 
     DATA_IN,
 
     // Sync header from GTX Interface
     HEADER_IN,
     DATAVALID_IN,
 
     // Sync header to Aurora  
     HEADER_OUT,
     DATAVALID_OUT,
     
     //Clock and reset 
     USER_CLK,
     ENABLE,
     RESET
 );
 
 
 `define DLY #1
 
 
 //***********************************Port Declarations*******************************
 
     input                         RESET;
     input                         USER_CLK;
     input                         ENABLE;
     input   [INPUT_WIDTH*8-1:0]   DATA_IN;
 
     output  [OUTPUT_WIDTH*8-1:0]  DATA_OUT;
     output  [1:0]                 HEADER_OUT;
     output                        DATAVALID_OUT;
 //*****************************MGT Interface**************************
     input   [1:0]                 HEADER_IN;
     input                         DATAVALID_IN;
 //*****************************External Register Declarations**************************
     reg     [OUTPUT_WIDTH*8-1:0]  DATA_OUT;
     reg     [1:0]                 HEADER_OUT;
 //*****************************Internal Register Declarations**************************
     reg     [INPUT_WIDTH*8-1:0]   data_in_r;
     reg     [INPUT_WIDTH*8-1:0]   data_in_r2;
     reg     [1:0]                 header_in_r;
     reg     [1:0]                 header_in_r2;
     reg                           datavalid_r;
     reg                           datavalid_r2;
     reg                           datavalid_neg_r;
     reg                           datavalid_pos_r;
     reg                           state;
 //*****************************Beginning of Code *************************
 
 
    always @(posedge USER_CLK)
     begin
            data_in_r     <= `DLY  DATA_IN;
            data_in_r2    <= `DLY  data_in_r;
            header_in_r   <= `DLY HEADER_IN;
            header_in_r2  <= `DLY header_in_r;
     end
     
     always @(posedge USER_CLK)
     begin
            datavalid_r   <=   `DLY DATAVALID_IN;
            datavalid_r2   <=   `DLY datavalid_r;
     end  
 
 
     always @(posedge USER_CLK)
     begin
          if(RESET)
                  state <= `DLY 1'b1;
          else if (ENABLE && datavalid_r2 && !datavalid_neg_r)
                  state <= `DLY 1'b0;
          else if (ENABLE && !datavalid_r2 && !datavalid_neg_r)
                  state <= `DLY 1'b1;
     end
 
  
     always @(posedge USER_CLK)
     if(ENABLE)
     begin
            datavalid_pos_r    <= `DLY datavalid_r;
     end
 
     always @(negedge USER_CLK)
     begin
            datavalid_neg_r  <= `DLY datavalid_r;
     end
    
 
     always @(posedge USER_CLK)
          if(RESET) DATA_OUT <= `DLY 32'b0;
          else if(ENABLE)
               begin                 
                   if(state)
                   DATA_OUT <= `DLY {data_in_r2,data_in_r};
                  else if(!state)
                   DATA_OUT <= `DLY {data_in_r,DATA_IN};
               end
 
     
     always @(posedge USER_CLK)
       if (RESET) HEADER_OUT <= `DLY 2'b0;
       else  if(ENABLE)
           begin
               if(!state)
                   HEADER_OUT            <= `DLY header_in_r;
               else if(state)
                   HEADER_OUT            <= `DLY header_in_r2;
           end
 
     assign DATAVALID_OUT = datavalid_pos_r;
 
 endmodule 
