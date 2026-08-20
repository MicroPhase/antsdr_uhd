//
// Copyright 2011 Ettus Research LLC
// Copyright 2018 Ettus Research, a National Instruments Company
//
// SPDX-License-Identifier: LGPL-3.0-or-later
//



// RX side of flow control -- when we are running out of RX space, send a PAUSE

module flow_ctrl_rx
  (input pause_request_en, input [15:0] pause_time, input [15:0] pause_thresh,
	   input rx_clk, input rx_reset, input [15:0] rx_fifo_space,
	   input rx_ce,
   input tx_clk, input tx_reset, output reg pause_req, output reg [15:0] pause_time_req
   );
   
   // ******************************************************************************        
   // Force our TX to send a PAUSE frame because our RX is nearly full
   // ******************************************************************************

   // RX Clock Domain
   reg xon, xoff;
   reg [21:0] countdown;

   wire [15:0] pause_low_thresh = pause_thresh;
   wire [15:0] pause_hi_thresh = pause_thresh + 16'd128;
   wire [21:0] pq_reduced = {pause_time,6'd0} - 1700;
   
   always @(posedge rx_clk)
     if(rx_reset)
       xoff <= 0;
     else
       xoff <= (pause_request_en & (countdown==0) & (rx_fifo_space < pause_low_thresh));
   
   always @(posedge rx_clk)
     if(rx_reset)
       xon  <= 0;
     else
       xon  <= ((countdown!=0) & (rx_fifo_space > pause_hi_thresh));
   
   always @(posedge rx_clk)
     if(rx_reset)
       countdown <= 0;
     else if(xoff)
       countdown <= pq_reduced;
     else if(xon)
       countdown <= 0;
	     else if(rx_ce & (countdown != 0))
       countdown <= countdown - 1;

   // Cross the one-cycle requests with toggle synchronizers.  The old design
   // referenced an unavailable oneshot_2clk module, so RX flow control could
   // not actually be enabled in a build.
   reg xon_toggle, xoff_toggle;
   reg xon_d, xoff_d;
   always @(posedge rx_clk) begin
     if (rx_reset) begin
       xon_toggle  <= 1'b0;
       xoff_toggle <= 1'b0;
       xon_d        <= 1'b0;
       xoff_d       <= 1'b0;
     end else begin
       xon_d  <= xon;
       xoff_d <= xoff;
       if (xon & ~xon_d)
         xon_toggle <= ~xon_toggle;
       if (xoff & ~xoff_d)
         xoff_toggle <= ~xoff_toggle;
     end
   end

   (* ASYNC_REG = "TRUE" *) reg [2:0] xon_sync;
   (* ASYNC_REG = "TRUE" *) reg [2:0] xoff_sync;
   always @(posedge tx_clk) begin
     if (tx_reset) begin
       xon_sync  <= 3'b000;
       xoff_sync <= 3'b000;
     end else begin
       xon_sync  <= {xon_sync[1:0], xon_toggle};
       xoff_sync <= {xoff_sync[1:0], xoff_toggle};
     end
   end
   wire xon_tx  = xon_sync[2]  ^ xon_sync[1];
   wire xoff_tx = xoff_sync[2] ^ xoff_sync[1];
   
   always @(posedge tx_clk)
     if(xoff_tx)
       pause_time_req <= pause_time;
     else if(xon_tx)
       pause_time_req <= 0;

   always @(posedge tx_clk)
     if(tx_reset)
       pause_req      <= 0;
     else 
       pause_req      <= xon_tx | xoff_tx;
   
endmodule // flow_ctrl_rx
