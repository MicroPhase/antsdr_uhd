// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Sun Oct  9 10:56:45 2022
// Host        : mp-dev running 64-bit Kylin V10 SP1
// Command     : write_verilog -force get_dna.v
// Design      : get_dna_v1_0
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module get_dna_v1_0
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
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;

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
  get_dna_v1_0_S00_AXI get_dna_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
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

module get_dna_v1_0_S00_AXI
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
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
  wire cnt_delay0_carry__0_n_1;
  wire cnt_delay0_carry__0_n_2;
  wire cnt_delay0_carry__0_n_3;
  wire cnt_delay0_carry__1_n_0;
  wire cnt_delay0_carry__1_n_1;
  wire cnt_delay0_carry__1_n_2;
  wire cnt_delay0_carry__1_n_3;
  wire cnt_delay0_carry__2_n_2;
  wire cnt_delay0_carry__2_n_3;
  wire cnt_delay0_carry_n_0;
  wire cnt_delay0_carry_n_1;
  wire cnt_delay0_carry_n_2;
  wire cnt_delay0_carry_n_3;
  wire \cnt_delay_reg_n_0_[0] ;
  wire \cnt_delay_reg_n_0_[10] ;
  wire \cnt_delay_reg_n_0_[11] ;
  wire \cnt_delay_reg_n_0_[12] ;
  wire \cnt_delay_reg_n_0_[13] ;
  wire \cnt_delay_reg_n_0_[14] ;
  wire \cnt_delay_reg_n_0_[15] ;
  wire \cnt_delay_reg_n_0_[1] ;
  wire \cnt_delay_reg_n_0_[2] ;
  wire \cnt_delay_reg_n_0_[3] ;
  wire \cnt_delay_reg_n_0_[4] ;
  wire \cnt_delay_reg_n_0_[5] ;
  wire \cnt_delay_reg_n_0_[6] ;
  wire \cnt_delay_reg_n_0_[7] ;
  wire \cnt_delay_reg_n_0_[8] ;
  wire \cnt_delay_reg_n_0_[9] ;
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

  (* BOX_TYPE = "PRIMITIVE" *) 
  DNA_PORT #(
    .SIM_DNA_VALUE(57'h1FE000000000000)) 
    DNA_PORT_inst
       (.CLK(s00_axi_aclk),
        .DIN(\<const0> ),
        .DOUT(dna_port_out),
        .READ(p_1_in_0[3]),
        .SHIFT(dna_port_shift));
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
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
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
  FDSE #(
    .INIT(1'b1)) 
    aw_en_reg
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
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
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
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
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
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
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  CARRY4 cnt_delay0_carry
       (.CI(\<const0> ),
        .CO({cnt_delay0_carry_n_0,cnt_delay0_carry_n_1,cnt_delay0_carry_n_2,cnt_delay0_carry_n_3}),
        .CYINIT(\cnt_delay_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[4:1]),
        .S({\cnt_delay_reg_n_0_[4] ,\cnt_delay_reg_n_0_[3] ,\cnt_delay_reg_n_0_[2] ,\cnt_delay_reg_n_0_[1] }));
  CARRY4 cnt_delay0_carry__0
       (.CI(cnt_delay0_carry_n_0),
        .CO({cnt_delay0_carry__0_n_0,cnt_delay0_carry__0_n_1,cnt_delay0_carry__0_n_2,cnt_delay0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[8:5]),
        .S({\cnt_delay_reg_n_0_[8] ,\cnt_delay_reg_n_0_[7] ,\cnt_delay_reg_n_0_[6] ,\cnt_delay_reg_n_0_[5] }));
  CARRY4 cnt_delay0_carry__1
       (.CI(cnt_delay0_carry__0_n_0),
        .CO({cnt_delay0_carry__1_n_0,cnt_delay0_carry__1_n_1,cnt_delay0_carry__1_n_2,cnt_delay0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[12:9]),
        .S({\cnt_delay_reg_n_0_[12] ,\cnt_delay_reg_n_0_[11] ,\cnt_delay_reg_n_0_[10] ,\cnt_delay_reg_n_0_[9] }));
  CARRY4 cnt_delay0_carry__2
       (.CI(cnt_delay0_carry__1_n_0),
        .CO({cnt_delay0_carry__2_n_2,cnt_delay0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(in4[15:13]),
        .S({\<const0> ,\cnt_delay_reg_n_0_[15] ,\cnt_delay_reg_n_0_[14] ,\cnt_delay_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \cnt_delay[0]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[4]),
        .I2(state__0[3]),
        .I3(\cnt_delay_reg_n_0_[0] ),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(cnt_delay[0]));
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
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[0]),
        .Q(\cnt_delay_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[10]),
        .Q(\cnt_delay_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[11]),
        .Q(\cnt_delay_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[12]),
        .Q(\cnt_delay_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[13]),
        .Q(\cnt_delay_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[14]),
        .Q(\cnt_delay_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[15]),
        .Q(\cnt_delay_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[1]),
        .Q(\cnt_delay_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[2]),
        .Q(\cnt_delay_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[3]),
        .Q(\cnt_delay_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[4]),
        .Q(\cnt_delay_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[5]),
        .Q(\cnt_delay_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[6]),
        .Q(\cnt_delay_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[7]),
        .Q(\cnt_delay_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[8]),
        .Q(\cnt_delay_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_delay_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(cnt_delay[9]),
        .Q(\cnt_delay_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_shift[0]_i_1 
       (.I0(\cnt_shift[5]_i_2_n_0 ),
        .I1(cnt_shift_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_shift[1]_i_1 
       (.I0(cnt_shift_reg[0]),
        .I1(cnt_shift_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_shift[2]_i_1 
       (.I0(cnt_shift_reg[2]),
        .I1(cnt_shift_reg[0]),
        .I2(cnt_shift_reg[1]),
        .O(p_0_in[2]));
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
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \cnt_shift[5]_i_1 
       (.I0(\cnt_shift[5]_i_2_n_0 ),
        .I1(\cnt_shift[7]_i_2_n_0 ),
        .I2(cnt_shift_reg[3]),
        .I3(cnt_shift_reg[4]),
        .I4(cnt_shift_reg[5]),
        .O(p_0_in[5]));
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
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \cnt_shift[6]_i_1 
       (.I0(cnt_shift_reg[6]),
        .I1(cnt_shift_reg[5]),
        .I2(\cnt_shift[7]_i_2_n_0 ),
        .I3(cnt_shift_reg[3]),
        .I4(cnt_shift_reg[4]),
        .O(p_0_in[6]));
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_shift[7]_i_2 
       (.I0(cnt_shift_reg[1]),
        .I1(cnt_shift_reg[0]),
        .I2(cnt_shift_reg[2]),
        .O(\cnt_shift[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[0]),
        .Q(cnt_shift_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[1]),
        .Q(cnt_shift_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[2]),
        .Q(cnt_shift_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[3]),
        .Q(cnt_shift_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[4]),
        .Q(cnt_shift_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[5]),
        .Q(cnt_shift_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[6]),
        .Q(cnt_shift_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(p_0_in[7]),
        .Q(cnt_shift_reg[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \device_dna[63]_i_1 
       (.I0(dna_port_shift_dly),
        .I1(dna_port_shift),
        .O(device_dna0));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[0] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[0]),
        .Q(device_dna[0]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[10] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[10]),
        .Q(device_dna[10]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[11] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[11]),
        .Q(device_dna[11]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[12] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[12]),
        .Q(device_dna[12]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[13] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[13]),
        .Q(device_dna[13]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[14] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[14]),
        .Q(device_dna[14]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[15] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[15]),
        .Q(device_dna[15]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[16] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[16]),
        .Q(device_dna[16]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[17] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[17]),
        .Q(device_dna[17]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[18] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[18]),
        .Q(device_dna[18]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[19] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[19]),
        .Q(device_dna[19]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[1] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[1]),
        .Q(device_dna[1]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[20] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[20]),
        .Q(device_dna[20]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[21] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[21]),
        .Q(device_dna[21]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[22] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[22]),
        .Q(device_dna[22]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[23] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[23]),
        .Q(device_dna[23]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[24] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[24]),
        .Q(device_dna[24]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[25] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[25]),
        .Q(device_dna[25]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[26] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[26]),
        .Q(device_dna[26]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[27] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[27]),
        .Q(device_dna[27]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[28] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[28]),
        .Q(device_dna[28]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[29] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[29]),
        .Q(device_dna[29]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[2] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[2]),
        .Q(device_dna[2]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[30] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[30]),
        .Q(device_dna[30]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[31] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[31]),
        .Q(device_dna[31]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[32] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[32]),
        .Q(device_dna[32]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[33] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[33]),
        .Q(device_dna[33]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[34] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[34]),
        .Q(device_dna[34]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[35] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[35]),
        .Q(device_dna[35]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[36] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[36]),
        .Q(device_dna[36]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[37] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[37]),
        .Q(device_dna[37]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[38] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[38]),
        .Q(device_dna[38]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[39] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[39]),
        .Q(device_dna[39]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[3] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[3]),
        .Q(device_dna[3]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[40] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[40]),
        .Q(device_dna[40]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[41] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[41]),
        .Q(device_dna[41]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[42] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[42]),
        .Q(device_dna[42]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[43] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[43]),
        .Q(device_dna[43]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[44] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[44]),
        .Q(device_dna[44]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[45] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[45]),
        .Q(device_dna[45]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[46] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[46]),
        .Q(device_dna[46]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[47] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[47]),
        .Q(device_dna[47]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[48] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[48]),
        .Q(device_dna[48]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[49] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[49]),
        .Q(device_dna[49]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[4] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[4]),
        .Q(device_dna[4]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[50] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[50]),
        .Q(device_dna[50]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[51] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[51]),
        .Q(device_dna[51]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[52] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[52]),
        .Q(device_dna[52]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[53] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[53]),
        .Q(device_dna[53]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[54] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[54]),
        .Q(device_dna[54]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[55] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[55]),
        .Q(device_dna[55]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[56] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[56]),
        .Q(device_dna[56]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[57] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[57]),
        .Q(device_dna[57]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[58] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[58]),
        .Q(device_dna[58]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[59] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[59]),
        .Q(device_dna[59]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[5] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[5]),
        .Q(device_dna[5]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[60] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[60]),
        .Q(device_dna[60]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[61] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[61]),
        .Q(device_dna[61]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[62] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[62]),
        .Q(device_dna[62]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[63] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[63]),
        .Q(device_dna[63]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[6] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[6]),
        .Q(device_dna[6]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[7] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[7]),
        .Q(device_dna[7]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[8] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[8]),
        .Q(device_dna[8]));
  FDCE #(
    .INIT(1'b0)) 
    \device_dna_reg[9] 
       (.C(s00_axi_aclk),
        .CE(device_dna0),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[9]),
        .Q(device_dna[9]));
  FDCE #(
    .INIT(1'b0)) 
    dna_port_shift_dly_reg
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_port_shift),
        .Q(dna_port_shift_dly));
  LUT3 #(
    .INIT(8'hC8)) 
    dna_port_shift_i_1
       (.I0(p_1_in_0[3]),
        .I1(\cnt_shift[5]_i_2_n_0 ),
        .I2(dna_port_shift),
        .O(dna_port_shift_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    dna_port_shift_reg
       (.C(s00_axi_aclk),
        .CE(\<const1> ),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_port_shift_i_1_n_0),
        .Q(dna_port_shift));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[0] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_port_out),
        .Q(dna_shift[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[10] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[9]),
        .Q(dna_shift[10]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[11] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[10]),
        .Q(dna_shift[11]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[12] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[11]),
        .Q(dna_shift[12]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[13] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[12]),
        .Q(dna_shift[13]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[14] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[13]),
        .Q(dna_shift[14]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[15] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[14]),
        .Q(dna_shift[15]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[16] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[15]),
        .Q(dna_shift[16]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[17] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[16]),
        .Q(dna_shift[17]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[18] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[17]),
        .Q(dna_shift[18]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[19] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[18]),
        .Q(dna_shift[19]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[1] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[0]),
        .Q(dna_shift[1]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[20] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[19]),
        .Q(dna_shift[20]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[21] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[20]),
        .Q(dna_shift[21]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[22] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[21]),
        .Q(dna_shift[22]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[23] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[22]),
        .Q(dna_shift[23]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[24] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[23]),
        .Q(dna_shift[24]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[25] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[24]),
        .Q(dna_shift[25]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[26] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[25]),
        .Q(dna_shift[26]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[27] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[26]),
        .Q(dna_shift[27]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[28] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[27]),
        .Q(dna_shift[28]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[29] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[28]),
        .Q(dna_shift[29]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[2] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[1]),
        .Q(dna_shift[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[30] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[29]),
        .Q(dna_shift[30]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[31] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[30]),
        .Q(dna_shift[31]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[32] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[31]),
        .Q(dna_shift[32]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[33] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[32]),
        .Q(dna_shift[33]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[34] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[33]),
        .Q(dna_shift[34]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[35] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[34]),
        .Q(dna_shift[35]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[36] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[35]),
        .Q(dna_shift[36]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[37] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[36]),
        .Q(dna_shift[37]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[38] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[37]),
        .Q(dna_shift[38]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[39] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[38]),
        .Q(dna_shift[39]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[3] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[2]),
        .Q(dna_shift[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[40] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[39]),
        .Q(dna_shift[40]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[41] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[40]),
        .Q(dna_shift[41]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[42] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[41]),
        .Q(dna_shift[42]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[43] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[42]),
        .Q(dna_shift[43]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[44] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[43]),
        .Q(dna_shift[44]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[45] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[44]),
        .Q(dna_shift[45]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[46] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[45]),
        .Q(dna_shift[46]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[47] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[46]),
        .Q(dna_shift[47]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[48] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[47]),
        .Q(dna_shift[48]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[49] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[48]),
        .Q(dna_shift[49]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[4] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[3]),
        .Q(dna_shift[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[50] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[49]),
        .Q(dna_shift[50]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[51] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[50]),
        .Q(dna_shift[51]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[52] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[51]),
        .Q(dna_shift[52]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[53] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[52]),
        .Q(dna_shift[53]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[54] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[53]),
        .Q(dna_shift[54]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[55] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[54]),
        .Q(dna_shift[55]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[56] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[55]),
        .Q(dna_shift[56]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[57] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[56]),
        .Q(dna_shift[57]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[58] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[57]),
        .Q(dna_shift[58]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[59] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[58]),
        .Q(dna_shift[59]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[5] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[4]),
        .Q(dna_shift[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[60] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[59]),
        .Q(dna_shift[60]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[61] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[60]),
        .Q(dna_shift[61]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[62] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[61]),
        .Q(dna_shift[62]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[63] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[62]),
        .Q(dna_shift[63]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[6] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[5]),
        .Q(dna_shift[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[7] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[6]),
        .Q(dna_shift[7]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[8] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[7]),
        .Q(dna_shift[8]));
  FDCE #(
    .INIT(1'b0)) 
    \dna_shift_reg[9] 
       (.C(s00_axi_aclk),
        .CE(dna_port_shift),
        .CLR(axi_awready_i_1_n_0),
        .D(dna_shift[8]),
        .Q(dna_shift[9]));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden__0));
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
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \state[4]_i_3 
       (.I0(\cnt_delay_reg_n_0_[0] ),
        .I1(\cnt_delay_reg_n_0_[7] ),
        .I2(\cnt_delay_reg_n_0_[11] ),
        .I3(\cnt_delay_reg_n_0_[5] ),
        .I4(\state[4]_i_7_n_0 ),
        .O(\state[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \state[4]_i_4 
       (.I0(\cnt_delay_reg_n_0_[10] ),
        .I1(\cnt_delay_reg_n_0_[8] ),
        .I2(\cnt_delay_reg_n_0_[1] ),
        .I3(\cnt_delay_reg_n_0_[15] ),
        .I4(\state[4]_i_8_n_0 ),
        .O(\state[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \state[4]_i_5 
       (.I0(cnt_shift_reg[1]),
        .I1(cnt_shift_reg[5]),
        .I2(cnt_shift_reg[3]),
        .I3(cnt_shift_reg[4]),
        .I4(\state[4]_i_9_n_0 ),
        .O(\state[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \state[4]_i_6 
       (.I0(state__0[4]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .O(\state[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \state[4]_i_7 
       (.I0(\cnt_delay_reg_n_0_[9] ),
        .I1(\cnt_delay_reg_n_0_[12] ),
        .I2(\cnt_delay_reg_n_0_[2] ),
        .I3(\cnt_delay_reg_n_0_[3] ),
        .O(\state[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \state[4]_i_8 
       (.I0(\cnt_delay_reg_n_0_[6] ),
        .I1(\cnt_delay_reg_n_0_[13] ),
        .I2(\cnt_delay_reg_n_0_[14] ),
        .I3(\cnt_delay_reg_n_0_[4] ),
        .O(\state[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[4]_i_9 
       (.I0(cnt_shift_reg[2]),
        .I1(cnt_shift_reg[0]),
        .I2(cnt_shift_reg[7]),
        .I3(cnt_shift_reg[6]),
        .O(\state[4]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .D(p_1_in_0[0]),
        .PRE(axi_awready_i_1_n_0),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(p_1_in_0[1]),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(p_1_in_0[2]),
        .Q(state__0[2]));
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(p_1_in_0[3]),
        .Q(state__0[3]));
  (* FSM_ENCODED_STATES = "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\state[4]_i_1_n_0 ),
        .CLR(axi_awready_i_1_n_0),
        .D(p_1_in_0[4]),
        .Q(state__0[4]));
endmodule
