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
 //  AXI_TO_DRP
 //
 //
 //  Description: This light wrapper/shim convertes AXI4 Lite interface
 //               signals to DRP signals
 //
 //
 ///////////////////////////////////////////////////////////////////////////////
 
 `timescale 1 ns/1 ps

   (* core_generation_info = "aurora_64b66b_pcs_pma,aurora_64b66b_v12_0_0,{c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ0,c_gt_clock_2=None,c_gt_loc_1=1,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=10.3125,c_gt_type=gtx,c_qpll=true,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=156.25,c_simplex=false,c_simplex_mode=TX,c_stream=true,c_ufc=false,c_user_k=false,flow_mode=None,interface_mode=Streaming,dataflow_config=Duplex}" *) 
(* DowngradeIPIdentifiedWarnings="yes" *)
 module aurora_64b66b_pcs_pma_AXI_TO_DRP #
 (
     parameter            DATA_WIDTH         = 16,// DATA bus width
     parameter            INIT = 4'b0000,
     parameter            WRT1 = 4'b0001,
     parameter            WRT2 = 4'b0010,
     parameter            REDE = 4'b0100,
     parameter            WAIT = 4'b1000, 
     parameter            EROR = 4'b1111          // Reserved for future use
 )
 `define DLY #0.005
 (
 
     //-------------------- AXI4-Lite Interface -------------------------------
 
 
     //-------------------- Write Address Channel --------------------------
       input     [31:0]      S_AXI_AWADDR,
       input                 S_AXI_AWVALID, 
       output                S_AXI_AWREADY, 
     //-------------------- Write Data Channel -----------------------------
       input     [31:0]      S_AXI_WDATA,
       input     [3:0]       S_AXI_WSTRB,
       input                 S_AXI_WVALID, 
       output                S_AXI_WREADY, 
       output                S_AXI_BVALID, 
       output    [1:0]       S_AXI_BRESP, 
       input                 S_AXI_BREADY, 
     //-------------------- Read Address Channel ---------------------------
       input      [31:0]     S_AXI_ARADDR,
       input                 S_AXI_ARVALID, 
       output                S_AXI_ARREADY, 
     //-------------------- Read Data Channel -----------------------------
       output      [31:0]     S_AXI_RDATA,
       output                 S_AXI_RVALID, 
       output    [1:0]       S_AXI_RRESP, 
       input                  S_AXI_RREADY, 
 
    //---------------------- GT DRP Ports ----------------------
       output [8:0]   DRPADDR_IN,
       output [15:0]    DRPDI_IN,
       input  [15:0]    DRPDO_OUT, 
       input            DRPRDY_OUT, 
       output           DRPEN_IN, 
       output           DRPWE_IN, 
     // System Interface
     input                 DRP_CLK_IN,
     input                 RESET
 
 );

     //---- Declaration for registering of inputs and outputs  
 
     //-------------------- Write Address Channel --------------------------
       reg    [31:0]      s_axi_awaddr;
       reg                s_axi_awvalid; 
       reg                s_axi_awready; 
     //-------------------- Write Data Channel -----------------------------
       reg    [31:0]      s_axi_wdata;
       reg                s_axi_wvalid; 
       reg                s_axi_wready; 
       reg                s_axi_bvalid; 
       reg                s_axi_bready; 
     //-------------------- Read Address Channel ---------------------------
       reg     [31:0]     s_axi_araddr;
       reg                s_axi_arvalid; 
       reg                s_axi_arready; 
     //-------------------- Read Data Channel -----------------------------
       reg      [31:0]     s_axi_rdata;
       reg                 s_axi_rvalid; 
       reg                 s_axi_rready; 
 
    //---------------------- GT DRP Ports ----------------------
       reg [8:0]   drpaddr_in;
       reg [15:0]    drpdi_in;
       reg [15:0]    drpdo_out; 
       reg           drprdy_out; 
       reg           drpen_in; 
       reg           drpwe_in; 

       // System Interface
       wire               drp_clk;
       wire                reset;

       reg  [3:0]          AXI_STATE;
       reg                 ready_det;
       reg                 ready_det_r;
       reg                 tx_done;
       reg                 tx_done_r;
       wire                tx_done_neg;
       reg                 wr_req;
       reg                 rd_req;
       // ==== Logic begins ===

    assign drp_clk = DRP_CLK_IN; 

 aurora_64b66b_pcs_pma_rst_sync #
        (
            .c_init_val (1'b1),
            .c_mtbf_stages (5)
        )  u_rst_sync_RESET
        (
         .prmry_in     (RESET),
         .scndry_aclk  (drp_clk),
         .scndry_out   (reset)
        );

       // Input and output assignments...

    assign S_AXI_AWREADY = (((S_AXI_ARVALID) || (s_axi_arvalid)) || (AXI_STATE == WRT1) || (AXI_STATE == REDE))? 1'b0: s_axi_awready;

    always @(posedge drp_clk) 
    begin
        if (reset) begin
            s_axi_awaddr        <= `DLY 'h0;
        end
        else begin
          if (S_AXI_AWVALID) begin
            s_axi_awaddr        <= `DLY S_AXI_AWADDR;
          end
        end
    end

    always @(posedge drp_clk) 
    begin
        if (reset) begin
            s_axi_awvalid       <= `DLY 'h0;
        end
        else begin
            s_axi_awvalid       <= `DLY S_AXI_AWVALID;
        end
    end

    assign S_AXI_WREADY = s_axi_wready;
    
    always @(posedge drp_clk) 
    begin
        if (reset) begin
            s_axi_wdata        <= `DLY 'h0;
        end
        else begin
          if (S_AXI_WVALID) begin
            s_axi_wdata        <= `DLY S_AXI_WDATA;
          end
        end
    end

    always @(posedge drp_clk) 
    begin
        if (reset) begin
            s_axi_wvalid        <= `DLY 'h0;
            s_axi_bready        <= `DLY 'h0;
        end
        else begin
            s_axi_wvalid        <= `DLY S_AXI_WVALID;
            s_axi_bready        <= `DLY S_AXI_BREADY;
        end
    end

    assign  S_AXI_BVALID = tx_done_neg? 1'b0: s_axi_bvalid;

    assign  S_AXI_BRESP = 'd0;

    assign S_AXI_ARREADY = (((!(S_AXI_ARVALID) || !(s_axi_arvalid)) && (S_AXI_AWVALID)) || (AXI_STATE == WRT1) || (AXI_STATE == REDE))? 1'b0: s_axi_arready;

    always @(posedge drp_clk) 
    begin
        if (reset) begin
            s_axi_araddr        <= `DLY 'h0;
        end
        else begin
          if (S_AXI_ARVALID) begin
            s_axi_araddr        <= `DLY S_AXI_ARADDR;
          end
        end
    end

    always @(posedge drp_clk) 
    begin
        if (reset) begin
            s_axi_arvalid       <= `DLY 'h0;
        end
        else begin
            s_axi_arvalid       <= `DLY S_AXI_ARVALID;
        end
    end

    assign S_AXI_RDATA = s_axi_rdata ;

    assign  S_AXI_RVALID = tx_done_neg? 1'b0: s_axi_rvalid;

    assign  S_AXI_RRESP = 'd0;

    always @(posedge drp_clk) 
    begin
        if (reset) begin
            s_axi_rready        <= `DLY 'h0;
        end
        else begin
            s_axi_rready        <= `DLY S_AXI_RREADY;
        end
    end

    always @(posedge drp_clk) 
    begin
        if (reset) begin
            wr_req        <= `DLY 'h0;
        end
        else begin
          if (S_AXI_AWREADY && S_AXI_AWVALID) begin
            wr_req        <= `DLY 'h1;
          end
	  else if (AXI_STATE == INIT) begin
            wr_req        <= `DLY 'h0;
	  end
        end
    end

    always @(posedge drp_clk) 
    begin
        if (reset) begin
            rd_req        <= `DLY 'h0;
        end
        else begin
          if (S_AXI_ARREADY && S_AXI_ARVALID) begin
            rd_req        <= `DLY 'h1;
          end
	  else if (AXI_STATE == INIT) begin
            rd_req        <= `DLY 'h0;
	  end
        end
    end

    assign DRPADDR_IN = drpaddr_in ;
    assign DRPDI_IN   = drpdi_in ;

    assign DRPEN_IN   = drpen_in;
    assign DRPWE_IN   = drpwe_in;

    always @(posedge drp_clk) 
    begin
        if (reset) begin
            drpdo_out           <= `DLY 'h0;
            drprdy_out          <= `DLY 'h0;
        end
        else begin
            drpdo_out           <= `DLY DRPDO_OUT;
            drprdy_out          <= `DLY DRPRDY_OUT;
        end
    end

// FSM of 0
  always @(posedge drp_clk)
  begin
    if (reset) begin
        AXI_STATE <= `DLY INIT;
    end
    else begin
        case (AXI_STATE)
            INIT: if (S_AXI_ARVALID) begin
                     AXI_STATE   <= `DLY REDE;
                  end 
                  else if (S_AXI_AWVALID) begin
                     AXI_STATE   <= `DLY WRT1;
                  end
                  else begin
                     AXI_STATE   <= `DLY INIT;
                  end
            WRT1: if (S_AXI_WVALID == 1'b1) begin
                     AXI_STATE   <= `DLY WRT2;
                  end 
                  else begin
                     AXI_STATE   <= `DLY WRT1;
                  end
            WRT2: AXI_STATE   <= `DLY WAIT;
            REDE: AXI_STATE   <= `DLY WAIT;
            WAIT: if (tx_done_neg) begin // Can use either posedge or negedge; negedge preferred
                     AXI_STATE <= `DLY INIT;
                  end
                  else begin 
                     AXI_STATE <= `DLY WAIT;
                  end
             default:AXI_STATE <= `DLY INIT;
        endcase
    end
  end

  always @(posedge drp_clk)
  begin
      if (reset)
          ready_det_r <= `DLY 1'b0;
      else if ((AXI_STATE == WRT1) || (AXI_STATE == REDE))
          ready_det_r <= `DLY ready_det;
      else if (AXI_STATE == INIT)
          ready_det_r <= `DLY 1'b0;
  end

 always @(*)
 begin
     if (rd_req) begin
         ready_det = S_AXI_RREADY;
     end
     else if (wr_req) begin 
         ready_det = S_AXI_BREADY;
     end
     else 
         ready_det = ready_det_r;
 end

  always @(posedge drp_clk)
  begin
      if (reset)
          tx_done <= `DLY 1'b0;
      else if (drprdy_out)
          tx_done <= `DLY 1'b1;
      else if (ready_det)
          tx_done <= `DLY 1'b0;
  end

  always @(posedge drp_clk)
          tx_done_r <= `DLY tx_done;
 
  assign tx_done_neg = (~tx_done) & tx_done_r;

 // AXI assignment

 //AXI-WRITE 
 always @(posedge drp_clk)
 begin
     if (reset) begin
        s_axi_awready       <= `DLY 1'b0;
    end
    else if (!rd_req & !wr_req) begin
        s_axi_awready       <= `DLY 1'b1;
    end
    else if (AXI_STATE != INIT) begin 
        s_axi_awready       <= `DLY 1'b0;
    end
 end

 always @(posedge drp_clk)
 begin
     if (reset) begin
        s_axi_wready        <= `DLY 1'b0;
    end
    else if (AXI_STATE == WRT1) begin
        s_axi_wready        <= `DLY 1'b1;
    end
    else if (AXI_STATE != WRT1) begin 
        s_axi_wready        <= `DLY 1'b0;
    end
 end

 always @(posedge drp_clk)
 begin
     if (reset) begin
       s_axi_bvalid        <= `DLY 'h0;
    end
    else if (drprdy_out && (wr_req == 1'b1)) begin
       s_axi_bvalid        <= `DLY 1'b1;
    end
    else if (tx_done_neg) begin 
       s_axi_bvalid        <= `DLY 'h0;
    end
 end

// AXI READ
 always @(posedge drp_clk)
 begin
     if (reset) begin
        s_axi_arready       <= `DLY 1'b0;
    end
    else if (!rd_req & !wr_req) begin
        s_axi_arready       <= `DLY 1'b1;
    end
    else if (AXI_STATE != INIT) begin 
        s_axi_arready       <= `DLY 1'b0;
    end
end

 always @(posedge drp_clk)
 begin
     if (reset) begin
       s_axi_rvalid        <= `DLY 'h0;
    end
    else if (drprdy_out && (rd_req == 1'b1)) begin
       s_axi_rvalid        <= `DLY 1'b1;
    end
    else if (tx_done_neg) begin 
       s_axi_rvalid        <= `DLY 'h0;
    end
 end

 always @(posedge drp_clk)
 begin
     if (reset) begin
        s_axi_rdata       <= `DLY 'h0;
    end
    else if (drprdy_out || (s_axi_rvalid)) begin
        s_axi_rdata        <= `DLY {16'h0,drpdo_out};
    end
    else if (tx_done_neg) begin 
        s_axi_rdata        <= `DLY 32'h0;
    end
end

// DRP access
 always @(posedge drp_clk)
 begin
     if (reset) begin
        drpaddr_in         <= `DLY 'b0;
        drpdi_in           <= `DLY 'b0;
        drpwe_in           <= `DLY 'b0;
        drpen_in           <= `DLY 'b0;
    end
    else if (AXI_STATE == WRT1) begin
        drpaddr_in         <= `DLY s_axi_awaddr[10:2];
    end 
    else if (AXI_STATE == WRT2) begin
        drpdi_in           <= `DLY s_axi_wdata[15:0];
        drpwe_in           <= `DLY 1'b1;
        drpen_in           <= `DLY 1'b1;
    end 
    else if (AXI_STATE == REDE) begin
        drpaddr_in         <= `DLY s_axi_araddr[10:2];
        drpen_in           <= `DLY 1'b1;
    end
    else if ((AXI_STATE == WAIT) && tx_done) begin
        drpaddr_in     <= `DLY 'h0;
    end
    else begin
        drpaddr_in     <= `DLY drpaddr_in;
        drpwe_in       <= `DLY 1'b0;
        drpen_in       <= `DLY 1'b0;
    end
end

 endmodule
