// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Nov 21 14:27:56 2022
// Host        : mp-dev running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/mp/wcc_demo/git_antsdr_uhd/vivado_pre/antsdr_e200/bd/e200_ps_bd/ip/e200_ps_bd_get_dna_0/e200_ps_bd_get_dna_0_sim_netlist.v
// Design      : e200_ps_bd_get_dna_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "e200_ps_bd_get_dna_0,get_dna_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "get_dna_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module e200_ps_bd_get_dna_0
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 40000000, PHASE 0.000, CLK_DOMAIN e200_ps_bd_clk40, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 40000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN e200_ps_bd_clk40, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  e200_ps_bd_get_dna_0_get_dna_v1_0 inst
       (.s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "get_dna_v1_0" *) 
module e200_ps_bd_get_dna_0_get_dna_v1_0
   (s00_axi_awready,
    s00_axi_bvalid,
    s00_axi_arready,
    s00_axi_wready,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_rready,
    s00_axi_wstrb,
    s00_axi_wdata);
  output s00_axi_awready;
  output s00_axi_bvalid;
  output s00_axi_arready;
  output s00_axi_wready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input s00_axi_rready;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;

  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  e200_ps_bd_get_dna_0_get_dna_v1_0_S00_AXI get_dna_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "get_dna_v1_0_S00_AXI" *) 
