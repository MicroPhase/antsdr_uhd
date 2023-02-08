-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:aurora_64b66b:12.0
-- IP Revision: 0

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT aurora_64b66b_pcs_pma
  PORT (
    rxp : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rxn : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    refclk1_in : IN STD_LOGIC;
    user_clk : IN STD_LOGIC;
    sync_clk : IN STD_LOGIC;
    reset_pb : IN STD_LOGIC;
    power_down : IN STD_LOGIC;
    pma_init : IN STD_LOGIC;
    loopback : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    txp : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    txn : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    hard_err : OUT STD_LOGIC;
    soft_err : OUT STD_LOGIC;
    channel_up : OUT STD_LOGIC;
    lane_up : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    tx_out_clk : OUT STD_LOGIC;
    drp_clk_in : IN STD_LOGIC;
    gt_pll_lock : OUT STD_LOGIC;
    s_axi_tx_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_axi_tx_tvalid : IN STD_LOGIC;
    s_axi_tx_tready : OUT STD_LOGIC;
    m_axi_rx_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_rx_tvalid : OUT STD_LOGIC;
    mmcm_not_locked : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    qpll_drpaddr_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    qpll_drpdi_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axi_bready : IN STD_LOGIC;
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_awready : OUT STD_LOGIC;
    s_axi_wvalid : IN STD_LOGIC;
    s_axi_wready : OUT STD_LOGIC;
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_arready : OUT STD_LOGIC;
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_rready : IN STD_LOGIC;
    qpll_drprdy_out : OUT STD_LOGIC;
    qpll_drpen_in : IN STD_LOGIC;
    qpll_drpwe_in : IN STD_LOGIC;
    qpll_drpdo_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    init_clk : IN STD_LOGIC;
    link_reset_out : OUT STD_LOGIC;
    gt_qpllclk_quad1_in : IN STD_LOGIC;
    gt_qpllrefclk_quad1_in : IN STD_LOGIC;
    gt_to_common_qpllreset_out : OUT STD_LOGIC;
    gt_qplllock_in : IN STD_LOGIC;
    gt_qpllrefclklost_in : IN STD_LOGIC;
    gt_rxcdrovrden_in : IN STD_LOGIC;
    sys_reset_out : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : aurora_64b66b_pcs_pma
  PORT MAP (
    rxp => rxp,
    rxn => rxn,
    refclk1_in => refclk1_in,
    user_clk => user_clk,
    sync_clk => sync_clk,
    reset_pb => reset_pb,
    power_down => power_down,
    pma_init => pma_init,
    loopback => loopback,
    txp => txp,
    txn => txn,
    hard_err => hard_err,
    soft_err => soft_err,
    channel_up => channel_up,
    lane_up => lane_up,
    tx_out_clk => tx_out_clk,
    drp_clk_in => drp_clk_in,
    gt_pll_lock => gt_pll_lock,
    s_axi_tx_tdata => s_axi_tx_tdata,
    s_axi_tx_tvalid => s_axi_tx_tvalid,
    s_axi_tx_tready => s_axi_tx_tready,
    m_axi_rx_tdata => m_axi_rx_tdata,
    m_axi_rx_tvalid => m_axi_rx_tvalid,
    mmcm_not_locked => mmcm_not_locked,
    s_axi_awaddr => s_axi_awaddr,
    s_axi_rresp => s_axi_rresp,
    s_axi_bresp => s_axi_bresp,
    s_axi_wstrb => s_axi_wstrb,
    s_axi_wdata => s_axi_wdata,
    s_axi_araddr => s_axi_araddr,
    s_axi_rdata => s_axi_rdata,
    qpll_drpaddr_in => qpll_drpaddr_in,
    qpll_drpdi_in => qpll_drpdi_in,
    s_axi_bready => s_axi_bready,
    s_axi_awvalid => s_axi_awvalid,
    s_axi_awready => s_axi_awready,
    s_axi_wvalid => s_axi_wvalid,
    s_axi_wready => s_axi_wready,
    s_axi_bvalid => s_axi_bvalid,
    s_axi_arvalid => s_axi_arvalid,
    s_axi_arready => s_axi_arready,
    s_axi_rvalid => s_axi_rvalid,
    s_axi_rready => s_axi_rready,
    qpll_drprdy_out => qpll_drprdy_out,
    qpll_drpen_in => qpll_drpen_in,
    qpll_drpwe_in => qpll_drpwe_in,
    qpll_drpdo_out => qpll_drpdo_out,
    init_clk => init_clk,
    link_reset_out => link_reset_out,
    gt_qpllclk_quad1_in => gt_qpllclk_quad1_in,
    gt_qpllrefclk_quad1_in => gt_qpllrefclk_quad1_in,
    gt_to_common_qpllreset_out => gt_to_common_qpllreset_out,
    gt_qplllock_in => gt_qplllock_in,
    gt_qpllrefclklost_in => gt_qpllrefclklost_in,
    gt_rxcdrovrden_in => gt_rxcdrovrden_in,
    sys_reset_out => sys_reset_out
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file aurora_64b66b_pcs_pma.vhd when simulating
-- the core, aurora_64b66b_pcs_pma. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

