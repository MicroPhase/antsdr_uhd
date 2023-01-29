// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:aurora_64b66b:12.0
// IP Revision: 0

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
aurora_64b66b_pcs_pma your_instance_name (
  .rxp(rxp),                                                // input wire [0 : 0] rxp
  .rxn(rxn),                                                // input wire [0 : 0] rxn
  .refclk1_in(refclk1_in),                                  // input wire refclk1_in
  .user_clk(user_clk),                                      // input wire user_clk
  .sync_clk(sync_clk),                                      // input wire sync_clk
  .reset_pb(reset_pb),                                      // input wire reset_pb
  .power_down(power_down),                                  // input wire power_down
  .pma_init(pma_init),                                      // input wire pma_init
  .loopback(loopback),                                      // input wire [2 : 0] loopback
  .txp(txp),                                                // output wire [0 : 0] txp
  .txn(txn),                                                // output wire [0 : 0] txn
  .hard_err(hard_err),                                      // output wire hard_err
  .soft_err(soft_err),                                      // output wire soft_err
  .channel_up(channel_up),                                  // output wire channel_up
  .lane_up(lane_up),                                        // output wire [0 : 0] lane_up
  .tx_out_clk(tx_out_clk),                                  // output wire tx_out_clk
  .drp_clk_in(drp_clk_in),                                  // input wire drp_clk_in
  .gt_pll_lock(gt_pll_lock),                                // output wire gt_pll_lock
  .s_axi_tx_tdata(s_axi_tx_tdata),                          // input wire [63 : 0] s_axi_tx_tdata
  .s_axi_tx_tvalid(s_axi_tx_tvalid),                        // input wire s_axi_tx_tvalid
  .s_axi_tx_tready(s_axi_tx_tready),                        // output wire s_axi_tx_tready
  .m_axi_rx_tdata(m_axi_rx_tdata),                          // output wire [63 : 0] m_axi_rx_tdata
  .m_axi_rx_tvalid(m_axi_rx_tvalid),                        // output wire m_axi_rx_tvalid
  .mmcm_not_locked(mmcm_not_locked),                        // input wire mmcm_not_locked
  .s_axi_awaddr(s_axi_awaddr),                              // input wire [31 : 0] s_axi_awaddr
  .s_axi_rresp(s_axi_rresp),                                // output wire [1 : 0] s_axi_rresp
  .s_axi_bresp(s_axi_bresp),                                // output wire [1 : 0] s_axi_bresp
  .s_axi_wstrb(s_axi_wstrb),                                // input wire [3 : 0] s_axi_wstrb
  .s_axi_wdata(s_axi_wdata),                                // input wire [31 : 0] s_axi_wdata
  .s_axi_araddr(s_axi_araddr),                              // input wire [31 : 0] s_axi_araddr
  .s_axi_rdata(s_axi_rdata),                                // output wire [31 : 0] s_axi_rdata
  .qpll_drpaddr_in(qpll_drpaddr_in),                        // input wire [7 : 0] qpll_drpaddr_in
  .qpll_drpdi_in(qpll_drpdi_in),                            // input wire [15 : 0] qpll_drpdi_in
  .s_axi_bready(s_axi_bready),                              // input wire s_axi_bready
  .s_axi_awvalid(s_axi_awvalid),                            // input wire s_axi_awvalid
  .s_axi_awready(s_axi_awready),                            // output wire s_axi_awready
  .s_axi_wvalid(s_axi_wvalid),                              // input wire s_axi_wvalid
  .s_axi_wready(s_axi_wready),                              // output wire s_axi_wready
  .s_axi_bvalid(s_axi_bvalid),                              // output wire s_axi_bvalid
  .s_axi_arvalid(s_axi_arvalid),                            // input wire s_axi_arvalid
  .s_axi_arready(s_axi_arready),                            // output wire s_axi_arready
  .s_axi_rvalid(s_axi_rvalid),                              // output wire s_axi_rvalid
  .s_axi_rready(s_axi_rready),                              // input wire s_axi_rready
  .qpll_drprdy_out(qpll_drprdy_out),                        // output wire qpll_drprdy_out
  .qpll_drpen_in(qpll_drpen_in),                            // input wire qpll_drpen_in
  .qpll_drpwe_in(qpll_drpwe_in),                            // input wire qpll_drpwe_in
  .qpll_drpdo_out(qpll_drpdo_out),                          // output wire [15 : 0] qpll_drpdo_out
  .init_clk(init_clk),                                      // input wire init_clk
  .link_reset_out(link_reset_out),                          // output wire link_reset_out
  .gt_qpllclk_quad1_in(gt_qpllclk_quad1_in),                // input wire gt_qpllclk_quad1_in
  .gt_qpllrefclk_quad1_in(gt_qpllrefclk_quad1_in),          // input wire gt_qpllrefclk_quad1_in
  .gt_to_common_qpllreset_out(gt_to_common_qpllreset_out),  // output wire gt_to_common_qpllreset_out
  .gt_qplllock_in(gt_qplllock_in),                          // input wire gt_qplllock_in
  .gt_qpllrefclklost_in(gt_qpllrefclklost_in),              // input wire gt_qpllrefclklost_in
  .gt_rxcdrovrden_in(gt_rxcdrovrden_in),                    // input wire gt_rxcdrovrden_in
  .sys_reset_out(sys_reset_out)                            // output wire sys_reset_out
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file aurora_64b66b_pcs_pma.v when simulating
// the core, aurora_64b66b_pcs_pma. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