module e200_ps_bd_get_dna_0_get_dna_v1_0_S00_AXI
   (S_AXI_AWREADY,
    s00_axi_bvalid,
    S_AXI_ARREADY,
    S_AXI_WREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_aclk,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_aresetn,
    s00_axi_rready,
    s00_axi_wstrb,
    s00_axi_wdata);
  output S_AXI_AWREADY;
  output s00_axi_bvalid;
  output S_AXI_ARREADY;
  output S_AXI_WREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  input s00_axi_aclk;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_aresetn;
  input s00_axi_rready;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axi_wdata;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [15:0]cnt_delay;
  wire cnt_delay0_carry__0_n_0;
  wire cnt_delay0_carry__1_n_0;
  wire cnt_delay0_carry_n_0;
  wire \cnt_delay_reg_n_0_[0]_0 ;
  wire \cnt_delay_reg_n_0_[10]_1 ;
  wire \cnt_delay_reg_n_0_[11]_2 ;
  wire \cnt_delay_reg_n_0_[12]_3 ;
  wire \cnt_delay_reg_n_0_[13]_4 ;
  wire \cnt_delay_reg_n_0_[14]_5 ;
  wire \cnt_delay_reg_n_0_[15]_6 ;
  wire \cnt_delay_reg_n_0_[1]_7 ;
  wire \cnt_delay_reg_n_0_[2]_8 ;
  wire \cnt_delay_reg_n_0_[3]_9 ;
  wire \cnt_delay_reg_n_0_[4]_10 ;
  wire \cnt_delay_reg_n_0_[5]_11 ;
  wire \cnt_delay_reg_n_0_[6]_12 ;
  wire \cnt_delay_reg_n_0_[7]_13 ;
  wire \cnt_delay_reg_n_0_[8]_14 ;
  wire \cnt_delay_reg_n_0_[9]_15 ;
  wire \cnt_shift[5]_i_2_n_0 ;
  wire \cnt_shift[7]_i_2_n_0 ;
  wire [7:0]cnt_shift_reg;
  wire [63:0]device_dna;
  wire device_dna0;
  wire dna_port_out;
  wire dna_port_shift;
  wire dna_port_shift_dly;
  wire dna_port_shift_i_1_n_0;
  wire [63:0]dna_shift;
  wire [15:1]in4;
  wire [7:0]p_0_in;
  wire [31:7]p_1_in;
  wire [4:0]p_1_in_0;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__2;
  wire \state[4]_i_1_n_0 ;
  wire \state[4]_i_3_n_0 ;
  wire \state[4]_i_4_n_0 ;
  wire \state[4]_i_5_n_0 ;
  wire \state[4]_i_6_n_0 ;
  wire \state[4]_i_7_n_0 ;
  wire \state[4]_i_8_n_0 ;
  wire \state[4]_i_9_n_0 ;
  wire [4:0]state__0;
  wire [2:0]NLW_cnt_delay0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_cnt_delay0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_cnt_delay0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_cnt_delay0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_delay0_carry__2_O_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  DNA_PORT #(
    .SIM_DNA_VALUE(57'h1FE000000000000)) 
    DNA_PORT_inst
       (.CLK(s00_axi_aclk),
        .DIN(1'b0),
        .DOUT(dna_port_out),
        .READ(p_1_in_0[3]),
        .SHIFT(dna_port_shift));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    DNA_PORT_inst_i_1
       (.I0(state__0[3]),
        .I1(state__0[4]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .O(p_1_in_0[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_S_INVERTED(1'b0)) 
    aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(device_dna[32]),
        .I1(device_dna[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(device_dna[42]),
        .I1(device_dna[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(device_dna[43]),
        .I1(device_dna[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(device_dna[44]),
        .I1(device_dna[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(device_dna[45]),
        .I1(device_dna[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(device_dna[46]),
        .I1(device_dna[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(device_dna[47]),
        .I1(device_dna[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(device_dna[48]),
        .I1(device_dna[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(device_dna[49]),
        .I1(device_dna[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(device_dna[50]),
        .I1(device_dna[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(device_dna[51]),
        .I1(device_dna[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(device_dna[33]),
        .I1(device_dna[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(device_dna[52]),
        .I1(device_dna[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(device_dna[53]),
        .I1(device_dna[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(device_dna[54]),
        .I1(device_dna[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(device_dna[55]),
        .I1(device_dna[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(device_dna[56]),
        .I1(device_dna[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(device_dna[57]),
        .I1(device_dna[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(device_dna[58]),
        .I1(device_dna[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(device_dna[59]),
        .I1(device_dna[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(device_dna[60]),
        .I1(device_dna[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(device_dna[61]),
        .I1(device_dna[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(device_dna[34]),
        .I1(device_dna[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(device_dna[62]),
        .I1(device_dna[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(device_dna[63]),
        .I1(device_dna[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(device_dna[35]),
        .I1(device_dna[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(device_dna[36]),
        .I1(device_dna[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(device_dna[37]),
        .I1(device_dna[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(device_dna[38]),
        .I1(device_dna[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(device_dna[39]),
        .I1(device_dna[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(device_dna[40]),
        .I1(device_dna[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(device_dna[41]),
        .I1(device_dna[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 cnt_delay0_carry
       (.CI(1'b0),
        .CO({cnt_delay0_carry_n_0,NLW_cnt_delay0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\cnt_delay_reg_n_0_[0]_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[4:1]),
        .S({\cnt_delay_reg_n_0_[4]_10 ,\cnt_delay_reg_n_0_[3]_9 ,\cnt_delay_reg_n_0_[2]_8 ,\cnt_delay_reg_n_0_[1]_7 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 cnt_delay0_carry__0
       (.CI(cnt_delay0_carry_n_0),
        .CO({cnt_delay0_carry__0_n_0,NLW_cnt_delay0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[8:5]),
        .S({\cnt_delay_reg_n_0_[8]_14 ,\cnt_delay_reg_n_0_[7]_13 ,\cnt_delay_reg_n_0_[6]_12 ,\cnt_delay_reg_n_0_[5]_11 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 cnt_delay0_carry__1
       (.CI(cnt_delay0_carry__0_n_0),
        .CO({cnt_delay0_carry__1_n_0,NLW_cnt_delay0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[12:9]),
        .S({\cnt_delay_reg_n_0_[12]_3 ,\cnt_delay_reg_n_0_[11]_2 ,\cnt_delay_reg_n_0_[10]_1 ,\cnt_delay_reg_n_0_[9]_15 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  CARRY4 cnt_delay0_carry__2
       (.CI(cnt_delay0_carry__1_n_0),
        .CO(NLW_cnt_delay0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_delay0_carry__2_O_UNCONNECTED[3],in4[15:13]}),
        .S({1'b0,\cnt_delay_reg_n_0_[15]_6 ,\cnt_delay_reg_n_0_[14]_5 ,\cnt_delay_reg_n_0_[13]_4 }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \cnt_delay[0]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[4]),
        .I2(state__0[3]),
        .I3(\cnt_delay_reg_n_0_[0]_0 ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(cnt_delay[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[10]_i_1 
       (.I0(in4[10]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[11]_i_1 
       (.I0(in4[11]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[12]_i_1 
       (.I0(in4[12]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[13]_i_1 
       (.I0(in4[13]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[14]_i_1 
       (.I0(in4[14]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[15]_i_1 
       (.I0(in4[15]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[1]_i_1 
       (.I0(in4[1]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[2]_i_1 
       (.I0(in4[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[3]_i_1 
       (.I0(in4[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[4]_i_1 
       (.I0(in4[4]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[5]_i_1 
       (.I0(in4[5]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[6]_i_1 
       (.I0(in4[6]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[7]_i_1 
       (.I0(in4[7]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[8]_i_1 
       (.I0(in4[8]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \cnt_delay[9]_i_1 
       (.I0(in4[9]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(state__0[2]),
        .O(cnt_delay[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[0]),
        .Q(\cnt_delay_reg_n_0_[0]_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[10]),
        .Q(\cnt_delay_reg_n_0_[10]_1 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[11]),
        .Q(\cnt_delay_reg_n_0_[11]_2 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[12]),
        .Q(\cnt_delay_reg_n_0_[12]_3 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[13]),
        .Q(\cnt_delay_reg_n_0_[13]_4 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[14]),
        .Q(\cnt_delay_reg_n_0_[14]_5 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[15]),
        .Q(\cnt_delay_reg_n_0_[15]_6 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[1]),
        .Q(\cnt_delay_reg_n_0_[1]_7 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[2]),
        .Q(\cnt_delay_reg_n_0_[2]_8 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[3]),
        .Q(\cnt_delay_reg_n_0_[3]_9 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[4]),
        .Q(\cnt_delay_reg_n_0_[4]_10 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[5]),
        .Q(\cnt_delay_reg_n_0_[5]_11 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[6]),
        .Q(\cnt_delay_reg_n_0_[6]_12 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[7]),
        .Q(\cnt_delay_reg_n_0_[7]_13 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[8]),
        .Q(\cnt_delay_reg_n_0_[8]_14 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_delay_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[9]),
        .Q(\cnt_delay_reg_n_0_[9]_15 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_shift[0]_i_1 
       (.I0(\cnt_shift[5]_i_2_n_0 ),
        .I1(cnt_shift_reg[0]),
        .O(p_0_in[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_shift[1]_i_1 
       (.I0(cnt_shift_reg[0]),
        .I1(cnt_shift_reg[1]),
        .O(p_0_in[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_shift[2]_i_1 
       (.I0(cnt_shift_reg[2]),
        .I1(cnt_shift_reg[0]),
        .I2(cnt_shift_reg[1]),
        .O(p_0_in[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_shift[3]_i_1 
       (.I0(\cnt_shift[5]_i_2_n_0 ),
        .I1(cnt_shift_reg[1]),
        .I2(cnt_shift_reg[0]),
        .I3(cnt_shift_reg[2]),
        .I4(cnt_shift_reg[3]),
        .O(p_0_in[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_shift[4]_i_1 
       (.I0(\cnt_shift[5]_i_2_n_0 ),
        .I1(cnt_shift_reg[3]),
        .I2(cnt_shift_reg[2]),
        .I3(cnt_shift_reg[0]),
        .I4(cnt_shift_reg[1]),
        .I5(cnt_shift_reg[4]),
        .O(p_0_in[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \cnt_shift[5]_i_1 
       (.I0(\cnt_shift[5]_i_2_n_0 ),
        .I1(\cnt_shift[7]_i_2_n_0 ),
        .I2(cnt_shift_reg[3]),
        .I3(cnt_shift_reg[4]),
        .I4(cnt_shift_reg[5]),
        .O(p_0_in[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \cnt_shift[5]_i_2 
       (.I0(\state[4]_i_9_n_0 ),
        .I1(cnt_shift_reg[4]),
        .I2(cnt_shift_reg[3]),
        .I3(cnt_shift_reg[5]),
        .I4(cnt_shift_reg[1]),
        .I5(dna_port_shift),
        .O(\cnt_shift[5]_i_2_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \cnt_shift[6]_i_1 
       (.I0(cnt_shift_reg[6]),
        .I1(cnt_shift_reg[5]),
        .I2(\cnt_shift[7]_i_2_n_0 ),
        .I3(cnt_shift_reg[3]),
        .I4(cnt_shift_reg[4]),
        .O(p_0_in[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \cnt_shift[7]_i_1 
       (.I0(cnt_shift_reg[7]),
        .I1(cnt_shift_reg[4]),
        .I2(cnt_shift_reg[3]),
        .I3(\cnt_shift[7]_i_2_n_0 ),
        .I4(cnt_shift_reg[5]),
        .I5(cnt_shift_reg[6]),
        .O(p_0_in[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_shift[7]_i_2 
       (.I0(cnt_shift_reg[1]),
        .I1(cnt_shift_reg[0]),
        .I2(cnt_shift_reg[2]),
        .O(\cnt_shift[7]_i_2_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[0]),
        .Q(cnt_shift_reg[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[1]),
        .Q(cnt_shift_reg[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[2]),
        .Q(cnt_shift_reg[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[3]),
        .Q(cnt_shift_reg[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[4]),
        .Q(cnt_shift_reg[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[5]),
        .Q(cnt_shift_reg[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[6]),
        .Q(cnt_shift_reg[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \cnt_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[7]),
        .Q(cnt_shift_reg[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \device_dna[63]_i_1 
       (.I0(dna_port_shift_dly),
        .I1(dna_port_shift),
        .O(device_dna0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[0] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[0]),
        .Q(device_dna[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[10] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[10]),
        .Q(device_dna[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[11] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[11]),
        .Q(device_dna[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[12] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[12]),
        .Q(device_dna[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[13] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[13]),
        .Q(device_dna[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[14] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[14]),
        .Q(device_dna[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[15] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[15]),
        .Q(device_dna[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[16] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[16]),
        .Q(device_dna[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[17] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[17]),
        .Q(device_dna[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[18] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[18]),
        .Q(device_dna[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[19] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[19]),
        .Q(device_dna[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[1] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[1]),
        .Q(device_dna[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[20] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[20]),
        .Q(device_dna[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[21] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[21]),
        .Q(device_dna[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[22] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[22]),
        .Q(device_dna[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[23] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[23]),
        .Q(device_dna[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[24] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[24]),
        .Q(device_dna[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[25] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[25]),
        .Q(device_dna[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[26] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[26]),
        .Q(device_dna[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[27] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[27]),
        .Q(device_dna[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[28] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[28]),
        .Q(device_dna[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[29] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[29]),
        .Q(device_dna[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[2] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[2]),
        .Q(device_dna[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[30] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[30]),
        .Q(device_dna[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[31] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[31]),
        .Q(device_dna[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[32] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[32]),
        .Q(device_dna[32]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[33] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[33]),
        .Q(device_dna[33]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[34] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[34]),
        .Q(device_dna[34]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[35] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[35]),
        .Q(device_dna[35]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[36] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[36]),
        .Q(device_dna[36]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[37] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[37]),
        .Q(device_dna[37]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[38] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[38]),
        .Q(device_dna[38]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[39] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[39]),
        .Q(device_dna[39]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[3] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[3]),
        .Q(device_dna[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[40] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[40]),
        .Q(device_dna[40]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[41] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[41]),
        .Q(device_dna[41]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[42] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[42]),
        .Q(device_dna[42]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[43] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[43]),
        .Q(device_dna[43]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[44] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[44]),
        .Q(device_dna[44]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[45] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[45]),
        .Q(device_dna[45]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[46] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[46]),
        .Q(device_dna[46]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[47] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[47]),
        .Q(device_dna[47]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[48] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[48]),
        .Q(device_dna[48]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[49] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[49]),
        .Q(device_dna[49]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[4] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[4]),
        .Q(device_dna[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[50] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[50]),
        .Q(device_dna[50]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[51] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[51]),
        .Q(device_dna[51]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[52] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[52]),
        .Q(device_dna[52]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[53] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[53]),
        .Q(device_dna[53]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[54] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[54]),
        .Q(device_dna[54]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[55] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[55]),
        .Q(device_dna[55]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[56] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[56]),
        .Q(device_dna[56]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[57] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[57]),
        .Q(device_dna[57]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[58] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[58]),
        .Q(device_dna[58]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[59] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[59]),
        .Q(device_dna[59]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[5] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[5]),
        .Q(device_dna[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[60] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[60]),
        .Q(device_dna[60]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[61] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[61]),
        .Q(device_dna[61]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[62] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[62]),
        .Q(device_dna[62]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[63] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[63]),
        .Q(device_dna[63]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[6] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[6]),
        .Q(device_dna[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[7] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[7]),
        .Q(device_dna[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[8] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[8]),
        .Q(device_dna[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \device_dna_reg[9] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[9]),
        .Q(device_dna[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    dna_port_shift_dly_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_port_shift),
        .Q(dna_port_shift_dly));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    dna_port_shift_i_1
       (.I0(p_1_in_0[3]),
        .I1(\cnt_shift[5]_i_2_n_0 ),
        .I2(dna_port_shift),
        .O(dna_port_shift_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    dna_port_shift_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_port_shift_i_1_n_0),
        .Q(dna_port_shift));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_port_out),
        .Q(dna_shift[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[10] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[9]),
        .Q(dna_shift[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[11] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[10]),
        .Q(dna_shift[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[12] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[11]),
        .Q(dna_shift[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[13] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[12]),
        .Q(dna_shift[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[14] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[13]),
        .Q(dna_shift[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[15] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[14]),
        .Q(dna_shift[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[16] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[15]),
        .Q(dna_shift[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[17] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[16]),
        .Q(dna_shift[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[18] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[17]),
        .Q(dna_shift[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[19] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[18]),
        .Q(dna_shift[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[0]),
        .Q(dna_shift[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[20] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[19]),
        .Q(dna_shift[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[21] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[20]),
        .Q(dna_shift[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[22] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[21]),
        .Q(dna_shift[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[23] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[22]),
        .Q(dna_shift[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[24] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[23]),
        .Q(dna_shift[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[25] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[24]),
        .Q(dna_shift[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[26] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[25]),
        .Q(dna_shift[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[27] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[26]),
        .Q(dna_shift[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[28] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[27]),
        .Q(dna_shift[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[29] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[28]),
        .Q(dna_shift[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[1]),
        .Q(dna_shift[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[30] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[29]),
        .Q(dna_shift[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[31] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[30]),
        .Q(dna_shift[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[32] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[31]),
        .Q(dna_shift[32]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[33] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[32]),
        .Q(dna_shift[33]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[34] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[33]),
        .Q(dna_shift[34]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[35] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[34]),
        .Q(dna_shift[35]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[36] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[35]),
        .Q(dna_shift[36]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[37] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[36]),
        .Q(dna_shift[37]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[38] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[37]),
        .Q(dna_shift[38]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[39] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[38]),
        .Q(dna_shift[39]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[2]),
        .Q(dna_shift[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[40] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[39]),
        .Q(dna_shift[40]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[41] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[40]),
        .Q(dna_shift[41]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[42] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[41]),
        .Q(dna_shift[42]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[43] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[42]),
        .Q(dna_shift[43]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[44] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[43]),
        .Q(dna_shift[44]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[45] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[44]),
        .Q(dna_shift[45]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[46] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[45]),
        .Q(dna_shift[46]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[47] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[46]),
        .Q(dna_shift[47]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[48] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[47]),
        .Q(dna_shift[48]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[49] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[48]),
        .Q(dna_shift[49]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[3]),
        .Q(dna_shift[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[50] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[49]),
        .Q(dna_shift[50]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[51] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[50]),
        .Q(dna_shift[51]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[52] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[51]),
        .Q(dna_shift[52]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[53] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[52]),
        .Q(dna_shift[53]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[54] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[53]),
        .Q(dna_shift[54]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[55] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[54]),
        .Q(dna_shift[55]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[56] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[55]),
        .Q(dna_shift[56]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[57] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[56]),
        .Q(dna_shift[57]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[58] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[57]),
        .Q(dna_shift[58]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[59] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[58]),
        .Q(dna_shift[59]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[4]),
        .Q(dna_shift[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[60] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[59]),
        .Q(dna_shift[60]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[61] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[60]),
        .Q(dna_shift[61]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[62] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[61]),
        .Q(dna_shift[62]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[63] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[62]),
        .Q(dna_shift[63]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[5]),
        .Q(dna_shift[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[6]),
        .Q(dna_shift[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[8] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[7]),
        .Q(dna_shift[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \dna_shift_reg[9] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[8]),
        .Q(dna_shift[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[31]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden__0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE9)) 
    \state[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[3]),
        .I3(state__0[4]),
        .I4(state__0[1]),
        .O(p_1_in_0[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \state[1]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .I3(state__0[4]),
        .I4(state__0[2]),
        .O(p_1_in_0[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \state[2]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[4]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(p_1_in_0[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFF40FF4FF)) 
    \state[4]_i_1 
       (.I0(\state[4]_i_3_n_0 ),
        .I1(\state[4]_i_4_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(\state[4]_i_5_n_0 ),
        .I5(\state[4]_i_6_n_0 ),
        .O(\state[4]_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000110)) 
    \state[4]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[4]),
        .I3(state__0[3]),
        .I4(state__0[1]),
        .O(p_1_in_0[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \state[4]_i_3 
       (.I0(\cnt_delay_reg_n_0_[0]_0 ),
        .I1(\cnt_delay_reg_n_0_[7]_13 ),
        .I2(\cnt_delay_reg_n_0_[11]_2 ),
        .I3(\cnt_delay_reg_n_0_[5]_11 ),
        .I4(\state[4]_i_7_n_0 ),
        .O(\state[4]_i_3_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \state[4]_i_4 
       (.I0(\cnt_delay_reg_n_0_[10]_1 ),
        .I1(\cnt_delay_reg_n_0_[8]_14 ),
        .I2(\cnt_delay_reg_n_0_[1]_7 ),
        .I3(\cnt_delay_reg_n_0_[15]_6 ),
        .I4(\state[4]_i_8_n_0 ),
        .O(\state[4]_i_4_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \state[4]_i_5 
       (.I0(cnt_shift_reg[1]),
        .I1(cnt_shift_reg[5]),
        .I2(cnt_shift_reg[3]),
        .I3(cnt_shift_reg[4]),
        .I4(\state[4]_i_9_n_0 ),
        .O(\state[4]_i_5_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \state[4]_i_6 
       (.I0(state__0[4]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(\state[4]_i_6_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \state[4]_i_7 
       (.I0(\cnt_delay_reg_n_0_[9]_15 ),
        .I1(\cnt_delay_reg_n_0_[12]_3 ),
        .I2(\cnt_delay_reg_n_0_[2]_8 ),
        .I3(\cnt_delay_reg_n_0_[3]_9 ),
        .O(\state[4]_i_7_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \state[4]_i_8 
       (.I0(\cnt_delay_reg_n_0_[6]_12 ),
        .I1(\cnt_delay_reg_n_0_[13]_4 ),
        .I2(\cnt_delay_reg_n_0_[14]_5 ),
        .I3(\cnt_delay_reg_n_0_[4]_10 ),
        .O(\state[4]_i_8_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[4]_i_9 
       (.I0(cnt_shift_reg[2]),
        .I1(cnt_shift_reg[0]),
        .I2(cnt_shift_reg[7]),
        .I3(cnt_shift_reg[6]),
        .O(\state[4]_i_9_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_PRE_INVERTED(1'b0)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(p_1_in_0[0]),
        .PRE(axi_awready_i_1_n_0),
        .Q(state__0[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(p_1_in_0[1]),
        .Q(state__0[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(p_1_in_0[2]),
        .Q(state__0[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(p_1_in_0[3]),
        .Q(state__0[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDCE #(
    .INIT(1'b0),
    .IS_CLR_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0)) 
    \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(p_1_in_0[4]),
        .Q(state__0[4]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
