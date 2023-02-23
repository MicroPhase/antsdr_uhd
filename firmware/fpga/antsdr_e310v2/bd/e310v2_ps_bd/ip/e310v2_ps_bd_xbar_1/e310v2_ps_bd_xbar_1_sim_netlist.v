// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri Feb 10 10:53:35 2023
// Host        : jcc running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top e310v2_ps_bd_xbar_1 -prefix
//               e310v2_ps_bd_xbar_1_ e310v2_ps_bd_xbar_2_sim_netlist.v
// Design      : e310v2_ps_bd_xbar_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_addr_arbiter
   (SR,
    f_hot2enc_return,
    aa_mi_arvalid,
    match,
    match_0,
    Q,
    \gen_arbiter.m_valid_i_reg_0 ,
    m_axi_arready_0_sp_1,
    \gen_arbiter.m_valid_i_reg_1 ,
    \gen_arbiter.last_rr_hot_reg[0]_0 ,
    \gen_arbiter.s_ready_i_reg[1]_0 ,
    \gen_arbiter.s_ready_i_reg[0]_0 ,
    target_region,
    \gen_master_slots[0].r_issuing_cnt_reg[1] ,
    target_region_1,
    m_axi_arvalid,
    \gen_axi.read_cs_reg[0] ,
    \gen_arbiter.m_mesg_i_reg[63]_0 ,
    \gen_arbiter.m_valid_i_reg_2 ,
    \gen_arbiter.s_ready_i_reg[1]_1 ,
    \gen_arbiter.s_ready_i_reg[1]_2 ,
    \gen_arbiter.s_ready_i_reg[0]_1 ,
    \gen_arbiter.s_ready_i_reg[0]_2 ,
    \gen_arbiter.s_ready_i_reg[1]_3 ,
    \gen_arbiter.s_ready_i_reg[0]_3 ,
    grant_hot,
    aclk,
    aresetn_d,
    grant_hot0,
    m_axi_arready,
    mi_arready,
    p_11_in,
    s_axi_arvalid,
    s_axi_araddr,
    r_issuing_cnt,
    s_axi_arqos,
    s_axi_arcache,
    s_axi_arburst,
    s_axi_arprot,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_arlen,
    \gen_master_slots[1].r_issuing_cnt_reg[8] ,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_hot_2 ,
    \gen_single_thread.active_target_enc_3 ,
    \gen_single_thread.active_region ,
    \gen_single_thread.active_region_4 ,
    D);
  output [0:0]SR;
  output [0:0]f_hot2enc_return;
  output aa_mi_arvalid;
  output match;
  output match_0;
  output [1:0]Q;
  output \gen_arbiter.m_valid_i_reg_0 ;
  output m_axi_arready_0_sp_1;
  output \gen_arbiter.m_valid_i_reg_1 ;
  output \gen_arbiter.last_rr_hot_reg[0]_0 ;
  output \gen_arbiter.s_ready_i_reg[1]_0 ;
  output \gen_arbiter.s_ready_i_reg[0]_0 ;
  output [0:0]target_region;
  output \gen_master_slots[0].r_issuing_cnt_reg[1] ;
  output [0:0]target_region_1;
  output [0:0]m_axi_arvalid;
  output \gen_axi.read_cs_reg[0] ;
  output [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  output \gen_arbiter.m_valid_i_reg_2 ;
  output \gen_arbiter.s_ready_i_reg[1]_1 ;
  output \gen_arbiter.s_ready_i_reg[1]_2 ;
  output \gen_arbiter.s_ready_i_reg[0]_1 ;
  output \gen_arbiter.s_ready_i_reg[0]_2 ;
  output \gen_arbiter.s_ready_i_reg[1]_3 ;
  output \gen_arbiter.s_ready_i_reg[0]_3 ;
  input grant_hot;
  input aclk;
  input aresetn_d;
  input grant_hot0;
  input [0:0]m_axi_arready;
  input [0:0]mi_arready;
  input p_11_in;
  input [1:0]s_axi_arvalid;
  input [63:0]s_axi_araddr;
  input [2:0]r_issuing_cnt;
  input [7:0]s_axi_arqos;
  input [7:0]s_axi_arcache;
  input [3:0]s_axi_arburst;
  input [5:0]s_axi_arprot;
  input [1:0]s_axi_arlock;
  input [5:0]s_axi_arsize;
  input [15:0]s_axi_arlen;
  input \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  input [0:0]\gen_single_thread.active_target_hot ;
  input \gen_single_thread.active_target_enc ;
  input [0:0]\gen_single_thread.active_target_hot_2 ;
  input \gen_single_thread.active_target_enc_3 ;
  input [0:0]\gen_single_thread.active_region ;
  input [0:0]\gen_single_thread.active_region_4 ;
  input [1:0]D;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_mi_arvalid;
  wire aclk;
  wire aresetn_d;
  wire [0:0]f_hot2enc_return;
  wire \gen_arbiter.any_grant_i_1_n_0 ;
  wire \gen_arbiter.any_grant_i_2__0_n_0 ;
  wire \gen_arbiter.any_grant_i_4_n_0 ;
  wire \gen_arbiter.any_grant_reg_n_0 ;
  wire \gen_arbiter.grant_hot[0]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[1]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot[1]_i_3_n_0 ;
  wire \gen_arbiter.grant_hot_reg_n_0_[0] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[1] ;
  wire \gen_arbiter.last_rr_hot[0]_i_2_n_0 ;
  wire \gen_arbiter.last_rr_hot[0]_i_3_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg[0]_0 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire \gen_arbiter.m_grant_enc_i_reg_n_0_[0] ;
  wire \gen_arbiter.m_mesg_i[50]_i_5__0_n_0 ;
  wire \gen_arbiter.m_mesg_i[50]_i_6__0_n_0 ;
  wire \gen_arbiter.m_mesg_i[50]_i_7__0_n_0 ;
  wire \gen_arbiter.m_mesg_i[50]_i_8__0_n_0 ;
  wire \gen_arbiter.m_mesg_i[50]_i_9__0_n_0 ;
  wire [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  wire \gen_arbiter.m_target_hot_i[1]_i_3__0_n_0 ;
  wire \gen_arbiter.m_valid_i_i_1__0_n_0 ;
  wire \gen_arbiter.m_valid_i_reg_0 ;
  wire \gen_arbiter.m_valid_i_reg_1 ;
  wire \gen_arbiter.m_valid_i_reg_2 ;
  wire \gen_arbiter.s_ready_i[0]_i_1__0_n_0 ;
  wire \gen_arbiter.s_ready_i[1]_i_1_n_0 ;
  wire \gen_arbiter.s_ready_i_reg[0]_0 ;
  wire \gen_arbiter.s_ready_i_reg[0]_1 ;
  wire \gen_arbiter.s_ready_i_reg[0]_2 ;
  wire \gen_arbiter.s_ready_i_reg[0]_3 ;
  wire \gen_arbiter.s_ready_i_reg[1]_0 ;
  wire \gen_arbiter.s_ready_i_reg[1]_1 ;
  wire \gen_arbiter.s_ready_i_reg[1]_2 ;
  wire \gen_arbiter.s_ready_i_reg[1]_3 ;
  wire \gen_axi.read_cs_reg[0] ;
  wire \gen_axi.s_axi_rlast_i_i_4_n_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[1] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  wire [0:0]\gen_single_thread.active_region ;
  wire [0:0]\gen_single_thread.active_region_4 ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_3 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_2 ;
  wire grant_hot;
  wire grant_hot0;
  wire [0:0]m_axi_arready;
  wire m_axi_arready_0_sn_1;
  wire [0:0]m_axi_arvalid;
  wire [63:2]m_mesg_mux;
  wire [1:0]m_target_hot_mux;
  wire match;
  wire match_0;
  wire [0:0]mi_arready;
  wire p_11_in;
  wire p_1_in;
  wire p_4_in;
  wire [1:0]qual_reg;
  wire [2:0]r_issuing_cnt;
  wire [63:0]s_axi_araddr;
  wire [3:0]s_axi_arburst;
  wire [7:0]s_axi_arcache;
  wire [15:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [5:0]s_axi_arprot;
  wire [7:0]s_axi_arqos;
  wire [5:0]s_axi_arsize;
  wire [1:0]s_axi_arvalid;
  wire [0:0]target_region;
  wire [0:0]target_region_1;

  assign m_axi_arready_0_sp_1 = m_axi_arready_0_sn_1;
  LUT6 #(
    .INIT(64'hA0A8A0A000000000)) 
    \gen_arbiter.any_grant_i_1 
       (.I0(aresetn_d),
        .I1(\gen_arbiter.any_grant_i_2__0_n_0 ),
        .I2(\gen_arbiter.any_grant_reg_n_0 ),
        .I3(aa_mi_arvalid),
        .I4(grant_hot0),
        .I5(\gen_arbiter.any_grant_i_4_n_0 ),
        .O(\gen_arbiter.any_grant_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3332FFFA)) 
    \gen_arbiter.any_grant_i_2__0 
       (.I0(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I1(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ),
        .I2(p_4_in),
        .I3(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I4(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ),
        .O(\gen_arbiter.any_grant_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0777FFFF)) 
    \gen_arbiter.any_grant_i_4 
       (.I0(Q[0]),
        .I1(m_axi_arready),
        .I2(mi_arready),
        .I3(Q[1]),
        .I4(aa_mi_arvalid),
        .O(\gen_arbiter.any_grant_i_4_n_0 ));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1_n_0 ),
        .Q(\gen_arbiter.any_grant_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE200000000000000)) 
    \gen_arbiter.grant_hot[0]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I1(grant_hot),
        .I2(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .I3(m_axi_arready_0_sn_1),
        .I4(aresetn_d),
        .I5(\gen_arbiter.grant_hot[1]_i_3_n_0 ),
        .O(\gen_arbiter.grant_hot[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE200000000000000)) 
    \gen_arbiter.grant_hot[1]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .I1(grant_hot),
        .I2(f_hot2enc_return),
        .I3(m_axi_arready_0_sn_1),
        .I4(aresetn_d),
        .I5(\gen_arbiter.grant_hot[1]_i_3_n_0 ),
        .O(\gen_arbiter.grant_hot[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_arbiter.grant_hot[1]_i_2 
       (.I0(m_axi_arready),
        .I1(Q[0]),
        .I2(aa_mi_arvalid),
        .O(m_axi_arready_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_arbiter.grant_hot[1]_i_3 
       (.I0(Q[1]),
        .I1(mi_arready),
        .I2(aa_mi_arvalid),
        .O(\gen_arbiter.grant_hot[1]_i_3_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[0]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_arbiter.grant_hot_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[1]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0F0F0F08)) 
    \gen_arbiter.last_rr_hot[0]_i_1__0 
       (.I0(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ),
        .I1(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I2(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ),
        .I3(p_4_in),
        .I4(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .O(\gen_arbiter.last_rr_hot_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_arbiter.last_rr_hot[0]_i_2 
       (.I0(qual_reg[1]),
        .I1(\gen_arbiter.s_ready_i_reg[1]_0 ),
        .I2(s_axi_arvalid[1]),
        .O(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_arbiter.last_rr_hot[0]_i_3 
       (.I0(qual_reg[0]),
        .I1(\gen_arbiter.s_ready_i_reg[0]_0 ),
        .I2(s_axi_arvalid[0]),
        .O(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1110)) 
    \gen_arbiter.last_rr_hot[2]_i_2__0 
       (.I0(aa_mi_arvalid),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(f_hot2enc_return),
        .I3(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .O(\gen_arbiter.m_valid_i_reg_1 ));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SR));
  FDSE \gen_arbiter.last_rr_hot_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(1'b0),
        .Q(p_4_in),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00FF00A8)) 
    \gen_arbiter.m_grant_enc_i[0]_i_1 
       (.I0(\gen_arbiter.last_rr_hot[0]_i_3_n_0 ),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(p_4_in),
        .I3(\gen_arbiter.last_rr_hot[0]_i_2_n_0 ),
        .I4(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(f_hot2enc_return));
  FDRE \gen_arbiter.m_grant_enc_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(f_hot2enc_return),
        .Q(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[0]_i_1 
       (.I0(aa_mi_arvalid),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[10]_i_1__0 
       (.I0(s_axi_araddr[40]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[8]),
        .O(m_mesg_mux[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[11]_i_1__0 
       (.I0(s_axi_araddr[41]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[9]),
        .O(m_mesg_mux[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[12]_i_1__0 
       (.I0(s_axi_araddr[42]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[10]),
        .O(m_mesg_mux[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[13]_i_1__0 
       (.I0(s_axi_araddr[43]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[11]),
        .O(m_mesg_mux[13]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[14]_i_1__0 
       (.I0(s_axi_araddr[44]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[12]),
        .O(m_mesg_mux[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[15]_i_1__0 
       (.I0(s_axi_araddr[45]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[13]),
        .O(m_mesg_mux[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[16]_i_1__0 
       (.I0(s_axi_araddr[46]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[14]),
        .O(m_mesg_mux[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[17]_i_1__0 
       (.I0(s_axi_araddr[47]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[15]),
        .O(m_mesg_mux[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[18]_i_1__0 
       (.I0(s_axi_araddr[48]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[16]),
        .O(m_mesg_mux[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[19]_i_1__0 
       (.I0(s_axi_araddr[49]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[17]),
        .O(m_mesg_mux[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[1]_i_1 
       (.I0(aresetn_d),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[20]_i_1__0 
       (.I0(s_axi_araddr[50]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[18]),
        .O(m_mesg_mux[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[21]_i_1__0 
       (.I0(s_axi_araddr[51]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[19]),
        .O(m_mesg_mux[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[22]_i_1__0 
       (.I0(s_axi_araddr[52]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[20]),
        .O(m_mesg_mux[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[23]_i_1__0 
       (.I0(s_axi_araddr[53]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[21]),
        .O(m_mesg_mux[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[24]_i_1__0 
       (.I0(s_axi_araddr[54]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[22]),
        .O(m_mesg_mux[24]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[25]_i_1__0 
       (.I0(s_axi_araddr[55]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[23]),
        .O(m_mesg_mux[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[26]_i_1__0 
       (.I0(s_axi_araddr[56]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[24]),
        .O(m_mesg_mux[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[27]_i_1__0 
       (.I0(s_axi_araddr[57]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[25]),
        .O(m_mesg_mux[27]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[28]_i_1__0 
       (.I0(s_axi_araddr[58]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[26]),
        .O(m_mesg_mux[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[29]_i_1__0 
       (.I0(s_axi_araddr[59]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[27]),
        .O(m_mesg_mux[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[2]_i_1__0 
       (.I0(s_axi_araddr[32]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[0]),
        .O(m_mesg_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[30]_i_1__0 
       (.I0(s_axi_araddr[60]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[28]),
        .O(m_mesg_mux[30]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[31]_i_1__0 
       (.I0(s_axi_araddr[61]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[29]),
        .O(m_mesg_mux[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[32]_i_1__0 
       (.I0(s_axi_araddr[62]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[30]),
        .O(m_mesg_mux[32]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[33]_i_1__0 
       (.I0(s_axi_araddr[63]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[31]),
        .O(m_mesg_mux[33]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[34]_i_1__0 
       (.I0(s_axi_arlen[8]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[0]),
        .O(m_mesg_mux[34]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[35]_i_1__0 
       (.I0(s_axi_arlen[9]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[1]),
        .O(m_mesg_mux[35]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[36]_i_1__0 
       (.I0(s_axi_arlen[10]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[2]),
        .O(m_mesg_mux[36]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[37]_i_1__0 
       (.I0(s_axi_arlen[11]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[3]),
        .O(m_mesg_mux[37]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[38]_i_1__0 
       (.I0(s_axi_arlen[12]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[4]),
        .O(m_mesg_mux[38]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[39]_i_1__0 
       (.I0(s_axi_arlen[13]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[5]),
        .O(m_mesg_mux[39]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[3]_i_1__0 
       (.I0(s_axi_araddr[33]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[1]),
        .O(m_mesg_mux[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[40]_i_1__0 
       (.I0(s_axi_arlen[14]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[6]),
        .O(m_mesg_mux[40]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[41]_i_1__0 
       (.I0(s_axi_arlen[15]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlen[7]),
        .O(m_mesg_mux[41]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[42]_i_1__0 
       (.I0(s_axi_arsize[3]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arsize[0]),
        .O(m_mesg_mux[42]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[43]_i_1__0 
       (.I0(s_axi_arsize[4]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arsize[1]),
        .O(m_mesg_mux[43]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[44]_i_1__0 
       (.I0(s_axi_arsize[5]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arsize[2]),
        .O(m_mesg_mux[44]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[45]_i_1__0 
       (.I0(s_axi_arlock[1]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arlock[0]),
        .O(m_mesg_mux[45]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[47]_i_1__0 
       (.I0(s_axi_arprot[3]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arprot[0]),
        .O(m_mesg_mux[47]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[48]_i_1__0 
       (.I0(s_axi_arprot[4]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arprot[1]),
        .O(m_mesg_mux[48]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[49]_i_1__0 
       (.I0(s_axi_arprot[5]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arprot[2]),
        .O(m_mesg_mux[49]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[4]_i_1__0 
       (.I0(s_axi_araddr[34]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[2]),
        .O(m_mesg_mux[4]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \gen_arbiter.m_mesg_i[50]_i_1__0 
       (.I0(target_region),
        .I1(match_0),
        .I2(target_region_1),
        .I3(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .O(m_mesg_mux[50]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_arbiter.m_mesg_i[50]_i_2__0 
       (.I0(\gen_arbiter.m_mesg_i[50]_i_5__0_n_0 ),
        .I1(s_axi_araddr[51]),
        .I2(s_axi_araddr[50]),
        .I3(s_axi_araddr[53]),
        .I4(s_axi_araddr[52]),
        .I5(\gen_arbiter.m_mesg_i[50]_i_6__0_n_0 ),
        .O(target_region));
  LUT5 #(
    .INIT(32'hF1111111)) 
    \gen_arbiter.m_mesg_i[50]_i_3__0 
       (.I0(s_axi_araddr[30]),
        .I1(s_axi_araddr[31]),
        .I2(\gen_arbiter.m_mesg_i[50]_i_7__0_n_0 ),
        .I3(\gen_arbiter.m_mesg_i[50]_i_8__0_n_0 ),
        .I4(\gen_arbiter.m_mesg_i[50]_i_9__0_n_0 ),
        .O(match_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_arbiter.m_mesg_i[50]_i_4__0 
       (.I0(\gen_arbiter.m_mesg_i[50]_i_9__0_n_0 ),
        .I1(s_axi_araddr[19]),
        .I2(s_axi_araddr[18]),
        .I3(s_axi_araddr[21]),
        .I4(s_axi_araddr[20]),
        .I5(\gen_arbiter.m_mesg_i[50]_i_7__0_n_0 ),
        .O(target_region_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_mesg_i[50]_i_5__0 
       (.I0(s_axi_araddr[57]),
        .I1(s_axi_araddr[56]),
        .I2(s_axi_araddr[55]),
        .I3(s_axi_araddr[54]),
        .O(\gen_arbiter.m_mesg_i[50]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_arbiter.m_mesg_i[50]_i_6__0 
       (.I0(s_axi_araddr[58]),
        .I1(s_axi_araddr[59]),
        .I2(s_axi_araddr[60]),
        .I3(s_axi_araddr[61]),
        .I4(s_axi_araddr[63]),
        .I5(s_axi_araddr[62]),
        .O(\gen_arbiter.m_mesg_i[50]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_arbiter.m_mesg_i[50]_i_7__0 
       (.I0(s_axi_araddr[26]),
        .I1(s_axi_araddr[27]),
        .I2(s_axi_araddr[28]),
        .I3(s_axi_araddr[29]),
        .I4(s_axi_araddr[31]),
        .I5(s_axi_araddr[30]),
        .O(\gen_arbiter.m_mesg_i[50]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_mesg_i[50]_i_8__0 
       (.I0(s_axi_araddr[19]),
        .I1(s_axi_araddr[18]),
        .I2(s_axi_araddr[21]),
        .I3(s_axi_araddr[20]),
        .O(\gen_arbiter.m_mesg_i[50]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_mesg_i[50]_i_9__0 
       (.I0(s_axi_araddr[25]),
        .I1(s_axi_araddr[24]),
        .I2(s_axi_araddr[23]),
        .I3(s_axi_araddr[22]),
        .O(\gen_arbiter.m_mesg_i[50]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[54]_i_1__0 
       (.I0(s_axi_arburst[2]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arburst[0]),
        .O(m_mesg_mux[54]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[55]_i_1__0 
       (.I0(s_axi_arburst[3]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arburst[1]),
        .O(m_mesg_mux[55]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[56]_i_1__0 
       (.I0(s_axi_arcache[4]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arcache[0]),
        .O(m_mesg_mux[56]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[57]_i_1__0 
       (.I0(s_axi_arcache[5]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arcache[1]),
        .O(m_mesg_mux[57]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[58]_i_1__0 
       (.I0(s_axi_arcache[6]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arcache[2]),
        .O(m_mesg_mux[58]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[59]_i_1__0 
       (.I0(s_axi_arcache[7]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arcache[3]),
        .O(m_mesg_mux[59]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[5]_i_1__0 
       (.I0(s_axi_araddr[35]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[3]),
        .O(m_mesg_mux[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[60]_i_1__0 
       (.I0(s_axi_arqos[4]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arqos[0]),
        .O(m_mesg_mux[60]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[61]_i_1__0 
       (.I0(s_axi_arqos[5]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arqos[1]),
        .O(m_mesg_mux[61]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[62]_i_1__0 
       (.I0(s_axi_arqos[6]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arqos[2]),
        .O(m_mesg_mux[62]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[63]_i_1__0 
       (.I0(s_axi_arqos[7]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_arqos[3]),
        .O(m_mesg_mux[63]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[6]_i_1__0 
       (.I0(s_axi_araddr[36]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[4]),
        .O(m_mesg_mux[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[7]_i_1__0 
       (.I0(s_axi_araddr[37]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[5]),
        .O(m_mesg_mux[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[8]_i_1__0 
       (.I0(s_axi_araddr[38]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[6]),
        .O(m_mesg_mux[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[9]_i_1__0 
       (.I0(s_axi_araddr[39]),
        .I1(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .I2(s_axi_araddr[7]),
        .O(m_mesg_mux[9]));
  FDRE \gen_arbiter.m_mesg_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\gen_arbiter.m_grant_enc_i_reg_n_0_[0] ),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[10]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [9]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[11]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [10]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[12]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [11]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[13]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [12]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[14]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [13]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[15]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [14]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[16]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [15]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[17]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [16]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[18]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [17]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[19]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [18]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[20]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [19]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[21]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [20]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[22]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [21]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[23]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [22]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[24]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [23]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[25]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [24]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[26]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [25]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[27]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [26]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[28]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [27]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[29]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [28]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[2]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [1]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[30]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [29]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[31]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [30]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[32]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [31]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[33]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [32]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[34]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [33]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[35]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [34]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[36]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [35]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[37]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [36]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[38]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [37]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[39]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [38]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[3]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [2]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[40]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [39]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[41]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [40]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[42]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [41]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[43]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [42]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[44]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [43]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[45] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[45]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [44]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[47]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [45]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[48]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [46]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[49] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[49]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [47]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[4]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [3]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[50] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[50]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [48]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[54]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [49]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[55]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [50]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[56]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [51]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[57]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [52]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[58]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [53]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[59]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [54]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[5]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [4]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[60]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [55]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[61]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [56]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[62]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [57]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[63] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[63]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [58]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[6]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [5]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[7]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [6]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[8]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [7]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[9]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [8]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_target_hot_i[0]_i_1__0 
       (.I0(match),
        .I1(f_hot2enc_return),
        .I2(match_0),
        .O(m_target_hot_mux[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \gen_arbiter.m_target_hot_i[1]_i_1 
       (.I0(match),
        .I1(f_hot2enc_return),
        .I2(match_0),
        .O(m_target_hot_mux[1]));
  LUT5 #(
    .INIT(32'hF1111111)) 
    \gen_arbiter.m_target_hot_i[1]_i_2__0 
       (.I0(s_axi_araddr[62]),
        .I1(s_axi_araddr[63]),
        .I2(\gen_arbiter.m_mesg_i[50]_i_6__0_n_0 ),
        .I3(\gen_arbiter.m_target_hot_i[1]_i_3__0_n_0 ),
        .I4(\gen_arbiter.m_mesg_i[50]_i_5__0_n_0 ),
        .O(match));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_target_hot_i[1]_i_3__0 
       (.I0(s_axi_araddr[51]),
        .I1(s_axi_araddr[50]),
        .I2(s_axi_araddr[53]),
        .I3(s_axi_araddr[52]),
        .O(\gen_arbiter.m_target_hot_i[1]_i_3__0_n_0 ));
  FDRE \gen_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[1]),
        .Q(Q[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00AA3FAA3FAA3FAA)) 
    \gen_arbiter.m_valid_i_i_1__0 
       (.I0(\gen_arbiter.any_grant_reg_n_0 ),
        .I1(Q[1]),
        .I2(mi_arready),
        .I3(aa_mi_arvalid),
        .I4(Q[0]),
        .I5(m_axi_arready),
        .O(\gen_arbiter.m_valid_i_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_i_1__0_n_0 ),
        .Q(aa_mi_arvalid),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.qual_reg[1]_i_7 
       (.I0(r_issuing_cnt[0]),
        .I1(r_issuing_cnt[1]),
        .O(\gen_master_slots[0].r_issuing_cnt_reg[1] ));
  FDRE \gen_arbiter.qual_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(qual_reg[0]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(qual_reg[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[0]_i_1__0 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I1(aresetn_d),
        .I2(aa_mi_arvalid),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[1]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[1] ),
        .I1(aresetn_d),
        .I2(aa_mi_arvalid),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[0]_i_1__0_n_0 ),
        .Q(\gen_arbiter.s_ready_i_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[1]_i_1_n_0 ),
        .Q(\gen_arbiter.s_ready_i_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \gen_axi.s_axi_arready_i_i_2 
       (.I0(aa_mi_arvalid),
        .I1(mi_arready),
        .I2(Q[1]),
        .I3(p_11_in),
        .O(\gen_arbiter.m_valid_i_reg_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_axi.s_axi_rlast_i_i_2 
       (.I0(\gen_axi.s_axi_rlast_i_i_4_n_0 ),
        .I1(p_11_in),
        .I2(\gen_arbiter.m_mesg_i_reg[63]_0 [33]),
        .I3(\gen_arbiter.m_mesg_i_reg[63]_0 [34]),
        .O(\gen_axi.read_cs_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_axi.s_axi_rlast_i_i_4 
       (.I0(\gen_arbiter.m_mesg_i_reg[63]_0 [35]),
        .I1(\gen_arbiter.m_mesg_i_reg[63]_0 [36]),
        .I2(\gen_arbiter.m_mesg_i_reg[63]_0 [37]),
        .I3(\gen_arbiter.m_mesg_i_reg[63]_0 [38]),
        .I4(\gen_arbiter.m_mesg_i_reg[63]_0 [40]),
        .I5(\gen_arbiter.m_mesg_i_reg[63]_0 [39]),
        .O(\gen_axi.s_axi_rlast_i_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA8000)) 
    \gen_master_slots[1].r_issuing_cnt[8]_i_1 
       (.I0(\gen_master_slots[1].r_issuing_cnt_reg[8] ),
        .I1(aa_mi_arvalid),
        .I2(mi_arready),
        .I3(Q[1]),
        .I4(r_issuing_cnt[2]),
        .O(\gen_arbiter.m_valid_i_reg_2 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_region[0]_i_1__1 
       (.I0(target_region),
        .I1(\gen_arbiter.s_ready_i_reg[1]_0 ),
        .I2(\gen_single_thread.active_region ),
        .O(\gen_arbiter.s_ready_i_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_region[0]_i_1__2 
       (.I0(target_region_1),
        .I1(\gen_arbiter.s_ready_i_reg[0]_0 ),
        .I2(\gen_single_thread.active_region_4 ),
        .O(\gen_arbiter.s_ready_i_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_single_thread.active_target_enc[0]_i_1 
       (.I0(match),
        .I1(\gen_arbiter.s_ready_i_reg[1]_0 ),
        .I2(\gen_single_thread.active_target_enc ),
        .O(\gen_arbiter.s_ready_i_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_single_thread.active_target_enc[0]_i_1__0 
       (.I0(match_0),
        .I1(\gen_arbiter.s_ready_i_reg[0]_0 ),
        .I2(\gen_single_thread.active_target_enc_3 ),
        .O(\gen_arbiter.s_ready_i_reg[0]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_target_hot[0]_i_1__1 
       (.I0(match),
        .I1(\gen_arbiter.s_ready_i_reg[1]_0 ),
        .I2(\gen_single_thread.active_target_hot ),
        .O(\gen_arbiter.s_ready_i_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_target_hot[0]_i_1__2 
       (.I0(match_0),
        .I1(\gen_arbiter.s_ready_i_reg[0]_0 ),
        .I2(\gen_single_thread.active_target_hot_2 ),
        .O(\gen_arbiter.s_ready_i_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axi_arvalid[0]_INST_0 
       (.I0(Q[0]),
        .I1(aa_mi_arvalid),
        .O(m_axi_arvalid));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_20_addr_arbiter" *) 
module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_addr_arbiter_0
   (aa_wm_awgrant_enc,
    f_hot2enc_return,
    aa_sa_awvalid,
    \gen_arbiter.last_rr_hot_reg[0]_0 ,
    D,
    match,
    match_0,
    \gen_arbiter.m_valid_i_reg_0 ,
    ss_aa_awready,
    target_region,
    E,
    Q,
    target_region_1,
    m_axi_awvalid,
    \gen_arbiter.m_valid_i_reg_1 ,
    \gen_axi.s_axi_awready_i_reg ,
    \FSM_onehot_state_reg[3] ,
    \gen_arbiter.m_target_hot_i_reg[1]_0 ,
    \gen_arbiter.m_valid_i_reg_2 ,
    \gen_arbiter.m_mesg_i_reg[1]_0 ,
    \gen_arbiter.m_mesg_i_reg[63]_0 ,
    \gen_arbiter.m_valid_i_reg_3 ,
    SR,
    grant_hot,
    aclk,
    aa_sa_awready,
    aresetn_d,
    grant_hot0,
    w_issuing_cnt,
    s_axi_awvalid,
    m_ready_d,
    m_ready_d_2,
    s_axi_awaddr,
    \gen_master_slots[0].w_issuing_cnt_reg[0] ,
    m_axi_awready,
    m_ready_d_3,
    mi_awready,
    \FSM_onehot_state_reg[1] ,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen,
    \gen_axi.s_axi_bid_i_reg[1] ,
    p_20_in,
    \gen_master_slots[1].w_issuing_cnt_reg[8] ,
    \gen_arbiter.qual_reg_reg[2]_0 );
  output [0:0]aa_wm_awgrant_enc;
  output [0:0]f_hot2enc_return;
  output aa_sa_awvalid;
  output \gen_arbiter.last_rr_hot_reg[0]_0 ;
  output [2:0]D;
  output match;
  output match_0;
  output \gen_arbiter.m_valid_i_reg_0 ;
  output [1:0]ss_aa_awready;
  output [0:0]target_region;
  output [0:0]E;
  output [1:0]Q;
  output [0:0]target_region_1;
  output [0:0]m_axi_awvalid;
  output \gen_arbiter.m_valid_i_reg_1 ;
  output \gen_axi.s_axi_awready_i_reg ;
  output \FSM_onehot_state_reg[3] ;
  output \gen_arbiter.m_target_hot_i_reg[1]_0 ;
  output \gen_arbiter.m_valid_i_reg_2 ;
  output \gen_arbiter.m_mesg_i_reg[1]_0 ;
  output [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  output \gen_arbiter.m_valid_i_reg_3 ;
  input [0:0]SR;
  input grant_hot;
  input aclk;
  input aa_sa_awready;
  input aresetn_d;
  input grant_hot0;
  input [4:0]w_issuing_cnt;
  input [1:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]m_ready_d_2;
  input [63:0]s_axi_awaddr;
  input \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  input [0:0]m_axi_awready;
  input [1:0]m_ready_d_3;
  input [0:0]mi_awready;
  input [0:0]\FSM_onehot_state_reg[1] ;
  input [7:0]s_axi_awqos;
  input [7:0]s_axi_awcache;
  input [3:0]s_axi_awburst;
  input [5:0]s_axi_awprot;
  input [1:0]s_axi_awlock;
  input [5:0]s_axi_awsize;
  input [15:0]s_axi_awlen;
  input \gen_axi.s_axi_bid_i_reg[1] ;
  input [0:0]p_20_in;
  input \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  input [1:0]\gen_arbiter.qual_reg_reg[2]_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[3] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aa_sa_awready;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire aresetn_d;
  wire [0:0]f_hot2enc_return;
  wire \gen_arbiter.any_grant_i_1__0_n_0 ;
  wire \gen_arbiter.any_grant_reg_n_0 ;
  wire \gen_arbiter.grant_hot[0]_i_1__0_n_0 ;
  wire \gen_arbiter.grant_hot[2]_i_1_n_0 ;
  wire \gen_arbiter.grant_hot_reg_n_0_[0] ;
  wire \gen_arbiter.grant_hot_reg_n_0_[2] ;
  wire \gen_arbiter.last_rr_hot[2]_i_6_n_0 ;
  wire \gen_arbiter.last_rr_hot[2]_i_7_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg[0]_0 ;
  wire \gen_arbiter.last_rr_hot_reg_n_0_[0] ;
  wire \gen_arbiter.m_mesg_i[50]_i_5_n_0 ;
  wire \gen_arbiter.m_mesg_i[50]_i_6_n_0 ;
  wire \gen_arbiter.m_mesg_i[50]_i_7_n_0 ;
  wire \gen_arbiter.m_mesg_i[50]_i_8_n_0 ;
  wire \gen_arbiter.m_mesg_i[50]_i_9_n_0 ;
  wire \gen_arbiter.m_mesg_i_reg[1]_0 ;
  wire [58:0]\gen_arbiter.m_mesg_i_reg[63]_0 ;
  wire \gen_arbiter.m_target_hot_i[1]_i_3_n_0 ;
  wire \gen_arbiter.m_target_hot_i_reg[1]_0 ;
  wire \gen_arbiter.m_valid_i_i_1_n_0 ;
  wire \gen_arbiter.m_valid_i_reg_0 ;
  wire \gen_arbiter.m_valid_i_reg_1 ;
  wire \gen_arbiter.m_valid_i_reg_2 ;
  wire \gen_arbiter.m_valid_i_reg_3 ;
  wire [1:0]\gen_arbiter.qual_reg_reg[2]_0 ;
  wire \gen_arbiter.s_ready_i[0]_i_1_n_0 ;
  wire \gen_arbiter.s_ready_i[2]_i_1_n_0 ;
  wire \gen_axi.s_axi_awready_i_reg ;
  wire \gen_axi.s_axi_bid_i_reg[1] ;
  wire \gen_master_slots[0].w_issuing_cnt[3]_i_4_n_0 ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[0] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  wire grant_hot;
  wire grant_hot0;
  wire [0:0]m_axi_awready;
  wire [0:0]m_axi_awvalid;
  wire [63:2]m_mesg_mux;
  wire [0:0]m_ready_d;
  wire [0:0]m_ready_d_2;
  wire [1:0]m_ready_d_3;
  wire [1:0]m_target_hot_mux;
  wire match;
  wire match_0;
  wire [0:0]mi_awready;
  wire p_1_in;
  wire [0:0]p_20_in;
  wire p_31_in;
  wire p_4_in;
  wire [2:0]qual_reg;
  wire [63:0]s_axi_awaddr;
  wire [3:0]s_axi_awburst;
  wire [7:0]s_axi_awcache;
  wire [15:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [5:0]s_axi_awprot;
  wire [7:0]s_axi_awqos;
  wire [5:0]s_axi_awsize;
  wire [1:0]s_axi_awvalid;
  wire [1:0]ss_aa_awready;
  wire [0:0]target_region;
  wire [0:0]target_region_1;
  wire [4:0]w_issuing_cnt;

  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_onehot_state[1]_i_2__1 
       (.I0(\FSM_onehot_state_reg[1] ),
        .I1(m_ready_d_3[0]),
        .I2(aa_sa_awvalid),
        .I3(Q[1]),
        .O(\FSM_onehot_state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_onehot_state[3]_i_4__1 
       (.I0(Q[1]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d_3[0]),
        .O(\gen_arbiter.m_target_hot_i_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h7000707070000000)) 
    \gen_arbiter.any_grant_i_1__0 
       (.I0(aa_sa_awvalid),
        .I1(aa_sa_awready),
        .I2(aresetn_d),
        .I3(grant_hot0),
        .I4(grant_hot),
        .I5(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.any_grant_i_1__0_n_0 ));
  FDRE \gen_arbiter.any_grant_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.any_grant_i_1__0_n_0 ),
        .Q(\gen_arbiter.any_grant_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7770007000000000)) 
    \gen_arbiter.grant_hot[0]_i_1__0 
       (.I0(aa_sa_awvalid),
        .I1(aa_sa_awready),
        .I2(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I3(grant_hot),
        .I4(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .I5(aresetn_d),
        .O(\gen_arbiter.grant_hot[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7770007000000000)) 
    \gen_arbiter.grant_hot[2]_i_1 
       (.I0(aa_sa_awvalid),
        .I1(aa_sa_awready),
        .I2(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .I3(grant_hot),
        .I4(f_hot2enc_return),
        .I5(aresetn_d),
        .O(\gen_arbiter.grant_hot[2]_i_1_n_0 ));
  FDRE \gen_arbiter.grant_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[0]_i_1__0_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \gen_arbiter.grant_hot_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.grant_hot[2]_i_1_n_0 ),
        .Q(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0F08)) 
    \gen_arbiter.last_rr_hot[0]_i_1 
       (.I0(\gen_arbiter.last_rr_hot[2]_i_7_n_0 ),
        .I1(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .I2(\gen_arbiter.last_rr_hot[2]_i_6_n_0 ),
        .I3(p_4_in),
        .O(\gen_arbiter.last_rr_hot_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0F08)) 
    \gen_arbiter.last_rr_hot[2]_i_2 
       (.I0(\gen_arbiter.last_rr_hot[2]_i_6_n_0 ),
        .I1(p_4_in),
        .I2(\gen_arbiter.last_rr_hot[2]_i_7_n_0 ),
        .I3(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(f_hot2enc_return));
  LUT6 #(
    .INIT(64'h0101111101001100)) 
    \gen_arbiter.last_rr_hot[2]_i_3 
       (.I0(aa_sa_awvalid),
        .I1(\gen_arbiter.any_grant_reg_n_0 ),
        .I2(\gen_arbiter.last_rr_hot[2]_i_6_n_0 ),
        .I3(p_4_in),
        .I4(\gen_arbiter.last_rr_hot[2]_i_7_n_0 ),
        .I5(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .O(\gen_arbiter.m_valid_i_reg_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \gen_arbiter.last_rr_hot[2]_i_6 
       (.I0(s_axi_awvalid[0]),
        .I1(qual_reg[0]),
        .I2(m_ready_d_2),
        .I3(ss_aa_awready[0]),
        .O(\gen_arbiter.last_rr_hot[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \gen_arbiter.last_rr_hot[2]_i_7 
       (.I0(s_axi_awvalid[1]),
        .I1(ss_aa_awready[1]),
        .I2(m_ready_d),
        .I3(qual_reg[2]),
        .O(\gen_arbiter.last_rr_hot[2]_i_7_n_0 ));
  FDRE \gen_arbiter.last_rr_hot_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(\gen_arbiter.last_rr_hot_reg[0]_0 ),
        .Q(\gen_arbiter.last_rr_hot_reg_n_0_[0] ),
        .R(SR));
  FDSE \gen_arbiter.last_rr_hot_reg[2] 
       (.C(aclk),
        .CE(grant_hot),
        .D(f_hot2enc_return),
        .Q(p_4_in),
        .S(SR));
  FDRE \gen_arbiter.m_grant_enc_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(f_hot2enc_return),
        .Q(aa_wm_awgrant_enc),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[10]_i_1 
       (.I0(s_axi_awaddr[40]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[8]),
        .O(m_mesg_mux[10]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[11]_i_1 
       (.I0(s_axi_awaddr[41]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[9]),
        .O(m_mesg_mux[11]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[12]_i_1 
       (.I0(s_axi_awaddr[42]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[10]),
        .O(m_mesg_mux[12]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[13]_i_1 
       (.I0(s_axi_awaddr[43]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[11]),
        .O(m_mesg_mux[13]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[14]_i_1 
       (.I0(s_axi_awaddr[44]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[12]),
        .O(m_mesg_mux[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[15]_i_1 
       (.I0(s_axi_awaddr[45]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[13]),
        .O(m_mesg_mux[15]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[16]_i_1 
       (.I0(s_axi_awaddr[46]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[14]),
        .O(m_mesg_mux[16]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[17]_i_1 
       (.I0(s_axi_awaddr[47]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[15]),
        .O(m_mesg_mux[17]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[18]_i_1 
       (.I0(s_axi_awaddr[48]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[16]),
        .O(m_mesg_mux[18]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[19]_i_1 
       (.I0(s_axi_awaddr[49]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[17]),
        .O(m_mesg_mux[19]));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_arbiter.m_mesg_i[1]_i_2 
       (.I0(aa_sa_awvalid),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[20]_i_1 
       (.I0(s_axi_awaddr[50]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[18]),
        .O(m_mesg_mux[20]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[21]_i_1 
       (.I0(s_axi_awaddr[51]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[19]),
        .O(m_mesg_mux[21]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[22]_i_1 
       (.I0(s_axi_awaddr[52]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[20]),
        .O(m_mesg_mux[22]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[23]_i_1 
       (.I0(s_axi_awaddr[53]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[21]),
        .O(m_mesg_mux[23]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[24]_i_1 
       (.I0(s_axi_awaddr[54]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[22]),
        .O(m_mesg_mux[24]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[25]_i_1 
       (.I0(s_axi_awaddr[55]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[23]),
        .O(m_mesg_mux[25]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[26]_i_1 
       (.I0(s_axi_awaddr[56]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[24]),
        .O(m_mesg_mux[26]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[27]_i_1 
       (.I0(s_axi_awaddr[57]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[25]),
        .O(m_mesg_mux[27]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[28]_i_1 
       (.I0(s_axi_awaddr[58]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[26]),
        .O(m_mesg_mux[28]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[29]_i_1 
       (.I0(s_axi_awaddr[59]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[27]),
        .O(m_mesg_mux[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[2]_i_1 
       (.I0(s_axi_awaddr[32]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[0]),
        .O(m_mesg_mux[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[30]_i_1 
       (.I0(s_axi_awaddr[60]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[28]),
        .O(m_mesg_mux[30]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[31]_i_1 
       (.I0(s_axi_awaddr[61]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[29]),
        .O(m_mesg_mux[31]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[32]_i_1 
       (.I0(s_axi_awaddr[62]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[30]),
        .O(m_mesg_mux[32]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[33]_i_1 
       (.I0(s_axi_awaddr[63]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[31]),
        .O(m_mesg_mux[33]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[34]_i_1 
       (.I0(s_axi_awlen[8]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[0]),
        .O(m_mesg_mux[34]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[35]_i_1 
       (.I0(s_axi_awlen[9]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[1]),
        .O(m_mesg_mux[35]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[36]_i_1 
       (.I0(s_axi_awlen[10]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[2]),
        .O(m_mesg_mux[36]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[37]_i_1 
       (.I0(s_axi_awlen[11]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[3]),
        .O(m_mesg_mux[37]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[38]_i_1 
       (.I0(s_axi_awlen[12]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[4]),
        .O(m_mesg_mux[38]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[39]_i_1 
       (.I0(s_axi_awlen[13]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[5]),
        .O(m_mesg_mux[39]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[3]_i_1 
       (.I0(s_axi_awaddr[33]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[1]),
        .O(m_mesg_mux[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[40]_i_1 
       (.I0(s_axi_awlen[14]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[6]),
        .O(m_mesg_mux[40]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[41]_i_1 
       (.I0(s_axi_awlen[15]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlen[7]),
        .O(m_mesg_mux[41]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[42]_i_1 
       (.I0(s_axi_awsize[3]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awsize[0]),
        .O(m_mesg_mux[42]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[43]_i_1 
       (.I0(s_axi_awsize[4]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awsize[1]),
        .O(m_mesg_mux[43]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[44]_i_1 
       (.I0(s_axi_awsize[5]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awsize[2]),
        .O(m_mesg_mux[44]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[45]_i_1 
       (.I0(s_axi_awlock[1]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awlock[0]),
        .O(m_mesg_mux[45]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[47]_i_1 
       (.I0(s_axi_awprot[3]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awprot[0]),
        .O(m_mesg_mux[47]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[48]_i_1 
       (.I0(s_axi_awprot[4]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awprot[1]),
        .O(m_mesg_mux[48]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[49]_i_1 
       (.I0(s_axi_awprot[5]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awprot[2]),
        .O(m_mesg_mux[49]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[4]_i_1 
       (.I0(s_axi_awaddr[34]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[2]),
        .O(m_mesg_mux[4]));
  LUT4 #(
    .INIT(16'hAAC0)) 
    \gen_arbiter.m_mesg_i[50]_i_1 
       (.I0(target_region),
        .I1(match),
        .I2(target_region_1),
        .I3(aa_wm_awgrant_enc),
        .O(m_mesg_mux[50]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_arbiter.m_mesg_i[50]_i_2 
       (.I0(\gen_arbiter.m_mesg_i[50]_i_5_n_0 ),
        .I1(s_axi_awaddr[51]),
        .I2(s_axi_awaddr[50]),
        .I3(s_axi_awaddr[53]),
        .I4(s_axi_awaddr[52]),
        .I5(\gen_arbiter.m_mesg_i[50]_i_6_n_0 ),
        .O(target_region));
  LUT5 #(
    .INIT(32'hF1111111)) 
    \gen_arbiter.m_mesg_i[50]_i_3 
       (.I0(s_axi_awaddr[30]),
        .I1(s_axi_awaddr[31]),
        .I2(\gen_arbiter.m_mesg_i[50]_i_7_n_0 ),
        .I3(\gen_arbiter.m_mesg_i[50]_i_8_n_0 ),
        .I4(\gen_arbiter.m_mesg_i[50]_i_9_n_0 ),
        .O(match));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_arbiter.m_mesg_i[50]_i_4 
       (.I0(\gen_arbiter.m_mesg_i[50]_i_9_n_0 ),
        .I1(s_axi_awaddr[19]),
        .I2(s_axi_awaddr[18]),
        .I3(s_axi_awaddr[21]),
        .I4(s_axi_awaddr[20]),
        .I5(\gen_arbiter.m_mesg_i[50]_i_7_n_0 ),
        .O(target_region_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_mesg_i[50]_i_5 
       (.I0(s_axi_awaddr[57]),
        .I1(s_axi_awaddr[56]),
        .I2(s_axi_awaddr[55]),
        .I3(s_axi_awaddr[54]),
        .O(\gen_arbiter.m_mesg_i[50]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_arbiter.m_mesg_i[50]_i_6 
       (.I0(s_axi_awaddr[58]),
        .I1(s_axi_awaddr[59]),
        .I2(s_axi_awaddr[60]),
        .I3(s_axi_awaddr[61]),
        .I4(s_axi_awaddr[63]),
        .I5(s_axi_awaddr[62]),
        .O(\gen_arbiter.m_mesg_i[50]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_arbiter.m_mesg_i[50]_i_7 
       (.I0(s_axi_awaddr[26]),
        .I1(s_axi_awaddr[27]),
        .I2(s_axi_awaddr[28]),
        .I3(s_axi_awaddr[29]),
        .I4(s_axi_awaddr[31]),
        .I5(s_axi_awaddr[30]),
        .O(\gen_arbiter.m_mesg_i[50]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_mesg_i[50]_i_8 
       (.I0(s_axi_awaddr[19]),
        .I1(s_axi_awaddr[18]),
        .I2(s_axi_awaddr[21]),
        .I3(s_axi_awaddr[20]),
        .O(\gen_arbiter.m_mesg_i[50]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_mesg_i[50]_i_9 
       (.I0(s_axi_awaddr[25]),
        .I1(s_axi_awaddr[24]),
        .I2(s_axi_awaddr[23]),
        .I3(s_axi_awaddr[22]),
        .O(\gen_arbiter.m_mesg_i[50]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[54]_i_1 
       (.I0(s_axi_awburst[2]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awburst[0]),
        .O(m_mesg_mux[54]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[55]_i_1 
       (.I0(s_axi_awburst[3]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awburst[1]),
        .O(m_mesg_mux[55]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[56]_i_1 
       (.I0(s_axi_awcache[4]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awcache[0]),
        .O(m_mesg_mux[56]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[57]_i_1 
       (.I0(s_axi_awcache[5]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awcache[1]),
        .O(m_mesg_mux[57]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[58]_i_1 
       (.I0(s_axi_awcache[6]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awcache[2]),
        .O(m_mesg_mux[58]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[59]_i_1 
       (.I0(s_axi_awcache[7]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awcache[3]),
        .O(m_mesg_mux[59]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[5]_i_1 
       (.I0(s_axi_awaddr[35]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[3]),
        .O(m_mesg_mux[5]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[60]_i_1 
       (.I0(s_axi_awqos[4]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awqos[0]),
        .O(m_mesg_mux[60]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[61]_i_1 
       (.I0(s_axi_awqos[5]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awqos[1]),
        .O(m_mesg_mux[61]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[62]_i_1 
       (.I0(s_axi_awqos[6]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awqos[2]),
        .O(m_mesg_mux[62]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[63]_i_1 
       (.I0(s_axi_awqos[7]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awqos[3]),
        .O(m_mesg_mux[63]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[6]_i_1 
       (.I0(s_axi_awaddr[36]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[4]),
        .O(m_mesg_mux[6]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[7]_i_1 
       (.I0(s_axi_awaddr[37]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[5]),
        .O(m_mesg_mux[7]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[8]_i_1 
       (.I0(s_axi_awaddr[38]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[6]),
        .O(m_mesg_mux[8]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_arbiter.m_mesg_i[9]_i_1 
       (.I0(s_axi_awaddr[39]),
        .I1(aa_wm_awgrant_enc),
        .I2(s_axi_awaddr[7]),
        .O(m_mesg_mux[9]));
  FDRE \gen_arbiter.m_mesg_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[10]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [9]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[11]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [10]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[12]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [11]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[13]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [12]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[14]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [13]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[15]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [14]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[16]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [15]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[17]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [16]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[18]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [17]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[19]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [18]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(aa_wm_awgrant_enc),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [0]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[20]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [19]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[21]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [20]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[22]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [21]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[23]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [22]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[24]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [23]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[25]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [24]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[26]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [25]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[27]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [26]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[28]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [27]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[29]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [28]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[2]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [1]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[30]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [29]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[31]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [30]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[32]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [31]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[33]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [32]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[34]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [33]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[35]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [34]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[36]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [35]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[37]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [36]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[38]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [37]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[39]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [38]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[3]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [2]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[40]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [39]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[41]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [40]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[42]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [41]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[43]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [42]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[44]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [43]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[45] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[45]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [44]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[47]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [45]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[48]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [46]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[49] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[49]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [47]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[4]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [3]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[50] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[50]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [48]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[54]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [49]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[55]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [50]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[56]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [51]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[57]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [52]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[58]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [53]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[59]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [54]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[5]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [4]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[60]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [55]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[61]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [56]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[62]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [57]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[63] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[63]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [58]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[6]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [5]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[7]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [6]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[8]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [7]),
        .R(SR));
  FDRE \gen_arbiter.m_mesg_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(m_mesg_mux[9]),
        .Q(\gen_arbiter.m_mesg_i_reg[63]_0 [8]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \gen_arbiter.m_target_hot_i[0]_i_1 
       (.I0(match),
        .I1(match_0),
        .I2(f_hot2enc_return),
        .O(m_target_hot_mux[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \gen_arbiter.m_target_hot_i[1]_i_1__0 
       (.I0(match),
        .I1(match_0),
        .I2(f_hot2enc_return),
        .O(m_target_hot_mux[1]));
  LUT5 #(
    .INIT(32'hF1111111)) 
    \gen_arbiter.m_target_hot_i[1]_i_2 
       (.I0(s_axi_awaddr[62]),
        .I1(s_axi_awaddr[63]),
        .I2(\gen_arbiter.m_mesg_i[50]_i_6_n_0 ),
        .I3(\gen_arbiter.m_target_hot_i[1]_i_3_n_0 ),
        .I4(\gen_arbiter.m_mesg_i[50]_i_5_n_0 ),
        .O(match_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_arbiter.m_target_hot_i[1]_i_3 
       (.I0(s_axi_awaddr[51]),
        .I1(s_axi_awaddr[50]),
        .I2(s_axi_awaddr[53]),
        .I3(s_axi_awaddr[52]),
        .O(\gen_arbiter.m_target_hot_i[1]_i_3_n_0 ));
  FDRE \gen_arbiter.m_target_hot_i_reg[0] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \gen_arbiter.m_target_hot_i_reg[1] 
       (.C(aclk),
        .CE(grant_hot),
        .D(m_target_hot_mux[1]),
        .Q(Q[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \gen_arbiter.m_valid_i_i_1 
       (.I0(\gen_arbiter.any_grant_reg_n_0 ),
        .I1(aa_sa_awready),
        .I2(aa_sa_awvalid),
        .O(\gen_arbiter.m_valid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.m_valid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.m_valid_i_i_1_n_0 ),
        .Q(aa_sa_awvalid),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[2]_0 [0]),
        .Q(qual_reg[0]),
        .R(SR));
  FDRE \gen_arbiter.qual_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.qual_reg_reg[2]_0 [1]),
        .Q(qual_reg[2]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[0]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[0] ),
        .I1(aresetn_d),
        .I2(aa_sa_awvalid),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_arbiter.s_ready_i[2]_i_1 
       (.I0(\gen_arbiter.grant_hot_reg_n_0_[2] ),
        .I1(aresetn_d),
        .I2(aa_sa_awvalid),
        .I3(\gen_arbiter.any_grant_reg_n_0 ),
        .O(\gen_arbiter.s_ready_i[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[0]_i_1_n_0 ),
        .Q(ss_aa_awready[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_arbiter.s_ready_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_arbiter.s_ready_i[2]_i_1_n_0 ),
        .Q(ss_aa_awready[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \gen_axi.s_axi_awready_i_i_2 
       (.I0(mi_awready),
        .I1(m_ready_d_3[1]),
        .I2(Q[1]),
        .I3(aa_sa_awvalid),
        .O(\gen_axi.s_axi_awready_i_reg ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gen_axi.s_axi_bid_i[1]_i_1 
       (.I0(\gen_arbiter.m_mesg_i_reg[63]_0 [0]),
        .I1(\gen_axi.s_axi_bid_i_reg[1] ),
        .I2(\gen_axi.s_axi_awready_i_reg ),
        .I3(p_20_in),
        .O(\gen_arbiter.m_mesg_i_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \gen_master_slots[0].w_issuing_cnt[1]_i_1 
       (.I0(w_issuing_cnt[1]),
        .I1(w_issuing_cnt[0]),
        .I2(\gen_master_slots[0].w_issuing_cnt[3]_i_4_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \gen_master_slots[0].w_issuing_cnt[2]_i_1 
       (.I0(\gen_master_slots[0].w_issuing_cnt[3]_i_4_n_0 ),
        .I1(w_issuing_cnt[1]),
        .I2(w_issuing_cnt[0]),
        .I3(w_issuing_cnt[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000FFFEFFFF0000)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_1 
       (.I0(w_issuing_cnt[0]),
        .I1(w_issuing_cnt[1]),
        .I2(w_issuing_cnt[2]),
        .I3(w_issuing_cnt[3]),
        .I4(p_31_in),
        .I5(\gen_master_slots[0].w_issuing_cnt_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hBFFD4002)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_2 
       (.I0(\gen_master_slots[0].w_issuing_cnt[3]_i_4_n_0 ),
        .I1(w_issuing_cnt[1]),
        .I2(w_issuing_cnt[0]),
        .I3(w_issuing_cnt[2]),
        .I4(w_issuing_cnt[3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_3 
       (.I0(m_ready_d_3[1]),
        .I1(m_axi_awready),
        .I2(Q[0]),
        .I3(aa_sa_awvalid),
        .O(p_31_in));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \gen_master_slots[0].w_issuing_cnt[3]_i_4 
       (.I0(\gen_master_slots[0].w_issuing_cnt_reg[0] ),
        .I1(aa_sa_awvalid),
        .I2(Q[0]),
        .I3(m_axi_awready),
        .I4(m_ready_d_3[1]),
        .O(\gen_master_slots[0].w_issuing_cnt[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAA00800000)) 
    \gen_master_slots[1].w_issuing_cnt[8]_i_1 
       (.I0(\gen_master_slots[1].w_issuing_cnt_reg[8] ),
        .I1(aa_sa_awvalid),
        .I2(Q[1]),
        .I3(m_ready_d_3[1]),
        .I4(mi_awready),
        .I5(w_issuing_cnt[4]),
        .O(\gen_arbiter.m_valid_i_reg_3 ));
  LUT3 #(
    .INIT(8'h08)) 
    \m_axi_awvalid[0]_INST_0 
       (.I0(Q[0]),
        .I1(aa_sa_awvalid),
        .I2(m_ready_d_3[1]),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \m_ready_d[1]_i_2 
       (.I0(aa_sa_awvalid),
        .I1(Q[1]),
        .O(\gen_arbiter.m_valid_i_reg_2 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \m_ready_d[1]_i_3 
       (.I0(aa_sa_awvalid),
        .I1(Q[0]),
        .O(\gen_arbiter.m_valid_i_reg_1 ));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "2" *) 
(* C_AXI_PROTOCOL = "0" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_CONNECTIVITY_MODE = "1" *) (* C_DEBUG = "1" *) 
(* C_FAMILY = "zynq" *) (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000001001000000000000000000000000000011110" *) (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_M_AXI_READ_CONNECTIVITY = "3" *) (* C_M_AXI_READ_ISSUING = "8" *) (* C_M_AXI_SECURE = "0" *) 
(* C_M_AXI_WRITE_CONNECTIVITY = "5" *) (* C_M_AXI_WRITE_ISSUING = "8" *) (* C_NUM_ADDR_RANGES = "2" *) 
(* C_NUM_MASTER_SLOTS = "1" *) (* C_NUM_SLAVE_SLOTS = "3" *) (* C_R_REGISTER = "0" *) 
(* C_S_AXI_ARB_PRIORITY = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_BASE_ID = "96'b000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000" *) (* C_S_AXI_READ_ACCEPTANCE = "96'b000000000000000000000000000000100000000000000000000000000000100000000000000000000000000000000010" *) 
(* C_S_AXI_SINGLE_THREAD = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_THREAD_ID_WIDTH = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_S_AXI_WRITE_ACCEPTANCE = "96'b000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000010" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_ADDR_DECODE = "1" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b010" *) 
(* P_FAMILY = "zynq" *) (* P_INCR = "2'b01" *) (* P_LEN = "8" *) 
(* P_LOCK = "1" *) (* P_M_AXI_ERR_MODE = "32'b00000000000000000000000000000000" *) (* P_M_AXI_SUPPORTS_READ = "1'b1" *) 
(* P_M_AXI_SUPPORTS_WRITE = "1'b1" *) (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) (* P_RANGE_CHECK = "1" *) 
(* P_S_AXI_BASE_ID = "192'b000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_HIGH_ID = "192'b000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) (* P_S_AXI_SUPPORTS_READ = "3'b011" *) 
(* P_S_AXI_SUPPORTS_WRITE = "3'b101" *) 
module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_axi_crossbar
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [5:0]s_axi_awid;
  input [95:0]s_axi_awaddr;
  input [23:0]s_axi_awlen;
  input [8:0]s_axi_awsize;
  input [5:0]s_axi_awburst;
  input [2:0]s_axi_awlock;
  input [11:0]s_axi_awcache;
  input [8:0]s_axi_awprot;
  input [11:0]s_axi_awqos;
  input [2:0]s_axi_awuser;
  input [2:0]s_axi_awvalid;
  output [2:0]s_axi_awready;
  input [5:0]s_axi_wid;
  input [191:0]s_axi_wdata;
  input [23:0]s_axi_wstrb;
  input [2:0]s_axi_wlast;
  input [2:0]s_axi_wuser;
  input [2:0]s_axi_wvalid;
  output [2:0]s_axi_wready;
  output [5:0]s_axi_bid;
  output [5:0]s_axi_bresp;
  output [2:0]s_axi_buser;
  output [2:0]s_axi_bvalid;
  input [2:0]s_axi_bready;
  input [5:0]s_axi_arid;
  input [95:0]s_axi_araddr;
  input [23:0]s_axi_arlen;
  input [8:0]s_axi_arsize;
  input [5:0]s_axi_arburst;
  input [2:0]s_axi_arlock;
  input [11:0]s_axi_arcache;
  input [8:0]s_axi_arprot;
  input [11:0]s_axi_arqos;
  input [2:0]s_axi_aruser;
  input [2:0]s_axi_arvalid;
  output [2:0]s_axi_arready;
  output [5:0]s_axi_rid;
  output [191:0]s_axi_rdata;
  output [5:0]s_axi_rresp;
  output [2:0]s_axi_rlast;
  output [2:0]s_axi_ruser;
  output [2:0]s_axi_rvalid;
  input [2:0]s_axi_rready;
  output [1:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output [0:0]m_axi_awvalid;
  input [0:0]m_axi_awready;
  output [1:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [0:0]m_axi_wlast;
  output [0:0]m_axi_wuser;
  output [0:0]m_axi_wvalid;
  input [0:0]m_axi_wready;
  input [1:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input [0:0]m_axi_bvalid;
  output [0:0]m_axi_bready;
  output [1:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output [0:0]m_axi_arvalid;
  input [0:0]m_axi_arready;
  input [1:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input [0:0]m_axi_rlast;
  input [0:0]m_axi_ruser;
  input [0:0]m_axi_rvalid;
  output [0:0]m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [0:0]\^m_axi_arid ;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [0:0]m_axi_arready;
  wire [0:0]\^m_axi_arregion ;
  wire [2:0]m_axi_arsize;
  wire [0:0]m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [1:1]\^m_axi_awid ;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [0:0]m_axi_awready;
  wire [0:0]\^m_axi_awregion ;
  wire [2:0]m_axi_awsize;
  wire [0:0]m_axi_awvalid;
  wire [1:0]m_axi_bid;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [0:0]m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire [95:0]s_axi_araddr;
  wire [5:0]s_axi_arburst;
  wire [11:0]s_axi_arcache;
  wire [23:0]s_axi_arlen;
  wire [2:0]s_axi_arlock;
  wire [8:0]s_axi_arprot;
  wire [11:0]s_axi_arqos;
  wire [1:0]\^s_axi_arready ;
  wire [8:0]s_axi_arsize;
  wire [2:0]s_axi_arvalid;
  wire [95:0]s_axi_awaddr;
  wire [5:0]s_axi_awburst;
  wire [11:0]s_axi_awcache;
  wire [23:0]s_axi_awlen;
  wire [2:0]s_axi_awlock;
  wire [8:0]s_axi_awprot;
  wire [11:0]s_axi_awqos;
  wire [2:0]\^s_axi_awready ;
  wire [8:0]s_axi_awsize;
  wire [2:0]s_axi_awvalid;
  wire [2:0]s_axi_bready;
  wire [5:0]\^s_axi_bresp ;
  wire [2:0]\^s_axi_bvalid ;
  wire [127:0]\^s_axi_rdata ;
  wire [1:0]\^s_axi_rlast ;
  wire [2:0]s_axi_rready;
  wire [3:0]\^s_axi_rresp ;
  wire [1:0]\^s_axi_rvalid ;
  wire [191:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [2:0]\^s_axi_wready ;
  wire [23:0]s_axi_wstrb;
  wire [2:0]s_axi_wvalid;

  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \^m_axi_arid [0];
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \^m_axi_arregion [0];
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awid[1] = \^m_axi_awid [1];
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \^m_axi_awregion [0];
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready[2] = \<const0> ;
  assign s_axi_arready[1:0] = \^s_axi_arready [1:0];
  assign s_axi_awready[2] = \^s_axi_awready [2];
  assign s_axi_awready[1] = \<const0> ;
  assign s_axi_awready[0] = \^s_axi_awready [0];
  assign s_axi_bid[5] = \<const0> ;
  assign s_axi_bid[4] = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[5:4] = \^s_axi_bresp [5:4];
  assign s_axi_bresp[3] = \<const0> ;
  assign s_axi_bresp[2] = \<const0> ;
  assign s_axi_bresp[1:0] = \^s_axi_bresp [1:0];
  assign s_axi_buser[2] = \<const0> ;
  assign s_axi_buser[1] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid[2] = \^s_axi_bvalid [2];
  assign s_axi_bvalid[1] = \<const0> ;
  assign s_axi_bvalid[0] = \^s_axi_bvalid [0];
  assign s_axi_rdata[191] = \<const0> ;
  assign s_axi_rdata[190] = \<const0> ;
  assign s_axi_rdata[189] = \<const0> ;
  assign s_axi_rdata[188] = \<const0> ;
  assign s_axi_rdata[187] = \<const0> ;
  assign s_axi_rdata[186] = \<const0> ;
  assign s_axi_rdata[185] = \<const0> ;
  assign s_axi_rdata[184] = \<const0> ;
  assign s_axi_rdata[183] = \<const0> ;
  assign s_axi_rdata[182] = \<const0> ;
  assign s_axi_rdata[181] = \<const0> ;
  assign s_axi_rdata[180] = \<const0> ;
  assign s_axi_rdata[179] = \<const0> ;
  assign s_axi_rdata[178] = \<const0> ;
  assign s_axi_rdata[177] = \<const0> ;
  assign s_axi_rdata[176] = \<const0> ;
  assign s_axi_rdata[175] = \<const0> ;
  assign s_axi_rdata[174] = \<const0> ;
  assign s_axi_rdata[173] = \<const0> ;
  assign s_axi_rdata[172] = \<const0> ;
  assign s_axi_rdata[171] = \<const0> ;
  assign s_axi_rdata[170] = \<const0> ;
  assign s_axi_rdata[169] = \<const0> ;
  assign s_axi_rdata[168] = \<const0> ;
  assign s_axi_rdata[167] = \<const0> ;
  assign s_axi_rdata[166] = \<const0> ;
  assign s_axi_rdata[165] = \<const0> ;
  assign s_axi_rdata[164] = \<const0> ;
  assign s_axi_rdata[163] = \<const0> ;
  assign s_axi_rdata[162] = \<const0> ;
  assign s_axi_rdata[161] = \<const0> ;
  assign s_axi_rdata[160] = \<const0> ;
  assign s_axi_rdata[159] = \<const0> ;
  assign s_axi_rdata[158] = \<const0> ;
  assign s_axi_rdata[157] = \<const0> ;
  assign s_axi_rdata[156] = \<const0> ;
  assign s_axi_rdata[155] = \<const0> ;
  assign s_axi_rdata[154] = \<const0> ;
  assign s_axi_rdata[153] = \<const0> ;
  assign s_axi_rdata[152] = \<const0> ;
  assign s_axi_rdata[151] = \<const0> ;
  assign s_axi_rdata[150] = \<const0> ;
  assign s_axi_rdata[149] = \<const0> ;
  assign s_axi_rdata[148] = \<const0> ;
  assign s_axi_rdata[147] = \<const0> ;
  assign s_axi_rdata[146] = \<const0> ;
  assign s_axi_rdata[145] = \<const0> ;
  assign s_axi_rdata[144] = \<const0> ;
  assign s_axi_rdata[143] = \<const0> ;
  assign s_axi_rdata[142] = \<const0> ;
  assign s_axi_rdata[141] = \<const0> ;
  assign s_axi_rdata[140] = \<const0> ;
  assign s_axi_rdata[139] = \<const0> ;
  assign s_axi_rdata[138] = \<const0> ;
  assign s_axi_rdata[137] = \<const0> ;
  assign s_axi_rdata[136] = \<const0> ;
  assign s_axi_rdata[135] = \<const0> ;
  assign s_axi_rdata[134] = \<const0> ;
  assign s_axi_rdata[133] = \<const0> ;
  assign s_axi_rdata[132] = \<const0> ;
  assign s_axi_rdata[131] = \<const0> ;
  assign s_axi_rdata[130] = \<const0> ;
  assign s_axi_rdata[129] = \<const0> ;
  assign s_axi_rdata[128] = \<const0> ;
  assign s_axi_rdata[127:0] = \^s_axi_rdata [127:0];
  assign s_axi_rid[5] = \<const0> ;
  assign s_axi_rid[4] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast[2] = \<const0> ;
  assign s_axi_rlast[1:0] = \^s_axi_rlast [1:0];
  assign s_axi_rresp[5] = \<const0> ;
  assign s_axi_rresp[4] = \<const0> ;
  assign s_axi_rresp[3:0] = \^s_axi_rresp [3:0];
  assign s_axi_ruser[2] = \<const0> ;
  assign s_axi_ruser[1] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid[2] = \<const0> ;
  assign s_axi_rvalid[1:0] = \^s_axi_rvalid [1:0];
  assign s_axi_wready[2] = \^s_axi_wready [2];
  assign s_axi_wready[1] = \<const0> ;
  assign s_axi_wready[0] = \^s_axi_wready [0];
  GND GND
       (.G(\<const0> ));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_crossbar \gen_samd.crossbar_samd 
       (.D({m_axi_bid,m_axi_bresp}),
        .M_AXI_RREADY(m_axi_rready),
        .Q({m_axi_awqos,m_axi_awcache,m_axi_awburst,\^m_axi_awregion ,m_axi_awprot,m_axi_awlock,m_axi_awsize,m_axi_awlen,m_axi_awaddr,\^m_axi_awid }),
        .aclk(aclk),
        .aresetn(aresetn),
        .\gen_arbiter.m_mesg_i_reg[63] ({m_axi_arqos,m_axi_arcache,m_axi_arburst,\^m_axi_arregion ,m_axi_arprot,m_axi_arlock,m_axi_arsize,m_axi_arlen,m_axi_araddr,\^m_axi_arid }),
        .\gen_arbiter.s_ready_i_reg[0] (\^s_axi_arready [0]),
        .\gen_arbiter.s_ready_i_reg[1] (\^s_axi_arready [1]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .m_valid_i_reg(\^s_axi_bvalid [0]),
        .s_axi_araddr(s_axi_araddr[63:0]),
        .s_axi_arburst(s_axi_arburst[3:0]),
        .s_axi_arcache(s_axi_arcache[7:0]),
        .s_axi_arlen(s_axi_arlen[15:0]),
        .s_axi_arlock(s_axi_arlock[1:0]),
        .s_axi_arprot(s_axi_arprot[5:0]),
        .s_axi_arqos(s_axi_arqos[7:0]),
        .s_axi_arsize(s_axi_arsize[5:0]),
        .s_axi_arvalid(s_axi_arvalid[1:0]),
        .s_axi_awaddr({s_axi_awaddr[95:64],s_axi_awaddr[31:0]}),
        .s_axi_awburst({s_axi_awburst[5:4],s_axi_awburst[1:0]}),
        .s_axi_awcache({s_axi_awcache[11:8],s_axi_awcache[3:0]}),
        .s_axi_awlen({s_axi_awlen[23:16],s_axi_awlen[7:0]}),
        .s_axi_awlock({s_axi_awlock[2],s_axi_awlock[0]}),
        .s_axi_awprot({s_axi_awprot[8:6],s_axi_awprot[2:0]}),
        .s_axi_awqos({s_axi_awqos[11:8],s_axi_awqos[3:0]}),
        .s_axi_awsize({s_axi_awsize[8:6],s_axi_awsize[2:0]}),
        .s_axi_awvalid({s_axi_awvalid[2],s_axi_awvalid[0]}),
        .s_axi_bready({s_axi_bready[2],s_axi_bready[0]}),
        .s_axi_bresp({\^s_axi_bresp [5:4],\^s_axi_bresp [1:0]}),
        .s_axi_bvalid(\^s_axi_bvalid [2]),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rlast(\^s_axi_rlast ),
        .s_axi_rready(s_axi_rready[1:0]),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(\^s_axi_rvalid ),
        .s_axi_wdata({s_axi_wdata[191:128],s_axi_wdata[63:0]}),
        .s_axi_wlast({s_axi_wlast[2],s_axi_wlast[0]}),
        .s_axi_wready({\^s_axi_wready [2],\^s_axi_wready [0]}),
        .s_axi_wstrb({s_axi_wstrb[23:16],s_axi_wstrb[7:0]}),
        .s_axi_wvalid({s_axi_wvalid[2],s_axi_wvalid[0]}),
        .s_ready_i_reg(\^s_axi_awready [0]),
        .s_ready_i_reg_0(\^s_axi_awready [2]));
endmodule

module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_crossbar
   (M_AXI_RREADY,
    s_axi_rdata,
    s_axi_rresp,
    Q,
    \gen_arbiter.s_ready_i_reg[1] ,
    \gen_arbiter.s_ready_i_reg[0] ,
    \gen_arbiter.m_mesg_i_reg[63] ,
    m_valid_i_reg,
    s_ready_i_reg,
    m_axi_bready,
    s_ready_i_reg_0,
    s_axi_bvalid,
    s_axi_rlast,
    s_axi_rvalid,
    m_axi_wdata,
    m_axi_wstrb,
    s_axi_wready,
    m_axi_awvalid,
    m_axi_wvalid,
    m_axi_arvalid,
    m_axi_wlast,
    s_axi_bresp,
    m_axi_bvalid,
    m_axi_rvalid,
    s_axi_awvalid,
    aclk,
    s_axi_bready,
    D,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    m_axi_awready,
    aresetn,
    m_axi_arready,
    s_axi_awaddr,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_rready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wlast,
    m_axi_wready,
    s_axi_awqos,
    s_axi_awcache,
    s_axi_awburst,
    s_axi_awprot,
    s_axi_awlock,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_arqos,
    s_axi_arcache,
    s_axi_arburst,
    s_axi_arprot,
    s_axi_arlock,
    s_axi_arsize,
    s_axi_arlen);
  output [0:0]M_AXI_RREADY;
  output [127:0]s_axi_rdata;
  output [3:0]s_axi_rresp;
  output [58:0]Q;
  output \gen_arbiter.s_ready_i_reg[1] ;
  output \gen_arbiter.s_ready_i_reg[0] ;
  output [58:0]\gen_arbiter.m_mesg_i_reg[63] ;
  output m_valid_i_reg;
  output s_ready_i_reg;
  output [0:0]m_axi_bready;
  output s_ready_i_reg_0;
  output [0:0]s_axi_bvalid;
  output [1:0]s_axi_rlast;
  output [1:0]s_axi_rvalid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [1:0]s_axi_wready;
  output [0:0]m_axi_awvalid;
  output [0:0]m_axi_wvalid;
  output [0:0]m_axi_arvalid;
  output [0:0]m_axi_wlast;
  output [3:0]s_axi_bresp;
  input [0:0]m_axi_bvalid;
  input [0:0]m_axi_rvalid;
  input [1:0]s_axi_awvalid;
  input aclk;
  input [1:0]s_axi_bready;
  input [3:0]D;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [63:0]m_axi_rdata;
  input [0:0]m_axi_awready;
  input aresetn;
  input [0:0]m_axi_arready;
  input [63:0]s_axi_awaddr;
  input [1:0]s_axi_arvalid;
  input [63:0]s_axi_araddr;
  input [1:0]s_axi_rready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input [1:0]s_axi_wvalid;
  input [1:0]s_axi_wlast;
  input [0:0]m_axi_wready;
  input [7:0]s_axi_awqos;
  input [7:0]s_axi_awcache;
  input [3:0]s_axi_awburst;
  input [5:0]s_axi_awprot;
  input [1:0]s_axi_awlock;
  input [5:0]s_axi_awsize;
  input [15:0]s_axi_awlen;
  input [7:0]s_axi_arqos;
  input [7:0]s_axi_arcache;
  input [3:0]s_axi_arburst;
  input [5:0]s_axi_arprot;
  input [1:0]s_axi_arlock;
  input [5:0]s_axi_arsize;
  input [15:0]s_axi_arlen;

  wire [3:0]D;
  wire [0:0]M_AXI_RREADY;
  wire [58:0]Q;
  wire [1:0]aa_mi_artarget_hot;
  wire aa_mi_arvalid;
  wire [1:0]aa_mi_awtarget_hot;
  wire aa_sa_awready;
  wire aa_sa_awvalid;
  wire [1:1]aa_wm_awgrant_enc;
  wire aclk;
  wire addr_arbiter_ar_n_10;
  wire addr_arbiter_ar_n_14;
  wire addr_arbiter_ar_n_17;
  wire addr_arbiter_ar_n_7;
  wire addr_arbiter_ar_n_77;
  wire addr_arbiter_ar_n_78;
  wire addr_arbiter_ar_n_79;
  wire addr_arbiter_ar_n_8;
  wire addr_arbiter_ar_n_80;
  wire addr_arbiter_ar_n_81;
  wire addr_arbiter_ar_n_82;
  wire addr_arbiter_ar_n_83;
  wire addr_arbiter_ar_n_9;
  wire addr_arbiter_aw_n_13;
  wire addr_arbiter_aw_n_18;
  wire addr_arbiter_aw_n_19;
  wire addr_arbiter_aw_n_20;
  wire addr_arbiter_aw_n_21;
  wire addr_arbiter_aw_n_22;
  wire addr_arbiter_aw_n_23;
  wire addr_arbiter_aw_n_3;
  wire addr_arbiter_aw_n_4;
  wire addr_arbiter_aw_n_5;
  wire addr_arbiter_aw_n_6;
  wire addr_arbiter_aw_n_83;
  wire addr_arbiter_aw_n_9;
  wire aresetn;
  wire aresetn_d;
  wire [5:5]bready_carry;
  wire [0:0]f_hot2enc_return;
  wire [1:1]f_hot2enc_return_6;
  wire [58:0]\gen_arbiter.m_mesg_i_reg[63] ;
  wire \gen_arbiter.s_ready_i_reg[0] ;
  wire \gen_arbiter.s_ready_i_reg[1] ;
  wire \gen_decerr_slave.decerr_slave_inst_n_10 ;
  wire \gen_decerr_slave.decerr_slave_inst_n_8 ;
  wire \gen_decerr_slave.decerr_slave_inst_n_9 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_73 ;
  wire \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_74 ;
  wire \gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ;
  wire \gen_master_slots[0].r_issuing_cnt[3]_i_3_n_0 ;
  wire \gen_master_slots[0].reg_slice_mi_n_101 ;
  wire \gen_master_slots[0].reg_slice_mi_n_102 ;
  wire \gen_master_slots[0].reg_slice_mi_n_103 ;
  wire \gen_master_slots[0].reg_slice_mi_n_104 ;
  wire \gen_master_slots[0].reg_slice_mi_n_105 ;
  wire \gen_master_slots[0].reg_slice_mi_n_106 ;
  wire \gen_master_slots[0].reg_slice_mi_n_108 ;
  wire \gen_master_slots[0].reg_slice_mi_n_110 ;
  wire \gen_master_slots[0].reg_slice_mi_n_111 ;
  wire \gen_master_slots[0].reg_slice_mi_n_112 ;
  wire \gen_master_slots[0].reg_slice_mi_n_113 ;
  wire \gen_master_slots[0].reg_slice_mi_n_114 ;
  wire \gen_master_slots[0].reg_slice_mi_n_118 ;
  wire \gen_master_slots[0].reg_slice_mi_n_124 ;
  wire \gen_master_slots[0].reg_slice_mi_n_3 ;
  wire \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_2 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_4 ;
  wire \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_6 ;
  wire \gen_master_slots[1].reg_slice_mi_n_11 ;
  wire \gen_master_slots[1].reg_slice_mi_n_12 ;
  wire \gen_master_slots[1].reg_slice_mi_n_15 ;
  wire \gen_master_slots[1].reg_slice_mi_n_16 ;
  wire \gen_master_slots[1].reg_slice_mi_n_6 ;
  wire \gen_master_slots[1].reg_slice_mi_n_7 ;
  wire \gen_master_slots[1].reg_slice_mi_n_8 ;
  wire \gen_master_slots[1].reg_slice_mi_n_9 ;
  wire [0:0]\gen_single_thread.active_region ;
  wire [0:0]\gen_single_thread.active_region_10 ;
  wire [0:0]\gen_single_thread.active_region_14 ;
  wire [0:0]\gen_single_thread.active_region_18 ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_12 ;
  wire \gen_single_thread.active_target_enc_16 ;
  wire \gen_single_thread.active_target_enc_20 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_11 ;
  wire [0:0]\gen_single_thread.active_target_hot_15 ;
  wire [0:0]\gen_single_thread.active_target_hot_19 ;
  wire \gen_single_thread.s_avalid_en ;
  wire \gen_single_thread.s_avalid_en__0 ;
  wire \gen_single_thread.s_avalid_en__1 ;
  wire \gen_single_thread.s_avalid_en__2 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_41 ;
  wire \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_42 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5 ;
  wire \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_6 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ;
  wire \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_3 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ;
  wire \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_40 ;
  wire \gen_slave_slots[1].gen_si_read.si_transactor_ar_n_42 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_4 ;
  wire \gen_slave_slots[2].gen_si_write.si_transactor_aw_n_6 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_4 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_5 ;
  wire \gen_slave_slots[2].gen_si_write.splitter_aw_si_n_6 ;
  wire \gen_slave_slots[2].gen_si_write.wdata_router_w_n_4 ;
  wire \gen_slave_slots[2].gen_si_write.wdata_router_w_n_5 ;
  wire \gen_slave_slots[2].gen_si_write.wdata_router_w_n_6 ;
  wire \gen_wmux.wmux_aw_fifo/p_7_in ;
  wire grant_hot;
  wire grant_hot0;
  wire grant_hot0_9;
  wire grant_hot_17;
  wire m_avalid;
  wire m_avalid_23;
  wire [0:0]m_axi_arready;
  wire [0:0]m_axi_arvalid;
  wire [0:0]m_axi_awready;
  wire [0:0]m_axi_awvalid;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire [1:0]m_ready_d;
  wire [1:0]m_ready_d_21;
  wire [1:0]m_ready_d_24;
  wire [1:1]m_select_enc;
  wire m_select_enc_13;
  wire m_select_enc_22;
  wire [1:1]m_select_enc_7;
  wire m_valid_i_reg;
  wire match;
  wire match_1;
  wire match_4;
  wire match_5;
  wire [1:1]mi_arready;
  wire [1:1]mi_awready;
  wire mi_bready_1;
  wire mi_rready_1;
  wire p_0_in;
  wire p_0_in36_in;
  wire p_10_in;
  wire p_11_in;
  wire p_13_in;
  wire [0:0]p_16_in;
  wire p_17_in;
  wire p_1_in;
  wire [1:1]p_20_in;
  wire p_2_in;
  wire p_2_in_8;
  wire [8:0]r_issuing_cnt;
  wire reset;
  wire [63:0]s_axi_araddr;
  wire [3:0]s_axi_arburst;
  wire [7:0]s_axi_arcache;
  wire [15:0]s_axi_arlen;
  wire [1:0]s_axi_arlock;
  wire [5:0]s_axi_arprot;
  wire [7:0]s_axi_arqos;
  wire [5:0]s_axi_arsize;
  wire [1:0]s_axi_arvalid;
  wire [63:0]s_axi_awaddr;
  wire [3:0]s_axi_awburst;
  wire [7:0]s_axi_awcache;
  wire [15:0]s_axi_awlen;
  wire [1:0]s_axi_awlock;
  wire [5:0]s_axi_awprot;
  wire [7:0]s_axi_awqos;
  wire [5:0]s_axi_awsize;
  wire [1:0]s_axi_awvalid;
  wire [1:0]s_axi_bready;
  wire [3:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [1:0]s_axi_rlast;
  wire [1:0]s_axi_rready;
  wire [3:0]s_axi_rresp;
  wire [1:0]s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [1:0]s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [1:0]s_axi_wvalid;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [2:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire ss_wr_awready_2;
  wire [3:3]st_mr_bid;
  wire [1:1]st_mr_bvalid;
  wire [2:2]st_mr_rid;
  wire [1:0]st_mr_rlast;
  wire [66:0]st_mr_rmesg;
  wire [1:1]st_mr_rvalid;
  wire [0:0]target_region;
  wire [0:0]target_region_0;
  wire [0:0]target_region_2;
  wire [0:0]target_region_3;
  wire [8:0]w_issuing_cnt;
  wire \wrouter_aw_fifo/areset_d1 ;

  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_addr_arbiter addr_arbiter_ar
       (.D({\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_42 ,\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_41 }),
        .Q(aa_mi_artarget_hot),
        .SR(reset),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .f_hot2enc_return(f_hot2enc_return),
        .\gen_arbiter.last_rr_hot_reg[0]_0 (addr_arbiter_ar_n_10),
        .\gen_arbiter.m_mesg_i_reg[63]_0 (\gen_arbiter.m_mesg_i_reg[63] ),
        .\gen_arbiter.m_valid_i_reg_0 (addr_arbiter_ar_n_7),
        .\gen_arbiter.m_valid_i_reg_1 (addr_arbiter_ar_n_9),
        .\gen_arbiter.m_valid_i_reg_2 (addr_arbiter_ar_n_77),
        .\gen_arbiter.s_ready_i_reg[0]_0 (\gen_arbiter.s_ready_i_reg[0] ),
        .\gen_arbiter.s_ready_i_reg[0]_1 (addr_arbiter_ar_n_80),
        .\gen_arbiter.s_ready_i_reg[0]_2 (addr_arbiter_ar_n_81),
        .\gen_arbiter.s_ready_i_reg[0]_3 (addr_arbiter_ar_n_83),
        .\gen_arbiter.s_ready_i_reg[1]_0 (\gen_arbiter.s_ready_i_reg[1] ),
        .\gen_arbiter.s_ready_i_reg[1]_1 (addr_arbiter_ar_n_78),
        .\gen_arbiter.s_ready_i_reg[1]_2 (addr_arbiter_ar_n_79),
        .\gen_arbiter.s_ready_i_reg[1]_3 (addr_arbiter_ar_n_82),
        .\gen_axi.read_cs_reg[0] (addr_arbiter_ar_n_17),
        .\gen_master_slots[0].r_issuing_cnt_reg[1] (addr_arbiter_ar_n_14),
        .\gen_master_slots[1].r_issuing_cnt_reg[8] (\gen_master_slots[1].reg_slice_mi_n_15 ),
        .\gen_single_thread.active_region (\gen_single_thread.active_region_14 ),
        .\gen_single_thread.active_region_4 (\gen_single_thread.active_region ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_16 ),
        .\gen_single_thread.active_target_enc_3 (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_15 ),
        .\gen_single_thread.active_target_hot_2 (\gen_single_thread.active_target_hot ),
        .grant_hot(grant_hot),
        .grant_hot0(grant_hot0),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_0_sp_1(addr_arbiter_ar_n_8),
        .m_axi_arvalid(m_axi_arvalid),
        .match(match_1),
        .match_0(match),
        .mi_arready(mi_arready),
        .p_11_in(p_11_in),
        .r_issuing_cnt({r_issuing_cnt[8],r_issuing_cnt[2:1]}),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .target_region(target_region_0),
        .target_region_1(target_region));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_addr_arbiter_0 addr_arbiter_aw
       (.D({addr_arbiter_aw_n_4,addr_arbiter_aw_n_5,addr_arbiter_aw_n_6}),
        .E(addr_arbiter_aw_n_13),
        .\FSM_onehot_state_reg[1] (\gen_wmux.wmux_aw_fifo/p_7_in ),
        .\FSM_onehot_state_reg[3] (addr_arbiter_aw_n_20),
        .Q(aa_mi_awtarget_hot),
        .SR(reset),
        .aa_sa_awready(aa_sa_awready),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .f_hot2enc_return(f_hot2enc_return_6),
        .\gen_arbiter.last_rr_hot_reg[0]_0 (addr_arbiter_aw_n_3),
        .\gen_arbiter.m_mesg_i_reg[1]_0 (addr_arbiter_aw_n_23),
        .\gen_arbiter.m_mesg_i_reg[63]_0 (Q),
        .\gen_arbiter.m_target_hot_i_reg[1]_0 (addr_arbiter_aw_n_21),
        .\gen_arbiter.m_valid_i_reg_0 (addr_arbiter_aw_n_9),
        .\gen_arbiter.m_valid_i_reg_1 (addr_arbiter_aw_n_18),
        .\gen_arbiter.m_valid_i_reg_2 (addr_arbiter_aw_n_22),
        .\gen_arbiter.m_valid_i_reg_3 (addr_arbiter_aw_n_83),
        .\gen_arbiter.qual_reg_reg[2]_0 ({\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_6 ,\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5 }),
        .\gen_axi.s_axi_awready_i_reg (addr_arbiter_aw_n_19),
        .\gen_axi.s_axi_bid_i_reg[1] (\gen_decerr_slave.decerr_slave_inst_n_9 ),
        .\gen_master_slots[0].w_issuing_cnt_reg[0] (\gen_master_slots[0].reg_slice_mi_n_3 ),
        .\gen_master_slots[1].w_issuing_cnt_reg[8] (\gen_master_slots[1].reg_slice_mi_n_7 ),
        .grant_hot(grant_hot_17),
        .grant_hot0(grant_hot0_9),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_ready_d(m_ready_d_21[0]),
        .m_ready_d_2(m_ready_d[0]),
        .m_ready_d_3(m_ready_d_24),
        .match(match_5),
        .match_0(match_4),
        .mi_awready(mi_awready),
        .p_20_in(p_20_in),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .ss_aa_awready({ss_aa_awready[2],ss_aa_awready[0]}),
        .target_region(target_region_3),
        .target_region_1(target_region_2),
        .w_issuing_cnt({w_issuing_cnt[8],w_issuing_cnt[3:0]}));
  FDRE #(
    .INIT(1'b0)) 
    aresetn_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(aresetn_d),
        .R(1'b0));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_decerr_slave \gen_decerr_slave.decerr_slave_inst 
       (.\FSM_onehot_gen_axi.write_cs_reg[0]_0 (\gen_decerr_slave.decerr_slave_inst_n_9 ),
        .\FSM_onehot_gen_axi.write_cs_reg[0]_1 (aa_mi_awtarget_hot[1]),
        .\FSM_onehot_gen_axi.write_cs_reg[1]_0 (\gen_decerr_slave.decerr_slave_inst_n_10 ),
        .Q(aa_mi_artarget_hot[1]),
        .SR(reset),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .bready_carry(bready_carry),
        .\gen_axi.read_cnt_reg[7]_0 ({\gen_arbiter.m_mesg_i_reg[63] [40:33],\gen_arbiter.m_mesg_i_reg[63] [0]}),
        .\gen_axi.s_axi_arready_i_reg_0 (addr_arbiter_ar_n_7),
        .\gen_axi.s_axi_awready_i_reg_0 (addr_arbiter_aw_n_19),
        .\gen_axi.s_axi_bid_i_reg[1]_0 (addr_arbiter_aw_n_23),
        .\gen_axi.s_axi_bvalid_i_reg_0 (\gen_decerr_slave.decerr_slave_inst_n_8 ),
        .\gen_axi.s_axi_rlast_i_reg_0 (addr_arbiter_ar_n_17),
        .\gen_axi.s_axi_wready_i_reg_0 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_6 ),
        .m_ready_d(m_ready_d_24[1]),
        .mi_arready(mi_arready),
        .mi_awready(mi_awready),
        .mi_bready_1(mi_bready_1),
        .mi_rready_1(mi_rready_1),
        .p_10_in(p_10_in),
        .p_11_in(p_11_in),
        .p_13_in(p_13_in),
        .p_16_in(p_16_in),
        .p_17_in(p_17_in),
        .p_20_in(p_20_in));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_wdata_mux \gen_master_slots[0].gen_mi_write.wdata_mux_w 
       (.Q(aa_mi_awtarget_hot[0]),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_axi_wvalid[0]_0 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_6 ),
        .m_axi_wvalid_0_sp_1(\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ),
        .m_ready_d(m_ready_d_24[0]),
        .m_select_enc(m_select_enc_13),
        .m_select_enc_0(m_select_enc_22),
        .m_valid_i_reg(\gen_slave_slots[0].gen_si_write.wdata_router_w_n_3 ),
        .m_valid_i_reg_0(\gen_slave_slots[2].gen_si_write.wdata_router_w_n_4 ),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .\storage_data1_reg[0] (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_73 ),
        .\storage_data1_reg[0]_0 (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_74 ),
        .\storage_data1_reg[1] (m_select_enc),
        .\storage_data1_reg[1]_0 (addr_arbiter_aw_n_18));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].r_issuing_cnt[0]_i_1 
       (.I0(r_issuing_cnt[0]),
        .O(\gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_3 
       (.I0(r_issuing_cnt[2]),
        .I1(r_issuing_cnt[1]),
        .I2(r_issuing_cnt[0]),
        .O(\gen_master_slots[0].r_issuing_cnt[3]_i_3_n_0 ));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_111 ),
        .D(\gen_master_slots[0].r_issuing_cnt[0]_i_1_n_0 ),
        .Q(r_issuing_cnt[0]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_111 ),
        .D(\gen_master_slots[0].reg_slice_mi_n_103 ),
        .Q(r_issuing_cnt[1]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_111 ),
        .D(\gen_master_slots[0].reg_slice_mi_n_102 ),
        .Q(r_issuing_cnt[2]),
        .R(reset));
  FDRE \gen_master_slots[0].r_issuing_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_master_slots[0].reg_slice_mi_n_111 ),
        .D(\gen_master_slots[0].reg_slice_mi_n_101 ),
        .Q(r_issuing_cnt[3]),
        .R(reset));
  e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axi_register_slice \gen_master_slots[0].reg_slice_mi 
       (.D({\gen_master_slots[0].reg_slice_mi_n_101 ,\gen_master_slots[0].reg_slice_mi_n_102 ,\gen_master_slots[0].reg_slice_mi_n_103 }),
        .E(\gen_master_slots[0].reg_slice_mi_n_111 ),
        .Q({st_mr_rlast[0],st_mr_rmesg[1:0],st_mr_rmesg[66:65],st_mr_rmesg[63:60],st_mr_rmesg[58:57],st_mr_rmesg[50:49],st_mr_rmesg[47:44],st_mr_rmesg[39:37],st_mr_rmesg[34:33],st_mr_rmesg[31:28],st_mr_rmesg[26:25],st_mr_rmesg[18:17],st_mr_rmesg[15:12],st_mr_rmesg[7:5]}),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0] (\gen_master_slots[0].reg_slice_mi_n_124 ),
        .\gen_arbiter.last_rr_hot[2]_i_4__0 (addr_arbiter_ar_n_14),
        .\gen_arbiter.qual_reg_reg[0] (\gen_master_slots[1].reg_slice_mi_n_7 ),
        .\gen_arbiter.qual_reg_reg[0]_0 (\gen_master_slots[1].reg_slice_mi_n_15 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0] (\gen_master_slots[0].reg_slice_mi_n_113 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_0 (\gen_master_slots[0].r_issuing_cnt[3]_i_3_n_0 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_1 (addr_arbiter_ar_n_8),
        .\gen_master_slots[0].r_issuing_cnt_reg[2] (aa_mi_artarget_hot[0]),
        .\gen_master_slots[0].w_issuing_cnt_reg[3] (\gen_master_slots[0].reg_slice_mi_n_105 ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8] (\gen_master_slots[0].reg_slice_mi_n_112 ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8]_0 (\gen_master_slots[0].reg_slice_mi_n_114 ),
        .\gen_master_slots[1].w_issuing_cnt_reg[8] (\gen_master_slots[0].reg_slice_mi_n_104 ),
        .\gen_master_slots[1].w_issuing_cnt_reg[8]_0 (\gen_master_slots[0].reg_slice_mi_n_106 ),
        .\gen_single_thread.accept_cnt_reg[3] (\gen_master_slots[1].reg_slice_mi_n_16 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_16 ),
        .\gen_single_thread.active_target_enc_0 (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_2 (\gen_single_thread.active_target_enc_12 ),
        .\gen_single_thread.active_target_enc_4 (\gen_single_thread.active_target_enc_20 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_11 ),
        .\gen_single_thread.active_target_hot_3 (\gen_single_thread.active_target_hot_19 ),
        .\gen_single_thread.active_target_hot_7 (\gen_single_thread.active_target_hot_15 ),
        .\gen_single_thread.active_target_hot_8 (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_reg[0] (\gen_master_slots[0].reg_slice_mi_n_3 ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (\gen_master_slots[0].reg_slice_mi_n_108 ),
        .\gen_single_thread.active_target_hot_reg[0]_1 (\gen_master_slots[0].reg_slice_mi_n_110 ),
        .\gen_single_thread.active_target_hot_reg[0]_2 (\gen_master_slots[0].reg_slice_mi_n_118 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[3] (D),
        .\m_payload_i_reg[66] (s_axi_rlast[0]),
        .m_valid_i_reg(m_valid_i_reg),
        .match(match_4),
        .match_1(match_5),
        .match_5(match_1),
        .match_6(match),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in),
        .r_issuing_cnt({r_issuing_cnt[8],r_issuing_cnt[3:0]}),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_axi_bvalid[2] (st_mr_bvalid),
        .\s_axi_bvalid[2]_0 (st_mr_bid),
        .s_axi_rdata({s_axi_rdata[125],s_axi_rdata[120],s_axi_rdata[117:112],s_axi_rdata[109],s_axi_rdata[104:101],s_axi_rdata[97:96],s_axi_rdata[93],s_axi_rdata[88],s_axi_rdata[85:80],s_axi_rdata[77],s_axi_rdata[72:69],s_axi_rdata[65:64],s_axi_rdata[61],s_axi_rdata[56],s_axi_rdata[53:48],s_axi_rdata[45],s_axi_rdata[40:37],s_axi_rdata[33:32],s_axi_rdata[29],s_axi_rdata[24],s_axi_rdata[21:16],s_axi_rdata[13],s_axi_rdata[8:5],s_axi_rdata[1:0]}),
        .s_axi_rlast(s_axi_rlast[1]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .\s_axi_rvalid[0] (st_mr_rvalid),
        .\s_axi_rvalid[0]_0 (st_mr_rid),
        .s_ready_i_reg(M_AXI_RREADY),
        .s_ready_i_reg_0(\gen_master_slots[1].reg_slice_mi_n_6 ),
        .st_mr_rlast(st_mr_rlast[1]),
        .w_issuing_cnt({w_issuing_cnt[8],w_issuing_cnt[3:0]}));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_master_slots[0].w_issuing_cnt[0]_i_1 
       (.I0(w_issuing_cnt[0]),
        .O(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[0] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_13),
        .D(\gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0 ),
        .Q(w_issuing_cnt[0]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[1] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_13),
        .D(addr_arbiter_aw_n_6),
        .Q(w_issuing_cnt[1]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[2] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_13),
        .D(addr_arbiter_aw_n_5),
        .Q(w_issuing_cnt[2]),
        .R(reset));
  FDRE \gen_master_slots[0].w_issuing_cnt_reg[3] 
       (.C(aclk),
        .CE(addr_arbiter_aw_n_13),
        .D(addr_arbiter_aw_n_4),
        .Q(w_issuing_cnt[3]),
        .R(reset));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_wdata_mux__parameterized0 \gen_master_slots[1].gen_mi_write.wdata_mux_w 
       (.\FSM_onehot_state_reg[0] (aa_mi_awtarget_hot[1]),
        .\FSM_onehot_state_reg[1] (addr_arbiter_aw_n_20),
        .Q(\gen_wmux.wmux_aw_fifo/p_7_in ),
        .SR(reset),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_axi.s_axi_wready_i_i_2 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ),
        .\gen_axi.s_axi_wready_i_i_2_0 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_5 ),
        .\gen_axi.s_axi_wready_i_reg (\gen_decerr_slave.decerr_slave_inst_n_10 ),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_23),
        .m_ready_d(m_ready_d_24[0]),
        .m_select_enc(m_select_enc_13),
        .m_select_enc_1(m_select_enc_22),
        .m_valid_i_reg(addr_arbiter_aw_n_21),
        .p_10_in(p_10_in),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wlast[2] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_6 ),
        .s_axi_wready(s_axi_wready),
        .\s_axi_wready[2] (\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_74 ),
        .s_axi_wready_0_sp_1(\gen_master_slots[0].gen_mi_write.wdata_mux_w_n_73 ),
        .\storage_data1_reg[0] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_2 ),
        .\storage_data1_reg[1] (m_select_enc_7),
        .\storage_data1_reg[1]_0 (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_4 ));
  FDRE \gen_master_slots[1].r_issuing_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_ar_n_77),
        .Q(r_issuing_cnt[8]),
        .R(reset));
  e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axi_register_slice_1 \gen_master_slots[1].reg_slice_mi 
       (.Q(st_mr_rlast[0]),
        .aclk(aclk),
        .\aresetn_d_reg[1] (\gen_master_slots[1].reg_slice_mi_n_6 ),
        .\aresetn_d_reg[1]_0 (\gen_master_slots[0].reg_slice_mi_n_124 ),
        .\gen_arbiter.last_rr_hot[2]_i_5 (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_6 ),
        .\gen_arbiter.last_rr_hot_reg[2] (addr_arbiter_aw_n_3),
        .\gen_arbiter.last_rr_hot_reg[2]_0 (\gen_master_slots[0].reg_slice_mi_n_105 ),
        .\gen_arbiter.last_rr_hot_reg[2]_1 (\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_42 ),
        .\gen_arbiter.last_rr_hot_reg[2]_2 (addr_arbiter_ar_n_10),
        .\gen_arbiter.last_rr_hot_reg[2]_3 (\gen_master_slots[0].reg_slice_mi_n_113 ),
        .\gen_arbiter.qual_reg_reg[0] (\gen_master_slots[0].reg_slice_mi_n_108 ),
        .\gen_master_slots[1].w_issuing_cnt_reg[8] (\gen_master_slots[1].reg_slice_mi_n_8 ),
        .\gen_single_thread.accept_cnt_reg[0] (\gen_master_slots[1].reg_slice_mi_n_11 ),
        .\gen_single_thread.accept_cnt_reg[1] (\gen_master_slots[0].reg_slice_mi_n_118 ),
        .\gen_single_thread.accept_cnt_reg[3] (\gen_master_slots[0].reg_slice_mi_n_110 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_12 ),
        .\gen_single_thread.active_target_enc_0 (\gen_single_thread.active_target_enc_20 ),
        .\gen_single_thread.active_target_enc_2 (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_3 (\gen_single_thread.active_target_enc_16 ),
        .\gen_single_thread.active_target_enc_reg[0] (\gen_master_slots[1].reg_slice_mi_n_7 ),
        .\m_payload_i_reg[3] (st_mr_bid),
        .\m_payload_i_reg[3]_0 (\gen_master_slots[1].reg_slice_mi_n_9 ),
        .\m_payload_i_reg[67] (st_mr_rid),
        .\m_payload_i_reg[67]_0 (\gen_master_slots[1].reg_slice_mi_n_16 ),
        .m_valid_i_reg(st_mr_bvalid),
        .m_valid_i_reg_0(st_mr_rvalid),
        .m_valid_i_reg_1(\gen_master_slots[1].reg_slice_mi_n_15 ),
        .m_valid_i_reg_2(\gen_decerr_slave.decerr_slave_inst_n_8 ),
        .match(match_5),
        .match_1(match),
        .mi_bready_1(mi_bready_1),
        .mi_rready_1(mi_rready_1),
        .p_0_in(p_0_in),
        .p_0_in36_in(p_0_in36_in),
        .p_11_in(p_11_in),
        .p_13_in(p_13_in),
        .p_16_in(p_16_in),
        .p_17_in(p_17_in),
        .p_1_in(p_1_in),
        .p_20_in(p_20_in),
        .p_2_in(p_2_in_8),
        .r_issuing_cnt(r_issuing_cnt[8]),
        .s_axi_bready(s_axi_bready),
        .s_axi_rlast(s_axi_rlast[1]),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0_sp_1(\gen_master_slots[1].reg_slice_mi_n_12 ),
        .st_mr_rlast(st_mr_rlast[1]),
        .w_issuing_cnt(w_issuing_cnt[8]));
  FDRE \gen_master_slots[1].w_issuing_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(addr_arbiter_aw_n_83),
        .Q(w_issuing_cnt[8]),
        .R(reset));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_si_transactor \gen_slave_slots[0].gen_si_read.si_transactor_ar 
       (.D(\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_41 ),
        .Q({st_mr_rmesg[1:0],st_mr_rmesg[66:65],st_mr_rmesg[63:60],st_mr_rmesg[58:57],st_mr_rmesg[50:49],st_mr_rmesg[47:44],st_mr_rmesg[39:37],st_mr_rmesg[34:33],st_mr_rmesg[31:28],st_mr_rmesg[26:25],st_mr_rmesg[18:17],st_mr_rmesg[15:12],st_mr_rmesg[7:5]}),
        .SR(reset),
        .aclk(aclk),
        .\gen_arbiter.any_grant_i_3__0_0 (addr_arbiter_ar_n_10),
        .\gen_arbiter.any_grant_reg (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_40 ),
        .\gen_arbiter.any_grant_reg_0 (\gen_master_slots[0].reg_slice_mi_n_112 ),
        .\gen_arbiter.qual_reg_reg[0] (\gen_master_slots[0].reg_slice_mi_n_114 ),
        .\gen_single_thread.accept_cnt_reg[0]_0 (\gen_slave_slots[0].gen_si_read.si_transactor_ar_n_42 ),
        .\gen_single_thread.accept_cnt_reg[0]_1 (\gen_arbiter.s_ready_i_reg[0] ),
        .\gen_single_thread.accept_cnt_reg[1]_0 (\gen_master_slots[1].reg_slice_mi_n_12 ),
        .\gen_single_thread.active_region (\gen_single_thread.active_region ),
        .\gen_single_thread.active_region_reg[0]_0 (addr_arbiter_ar_n_83),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (addr_arbiter_ar_n_81),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (addr_arbiter_ar_n_80),
        .\gen_single_thread.s_avalid_en (\gen_single_thread.s_avalid_en ),
        .\gen_single_thread.s_avalid_en__1 (\gen_single_thread.s_avalid_en__1 ),
        .grant_hot0(grant_hot0),
        .s_axi_araddr(s_axi_araddr[31:30]),
        .s_axi_arvalid(s_axi_arvalid[0]),
        .s_axi_rdata({s_axi_rdata[63:62],s_axi_rdata[60:57],s_axi_rdata[55:54],s_axi_rdata[47:46],s_axi_rdata[44:41],s_axi_rdata[36:34],s_axi_rdata[31:30],s_axi_rdata[28:25],s_axi_rdata[23:22],s_axi_rdata[15:14],s_axi_rdata[12:9],s_axi_rdata[4:2]}),
        .s_axi_rresp(s_axi_rresp[1:0]),
        .target_region(target_region));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_si_transactor__parameterized0 \gen_slave_slots[0].gen_si_write.si_transactor_aw 
       (.SR(reset),
        .aclk(aclk),
        .\gen_arbiter.any_grant_i_2_0 (addr_arbiter_aw_n_3),
        .\gen_arbiter.any_grant_reg (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_4 ),
        .\gen_arbiter.any_grant_reg_0 (\gen_master_slots[0].reg_slice_mi_n_104 ),
        .\gen_arbiter.qual_reg_reg[0] (\gen_master_slots[0].reg_slice_mi_n_106 ),
        .\gen_arbiter.qual_reg_reg[0]_0 (\gen_master_slots[1].reg_slice_mi_n_9 ),
        .\gen_single_thread.accept_cnt_reg[0]_0 (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_6 ),
        .\gen_single_thread.accept_cnt_reg[0]_1 (m_valid_i_reg),
        .\gen_single_thread.accept_cnt_reg[0]_2 (s_ready_i_reg),
        .\gen_single_thread.active_region (\gen_single_thread.active_region_10 ),
        .\gen_single_thread.active_region_reg[0]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_12 ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_11 ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ),
        .\gen_single_thread.s_avalid_en__0 (\gen_single_thread.s_avalid_en__0 ),
        .\gen_single_thread.s_avalid_en__2 (\gen_single_thread.s_avalid_en__2 ),
        .grant_hot0(grant_hot0_9),
        .m_ready_d(m_ready_d[0]),
        .s_axi_awaddr(s_axi_awaddr[31:30]),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .\s_axi_awvalid[0] (\gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5 ),
        .s_axi_bready(s_axi_bready[0]),
        .target_region(target_region_2));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_splitter \gen_slave_slots[0].gen_si_write.splitter_aw_si 
       (.aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_single_thread.active_region (\gen_single_thread.active_region_10 ),
        .\gen_single_thread.active_region_reg[0] (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_6 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_12 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_11 ),
        .m_ready_d(m_ready_d),
        .\m_ready_d_reg[1]_0 (\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4 ),
        .match(match_5),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .s_ready_i_reg(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_0 ),
        .s_ready_i_reg_0(s_ready_i_reg),
        .s_ready_i_reg_1(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_5 ),
        .ss_aa_awready(ss_aa_awready[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .target_region(target_region_2));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_wdata_router \gen_slave_slots[0].gen_si_write.wdata_router_w 
       (.\FSM_onehot_state_reg[1] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_2 ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 (m_select_enc_7),
        .m_avalid(m_avalid),
        .\m_axi_wvalid[0] (m_select_enc),
        .m_ready_d(m_ready_d[1]),
        .m_select_enc(m_select_enc_13),
        .m_valid_i_reg(\gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4 ),
        .match(match_5),
        .s_axi_awvalid(s_axi_awvalid[0]),
        .s_axi_wlast(s_axi_wlast[0]),
        .s_axi_wvalid(s_axi_wvalid[0]),
        .ss_wr_awready_0(ss_wr_awready_0),
        .\storage_data1_reg[1] (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_3 ),
        .\storage_data1_reg[1]_0 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_4 ),
        .\storage_data1_reg[1]_1 (\gen_slave_slots[0].gen_si_write.wdata_router_w_n_5 ));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_si_transactor__parameterized1 \gen_slave_slots[1].gen_si_read.si_transactor_ar 
       (.D(\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_42 ),
        .Q({st_mr_rmesg[1:0],st_mr_rmesg[66:65],st_mr_rmesg[63:60],st_mr_rmesg[58:57],st_mr_rmesg[50:49],st_mr_rmesg[47:44],st_mr_rmesg[39:37],st_mr_rmesg[34:33],st_mr_rmesg[31:28],st_mr_rmesg[26:25],st_mr_rmesg[18:17],st_mr_rmesg[15:12],st_mr_rmesg[7:5]}),
        .SR(reset),
        .aclk(aclk),
        .f_hot2enc_return(f_hot2enc_return),
        .\gen_arbiter.last_rr_hot[2]_i_6__0 (st_mr_rid),
        .\gen_arbiter.last_rr_hot_reg[2] (addr_arbiter_ar_n_9),
        .\gen_arbiter.last_rr_hot_reg[2]_0 (\gen_master_slots[0].reg_slice_mi_n_112 ),
        .\gen_arbiter.last_rr_hot_reg[2]_1 (\gen_master_slots[1].reg_slice_mi_n_11 ),
        .\gen_single_thread.accept_cnt_reg[1]_0 (\gen_arbiter.s_ready_i_reg[1] ),
        .\gen_single_thread.accept_cnt_reg[3]_0 (\gen_slave_slots[1].gen_si_read.si_transactor_ar_n_40 ),
        .\gen_single_thread.active_region (\gen_single_thread.active_region_14 ),
        .\gen_single_thread.active_region_reg[0]_0 (addr_arbiter_ar_n_82),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_16 ),
        .\gen_single_thread.active_target_enc_0 (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (addr_arbiter_ar_n_79),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_15 ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (addr_arbiter_ar_n_78),
        .\gen_single_thread.s_avalid_en (\gen_single_thread.s_avalid_en ),
        .\gen_single_thread.s_avalid_en__1 (\gen_single_thread.s_avalid_en__1 ),
        .grant_hot(grant_hot),
        .p_0_in36_in(p_0_in36_in),
        .p_2_in(p_2_in),
        .s_axi_araddr(s_axi_araddr[63:62]),
        .s_axi_arvalid(s_axi_arvalid[1]),
        .s_axi_rdata({s_axi_rdata[127:126],s_axi_rdata[124:121],s_axi_rdata[119:118],s_axi_rdata[111:110],s_axi_rdata[108:105],s_axi_rdata[100:98],s_axi_rdata[95:94],s_axi_rdata[92:89],s_axi_rdata[87:86],s_axi_rdata[79:78],s_axi_rdata[76:73],s_axi_rdata[68:66]}),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp[3:2]),
        .target_region(target_region_0));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_si_transactor__parameterized2 \gen_slave_slots[2].gen_si_write.si_transactor_aw 
       (.SR(reset),
        .aclk(aclk),
        .bready_carry(bready_carry),
        .f_hot2enc_return(f_hot2enc_return_6),
        .\gen_arbiter.last_rr_hot_reg[2] (addr_arbiter_aw_n_9),
        .\gen_arbiter.last_rr_hot_reg[2]_0 (\gen_master_slots[0].reg_slice_mi_n_104 ),
        .\gen_arbiter.last_rr_hot_reg[2]_1 (\gen_master_slots[1].reg_slice_mi_n_8 ),
        .\gen_single_thread.accept_cnt_reg[3]_0 (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_4 ),
        .\gen_single_thread.accept_cnt_reg[3]_1 (s_ready_i_reg_0),
        .\gen_single_thread.active_region (\gen_single_thread.active_region_18 ),
        .\gen_single_thread.active_region_reg[0]_0 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_6 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_20 ),
        .\gen_single_thread.active_target_enc_0 (\gen_single_thread.active_target_enc_12 ),
        .\gen_single_thread.active_target_enc_reg[0]_0 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_19 ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_5 ),
        .\gen_single_thread.s_avalid_en__0 (\gen_single_thread.s_avalid_en__0 ),
        .\gen_single_thread.s_avalid_en__2 (\gen_single_thread.s_avalid_en__2 ),
        .grant_hot(grant_hot_17),
        .m_ready_d(m_ready_d_21),
        .m_valid_i_reg(st_mr_bid),
        .p_2_in(p_2_in_8),
        .s_axi_awaddr(s_axi_awaddr[63:62]),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .\s_axi_awvalid[2] (\gen_slave_slots[2].gen_si_write.si_transactor_aw_n_6 ),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .ss_aa_awready(ss_aa_awready[2]),
        .ss_wr_awready_2(ss_wr_awready_2),
        .target_region(target_region_3));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_splitter_2 \gen_slave_slots[2].gen_si_write.splitter_aw_si 
       (.aclk(aclk),
        .aresetn_d(aresetn_d),
        .\gen_single_thread.active_region (\gen_single_thread.active_region_18 ),
        .\gen_single_thread.active_region_reg[0] (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_6 ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc_20 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot_19 ),
        .m_ready_d(m_ready_d_21),
        .\m_ready_d_reg[1]_0 (\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_4 ),
        .match(match_4),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .s_ready_i_reg(\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_0 ),
        .s_ready_i_reg_0(s_ready_i_reg_0),
        .s_ready_i_reg_1(\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_5 ),
        .ss_aa_awready(ss_aa_awready[2]),
        .ss_wr_awready_2(ss_wr_awready_2),
        .target_region(target_region_3));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_wdata_router__parameterized0 \gen_slave_slots[2].gen_si_write.wdata_router_w 
       (.\FSM_onehot_state_reg[1] (\gen_master_slots[1].gen_mi_write.wdata_mux_w_n_4 ),
        .SR(reset),
        .aclk(aclk),
        .areset_d1(\wrouter_aw_fifo/areset_d1 ),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 (m_select_enc_7),
        .m_avalid(m_avalid_23),
        .\m_axi_wvalid[0] (m_select_enc),
        .m_ready_d(m_ready_d_21[1]),
        .m_select_enc(m_select_enc_22),
        .m_valid_i_reg(\gen_slave_slots[2].gen_si_write.splitter_aw_si_n_4 ),
        .match(match_4),
        .s_axi_awvalid(s_axi_awvalid[1]),
        .s_axi_wlast(s_axi_wlast[1]),
        .s_axi_wvalid(s_axi_wvalid[1]),
        .\s_axi_wvalid[2] (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_5 ),
        .\s_axi_wvalid[2]_0 (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_6 ),
        .ss_wr_awready_2(ss_wr_awready_2),
        .\storage_data1_reg[1] (\gen_slave_slots[2].gen_si_write.wdata_router_w_n_4 ));
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_splitter_3 splitter_aw_mi
       (.Q(aa_mi_awtarget_hot),
        .aa_sa_awready(aa_sa_awready),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aclk(aclk),
        .aresetn_d(aresetn_d),
        .m_axi_awready(m_axi_awready),
        .m_ready_d(m_ready_d_24),
        .\m_ready_d_reg[1]_0 (addr_arbiter_aw_n_22),
        .\m_ready_d_reg[1]_1 (addr_arbiter_aw_n_18),
        .mi_awready(mi_awready));
endmodule

module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_decerr_slave
   (mi_awready,
    p_10_in,
    p_20_in,
    p_17_in,
    p_11_in,
    mi_arready,
    p_16_in,
    p_13_in,
    \gen_axi.s_axi_bvalid_i_reg_0 ,
    \FSM_onehot_gen_axi.write_cs_reg[0]_0 ,
    \FSM_onehot_gen_axi.write_cs_reg[1]_0 ,
    SR,
    aclk,
    \gen_axi.s_axi_bid_i_reg[1]_0 ,
    aresetn_d,
    mi_rready_1,
    \gen_axi.s_axi_arready_i_reg_0 ,
    Q,
    aa_mi_arvalid,
    \gen_axi.read_cnt_reg[7]_0 ,
    mi_bready_1,
    bready_carry,
    m_ready_d,
    \FSM_onehot_gen_axi.write_cs_reg[0]_1 ,
    aa_sa_awvalid,
    \gen_axi.s_axi_wready_i_reg_0 ,
    \gen_axi.s_axi_awready_i_reg_0 ,
    \gen_axi.s_axi_rlast_i_reg_0 );
  output [0:0]mi_awready;
  output p_10_in;
  output [0:0]p_20_in;
  output p_17_in;
  output p_11_in;
  output [0:0]mi_arready;
  output [0:0]p_16_in;
  output p_13_in;
  output \gen_axi.s_axi_bvalid_i_reg_0 ;
  output \FSM_onehot_gen_axi.write_cs_reg[0]_0 ;
  output \FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  input [0:0]SR;
  input aclk;
  input \gen_axi.s_axi_bid_i_reg[1]_0 ;
  input aresetn_d;
  input mi_rready_1;
  input \gen_axi.s_axi_arready_i_reg_0 ;
  input [0:0]Q;
  input aa_mi_arvalid;
  input [8:0]\gen_axi.read_cnt_reg[7]_0 ;
  input mi_bready_1;
  input [0:0]bready_carry;
  input [0:0]m_ready_d;
  input [0:0]\FSM_onehot_gen_axi.write_cs_reg[0]_1 ;
  input aa_sa_awvalid;
  input \gen_axi.s_axi_wready_i_reg_0 ;
  input \gen_axi.s_axi_awready_i_reg_0 ;
  input \gen_axi.s_axi_rlast_i_reg_0 ;

  wire \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[0]_0 ;
  wire [0:0]\FSM_onehot_gen_axi.write_cs_reg[0]_1 ;
  wire \FSM_onehot_gen_axi.write_cs_reg[1]_0 ;
  wire \FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_mi_arvalid;
  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire [0:0]bready_carry;
  wire \gen_axi.read_cnt[4]_i_2_n_0 ;
  wire \gen_axi.read_cnt[5]_i_2_n_0 ;
  wire \gen_axi.read_cnt[7]_i_1_n_0 ;
  wire \gen_axi.read_cnt[7]_i_3_n_0 ;
  wire \gen_axi.read_cnt[7]_i_4_n_0 ;
  wire [0:0]\gen_axi.read_cnt_reg ;
  wire [8:0]\gen_axi.read_cnt_reg[7]_0 ;
  wire [7:1]\gen_axi.read_cnt_reg__0 ;
  wire \gen_axi.read_cs[0]_i_1_n_0 ;
  wire \gen_axi.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_arready_i_reg_0 ;
  wire \gen_axi.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_awready_i_reg_0 ;
  wire \gen_axi.s_axi_bid_i_reg[1]_0 ;
  wire \gen_axi.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.s_axi_bvalid_i_reg_0 ;
  wire \gen_axi.s_axi_rid_i[0]_i_1_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_1_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_3_n_0 ;
  wire \gen_axi.s_axi_rlast_i_i_5_n_0 ;
  wire \gen_axi.s_axi_rlast_i_reg_0 ;
  wire \gen_axi.s_axi_wready_i_i_1_n_0 ;
  wire \gen_axi.s_axi_wready_i_reg_0 ;
  wire [0:0]m_ready_d;
  wire [0:0]mi_arready;
  wire [0:0]mi_awready;
  wire mi_bready_1;
  wire mi_rready_1;
  wire [7:0]p_0_in;
  wire p_10_in;
  wire p_11_in;
  wire p_13_in;
  wire [0:0]p_16_in;
  wire p_17_in;
  wire [0:0]p_20_in;
  wire s_axi_wready_i;

  LUT4 #(
    .INIT(16'hF5E0)) 
    \FSM_onehot_gen_axi.write_cs[0]_i_1 
       (.I0(s_axi_wready_i),
        .I1(mi_bready_1),
        .I2(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \FSM_onehot_gen_axi.write_cs[1]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .I1(s_axi_wready_i),
        .I2(mi_bready_1),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .O(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hAB88)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .I1(s_axi_wready_i),
        .I2(mi_bready_1),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \FSM_onehot_gen_axi.write_cs[2]_i_2 
       (.I0(mi_awready),
        .I1(m_ready_d),
        .I2(\FSM_onehot_gen_axi.write_cs_reg[0]_1 ),
        .I3(aa_sa_awvalid),
        .I4(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .I5(\gen_axi.s_axi_wready_i_reg_0 ),
        .O(s_axi_wready_i));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_axi.write_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .S(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.write_cs_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.write_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_axi.read_cnt[0]_i_1 
       (.I0(\gen_axi.read_cnt_reg ),
        .I1(p_11_in),
        .I2(\gen_axi.read_cnt_reg[7]_0 [1]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \gen_axi.read_cnt[1]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [2]),
        .I1(p_11_in),
        .I2(\gen_axi.read_cnt_reg ),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFC03AAAA)) 
    \gen_axi.read_cnt[2]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [3]),
        .I1(\gen_axi.read_cnt_reg ),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg__0 [2]),
        .I4(p_11_in),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFC0003AAAAAAAA)) 
    \gen_axi.read_cnt[3]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [4]),
        .I1(\gen_axi.read_cnt_reg__0 [2]),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg ),
        .I4(\gen_axi.read_cnt_reg__0 [3]),
        .I5(p_11_in),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[4]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [5]),
        .I1(\gen_axi.read_cnt[4]_i_2_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [4]),
        .I3(p_11_in),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_axi.read_cnt[4]_i_2 
       (.I0(\gen_axi.read_cnt_reg__0 [2]),
        .I1(\gen_axi.read_cnt_reg__0 [1]),
        .I2(\gen_axi.read_cnt_reg ),
        .I3(\gen_axi.read_cnt_reg__0 [3]),
        .O(\gen_axi.read_cnt[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[5]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [6]),
        .I1(\gen_axi.read_cnt_reg__0 [5]),
        .I2(\gen_axi.read_cnt[5]_i_2_n_0 ),
        .I3(p_11_in),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gen_axi.read_cnt[5]_i_2 
       (.I0(\gen_axi.read_cnt_reg__0 [3]),
        .I1(\gen_axi.read_cnt_reg ),
        .I2(\gen_axi.read_cnt_reg__0 [1]),
        .I3(\gen_axi.read_cnt_reg__0 [2]),
        .I4(\gen_axi.read_cnt_reg__0 [4]),
        .O(\gen_axi.read_cnt[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC3AA)) 
    \gen_axi.read_cnt[6]_i_1 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [7]),
        .I1(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [6]),
        .I3(p_11_in),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h8F80808080808080)) 
    \gen_axi.read_cnt[7]_i_1 
       (.I0(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I1(mi_rready_1),
        .I2(p_11_in),
        .I3(Q),
        .I4(mi_arready),
        .I5(aa_mi_arvalid),
        .O(\gen_axi.read_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFC03AAAA)) 
    \gen_axi.read_cnt[7]_i_2 
       (.I0(\gen_axi.read_cnt_reg[7]_0 [8]),
        .I1(\gen_axi.read_cnt_reg__0 [6]),
        .I2(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I3(\gen_axi.read_cnt_reg__0 [7]),
        .I4(p_11_in),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \gen_axi.read_cnt[7]_i_3 
       (.I0(\gen_axi.read_cnt_reg__0 [6]),
        .I1(\gen_axi.read_cnt[7]_i_4_n_0 ),
        .I2(\gen_axi.read_cnt_reg__0 [7]),
        .O(\gen_axi.read_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_axi.read_cnt[7]_i_4 
       (.I0(\gen_axi.read_cnt_reg__0 [5]),
        .I1(\gen_axi.read_cnt_reg__0 [4]),
        .I2(\gen_axi.read_cnt_reg__0 [2]),
        .I3(\gen_axi.read_cnt_reg__0 [1]),
        .I4(\gen_axi.read_cnt_reg ),
        .I5(\gen_axi.read_cnt_reg__0 [3]),
        .O(\gen_axi.read_cnt[7]_i_4_n_0 ));
  FDRE \gen_axi.read_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\gen_axi.read_cnt_reg ),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\gen_axi.read_cnt_reg__0 [1]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\gen_axi.read_cnt_reg__0 [2]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\gen_axi.read_cnt_reg__0 [3]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\gen_axi.read_cnt_reg__0 [4]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\gen_axi.read_cnt_reg__0 [5]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[6] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\gen_axi.read_cnt_reg__0 [6]),
        .R(SR));
  FDRE \gen_axi.read_cnt_reg[7] 
       (.C(aclk),
        .CE(\gen_axi.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\gen_axi.read_cnt_reg__0 [7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hBFB0B0B0B0B0B0B0)) 
    \gen_axi.read_cs[0]_i_1 
       (.I0(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I1(mi_rready_1),
        .I2(p_11_in),
        .I3(Q),
        .I4(mi_arready),
        .I5(aa_mi_arvalid),
        .O(\gen_axi.read_cs[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.read_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.read_cs[0]_i_1_n_0 ),
        .Q(p_11_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAA08AA00000000)) 
    \gen_axi.s_axi_arready_i_i_1 
       (.I0(aresetn_d),
        .I1(mi_rready_1),
        .I2(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I3(p_11_in),
        .I4(mi_arready),
        .I5(\gen_axi.s_axi_arready_i_reg_0 ),
        .O(\gen_axi.s_axi_arready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_arready_i_i_1_n_0 ),
        .Q(mi_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEEF000)) 
    \gen_axi.s_axi_awready_i_i_1 
       (.I0(\FSM_onehot_gen_axi.write_cs_reg[1]_0 ),
        .I1(\gen_axi.s_axi_awready_i_reg_0 ),
        .I2(mi_bready_1),
        .I3(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .I5(mi_awready),
        .O(\gen_axi.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_awready_i_i_1_n_0 ),
        .Q(mi_awready),
        .R(SR));
  FDRE \gen_axi.s_axi_bid_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bid_i_reg[1]_0 ),
        .Q(p_20_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hF7F0)) 
    \gen_axi.s_axi_bvalid_i_i_1 
       (.I0(mi_bready_1),
        .I1(\FSM_onehot_gen_axi.write_cs_reg_n_0_[2] ),
        .I2(\gen_axi.s_axi_wready_i_reg_0 ),
        .I3(p_17_in),
        .O(\gen_axi.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_bvalid_i_i_1_n_0 ),
        .Q(p_17_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAEAAAAAAA2AAA)) 
    \gen_axi.s_axi_rid_i[0]_i_1 
       (.I0(p_16_in),
        .I1(aa_mi_arvalid),
        .I2(mi_arready),
        .I3(Q),
        .I4(p_11_in),
        .I5(\gen_axi.read_cnt_reg[7]_0 [0]),
        .O(\gen_axi.s_axi_rid_i[0]_i_1_n_0 ));
  FDRE \gen_axi.s_axi_rid_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rid_i[0]_i_1_n_0 ),
        .Q(p_16_in),
        .R(SR));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \gen_axi.s_axi_rlast_i_i_1 
       (.I0(p_11_in),
        .I1(\gen_axi.read_cnt[7]_i_3_n_0 ),
        .I2(\gen_axi.s_axi_rlast_i_reg_0 ),
        .I3(\gen_axi.s_axi_rlast_i_i_3_n_0 ),
        .I4(p_13_in),
        .O(\gen_axi.s_axi_rlast_i_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \gen_axi.s_axi_rlast_i_i_3 
       (.I0(\gen_axi.read_cnt_reg__0 [2]),
        .I1(\gen_axi.read_cnt_reg__0 [1]),
        .I2(mi_rready_1),
        .I3(\gen_axi.s_axi_rlast_i_i_5_n_0 ),
        .I4(\gen_axi.s_axi_arready_i_reg_0 ),
        .O(\gen_axi.s_axi_rlast_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \gen_axi.s_axi_rlast_i_i_5 
       (.I0(\gen_axi.read_cnt_reg__0 [3]),
        .I1(\gen_axi.read_cnt_reg__0 [4]),
        .I2(\gen_axi.read_cnt_reg__0 [5]),
        .I3(\gen_axi.read_cnt_reg__0 [6]),
        .I4(\gen_axi.read_cnt_reg__0 [7]),
        .I5(p_11_in),
        .O(\gen_axi.s_axi_rlast_i_i_5_n_0 ));
  FDRE \gen_axi.s_axi_rlast_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_rlast_i_i_1_n_0 ),
        .Q(p_13_in),
        .R(SR));
  LUT4 #(
    .INIT(16'h4F44)) 
    \gen_axi.s_axi_wready_i_i_1 
       (.I0(\gen_axi.s_axi_awready_i_reg_0 ),
        .I1(\FSM_onehot_gen_axi.write_cs_reg[0]_0 ),
        .I2(\gen_axi.s_axi_wready_i_reg_0 ),
        .I3(p_10_in),
        .O(\gen_axi.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.s_axi_wready_i_i_1_n_0 ),
        .Q(p_10_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    m_valid_i_i_1
       (.I0(p_17_in),
        .I1(mi_bready_1),
        .I2(bready_carry),
        .O(\gen_axi.s_axi_bvalid_i_reg_0 ));
endmodule

module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_si_transactor
   (\gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.active_region ,
    s_axi_rdata,
    s_axi_rresp,
    grant_hot0,
    \gen_single_thread.s_avalid_en ,
    D,
    \gen_single_thread.accept_cnt_reg[0]_0 ,
    SR,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    aclk,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    \gen_single_thread.active_region_reg[0]_0 ,
    Q,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_single_thread.s_avalid_en__1 ,
    \gen_arbiter.any_grant_reg ,
    \gen_arbiter.any_grant_reg_0 ,
    \gen_arbiter.any_grant_i_3__0_0 ,
    \gen_single_thread.accept_cnt_reg[1]_0 ,
    s_axi_arvalid,
    s_axi_araddr,
    target_region,
    \gen_single_thread.accept_cnt_reg[0]_1 );
  output \gen_single_thread.active_target_enc ;
  output [0:0]\gen_single_thread.active_target_hot ;
  output [0:0]\gen_single_thread.active_region ;
  output [33:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output grant_hot0;
  output \gen_single_thread.s_avalid_en ;
  output [0:0]D;
  output \gen_single_thread.accept_cnt_reg[0]_0 ;
  input [0:0]SR;
  input \gen_single_thread.active_target_enc_reg[0]_0 ;
  input aclk;
  input \gen_single_thread.active_target_hot_reg[0]_0 ;
  input \gen_single_thread.active_region_reg[0]_0 ;
  input [35:0]Q;
  input \gen_arbiter.qual_reg_reg[0] ;
  input \gen_single_thread.s_avalid_en__1 ;
  input \gen_arbiter.any_grant_reg ;
  input \gen_arbiter.any_grant_reg_0 ;
  input \gen_arbiter.any_grant_i_3__0_0 ;
  input \gen_single_thread.accept_cnt_reg[1]_0 ;
  input [0:0]s_axi_arvalid;
  input [1:0]s_axi_araddr;
  input [0:0]target_region;
  input \gen_single_thread.accept_cnt_reg[0]_1 ;

  wire [0:0]D;
  wire [35:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.any_grant_i_3__0_0 ;
  wire \gen_arbiter.any_grant_i_5_n_0 ;
  wire \gen_arbiter.any_grant_reg ;
  wire \gen_arbiter.any_grant_reg_0 ;
  wire \gen_arbiter.qual_reg[0]_i_5__0_n_0 ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire [1:0]\gen_single_thread.accept_cnt ;
  wire \gen_single_thread.accept_cnt[0]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt_reg[0]_0 ;
  wire \gen_single_thread.accept_cnt_reg[0]_1 ;
  wire \gen_single_thread.accept_cnt_reg[1]_0 ;
  wire [0:0]\gen_single_thread.active_region ;
  wire \gen_single_thread.active_region_reg[0]_0 ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_reg[0]_0 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.s_avalid_en ;
  wire \gen_single_thread.s_avalid_en__1 ;
  wire grant_hot0;
  wire [1:0]s_axi_araddr;
  wire [0:0]s_axi_arvalid;
  wire [33:0]s_axi_rdata;
  wire [1:0]s_axi_rresp;
  wire [0:0]target_region;

  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \gen_arbiter.any_grant_i_3__0 
       (.I0(\gen_single_thread.s_avalid_en ),
        .I1(\gen_arbiter.any_grant_i_5_n_0 ),
        .I2(\gen_arbiter.qual_reg_reg[0] ),
        .I3(\gen_single_thread.s_avalid_en__1 ),
        .I4(\gen_arbiter.any_grant_reg ),
        .I5(\gen_arbiter.any_grant_reg_0 ),
        .O(grant_hot0));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'hA2AA)) 
    \gen_arbiter.any_grant_i_5 
       (.I0(\gen_arbiter.any_grant_i_3__0_0 ),
        .I1(\gen_single_thread.accept_cnt_reg[1]_0 ),
        .I2(\gen_single_thread.accept_cnt [0]),
        .I3(\gen_single_thread.accept_cnt [1]),
        .O(\gen_arbiter.any_grant_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_arbiter.last_rr_hot[2]_i_5__0 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .O(\gen_single_thread.accept_cnt_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h88088888FFFFFFFF)) 
    \gen_arbiter.qual_reg[0]_i_1__0 
       (.I0(\gen_single_thread.s_avalid_en ),
        .I1(\gen_arbiter.qual_reg_reg[0] ),
        .I2(\gen_single_thread.accept_cnt_reg[1]_0 ),
        .I3(\gen_single_thread.accept_cnt [0]),
        .I4(\gen_single_thread.accept_cnt [1]),
        .I5(s_axi_arvalid),
        .O(D));
  LUT6 #(
    .INIT(64'h5555FF5555FD5557)) 
    \gen_arbiter.qual_reg[0]_i_2__0 
       (.I0(\gen_arbiter.qual_reg[0]_i_5__0_n_0 ),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(target_region),
        .I4(\gen_single_thread.active_target_enc ),
        .I5(\gen_single_thread.active_region ),
        .O(\gen_single_thread.s_avalid_en ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.qual_reg[0]_i_5__0 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .O(\gen_arbiter.qual_reg[0]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h5AA4)) 
    \gen_single_thread.accept_cnt[0]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg[0]_1 ),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(\gen_single_thread.accept_cnt_reg[1]_0 ),
        .I3(\gen_single_thread.accept_cnt [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h6CC8)) 
    \gen_single_thread.accept_cnt[1]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg[1]_0 ),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(\gen_single_thread.accept_cnt [0]),
        .I3(\gen_single_thread.accept_cnt_reg[0]_1 ),
        .O(\gen_single_thread.accept_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[0]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[1]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt [1]),
        .R(SR));
  FDRE \gen_single_thread.active_region_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_region_reg[0]_0 ),
        .Q(\gen_single_thread.active_region ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_enc ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_hot ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[4]),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[5]),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[6]),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[7]),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[8]),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[9]),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[10]),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[11]),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[12]),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[13]),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[14]),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[0]),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[15]),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[16]),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[34]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[17]),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[35]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[18]),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[36]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[19]),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[1]),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[41]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[20]),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[42]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[21]),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[43]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[22]),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[44]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[23]),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[46]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[24]),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[47]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[25]),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[2]),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[54]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[26]),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[55]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[27]),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[57]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[28]),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[58]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[29]),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[59]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[30]),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[60]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[31]),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[62]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[32]),
        .O(s_axi_rdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[63]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[33]),
        .O(s_axi_rdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[3]),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[34]),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[35]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_20_si_transactor" *) 
module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_si_transactor__parameterized0
   (\gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.active_region ,
    grant_hot0,
    \gen_single_thread.s_avalid_en__0 ,
    \s_axi_awvalid[0] ,
    \gen_single_thread.accept_cnt_reg[0]_0 ,
    SR,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    aclk,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    \gen_single_thread.active_region_reg[0]_0 ,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_single_thread.s_avalid_en__2 ,
    \gen_arbiter.any_grant_reg ,
    \gen_arbiter.any_grant_reg_0 ,
    \gen_single_thread.accept_cnt_reg[0]_1 ,
    s_axi_bready,
    \gen_arbiter.any_grant_i_2_0 ,
    s_axi_awvalid,
    m_ready_d,
    \gen_arbiter.qual_reg_reg[0]_0 ,
    s_axi_awaddr,
    target_region,
    \gen_single_thread.accept_cnt_reg[0]_2 );
  output \gen_single_thread.active_target_enc ;
  output [0:0]\gen_single_thread.active_target_hot ;
  output [0:0]\gen_single_thread.active_region ;
  output grant_hot0;
  output \gen_single_thread.s_avalid_en__0 ;
  output [0:0]\s_axi_awvalid[0] ;
  output \gen_single_thread.accept_cnt_reg[0]_0 ;
  input [0:0]SR;
  input \gen_single_thread.active_target_enc_reg[0]_0 ;
  input aclk;
  input \gen_single_thread.active_target_hot_reg[0]_0 ;
  input \gen_single_thread.active_region_reg[0]_0 ;
  input \gen_arbiter.qual_reg_reg[0] ;
  input \gen_single_thread.s_avalid_en__2 ;
  input \gen_arbiter.any_grant_reg ;
  input \gen_arbiter.any_grant_reg_0 ;
  input \gen_single_thread.accept_cnt_reg[0]_1 ;
  input [0:0]s_axi_bready;
  input \gen_arbiter.any_grant_i_2_0 ;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input \gen_arbiter.qual_reg_reg[0]_0 ;
  input [1:0]s_axi_awaddr;
  input [0:0]target_region;
  input \gen_single_thread.accept_cnt_reg[0]_2 ;

  wire [0:0]SR;
  wire aclk;
  wire \gen_arbiter.any_grant_i_2_0 ;
  wire \gen_arbiter.any_grant_i_3_n_0 ;
  wire \gen_arbiter.any_grant_reg ;
  wire \gen_arbiter.any_grant_reg_0 ;
  wire \gen_arbiter.qual_reg[0]_i_6_n_0 ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0]_0 ;
  wire [1:0]\gen_single_thread.accept_cnt ;
  wire \gen_single_thread.accept_cnt[0]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt_reg[0]_0 ;
  wire \gen_single_thread.accept_cnt_reg[0]_1 ;
  wire \gen_single_thread.accept_cnt_reg[0]_2 ;
  wire [0:0]\gen_single_thread.active_region ;
  wire \gen_single_thread.active_region_reg[0]_0 ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_reg[0]_0 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.s_avalid_en__0 ;
  wire \gen_single_thread.s_avalid_en__2 ;
  wire grant_hot0;
  wire [0:0]m_ready_d;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]\s_axi_awvalid[0] ;
  wire [0:0]s_axi_bready;
  wire [0:0]target_region;

  LUT6 #(
    .INIT(64'hFF80808080808080)) 
    \gen_arbiter.any_grant_i_2 
       (.I0(\gen_single_thread.s_avalid_en__0 ),
        .I1(\gen_arbiter.any_grant_i_3_n_0 ),
        .I2(\gen_arbiter.qual_reg_reg[0] ),
        .I3(\gen_single_thread.s_avalid_en__2 ),
        .I4(\gen_arbiter.any_grant_reg ),
        .I5(\gen_arbiter.any_grant_reg_0 ),
        .O(grant_hot0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT5 #(
    .INIT(32'hFBBB0000)) 
    \gen_arbiter.any_grant_i_3 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(\gen_single_thread.accept_cnt_reg[0]_1 ),
        .I3(s_axi_bready),
        .I4(\gen_arbiter.any_grant_i_2_0 ),
        .O(\gen_arbiter.any_grant_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFDDDFDDDFDDDDDDD)) 
    \gen_arbiter.qual_reg[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d),
        .I2(\gen_single_thread.s_avalid_en__0 ),
        .I3(\gen_arbiter.qual_reg_reg[0] ),
        .I4(\gen_single_thread.accept_cnt_reg[0]_0 ),
        .I5(\gen_arbiter.qual_reg_reg[0]_0 ),
        .O(\s_axi_awvalid[0] ));
  LUT6 #(
    .INIT(64'h5555FF5555FD5557)) 
    \gen_arbiter.qual_reg[0]_i_2 
       (.I0(\gen_arbiter.qual_reg[0]_i_6_n_0 ),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[1]),
        .I3(target_region),
        .I4(\gen_single_thread.active_target_enc ),
        .I5(\gen_single_thread.active_region ),
        .O(\gen_single_thread.s_avalid_en__0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_arbiter.qual_reg[0]_i_4 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .O(\gen_single_thread.accept_cnt_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_arbiter.qual_reg[0]_i_6 
       (.I0(\gen_single_thread.accept_cnt [0]),
        .I1(\gen_single_thread.accept_cnt [1]),
        .O(\gen_arbiter.qual_reg[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'hA5554AAA)) 
    \gen_single_thread.accept_cnt[0]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg[0]_2 ),
        .I1(\gen_single_thread.accept_cnt [1]),
        .I2(s_axi_bready),
        .I3(\gen_single_thread.accept_cnt_reg[0]_1 ),
        .I4(\gen_single_thread.accept_cnt [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT5 #(
    .INIT(32'h87F0F070)) 
    \gen_single_thread.accept_cnt[1]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg[0]_1 ),
        .I1(s_axi_bready),
        .I2(\gen_single_thread.accept_cnt [1]),
        .I3(\gen_single_thread.accept_cnt [0]),
        .I4(\gen_single_thread.accept_cnt_reg[0]_2 ),
        .O(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[0]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.accept_cnt[1]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt [1]),
        .R(SR));
  FDRE \gen_single_thread.active_region_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_region_reg[0]_0 ),
        .Q(\gen_single_thread.active_region ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_enc ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_hot ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_20_si_transactor" *) 
module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_si_transactor__parameterized1
   (\gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.active_region ,
    s_axi_rdata,
    s_axi_rresp,
    grant_hot,
    \gen_single_thread.accept_cnt_reg[3]_0 ,
    \gen_single_thread.s_avalid_en__1 ,
    D,
    p_0_in36_in,
    SR,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    aclk,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    \gen_single_thread.active_region_reg[0]_0 ,
    Q,
    \gen_arbiter.last_rr_hot_reg[2] ,
    \gen_arbiter.last_rr_hot_reg[2]_0 ,
    \gen_arbiter.last_rr_hot_reg[2]_1 ,
    \gen_single_thread.s_avalid_en ,
    f_hot2enc_return,
    p_2_in,
    s_axi_arvalid,
    s_axi_araddr,
    target_region,
    \gen_single_thread.accept_cnt_reg[1]_0 ,
    s_axi_rready,
    \gen_arbiter.last_rr_hot[2]_i_6__0 ,
    \gen_single_thread.active_target_enc_0 );
  output \gen_single_thread.active_target_enc ;
  output [0:0]\gen_single_thread.active_target_hot ;
  output [0:0]\gen_single_thread.active_region ;
  output [33:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output grant_hot;
  output \gen_single_thread.accept_cnt_reg[3]_0 ;
  output \gen_single_thread.s_avalid_en__1 ;
  output [0:0]D;
  output p_0_in36_in;
  input [0:0]SR;
  input \gen_single_thread.active_target_enc_reg[0]_0 ;
  input aclk;
  input \gen_single_thread.active_target_hot_reg[0]_0 ;
  input \gen_single_thread.active_region_reg[0]_0 ;
  input [35:0]Q;
  input \gen_arbiter.last_rr_hot_reg[2] ;
  input \gen_arbiter.last_rr_hot_reg[2]_0 ;
  input \gen_arbiter.last_rr_hot_reg[2]_1 ;
  input \gen_single_thread.s_avalid_en ;
  input [0:0]f_hot2enc_return;
  input p_2_in;
  input [0:0]s_axi_arvalid;
  input [1:0]s_axi_araddr;
  input [0:0]target_region;
  input \gen_single_thread.accept_cnt_reg[1]_0 ;
  input [1:0]s_axi_rready;
  input [0:0]\gen_arbiter.last_rr_hot[2]_i_6__0 ;
  input \gen_single_thread.active_target_enc_0 ;

  wire [0:0]D;
  wire [35:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [0:0]f_hot2enc_return;
  wire [0:0]\gen_arbiter.last_rr_hot[2]_i_6__0 ;
  wire \gen_arbiter.last_rr_hot_reg[2] ;
  wire \gen_arbiter.last_rr_hot_reg[2]_0 ;
  wire \gen_arbiter.last_rr_hot_reg[2]_1 ;
  wire \gen_arbiter.qual_reg[1]_i_4_n_0 ;
  wire \gen_arbiter.qual_reg[1]_i_5_n_0 ;
  wire \gen_single_thread.accept_cnt[0]_i_1__1_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__2_n_0 ;
  wire \gen_single_thread.accept_cnt[2]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_1__0_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_2__0_n_0 ;
  wire [3:0]\gen_single_thread.accept_cnt_reg ;
  wire \gen_single_thread.accept_cnt_reg[1]_0 ;
  wire \gen_single_thread.accept_cnt_reg[3]_0 ;
  wire [0:0]\gen_single_thread.active_region ;
  wire \gen_single_thread.active_region_reg[0]_0 ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_0 ;
  wire \gen_single_thread.active_target_enc_reg[0]_0 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.s_avalid_en ;
  wire \gen_single_thread.s_avalid_en__1 ;
  wire grant_hot;
  wire p_0_in36_in;
  wire p_2_in;
  wire [1:0]s_axi_araddr;
  wire [0:0]s_axi_arvalid;
  wire [33:0]s_axi_rdata;
  wire [1:0]s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [0:0]target_region;

  LUT6 #(
    .INIT(64'hAAAA800080008000)) 
    \gen_arbiter.last_rr_hot[2]_i_1__0 
       (.I0(\gen_arbiter.last_rr_hot_reg[2] ),
        .I1(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .I2(\gen_single_thread.accept_cnt_reg[3]_0 ),
        .I3(\gen_single_thread.s_avalid_en__1 ),
        .I4(\gen_arbiter.last_rr_hot_reg[2]_1 ),
        .I5(\gen_single_thread.s_avalid_en ),
        .O(grant_hot));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \gen_arbiter.last_rr_hot[2]_i_3__0 
       (.I0(f_hot2enc_return),
        .I1(p_2_in),
        .I2(\gen_single_thread.accept_cnt_reg [3]),
        .I3(\gen_single_thread.accept_cnt_reg [0]),
        .I4(\gen_single_thread.accept_cnt_reg [1]),
        .I5(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h08FF)) 
    \gen_arbiter.qual_reg[1]_i_1 
       (.I0(\gen_single_thread.s_avalid_en__1 ),
        .I1(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .I2(\gen_arbiter.qual_reg[1]_i_4_n_0 ),
        .I3(s_axi_arvalid),
        .O(D));
  LUT6 #(
    .INIT(64'h5555FF5555FD5557)) 
    \gen_arbiter.qual_reg[1]_i_2 
       (.I0(\gen_arbiter.qual_reg[1]_i_5_n_0 ),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_araddr[1]),
        .I3(target_region),
        .I4(\gen_single_thread.active_target_enc ),
        .I5(\gen_single_thread.active_region ),
        .O(\gen_single_thread.s_avalid_en__1 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \gen_arbiter.qual_reg[1]_i_4 
       (.I0(\gen_single_thread.accept_cnt_reg [2]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(p_2_in),
        .O(\gen_arbiter.qual_reg[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_arbiter.qual_reg[1]_i_5 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_arbiter.qual_reg[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8F808080)) 
    \gen_master_slots[1].r_issuing_cnt[8]_i_3 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(s_axi_rready[1]),
        .I2(\gen_arbiter.last_rr_hot[2]_i_6__0 ),
        .I3(s_axi_rready[0]),
        .I4(\gen_single_thread.active_target_enc_0 ),
        .O(p_0_in36_in));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1__1 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_single_thread.accept_cnt[1]_i_1__2 
       (.I0(\gen_single_thread.accept_cnt_reg[1]_0 ),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_single_thread.accept_cnt[2]_i_1__0 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg[1]_0 ),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h55555555AAAAAAA8)) 
    \gen_single_thread.accept_cnt[3]_i_1__0 
       (.I0(p_2_in),
        .I1(\gen_single_thread.accept_cnt_reg [3]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [1]),
        .I4(\gen_single_thread.accept_cnt_reg [0]),
        .I5(\gen_single_thread.accept_cnt_reg[1]_0 ),
        .O(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT5 #(
    .INIT(32'h6CCCCCC9)) 
    \gen_single_thread.accept_cnt[3]_i_2__0 
       (.I0(\gen_single_thread.accept_cnt_reg [2]),
        .I1(\gen_single_thread.accept_cnt_reg [3]),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg[1]_0 ),
        .I4(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1__1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[1]_i_1__2_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[2]_i_1__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1__0_n_0 ),
        .D(\gen_single_thread.accept_cnt[3]_i_2__0_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [3]),
        .R(SR));
  FDRE \gen_single_thread.active_region_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_region_reg[0]_0 ),
        .Q(\gen_single_thread.active_region ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_enc ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_hot ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[100]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[19]),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[105]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[20]),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[106]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[21]),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[107]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[22]),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[108]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[23]),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[110]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[24]),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[111]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[25]),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[118]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[26]),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[119]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[27]),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[121]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[28]),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[122]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[29]),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[123]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[30]),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[124]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[31]),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[126]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[32]),
        .O(s_axi_rdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[127]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[33]),
        .O(s_axi_rdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[66]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[0]),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[67]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[1]),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[68]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[2]),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[73]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[3]),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[74]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[4]),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[75]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[5]),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[76]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[6]),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[78]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[7]),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[79]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[8]),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[86]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[9]),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[87]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[10]),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[89]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[11]),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[90]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[12]),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[91]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[13]),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[92]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[14]),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[94]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[15]),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[95]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[16]),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[98]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[17]),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rdata[99]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[18]),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[2]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[34]),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[3]_INST_0 
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(Q[35]),
        .O(s_axi_rresp[1]));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_20_si_transactor" *) 
module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_si_transactor__parameterized2
   (\gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.active_region ,
    grant_hot,
    \gen_single_thread.accept_cnt_reg[3]_0 ,
    \gen_single_thread.s_avalid_en__2 ,
    \s_axi_awvalid[2] ,
    bready_carry,
    SR,
    \gen_single_thread.active_target_enc_reg[0]_0 ,
    aclk,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    \gen_single_thread.active_region_reg[0]_0 ,
    \gen_single_thread.accept_cnt_reg[3]_1 ,
    m_ready_d,
    ss_aa_awready,
    ss_wr_awready_2,
    p_2_in,
    \gen_arbiter.last_rr_hot_reg[2] ,
    \gen_arbiter.last_rr_hot_reg[2]_0 ,
    \gen_arbiter.last_rr_hot_reg[2]_1 ,
    \gen_single_thread.s_avalid_en__0 ,
    f_hot2enc_return,
    s_axi_awvalid,
    s_axi_awaddr,
    target_region,
    s_axi_bready,
    s_axi_bvalid,
    m_valid_i_reg,
    \gen_single_thread.active_target_enc_0 );
  output \gen_single_thread.active_target_enc ;
  output [0:0]\gen_single_thread.active_target_hot ;
  output [0:0]\gen_single_thread.active_region ;
  output grant_hot;
  output \gen_single_thread.accept_cnt_reg[3]_0 ;
  output \gen_single_thread.s_avalid_en__2 ;
  output [0:0]\s_axi_awvalid[2] ;
  output [0:0]bready_carry;
  input [0:0]SR;
  input \gen_single_thread.active_target_enc_reg[0]_0 ;
  input aclk;
  input \gen_single_thread.active_target_hot_reg[0]_0 ;
  input \gen_single_thread.active_region_reg[0]_0 ;
  input \gen_single_thread.accept_cnt_reg[3]_1 ;
  input [1:0]m_ready_d;
  input [0:0]ss_aa_awready;
  input ss_wr_awready_2;
  input p_2_in;
  input \gen_arbiter.last_rr_hot_reg[2] ;
  input \gen_arbiter.last_rr_hot_reg[2]_0 ;
  input \gen_arbiter.last_rr_hot_reg[2]_1 ;
  input \gen_single_thread.s_avalid_en__0 ;
  input [0:0]f_hot2enc_return;
  input [0:0]s_axi_awvalid;
  input [1:0]s_axi_awaddr;
  input [0:0]target_region;
  input [1:0]s_axi_bready;
  input [0:0]s_axi_bvalid;
  input [0:0]m_valid_i_reg;
  input \gen_single_thread.active_target_enc_0 ;

  wire [0:0]SR;
  wire aclk;
  wire [0:0]bready_carry;
  wire [0:0]f_hot2enc_return;
  wire \gen_arbiter.last_rr_hot_reg[2] ;
  wire \gen_arbiter.last_rr_hot_reg[2]_0 ;
  wire \gen_arbiter.last_rr_hot_reg[2]_1 ;
  wire \gen_arbiter.qual_reg[2]_i_4_n_0 ;
  wire \gen_arbiter.qual_reg[2]_i_5_n_0 ;
  wire \gen_single_thread.accept_cnt[0]_i_1__2_n_0 ;
  wire \gen_single_thread.accept_cnt[1]_i_1__1_n_0 ;
  wire \gen_single_thread.accept_cnt[2]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_1_n_0 ;
  wire \gen_single_thread.accept_cnt[3]_i_2_n_0 ;
  wire [3:0]\gen_single_thread.accept_cnt_reg ;
  wire \gen_single_thread.accept_cnt_reg[3]_0 ;
  wire \gen_single_thread.accept_cnt_reg[3]_1 ;
  wire [0:0]\gen_single_thread.active_region ;
  wire \gen_single_thread.active_region_reg[0]_0 ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_0 ;
  wire \gen_single_thread.active_target_enc_reg[0]_0 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.s_avalid_en__0 ;
  wire \gen_single_thread.s_avalid_en__2 ;
  wire grant_hot;
  wire [1:0]m_ready_d;
  wire [0:0]m_valid_i_reg;
  wire p_2_in;
  wire [1:0]s_axi_awaddr;
  wire [0:0]s_axi_awvalid;
  wire [0:0]\s_axi_awvalid[2] ;
  wire [1:0]s_axi_bready;
  wire [0:0]s_axi_bvalid;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_2;
  wire [0:0]target_region;

  LUT6 #(
    .INIT(64'hAAAA800080008000)) 
    \gen_arbiter.last_rr_hot[2]_i_1 
       (.I0(\gen_arbiter.last_rr_hot_reg[2] ),
        .I1(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .I2(\gen_single_thread.accept_cnt_reg[3]_0 ),
        .I3(\gen_single_thread.s_avalid_en__2 ),
        .I4(\gen_arbiter.last_rr_hot_reg[2]_1 ),
        .I5(\gen_single_thread.s_avalid_en__0 ),
        .O(grant_hot));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    \gen_arbiter.last_rr_hot[2]_i_4 
       (.I0(f_hot2enc_return),
        .I1(p_2_in),
        .I2(\gen_single_thread.accept_cnt_reg [3]),
        .I3(\gen_single_thread.accept_cnt_reg [0]),
        .I4(\gen_single_thread.accept_cnt_reg [1]),
        .I5(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hDDDDFDDD)) 
    \gen_arbiter.qual_reg[2]_i_1 
       (.I0(s_axi_awvalid),
        .I1(m_ready_d[0]),
        .I2(\gen_single_thread.s_avalid_en__2 ),
        .I3(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .I4(\gen_arbiter.qual_reg[2]_i_4_n_0 ),
        .O(\s_axi_awvalid[2] ));
  LUT6 #(
    .INIT(64'h5555FF5555FD5557)) 
    \gen_arbiter.qual_reg[2]_i_2 
       (.I0(\gen_arbiter.qual_reg[2]_i_5_n_0 ),
        .I1(s_axi_awaddr[0]),
        .I2(s_axi_awaddr[1]),
        .I3(target_region),
        .I4(\gen_single_thread.active_target_enc ),
        .I5(\gen_single_thread.active_region ),
        .O(\gen_single_thread.s_avalid_en__2 ));
  LUT6 #(
    .INIT(64'h0000010001000100)) 
    \gen_arbiter.qual_reg[2]_i_4 
       (.I0(\gen_single_thread.accept_cnt_reg [2]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .I4(s_axi_bready[1]),
        .I5(s_axi_bvalid),
        .O(\gen_arbiter.qual_reg[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_arbiter.qual_reg[2]_i_5 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [2]),
        .I3(\gen_single_thread.accept_cnt_reg [3]),
        .O(\gen_arbiter.qual_reg[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_single_thread.accept_cnt[0]_i_1__2 
       (.I0(\gen_single_thread.accept_cnt_reg [0]),
        .O(\gen_single_thread.accept_cnt[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h6669666966699999)) 
    \gen_single_thread.accept_cnt[1]_i_1__1 
       (.I0(\gen_single_thread.accept_cnt_reg [1]),
        .I1(\gen_single_thread.accept_cnt_reg [0]),
        .I2(m_ready_d[0]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[1]),
        .I5(ss_wr_awready_2),
        .O(\gen_single_thread.accept_cnt[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_single_thread.accept_cnt[2]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg[3]_1 ),
        .I1(\gen_single_thread.accept_cnt_reg [1]),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .I3(\gen_single_thread.accept_cnt_reg [2]),
        .O(\gen_single_thread.accept_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \gen_single_thread.accept_cnt[3]_i_1 
       (.I0(\gen_single_thread.accept_cnt_reg [3]),
        .I1(\gen_single_thread.accept_cnt_reg [2]),
        .I2(\gen_single_thread.accept_cnt_reg [1]),
        .I3(\gen_single_thread.accept_cnt_reg [0]),
        .I4(p_2_in),
        .I5(\gen_single_thread.accept_cnt_reg[3]_1 ),
        .O(\gen_single_thread.accept_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT5 #(
    .INIT(32'h6CCCCCC9)) 
    \gen_single_thread.accept_cnt[3]_i_2 
       (.I0(\gen_single_thread.accept_cnt_reg [2]),
        .I1(\gen_single_thread.accept_cnt_reg [3]),
        .I2(\gen_single_thread.accept_cnt_reg [0]),
        .I3(\gen_single_thread.accept_cnt_reg [1]),
        .I4(\gen_single_thread.accept_cnt_reg[3]_1 ),
        .O(\gen_single_thread.accept_cnt[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[0]_i_1__2_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[1]_i_1__1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[2]_i_1_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.accept_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_single_thread.accept_cnt[3]_i_1_n_0 ),
        .D(\gen_single_thread.accept_cnt[3]_i_2_n_0 ),
        .Q(\gen_single_thread.accept_cnt_reg [3]),
        .R(SR));
  FDRE \gen_single_thread.active_region_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_region_reg[0]_0 ),
        .Q(\gen_single_thread.active_region ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_enc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_enc_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_enc ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gen_single_thread.active_target_hot_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_single_thread.active_target_hot_reg[0]_0 ),
        .Q(\gen_single_thread.active_target_hot ),
        .R(SR));
  LUT5 #(
    .INIT(32'h8F808080)) 
    m_valid_i_i_2
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(s_axi_bready[1]),
        .I2(m_valid_i_reg),
        .I3(s_axi_bready[0]),
        .I4(\gen_single_thread.active_target_enc_0 ),
        .O(bready_carry));
endmodule

module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_splitter
   (s_ready_i_reg,
    m_ready_d,
    s_ready_i_reg_0,
    \m_ready_d_reg[1]_0 ,
    s_ready_i_reg_1,
    \gen_single_thread.active_region_reg[0] ,
    match,
    ss_wr_awready_0,
    ss_aa_awready,
    \gen_single_thread.active_target_enc ,
    s_axi_awvalid,
    \gen_single_thread.active_target_hot ,
    target_region,
    \gen_single_thread.active_region ,
    aresetn_d,
    aclk);
  output s_ready_i_reg;
  output [1:0]m_ready_d;
  output s_ready_i_reg_0;
  output \m_ready_d_reg[1]_0 ;
  output s_ready_i_reg_1;
  output \gen_single_thread.active_region_reg[0] ;
  input match;
  input ss_wr_awready_0;
  input [0:0]ss_aa_awready;
  input \gen_single_thread.active_target_enc ;
  input [0:0]s_axi_awvalid;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]target_region;
  input [0:0]\gen_single_thread.active_region ;
  input aresetn_d;
  input aclk;

  wire aclk;
  wire aresetn_d;
  wire [0:0]\gen_single_thread.active_region ;
  wire \gen_single_thread.active_region_reg[0] ;
  wire \gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire match;
  wire [0:0]s_axi_awvalid;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_0;
  wire [0:0]target_region;

  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(m_ready_d[1]),
        .I1(s_axi_awvalid),
        .O(\m_ready_d_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_region[0]_i_1__0 
       (.I0(target_region),
        .I1(s_ready_i_reg_0),
        .I2(\gen_single_thread.active_region ),
        .O(\gen_single_thread.active_region_reg[0] ));
  LUT6 #(
    .INIT(64'h575757FF54545400)) 
    \gen_single_thread.active_target_enc[0]_i_1__2 
       (.I0(match),
        .I1(ss_wr_awready_0),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_thread.active_target_enc ),
        .O(s_ready_i_reg));
  LUT6 #(
    .INIT(64'hABABABFFA8A8A800)) 
    \gen_single_thread.active_target_hot[0]_i_1__0 
       (.I0(match),
        .I1(ss_wr_awready_0),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_thread.active_target_hot ),
        .O(s_ready_i_reg_1));
  LUT6 #(
    .INIT(64'h000C000C00080000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_0),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CC80)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_0),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[0]_INST_0 
       (.I0(ss_wr_awready_0),
        .I1(m_ready_d[1]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .O(s_ready_i_reg_0));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_20_splitter" *) 
module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_splitter_2
   (s_ready_i_reg,
    m_ready_d,
    s_ready_i_reg_0,
    \m_ready_d_reg[1]_0 ,
    s_ready_i_reg_1,
    \gen_single_thread.active_region_reg[0] ,
    match,
    ss_wr_awready_2,
    ss_aa_awready,
    \gen_single_thread.active_target_enc ,
    s_axi_awvalid,
    \gen_single_thread.active_target_hot ,
    target_region,
    \gen_single_thread.active_region ,
    aresetn_d,
    aclk);
  output s_ready_i_reg;
  output [1:0]m_ready_d;
  output s_ready_i_reg_0;
  output \m_ready_d_reg[1]_0 ;
  output s_ready_i_reg_1;
  output \gen_single_thread.active_region_reg[0] ;
  input match;
  input ss_wr_awready_2;
  input [0:0]ss_aa_awready;
  input \gen_single_thread.active_target_enc ;
  input [0:0]s_axi_awvalid;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]target_region;
  input [0:0]\gen_single_thread.active_region ;
  input aresetn_d;
  input aclk;

  wire aclk;
  wire aresetn_d;
  wire [0:0]\gen_single_thread.active_region ;
  wire \gen_single_thread.active_region_reg[0] ;
  wire \gen_single_thread.active_target_enc ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire match;
  wire [0:0]s_axi_awvalid;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [0:0]ss_aa_awready;
  wire ss_wr_awready_2;
  wire [0:0]target_region;

  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[3]_i_4__0 
       (.I0(m_ready_d[1]),
        .I1(s_axi_awvalid),
        .O(\m_ready_d_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_single_thread.active_region[0]_i_1 
       (.I0(target_region),
        .I1(s_ready_i_reg_0),
        .I2(\gen_single_thread.active_region ),
        .O(\gen_single_thread.active_region_reg[0] ));
  LUT6 #(
    .INIT(64'h575757FF54545400)) 
    \gen_single_thread.active_target_enc[0]_i_1__1 
       (.I0(match),
        .I1(ss_wr_awready_2),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_thread.active_target_enc ),
        .O(s_ready_i_reg));
  LUT6 #(
    .INIT(64'hABABABFFA8A8A800)) 
    \gen_single_thread.active_target_hot[0]_i_1 
       (.I0(match),
        .I1(ss_wr_awready_2),
        .I2(m_ready_d[1]),
        .I3(ss_aa_awready),
        .I4(m_ready_d[0]),
        .I5(\gen_single_thread.active_target_hot ),
        .O(s_ready_i_reg_1));
  LUT6 #(
    .INIT(64'h000C000C00080000)) 
    \m_ready_d[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_2),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000CC80)) 
    \m_ready_d[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(aresetn_d),
        .I2(ss_wr_awready_2),
        .I3(m_ready_d[1]),
        .I4(ss_aa_awready),
        .I5(m_ready_d[0]),
        .O(\m_ready_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \s_axi_awready[2]_INST_0 
       (.I0(ss_wr_awready_2),
        .I1(m_ready_d[1]),
        .I2(ss_aa_awready),
        .I3(m_ready_d[0]),
        .O(s_ready_i_reg_0));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_20_splitter" *) 
module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_splitter_3
   (aa_sa_awready,
    m_ready_d,
    aresetn_d,
    mi_awready,
    m_axi_awready,
    Q,
    \m_ready_d_reg[1]_0 ,
    \m_ready_d_reg[1]_1 ,
    aa_sa_awvalid,
    aclk);
  output aa_sa_awready;
  output [1:0]m_ready_d;
  input aresetn_d;
  input [0:0]mi_awready;
  input [0:0]m_axi_awready;
  input [1:0]Q;
  input \m_ready_d_reg[1]_0 ;
  input \m_ready_d_reg[1]_1 ;
  input aa_sa_awvalid;
  input aclk;

  wire [1:0]Q;
  wire aa_sa_awready;
  wire aa_sa_awvalid;
  wire aclk;
  wire aresetn_d;
  wire [0:0]m_axi_awready;
  wire [1:0]m_ready_d;
  wire \m_ready_d[0]_i_1_n_0 ;
  wire \m_ready_d[1]_i_1_n_0 ;
  wire \m_ready_d[1]_i_4_n_0 ;
  wire \m_ready_d_reg[1]_0 ;
  wire \m_ready_d_reg[1]_1 ;
  wire [0:0]mi_awready;

  LUT6 #(
    .INIT(64'hFFFCFFCCFFF0AA00)) 
    \gen_arbiter.grant_hot[2]_i_2 
       (.I0(m_ready_d[0]),
        .I1(mi_awready),
        .I2(m_axi_awready),
        .I3(m_ready_d[1]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(aa_sa_awready));
  LUT6 #(
    .INIT(64'h00000000FAF80000)) 
    \m_ready_d[0]_i_1 
       (.I0(aa_sa_awvalid),
        .I1(Q[0]),
        .I2(m_ready_d[0]),
        .I3(Q[1]),
        .I4(aresetn_d),
        .I5(aa_sa_awready),
        .O(\m_ready_d[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF2F22)) 
    \m_ready_d[1]_i_1 
       (.I0(mi_awready),
        .I1(\m_ready_d_reg[1]_0 ),
        .I2(\m_ready_d_reg[1]_1 ),
        .I3(m_axi_awready),
        .I4(m_ready_d[1]),
        .I5(\m_ready_d[1]_i_4_n_0 ),
        .O(\m_ready_d[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \m_ready_d[1]_i_4 
       (.I0(aa_sa_awready),
        .I1(aresetn_d),
        .O(\m_ready_d[1]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[0]_i_1_n_0 ),
        .Q(m_ready_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_ready_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_ready_d[1]_i_1_n_0 ),
        .Q(m_ready_d[1]),
        .R(1'b0));
endmodule

module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_wdata_mux
   (m_axi_wdata,
    \storage_data1_reg[1] ,
    m_axi_wstrb,
    \storage_data1_reg[0] ,
    \storage_data1_reg[0]_0 ,
    m_axi_wvalid,
    m_axi_wlast,
    aclk,
    aa_wm_awgrant_enc,
    areset_d1,
    s_axi_wdata,
    s_axi_wstrb,
    m_select_enc,
    m_axi_wready,
    m_select_enc_0,
    m_ready_d,
    \storage_data1_reg[1]_0 ,
    Q,
    aa_sa_awvalid,
    m_valid_i_reg,
    m_valid_i_reg_0,
    m_axi_wvalid_0_sp_1,
    \m_axi_wvalid[0]_0 ,
    s_axi_wlast,
    SR);
  output [63:0]m_axi_wdata;
  output [0:0]\storage_data1_reg[1] ;
  output [7:0]m_axi_wstrb;
  output \storage_data1_reg[0] ;
  output \storage_data1_reg[0]_0 ;
  output [0:0]m_axi_wvalid;
  output [0:0]m_axi_wlast;
  input aclk;
  input [0:0]aa_wm_awgrant_enc;
  input areset_d1;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input m_select_enc;
  input [0:0]m_axi_wready;
  input m_select_enc_0;
  input [0:0]m_ready_d;
  input \storage_data1_reg[1]_0 ;
  input [0:0]Q;
  input aa_sa_awvalid;
  input m_valid_i_reg;
  input m_valid_i_reg_0;
  input m_axi_wvalid_0_sp_1;
  input \m_axi_wvalid[0]_0 ;
  input [1:0]s_axi_wlast;
  input [0:0]SR;

  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [63:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire \m_axi_wvalid[0]_0 ;
  wire m_axi_wvalid_0_sn_1;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_0;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [15:0]s_axi_wstrb;
  wire \storage_data1_reg[0] ;
  wire \storage_data1_reg[0]_0 ;
  wire [0:0]\storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;

  assign m_axi_wvalid_0_sn_1 = m_axi_wvalid_0_sp_1;
  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized1 \gen_wmux.wmux_aw_fifo 
       (.Q(Q),
        .SR(SR),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .\m_axi_wvalid[0]_0 (\m_axi_wvalid[0]_0 ),
        .m_axi_wvalid_0_sp_1(m_axi_wvalid_0_sn_1),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_0(m_select_enc_0),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wstrb(s_axi_wstrb),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0] ),
        .\storage_data1_reg[0]_1 (\storage_data1_reg[0]_0 ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_20_wdata_mux" *) 
module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_wdata_mux__parameterized0
   (s_axi_wready,
    \storage_data1_reg[0] ,
    \storage_data1_reg[1] ,
    \storage_data1_reg[1]_0 ,
    Q,
    \s_axi_wlast[2] ,
    aclk,
    aa_wm_awgrant_enc,
    areset_d1,
    m_avalid,
    p_10_in,
    m_select_enc,
    s_axi_wready_0_sp_1,
    m_avalid_0,
    m_select_enc_1,
    \s_axi_wready[2] ,
    m_valid_i_reg,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[0] ,
    aa_sa_awvalid,
    m_ready_d,
    s_axi_wlast,
    \gen_axi.s_axi_wready_i_reg ,
    \gen_axi.s_axi_wready_i_i_2 ,
    \gen_axi.s_axi_wready_i_i_2_0 ,
    SR);
  output [1:0]s_axi_wready;
  output \storage_data1_reg[0] ;
  output [0:0]\storage_data1_reg[1] ;
  output \storage_data1_reg[1]_0 ;
  output [0:0]Q;
  output \s_axi_wlast[2] ;
  input aclk;
  input [0:0]aa_wm_awgrant_enc;
  input areset_d1;
  input m_avalid;
  input p_10_in;
  input m_select_enc;
  input s_axi_wready_0_sp_1;
  input m_avalid_0;
  input m_select_enc_1;
  input \s_axi_wready[2] ;
  input m_valid_i_reg;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]\FSM_onehot_state_reg[0] ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [1:0]s_axi_wlast;
  input \gen_axi.s_axi_wready_i_reg ;
  input \gen_axi.s_axi_wready_i_i_2 ;
  input \gen_axi.s_axi_wready_i_i_2_0 ;
  input [0:0]SR;

  wire [0:0]\FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire \gen_axi.s_axi_wready_i_i_2 ;
  wire \gen_axi.s_axi_wready_i_i_2_0 ;
  wire \gen_axi.s_axi_wready_i_reg ;
  wire m_avalid;
  wire m_avalid_0;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_1;
  wire m_valid_i_reg;
  wire p_10_in;
  wire [1:0]s_axi_wlast;
  wire \s_axi_wlast[2] ;
  wire [1:0]s_axi_wready;
  wire \s_axi_wready[2] ;
  wire s_axi_wready_0_sn_1;
  wire \storage_data1_reg[0] ;
  wire [0:0]\storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;

  assign s_axi_wready_0_sn_1 = s_axi_wready_0_sp_1;
  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized2 \gen_wmux.wmux_aw_fifo 
       (.\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state_reg[0] ),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .Q(Q),
        .SR(SR),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_axi.s_axi_wready_i_i_2_0 (\gen_axi.s_axi_wready_i_i_2 ),
        .\gen_axi.s_axi_wready_i_i_2_1 (\gen_axi.s_axi_wready_i_i_2_0 ),
        .\gen_axi.s_axi_wready_i_reg (\gen_axi.s_axi_wready_i_reg ),
        .m_avalid(m_avalid),
        .m_avalid_0(m_avalid_0),
        .m_ready_d(m_ready_d),
        .m_select_enc(m_select_enc),
        .m_select_enc_1(m_select_enc_1),
        .m_valid_i_reg_0(m_valid_i_reg),
        .p_10_in(p_10_in),
        .s_axi_wlast(s_axi_wlast),
        .\s_axi_wlast[2] (\s_axi_wlast[2] ),
        .s_axi_wready(s_axi_wready),
        .\s_axi_wready[2] (\s_axi_wready[2] ),
        .s_axi_wready_0_sp_1(s_axi_wready_0_sn_1),
        .\storage_data1_reg[0]_0 (\storage_data1_reg[0] ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_0 ));
endmodule

module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_wdata_router
   (m_avalid,
    ss_wr_awready_0,
    m_select_enc,
    \storage_data1_reg[1] ,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    aclk,
    areset_d1,
    SR,
    match,
    s_axi_awvalid,
    m_ready_d,
    m_valid_i_reg,
    s_axi_wvalid,
    s_axi_wlast,
    \FSM_onehot_state_reg[1] ,
    \m_axi_wvalid[0] ,
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 );
  output m_avalid;
  output ss_wr_awready_0;
  output m_select_enc;
  output \storage_data1_reg[1] ;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[1]_1 ;
  input aclk;
  input areset_d1;
  input [0:0]SR;
  input match;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input m_valid_i_reg;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]\m_axi_wvalid[0] ;
  input [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ;

  wire \FSM_onehot_state_reg[1] ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ;
  wire m_avalid;
  wire [0:0]\m_axi_wvalid[0] ;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_valid_i_reg;
  wire match;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_0;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;

  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_axic_reg_srl_fifo wrouter_aw_fifo
       (.\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .SR(SR),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 (\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ),
        .\m_axi_wvalid[0] (\m_axi_wvalid[0] ),
        .m_ready_d(m_ready_d),
        .m_valid_i_reg_0(m_avalid),
        .m_valid_i_reg_1(m_valid_i_reg),
        .match(match),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .ss_wr_awready_0(ss_wr_awready_0),
        .\storage_data1_reg[0]_0 (m_select_enc),
        .\storage_data1_reg[1] (\storage_data1_reg[1] ),
        .\storage_data1_reg[1]_0 (\storage_data1_reg[1]_0 ),
        .\storage_data1_reg[1]_1 (\storage_data1_reg[1]_1 ));
endmodule

(* ORIG_REF_NAME = "axi_crossbar_v2_1_20_wdata_router" *) 
module e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_wdata_router__parameterized0
   (areset_d1,
    m_avalid,
    ss_wr_awready_2,
    m_select_enc,
    \storage_data1_reg[1] ,
    \s_axi_wvalid[2] ,
    \s_axi_wvalid[2]_0 ,
    aclk,
    SR,
    s_axi_awvalid,
    m_ready_d,
    match,
    m_valid_i_reg,
    s_axi_wvalid,
    s_axi_wlast,
    \FSM_onehot_state_reg[1] ,
    \m_axi_wvalid[0] ,
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 );
  output areset_d1;
  output m_avalid;
  output ss_wr_awready_2;
  output m_select_enc;
  output \storage_data1_reg[1] ;
  output \s_axi_wvalid[2] ;
  output \s_axi_wvalid[2]_0 ;
  input aclk;
  input [0:0]SR;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input match;
  input m_valid_i_reg;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]\m_axi_wvalid[0] ;
  input [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ;

  wire \FSM_onehot_state_reg[1] ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ;
  wire m_avalid;
  wire [0:0]\m_axi_wvalid[0] ;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_valid_i_reg;
  wire match;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire \s_axi_wvalid[2] ;
  wire \s_axi_wvalid[2]_0 ;
  wire ss_wr_awready_2;
  wire \storage_data1_reg[1] ;

  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized0 wrouter_aw_fifo
       (.\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .SR(SR),
        .SS(areset_d1),
        .aclk(aclk),
        .\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 (\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ),
        .\m_axi_wvalid[0] (\m_axi_wvalid[0] ),
        .m_ready_d(m_ready_d),
        .m_valid_i_reg_0(m_avalid),
        .m_valid_i_reg_1(m_valid_i_reg),
        .match(match),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .\s_axi_wvalid[2] (\s_axi_wvalid[2] ),
        .\s_axi_wvalid[2]_0 (\s_axi_wvalid[2]_0 ),
        .s_ready_i_reg_0(ss_wr_awready_2),
        .\storage_data1_reg[0]_0 (m_select_enc),
        .\storage_data1_reg[1] (\storage_data1_reg[1] ));
endmodule

module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_axic_reg_srl_fifo
   (m_valid_i_reg_0,
    ss_wr_awready_0,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[1] ,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    aclk,
    areset_d1,
    SR,
    match,
    s_axi_awvalid,
    m_ready_d,
    m_valid_i_reg_1,
    s_axi_wvalid,
    s_axi_wlast,
    \FSM_onehot_state_reg[1]_0 ,
    \m_axi_wvalid[0] ,
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 );
  output m_valid_i_reg_0;
  output ss_wr_awready_0;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[1] ;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[1]_1 ;
  input aclk;
  input areset_d1;
  input [0:0]SR;
  input match;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input m_valid_i_reg_1;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1]_0 ;
  input [0:0]\m_axi_wvalid[0] ;
  input [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3__1_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_1 ;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]\m_axi_wvalid[0] ;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1__2_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire p_0_in8_in;
  wire p_9_in;
  wire push;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_i_2__0_n_0;
  wire ss_wr_awready_0;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[1] ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;

  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT4 #(
    .INIT(16'h7500)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(m_aready__1),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(p_0_in8_in),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(fifoaddr[1]),
        .I4(m_aready__1),
        .I5(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(p_9_in),
        .I1(s_axi_awvalid),
        .I2(m_ready_d),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF04F40FF4040)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(push),
        .I1(\FSM_onehot_state[3]_i_3__1_n_0 ),
        .I2(m_aready__1),
        .I3(m_valid_i_reg_1),
        .I4(p_9_in),
        .I5(p_0_in8_in),
        .O(m_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(p_0_in8_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[3]_i_3__1 
       (.I0(fifoaddr[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[0]),
        .O(\FSM_onehot_state[3]_i_3__1_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(p_0_in8_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2_n_0 ),
        .Q(p_9_in),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__1 
       (.I0(\m_axi_wvalid[0] ),
        .I1(s_axi_wvalid),
        .I2(m_valid_i_reg_0),
        .I3(\storage_data1_reg[0]_0 ),
        .I4(s_axi_wlast),
        .O(\storage_data1_reg[1] ));
  LUT4 #(
    .INIT(16'h4000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_4__0 
       (.I0(\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ),
        .I1(s_axi_wvalid),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(m_valid_i_reg_0),
        .O(\storage_data1_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(push),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(m_aready__1),
        .I3(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT5 #(
    .INIT(32'hD5BF2A40)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(fifoaddr[0]),
        .I1(m_aready__1),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(push),
        .I4(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl \gen_srls[0].gen_rep[0].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_1 ),
        .\FSM_onehot_state_reg[1] (m_valid_i_reg_0),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1]_0 ),
        .Q({p_0_in8_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_ready_d(m_ready_d),
        .match(match),
        .push(push),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .ss_wr_awready_0(ss_wr_awready_0),
        .\storage_data1_reg[0] (\storage_data1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axi_wvalid[0]_INST_0_i_1 
       (.I0(\m_axi_wvalid[0] ),
        .I1(s_axi_wvalid),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(m_valid_i_reg_0),
        .O(\storage_data1_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h0C0E0C0EFF0E0C0E)) 
    m_valid_i_i_1__2
       (.I0(p_0_in8_in),
        .I1(p_9_in),
        .I2(m_valid_i_reg_1),
        .I3(m_aready__1),
        .I4(\FSM_onehot_state[3]_i_3__1_n_0 ),
        .I5(push),
        .O(m_valid_i_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__2_n_0),
        .Q(m_valid_i_reg_0),
        .R(areset_d1));
  LUT6 #(
    .INIT(64'hFFFFDFFFDDDDDDDD)) 
    s_ready_i_i_1
       (.I0(s_ready_i_i_2__0_n_0),
        .I1(areset_d1),
        .I2(push),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[0]),
        .I5(ss_wr_awready_0),
        .O(s_ready_i_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h7)) 
    s_ready_i_i_2__0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_aready__1),
        .O(s_ready_i_i_2__0_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(ss_wr_awready_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hA0A0A0A0FCECA0A0)) 
    \storage_data1[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_9_in),
        .I2(m_aready__1),
        .I3(p_0_in8_in),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_1 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_18_axic_reg_srl_fifo" *) 
module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized0
   (SS,
    m_valid_i_reg_0,
    s_ready_i_reg_0,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[1] ,
    \s_axi_wvalid[2] ,
    \s_axi_wvalid[2]_0 ,
    aclk,
    SR,
    s_axi_awvalid,
    m_ready_d,
    match,
    m_valid_i_reg_1,
    s_axi_wvalid,
    s_axi_wlast,
    \FSM_onehot_state_reg[1]_0 ,
    \m_axi_wvalid[0] ,
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 );
  output [0:0]SS;
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[1] ;
  output \s_axi_wvalid[2] ;
  output \s_axi_wvalid[2]_0 ;
  input aclk;
  input [0:0]SR;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input match;
  input m_valid_i_reg_1;
  input [0:0]s_axi_wvalid;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1]_0 ;
  input [0:0]\m_axi_wvalid[0] ;
  input [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ;

  wire \FSM_onehot_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state[1]_i_2__2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_3__0_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]SR;
  wire [0:0]SS;
  wire aclk;
  wire [2:0]fifoaddr;
  wire [0:0]\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ;
  wire \gen_rep[0].fifoaddr[0]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_1 ;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]\m_axi_wvalid[0] ;
  wire [0:0]m_ready_d;
  wire m_valid_i;
  wire m_valid_i_i_1__3_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire p_0_in8_in;
  wire p_0_out;
  wire p_9_in;
  wire push;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire \s_axi_wvalid[2] ;
  wire \s_axi_wvalid[2]_0 ;
  wire s_ready_i_i_1__0_n_0;
  wire s_ready_i_i_2__1_n_0;
  wire s_ready_i_reg_0;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[1] ;

  LUT4 #(
    .INIT(16'h7500)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(m_aready__1),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(p_0_in8_in),
        .O(\FSM_onehot_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(push),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[2]),
        .I3(\FSM_onehot_state[1]_i_2__2_n_0 ),
        .I4(m_aready__1),
        .I5(\FSM_onehot_state[1]_i_3_n_0 ),
        .O(\FSM_onehot_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[1]_i_2__2 
       (.I0(fifoaddr[0]),
        .I1(fifoaddr[1]),
        .O(\FSM_onehot_state[1]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(p_9_in),
        .I1(s_axi_awvalid),
        .I2(m_ready_d),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF04F40FF4040)) 
    \FSM_onehot_state[3]_i_1__0 
       (.I0(push),
        .I1(\FSM_onehot_state[3]_i_3__0_n_0 ),
        .I2(m_aready__1),
        .I3(m_valid_i_reg_1),
        .I4(p_9_in),
        .I5(p_0_in8_in),
        .O(m_valid_i));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT4 #(
    .INIT(16'h8A00)) 
    \FSM_onehot_state[3]_i_2__0 
       (.I0(p_0_in8_in),
        .I1(m_ready_d),
        .I2(s_axi_awvalid),
        .I3(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_state[3]_i_3__0 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(fifoaddr[2]),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[3]_i_3__0_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__0_n_0 ),
        .Q(p_0_in8_in),
        .R(SS));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__0_n_0 ),
        .Q(p_9_in),
        .S(SS));
  FDRE areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(SS),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_4 
       (.I0(\m_axi_wvalid[0] ),
        .I1(s_axi_wvalid),
        .I2(m_valid_i_reg_0),
        .I3(\storage_data1_reg[0]_0 ),
        .I4(s_axi_wlast),
        .O(\storage_data1_reg[1] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_5 
       (.I0(s_axi_wvalid),
        .I1(\gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(m_valid_i_reg_0),
        .O(\s_axi_wvalid[2] ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rep[0].fifoaddr[0]_i_1__0 
       (.I0(p_0_out),
        .I1(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBB44FF4000400040)) 
    \gen_rep[0].fifoaddr[0]_i_2 
       (.I0(m_ready_d),
        .I1(s_axi_awvalid),
        .I2(p_0_in8_in),
        .I3(m_aready__1),
        .I4(s_ready_i_reg_0),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT5 #(
    .INIT(32'hD5BF2A40)) 
    \gen_rep[0].fifoaddr[1]_i_1__0 
       (.I0(fifoaddr[0]),
        .I1(m_aready__1),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(push),
        .I4(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF777EFFF08881000)) 
    \gen_rep[0].fifoaddr[2]_i_1 
       (.I0(fifoaddr[1]),
        .I1(fifoaddr[0]),
        .I2(m_aready__1),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(push),
        .I5(fifoaddr[2]),
        .O(\gen_rep[0].fifoaddr[2]_i_1_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[2]_i_1_n_0 ),
        .Q(fifoaddr[2]),
        .S(SR));
  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl__parameterized1 \gen_srls[0].gen_rep[0].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_1 ),
        .\FSM_onehot_state_reg[1] (s_ready_i_reg_0),
        .\FSM_onehot_state_reg[1]_0 (m_valid_i_reg_0),
        .\FSM_onehot_state_reg[1]_1 (\FSM_onehot_state_reg[1]_0 ),
        .Q({p_0_in8_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_ready_d(m_ready_d),
        .match(match),
        .push(push),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .\storage_data1_reg[0] (\storage_data1_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \m_axi_wvalid[0]_INST_0_i_2 
       (.I0(s_axi_wvalid),
        .I1(\m_axi_wvalid[0] ),
        .I2(\storage_data1_reg[0]_0 ),
        .I3(m_valid_i_reg_0),
        .O(\s_axi_wvalid[2]_0 ));
  LUT6 #(
    .INIT(64'h0C0E0C0EFF0E0C0E)) 
    m_valid_i_i_1__3
       (.I0(p_0_in8_in),
        .I1(p_9_in),
        .I2(m_valid_i_reg_1),
        .I3(m_aready__1),
        .I4(\FSM_onehot_state[3]_i_3__0_n_0 ),
        .I5(push),
        .O(m_valid_i_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__3_n_0),
        .Q(m_valid_i_reg_0),
        .R(SS));
  LUT6 #(
    .INIT(64'hFFFFBFFFAAAAAAAA)) 
    s_ready_i_i_1__0
       (.I0(s_ready_i_i_2__1_n_0),
        .I1(push),
        .I2(fifoaddr[2]),
        .I3(fifoaddr[1]),
        .I4(fifoaddr[0]),
        .I5(s_ready_i_reg_0),
        .O(s_ready_i_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    s_ready_i_i_2__1
       (.I0(SS),
        .I1(m_aready__1),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(s_ready_i_i_2__1_n_0));
  FDRE s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__0_n_0),
        .Q(s_ready_i_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hA0A0A0A0FCECA0A0)) 
    \storage_data1[0]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_9_in),
        .I2(m_aready__1),
        .I3(p_0_in8_in),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_1 ),
        .Q(\storage_data1_reg[0]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_18_axic_reg_srl_fifo" *) 
module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized1
   (m_axi_wdata,
    \storage_data1_reg[1]_0 ,
    m_axi_wstrb,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[0]_1 ,
    m_axi_wvalid,
    m_axi_wlast,
    aclk,
    aa_wm_awgrant_enc,
    areset_d1,
    s_axi_wdata,
    s_axi_wstrb,
    m_select_enc,
    m_axi_wready,
    m_select_enc_0,
    m_ready_d,
    \storage_data1_reg[1]_1 ,
    Q,
    aa_sa_awvalid,
    m_valid_i_reg_0,
    m_valid_i_reg_1,
    m_axi_wvalid_0_sp_1,
    \m_axi_wvalid[0]_0 ,
    s_axi_wlast,
    SR);
  output [63:0]m_axi_wdata;
  output \storage_data1_reg[1]_0 ;
  output [7:0]m_axi_wstrb;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[0]_1 ;
  output [0:0]m_axi_wvalid;
  output [0:0]m_axi_wlast;
  input aclk;
  input [0:0]aa_wm_awgrant_enc;
  input areset_d1;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input m_select_enc;
  input [0:0]m_axi_wready;
  input m_select_enc_0;
  input [0:0]m_ready_d;
  input \storage_data1_reg[1]_1 ;
  input [0:0]Q;
  input aa_sa_awvalid;
  input m_valid_i_reg_0;
  input m_valid_i_reg_1;
  input m_axi_wvalid_0_sp_1;
  input \m_axi_wvalid[0]_0 ;
  input [1:0]s_axi_wlast;
  input [0:0]SR;

  wire \FSM_onehot_state[0]_i_1__1_n_0 ;
  wire \FSM_onehot_state[1]_i_1__1_n_0 ;
  wire \FSM_onehot_state[1]_i_2__0_n_0 ;
  wire \FSM_onehot_state[3]_i_2__1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [2:0]fifoaddr;
  wire \gen_rep[0].fifoaddr[0]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1_n_0 ;
  wire \gen_rep[0].fifoaddr[2]_i_1_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_2 ;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid;
  wire [63:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire \m_axi_wvalid[0]_0 ;
  wire m_axi_wvalid_0_sn_1;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_0;
  wire [0:0]m_select_enc_1;
  wire m_valid_i;
  wire m_valid_i_i_1__4_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire p_0_in6_in;
  wire p_0_out;
  wire p_7_in;
  wire push;
  wire [127:0]s_axi_wdata;
  wire [1:0]s_axi_wlast;
  wire [15:0]s_axi_wstrb;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[0]_1 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;

  assign m_axi_wvalid_0_sn_1 = m_axi_wvalid_0_sp_1;
  LUT5 #(
    .INIT(32'h55D50000)) 
    \FSM_onehot_state[0]_i_1__1 
       (.I0(m_aready__1),
        .I1(Q),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .I4(p_0_in6_in),
        .O(\FSM_onehot_state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h44F4444444444444)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(push),
        .I1(\FSM_onehot_state[1]_i_2__0_n_0 ),
        .I2(Q),
        .I3(m_ready_d),
        .I4(p_7_in),
        .I5(aa_sa_awvalid),
        .O(\FSM_onehot_state[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \FSM_onehot_state[1]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(fifoaddr[2]),
        .I2(fifoaddr[0]),
        .I3(fifoaddr[1]),
        .I4(m_aready__1),
        .O(\FSM_onehot_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFAAAAAAEAAAAA)) 
    \FSM_onehot_state[3]_i_1__1 
       (.I0(\FSM_onehot_state[1]_i_1__1_n_0 ),
        .I1(Q),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .I4(p_0_in6_in),
        .I5(m_aready__1),
        .O(m_valid_i));
  LUT5 #(
    .INIT(32'hAA2A0000)) 
    \FSM_onehot_state[3]_i_2__1 
       (.I0(p_0_in6_in),
        .I1(Q),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .I4(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2__1_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__1_n_0 ),
        .Q(p_0_in6_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__1_n_0 ),
        .Q(p_7_in),
        .S(areset_d1));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_rep[0].fifoaddr[0]_i_1 
       (.I0(p_0_out),
        .I1(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h6F90)) 
    \gen_rep[0].fifoaddr[1]_i_1 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(p_0_out),
        .I3(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h7EFF8100)) 
    \gen_rep[0].fifoaddr[2]_i_1 
       (.I0(push),
        .I1(fifoaddr[1]),
        .I2(fifoaddr[0]),
        .I3(p_0_out),
        .I4(fifoaddr[2]),
        .O(\gen_rep[0].fifoaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8AAA8AAA30002000)) 
    \gen_rep[0].fifoaddr[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(m_ready_d),
        .I2(aa_sa_awvalid),
        .I3(Q),
        .I4(p_0_in6_in),
        .I5(m_aready__1),
        .O(p_0_out));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[2]_i_1_n_0 ),
        .Q(fifoaddr[2]),
        .S(SR));
  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl__parameterized1_8 \gen_srls[0].gen_rep[0].srl_nx1 
       (.A(fifoaddr),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .aclk(aclk),
        .load_s1(load_s1),
        .m_select_enc_1(m_select_enc_1),
        .push(push));
  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl__parameterized1_9 \gen_srls[0].gen_rep[1].srl_nx1 
       (.A(fifoaddr),
        .\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .\FSM_onehot_state_reg[1] (Q),
        .Q({p_0_in6_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_avalid(m_avalid),
        .m_axi_wready(m_axi_wready),
        .m_ready_d(m_ready_d),
        .m_select_enc_1(m_select_enc_1),
        .m_valid_i_reg(m_valid_i_reg_0),
        .m_valid_i_reg_0(m_valid_i_reg_1),
        .push(push),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[0]_INST_0 
       (.I0(s_axi_wdata[0]),
        .I1(s_axi_wdata[64]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[0]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[10]_INST_0 
       (.I0(s_axi_wdata[10]),
        .I1(s_axi_wdata[74]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[10]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[11]_INST_0 
       (.I0(s_axi_wdata[11]),
        .I1(s_axi_wdata[75]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[11]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[12]_INST_0 
       (.I0(s_axi_wdata[12]),
        .I1(s_axi_wdata[76]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[12]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[13]_INST_0 
       (.I0(s_axi_wdata[13]),
        .I1(s_axi_wdata[77]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[13]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[14]_INST_0 
       (.I0(s_axi_wdata[14]),
        .I1(s_axi_wdata[78]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[14]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[15]_INST_0 
       (.I0(s_axi_wdata[15]),
        .I1(s_axi_wdata[79]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[15]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[16]_INST_0 
       (.I0(s_axi_wdata[16]),
        .I1(s_axi_wdata[80]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[16]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[17]_INST_0 
       (.I0(s_axi_wdata[17]),
        .I1(s_axi_wdata[81]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[17]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[18]_INST_0 
       (.I0(s_axi_wdata[18]),
        .I1(s_axi_wdata[82]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[18]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[19]_INST_0 
       (.I0(s_axi_wdata[19]),
        .I1(s_axi_wdata[83]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[19]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[1]_INST_0 
       (.I0(s_axi_wdata[1]),
        .I1(s_axi_wdata[65]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[1]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[20]_INST_0 
       (.I0(s_axi_wdata[20]),
        .I1(s_axi_wdata[84]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[20]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[21]_INST_0 
       (.I0(s_axi_wdata[21]),
        .I1(s_axi_wdata[85]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[21]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[22]_INST_0 
       (.I0(s_axi_wdata[22]),
        .I1(s_axi_wdata[86]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[22]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[23]_INST_0 
       (.I0(s_axi_wdata[23]),
        .I1(s_axi_wdata[87]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[23]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[24]_INST_0 
       (.I0(s_axi_wdata[24]),
        .I1(s_axi_wdata[88]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[24]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[25]_INST_0 
       (.I0(s_axi_wdata[25]),
        .I1(s_axi_wdata[89]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[25]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[26]_INST_0 
       (.I0(s_axi_wdata[26]),
        .I1(s_axi_wdata[90]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[26]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[27]_INST_0 
       (.I0(s_axi_wdata[27]),
        .I1(s_axi_wdata[91]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[27]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[28]_INST_0 
       (.I0(s_axi_wdata[28]),
        .I1(s_axi_wdata[92]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[28]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[29]_INST_0 
       (.I0(s_axi_wdata[29]),
        .I1(s_axi_wdata[93]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[29]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[2]_INST_0 
       (.I0(s_axi_wdata[2]),
        .I1(s_axi_wdata[66]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[2]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[30]_INST_0 
       (.I0(s_axi_wdata[30]),
        .I1(s_axi_wdata[94]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[30]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[31]_INST_0 
       (.I0(s_axi_wdata[31]),
        .I1(s_axi_wdata[95]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[31]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[32]_INST_0 
       (.I0(s_axi_wdata[32]),
        .I1(s_axi_wdata[96]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[32]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[33]_INST_0 
       (.I0(s_axi_wdata[33]),
        .I1(s_axi_wdata[97]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[33]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[34]_INST_0 
       (.I0(s_axi_wdata[34]),
        .I1(s_axi_wdata[98]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[34]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[35]_INST_0 
       (.I0(s_axi_wdata[35]),
        .I1(s_axi_wdata[99]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[35]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[36]_INST_0 
       (.I0(s_axi_wdata[36]),
        .I1(s_axi_wdata[100]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[36]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[37]_INST_0 
       (.I0(s_axi_wdata[37]),
        .I1(s_axi_wdata[101]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[37]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[38]_INST_0 
       (.I0(s_axi_wdata[38]),
        .I1(s_axi_wdata[102]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[38]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[39]_INST_0 
       (.I0(s_axi_wdata[39]),
        .I1(s_axi_wdata[103]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[39]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[3]_INST_0 
       (.I0(s_axi_wdata[3]),
        .I1(s_axi_wdata[67]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[3]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[40]_INST_0 
       (.I0(s_axi_wdata[40]),
        .I1(s_axi_wdata[104]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[40]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[41]_INST_0 
       (.I0(s_axi_wdata[41]),
        .I1(s_axi_wdata[105]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[41]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[42]_INST_0 
       (.I0(s_axi_wdata[42]),
        .I1(s_axi_wdata[106]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[42]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[43]_INST_0 
       (.I0(s_axi_wdata[43]),
        .I1(s_axi_wdata[107]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[43]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[44]_INST_0 
       (.I0(s_axi_wdata[44]),
        .I1(s_axi_wdata[108]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[44]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[45]_INST_0 
       (.I0(s_axi_wdata[45]),
        .I1(s_axi_wdata[109]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[45]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[46]_INST_0 
       (.I0(s_axi_wdata[46]),
        .I1(s_axi_wdata[110]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[46]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[47]_INST_0 
       (.I0(s_axi_wdata[47]),
        .I1(s_axi_wdata[111]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[47]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[48]_INST_0 
       (.I0(s_axi_wdata[48]),
        .I1(s_axi_wdata[112]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[48]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[49]_INST_0 
       (.I0(s_axi_wdata[49]),
        .I1(s_axi_wdata[113]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[49]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[4]_INST_0 
       (.I0(s_axi_wdata[4]),
        .I1(s_axi_wdata[68]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[4]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[50]_INST_0 
       (.I0(s_axi_wdata[50]),
        .I1(s_axi_wdata[114]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[50]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[51]_INST_0 
       (.I0(s_axi_wdata[51]),
        .I1(s_axi_wdata[115]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[51]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[52]_INST_0 
       (.I0(s_axi_wdata[52]),
        .I1(s_axi_wdata[116]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[52]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[53]_INST_0 
       (.I0(s_axi_wdata[53]),
        .I1(s_axi_wdata[117]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[53]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[54]_INST_0 
       (.I0(s_axi_wdata[54]),
        .I1(s_axi_wdata[118]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[54]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[55]_INST_0 
       (.I0(s_axi_wdata[55]),
        .I1(s_axi_wdata[119]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[55]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[56]_INST_0 
       (.I0(s_axi_wdata[56]),
        .I1(s_axi_wdata[120]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[56]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[57]_INST_0 
       (.I0(s_axi_wdata[57]),
        .I1(s_axi_wdata[121]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[57]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[58]_INST_0 
       (.I0(s_axi_wdata[58]),
        .I1(s_axi_wdata[122]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[58]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[59]_INST_0 
       (.I0(s_axi_wdata[59]),
        .I1(s_axi_wdata[123]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[59]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[5]_INST_0 
       (.I0(s_axi_wdata[5]),
        .I1(s_axi_wdata[69]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[5]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[60]_INST_0 
       (.I0(s_axi_wdata[60]),
        .I1(s_axi_wdata[124]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[60]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[61]_INST_0 
       (.I0(s_axi_wdata[61]),
        .I1(s_axi_wdata[125]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[61]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[62]_INST_0 
       (.I0(s_axi_wdata[62]),
        .I1(s_axi_wdata[126]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[62]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[63]_INST_0 
       (.I0(s_axi_wdata[63]),
        .I1(s_axi_wdata[127]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[63]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[6]_INST_0 
       (.I0(s_axi_wdata[6]),
        .I1(s_axi_wdata[70]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[6]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[7]_INST_0 
       (.I0(s_axi_wdata[7]),
        .I1(s_axi_wdata[71]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[7]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[8]_INST_0 
       (.I0(s_axi_wdata[8]),
        .I1(s_axi_wdata[72]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[8]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wdata[9]_INST_0 
       (.I0(s_axi_wdata[9]),
        .I1(s_axi_wdata[73]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wdata[9]));
  LUT4 #(
    .INIT(16'h2230)) 
    \m_axi_wlast[0]_INST_0 
       (.I0(s_axi_wlast[1]),
        .I1(m_select_enc_1),
        .I2(s_axi_wlast[0]),
        .I3(\storage_data1_reg[1]_0 ),
        .O(m_axi_wlast));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wstrb[0]_INST_0 
       (.I0(s_axi_wstrb[0]),
        .I1(s_axi_wstrb[8]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wstrb[0]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wstrb[1]_INST_0 
       (.I0(s_axi_wstrb[1]),
        .I1(s_axi_wstrb[9]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wstrb[1]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wstrb[2]_INST_0 
       (.I0(s_axi_wstrb[2]),
        .I1(s_axi_wstrb[10]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wstrb[2]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wstrb[3]_INST_0 
       (.I0(s_axi_wstrb[3]),
        .I1(s_axi_wstrb[11]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wstrb[3]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wstrb[4]_INST_0 
       (.I0(s_axi_wstrb[4]),
        .I1(s_axi_wstrb[12]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wstrb[4]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wstrb[5]_INST_0 
       (.I0(s_axi_wstrb[5]),
        .I1(s_axi_wstrb[13]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wstrb[5]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wstrb[6]_INST_0 
       (.I0(s_axi_wstrb[6]),
        .I1(s_axi_wstrb[14]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wstrb[6]));
  LUT4 #(
    .INIT(16'h00CA)) 
    \m_axi_wstrb[7]_INST_0 
       (.I0(s_axi_wstrb[7]),
        .I1(s_axi_wstrb[15]),
        .I2(\storage_data1_reg[1]_0 ),
        .I3(m_select_enc_1),
        .O(m_axi_wstrb[7]));
  LUT4 #(
    .INIT(16'h4440)) 
    \m_axi_wvalid[0]_INST_0 
       (.I0(m_select_enc_1),
        .I1(m_avalid),
        .I2(m_axi_wvalid_0_sn_1),
        .I3(\m_axi_wvalid[0]_0 ),
        .O(m_axi_wvalid));
  LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
    m_valid_i_i_1__4
       (.I0(m_aready__1),
        .I1(p_0_in6_in),
        .I2(m_ready_d),
        .I3(aa_sa_awvalid),
        .I4(Q),
        .I5(\FSM_onehot_state[1]_i_1__1_n_0 ),
        .O(m_valid_i_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__4_n_0),
        .Q(m_avalid),
        .R(areset_d1));
  LUT5 #(
    .INIT(32'h00000040)) 
    \s_axi_wready[0]_INST_0_i_2 
       (.I0(m_select_enc),
        .I1(m_avalid),
        .I2(m_axi_wready),
        .I3(\storage_data1_reg[1]_0 ),
        .I4(m_select_enc_1),
        .O(\storage_data1_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \s_axi_wready[2]_INST_0_i_2 
       (.I0(m_select_enc_0),
        .I1(m_avalid),
        .I2(m_axi_wready),
        .I3(m_select_enc_1),
        .I4(\storage_data1_reg[1]_0 ),
        .O(\storage_data1_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A0FCEC)) 
    \storage_data1[1]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_7_in),
        .I2(m_aready__1),
        .I3(p_0_in6_in),
        .I4(m_ready_d),
        .I5(\storage_data1_reg[1]_1 ),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(m_select_enc_1),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_2 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_18_axic_reg_srl_fifo" *) 
module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_axic_reg_srl_fifo__parameterized2
   (s_axi_wready,
    \storage_data1_reg[0]_0 ,
    \storage_data1_reg[1]_0 ,
    \storage_data1_reg[1]_1 ,
    Q,
    \s_axi_wlast[2] ,
    aclk,
    aa_wm_awgrant_enc,
    areset_d1,
    m_avalid,
    p_10_in,
    m_select_enc,
    s_axi_wready_0_sp_1,
    m_avalid_0,
    m_select_enc_1,
    \s_axi_wready[2] ,
    m_valid_i_reg_0,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[0]_0 ,
    aa_sa_awvalid,
    m_ready_d,
    s_axi_wlast,
    \gen_axi.s_axi_wready_i_reg ,
    \gen_axi.s_axi_wready_i_i_2_0 ,
    \gen_axi.s_axi_wready_i_i_2_1 ,
    SR);
  output [1:0]s_axi_wready;
  output \storage_data1_reg[0]_0 ;
  output \storage_data1_reg[1]_0 ;
  output \storage_data1_reg[1]_1 ;
  output [0:0]Q;
  output \s_axi_wlast[2] ;
  input aclk;
  input [0:0]aa_wm_awgrant_enc;
  input areset_d1;
  input m_avalid;
  input p_10_in;
  input m_select_enc;
  input s_axi_wready_0_sp_1;
  input m_avalid_0;
  input m_select_enc_1;
  input \s_axi_wready[2] ;
  input m_valid_i_reg_0;
  input \FSM_onehot_state_reg[1]_0 ;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [1:0]s_axi_wlast;
  input \gen_axi.s_axi_wready_i_reg ;
  input \gen_axi.s_axi_wready_i_i_2_0 ;
  input \gen_axi.s_axi_wready_i_i_2_1 ;
  input [0:0]SR;

  wire \FSM_onehot_state[0]_i_1__2_n_0 ;
  wire \FSM_onehot_state[1]_i_1__2_n_0 ;
  wire \FSM_onehot_state[3]_i_2__2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire areset_d1;
  wire [1:0]fifoaddr;
  wire \gen_axi.s_axi_wready_i_i_2_0 ;
  wire \gen_axi.s_axi_wready_i_i_2_1 ;
  wire \gen_axi.s_axi_wready_i_reg ;
  wire \gen_rep[0].fifoaddr[0]_i_1__0_n_0 ;
  wire \gen_rep[0].fifoaddr[1]_i_1__0_n_0 ;
  wire \gen_srls[0].gen_rep[0].srl_nx1_n_0 ;
  wire \gen_srls[0].gen_rep[1].srl_nx1_n_3 ;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid;
  wire m_avalid_0;
  wire m_avalid_1;
  wire [0:0]m_ready_d;
  wire m_select_enc;
  wire m_select_enc_1;
  wire [0:0]m_select_enc_2;
  wire m_valid_i;
  wire m_valid_i_i_1__5_n_0;
  wire m_valid_i_reg_0;
  wire p_0_in6_in;
  wire p_10_in;
  wire push;
  wire [1:0]s_axi_wlast;
  wire \s_axi_wlast[2] ;
  wire [1:0]s_axi_wready;
  wire \s_axi_wready[2] ;
  wire s_axi_wready_0_sn_1;
  wire \storage_data1_reg[0]_0 ;
  wire \storage_data1_reg[1]_0 ;
  wire \storage_data1_reg[1]_1 ;
  wire wm_mr_wvalid_1;

  assign s_axi_wready_0_sn_1 = s_axi_wready_0_sp_1;
  LUT5 #(
    .INIT(32'h55D50000)) 
    \FSM_onehot_state[0]_i_1__2 
       (.I0(m_aready__1),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .I4(p_0_in6_in),
        .O(\FSM_onehot_state[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \FSM_onehot_state[1]_i_1__2 
       (.I0(push),
        .I1(fifoaddr[0]),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(fifoaddr[1]),
        .I4(m_aready__1),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hAA88FFFFAA884E44)) 
    \FSM_onehot_state[3]_i_1__2 
       (.I0(m_aready__1),
        .I1(p_0_in6_in),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(m_valid_i_reg_0),
        .I5(Q),
        .O(m_valid_i));
  LUT5 #(
    .INIT(32'hAA2A0000)) 
    \FSM_onehot_state[3]_i_2__2 
       (.I0(p_0_in6_in),
        .I1(\FSM_onehot_state_reg[0]_0 ),
        .I2(aa_sa_awvalid),
        .I3(m_ready_d),
        .I4(m_aready__1),
        .O(\FSM_onehot_state[3]_i_2__2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(fifoaddr[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(fifoaddr[0]),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[0]_i_1__2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[1]_i_1__2_n_0 ),
        .Q(p_0_in6_in),
        .R(areset_d1));
  (* FSM_ENCODED_STATES = "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(m_valid_i),
        .D(\FSM_onehot_state[3]_i_2__2_n_0 ),
        .Q(Q),
        .S(areset_d1));
  LUT6 #(
    .INIT(64'h0000B80000000000)) 
    \gen_axi.s_axi_wready_i_i_2 
       (.I0(s_axi_wlast[1]),
        .I1(\storage_data1_reg[1]_0 ),
        .I2(s_axi_wlast[0]),
        .I3(\gen_axi.s_axi_wready_i_reg ),
        .I4(m_select_enc_2),
        .I5(wm_mr_wvalid_1),
        .O(\s_axi_wlast[2] ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \gen_rep[0].fifoaddr[0]_i_1__0 
       (.I0(push),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(m_aready__1),
        .I3(fifoaddr[0]),
        .O(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT5 #(
    .INIT(32'hD5BF2A40)) 
    \gen_rep[0].fifoaddr[1]_i_1__0 
       (.I0(fifoaddr[0]),
        .I1(m_aready__1),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(push),
        .I4(fifoaddr[1]),
        .O(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[0]_i_1__0_n_0 ),
        .Q(fifoaddr[0]),
        .S(SR));
  (* syn_keep = "1" *) 
  FDSE \gen_rep[0].fifoaddr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_rep[0].fifoaddr[1]_i_1__0_n_0 ),
        .Q(fifoaddr[1]),
        .S(SR));
  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl_4 \gen_srls[0].gen_rep[0].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .load_s1(load_s1),
        .m_select_enc_2(m_select_enc_2),
        .push(push));
  e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl_5 \gen_srls[0].gen_rep[1].srl_nx1 
       (.\FSM_onehot_state_reg[0] (\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .\FSM_onehot_state_reg[1] (\FSM_onehot_state_reg[0]_0 ),
        .Q({p_0_in6_in,\FSM_onehot_state_reg_n_0_[0] }),
        .aa_sa_awvalid(aa_sa_awvalid),
        .aa_wm_awgrant_enc(aa_wm_awgrant_enc),
        .aclk(aclk),
        .fifoaddr(fifoaddr),
        .\gen_axi.s_axi_wready_i_i_2 (\gen_axi.s_axi_wready_i_i_2_0 ),
        .\gen_axi.s_axi_wready_i_i_2_0 (\gen_axi.s_axi_wready_i_i_2_1 ),
        .load_s1(load_s1),
        .m_aready__1(m_aready__1),
        .m_avalid_1(m_avalid_1),
        .m_ready_d(m_ready_d),
        .m_select_enc_2(m_select_enc_2),
        .p_10_in(p_10_in),
        .push(push),
        .s_axi_wlast(s_axi_wlast),
        .\storage_data1_reg[1] (\storage_data1_reg[1]_0 ),
        .wm_mr_wvalid_1(wm_mr_wvalid_1));
  LUT6 #(
    .INIT(64'hE2F2E2F233332222)) 
    m_valid_i_i_1__5
       (.I0(Q),
        .I1(m_valid_i_reg_0),
        .I2(\FSM_onehot_state[3]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(p_0_in6_in),
        .I5(m_aready__1),
        .O(m_valid_i_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(m_valid_i),
        .D(m_valid_i_i_1__5_n_0),
        .Q(m_avalid_1),
        .R(areset_d1));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[0]_INST_0 
       (.I0(\storage_data1_reg[0]_0 ),
        .I1(m_avalid),
        .O(s_axi_wready[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \s_axi_wready[0]_INST_0_i_1 
       (.I0(m_select_enc_2),
        .I1(\storage_data1_reg[1]_0 ),
        .I2(p_10_in),
        .I3(m_avalid_1),
        .I4(m_select_enc),
        .I5(s_axi_wready_0_sn_1),
        .O(\storage_data1_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \s_axi_wready[2]_INST_0 
       (.I0(\storage_data1_reg[1]_1 ),
        .I1(m_avalid_0),
        .O(s_axi_wready[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \s_axi_wready[2]_INST_0_i_1 
       (.I0(\storage_data1_reg[1]_0 ),
        .I1(m_select_enc_2),
        .I2(p_10_in),
        .I3(m_avalid_1),
        .I4(m_select_enc_1),
        .I5(\s_axi_wready[2] ),
        .O(\storage_data1_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hA0A0FCEC)) 
    \storage_data1[1]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q),
        .I2(m_aready__1),
        .I3(p_0_in6_in),
        .I4(m_valid_i_reg_0),
        .O(load_s1));
  FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[0].srl_nx1_n_0 ),
        .Q(m_select_enc_2),
        .R(1'b0));
  FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_srls[0].gen_rep[1].srl_nx1_n_3 ),
        .Q(\storage_data1_reg[1]_0 ),
        .R(1'b0));
endmodule

module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl
   (push,
    \FSM_onehot_state_reg[0] ,
    m_aready__1,
    fifoaddr,
    aclk,
    match,
    Q,
    load_s1,
    \storage_data1_reg[0] ,
    ss_wr_awready_0,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wvalid,
    \FSM_onehot_state_reg[1] ,
    s_axi_wlast,
    \FSM_onehot_state_reg[1]_0 );
  output push;
  output \FSM_onehot_state_reg[0] ;
  output m_aready__1;
  input [1:0]fifoaddr;
  input aclk;
  input match;
  input [1:0]Q;
  input load_s1;
  input \storage_data1_reg[0] ;
  input ss_wr_awready_0;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wvalid;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1]_0 ;

  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire [1:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]m_ready_d;
  wire match;
  wire push;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire ss_wr_awready_0;
  wire st_aa_awtarget_enc_0;
  wire \storage_data1_reg[0] ;
  wire storage_data2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(st_aa_awtarget_enc_0),
        .Q(storage_data2),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h000000008F880000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1 
       (.I0(Q[0]),
        .I1(ss_wr_awready_0),
        .I2(m_aready__1),
        .I3(Q[1]),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(push));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__0 
       (.I0(match),
        .O(st_aa_awtarget_enc_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3 
       (.I0(s_axi_wvalid),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(s_axi_wlast),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .O(m_aready__1));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \storage_data1[0]_i_1__2 
       (.I0(match),
        .I1(storage_data2),
        .I2(Q[0]),
        .I3(load_s1),
        .I4(\storage_data1_reg[0] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_18_ndeep_srl" *) 
module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl_4
   (\FSM_onehot_state_reg[0] ,
    push,
    fifoaddr,
    aclk,
    Q,
    load_s1,
    m_select_enc_2);
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [1:0]fifoaddr;
  input aclk;
  input [0:0]Q;
  input load_s1;
  input [0:0]m_select_enc_2;

  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]Q;
  wire aclk;
  wire [1:0]fifoaddr;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire load_s1;
  wire [0:0]m_select_enc_2;
  wire push;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(1'b0),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \storage_data1[0]_i_1__0 
       (.I0(Q),
        .I1(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I2(load_s1),
        .I3(m_select_enc_2),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_18_ndeep_srl" *) 
module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl_5
   (push,
    m_aready__1,
    wm_mr_wvalid_1,
    \FSM_onehot_state_reg[0] ,
    aa_wm_awgrant_enc,
    fifoaddr,
    aclk,
    Q,
    \FSM_onehot_state_reg[1] ,
    aa_sa_awvalid,
    m_ready_d,
    s_axi_wlast,
    \storage_data1_reg[1] ,
    p_10_in,
    m_select_enc_2,
    m_avalid_1,
    \gen_axi.s_axi_wready_i_i_2 ,
    \gen_axi.s_axi_wready_i_i_2_0 ,
    load_s1);
  output push;
  output m_aready__1;
  output wm_mr_wvalid_1;
  output \FSM_onehot_state_reg[0] ;
  input [0:0]aa_wm_awgrant_enc;
  input [1:0]fifoaddr;
  input aclk;
  input [1:0]Q;
  input [0:0]\FSM_onehot_state_reg[1] ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input [1:0]s_axi_wlast;
  input \storage_data1_reg[1] ;
  input p_10_in;
  input [0:0]m_select_enc_2;
  input m_avalid_1;
  input \gen_axi.s_axi_wready_i_i_2 ;
  input \gen_axi.s_axi_wready_i_i_2_0 ;
  input load_s1;

  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]\FSM_onehot_state_reg[1] ;
  wire [1:0]Q;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire [1:0]fifoaddr;
  wire \gen_axi.s_axi_wready_i_i_2 ;
  wire \gen_axi.s_axi_wready_i_i_2_0 ;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid_1;
  wire [0:0]m_ready_d;
  wire [0:0]m_select_enc_2;
  wire p_10_in;
  wire p_2_out;
  wire push;
  wire [1:0]s_axi_wlast;
  wire \storage_data1_reg[1] ;
  wire wm_mr_wvalid_1;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0000F00000004000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__2 
       (.I0(m_aready__1),
        .I1(Q[1]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(aa_sa_awvalid),
        .I4(m_ready_d),
        .I5(Q[0]),
        .O(push));
  LUT6 #(
    .INIT(64'h0000B80000000000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__2 
       (.I0(s_axi_wlast[1]),
        .I1(\storage_data1_reg[1] ),
        .I2(s_axi_wlast[0]),
        .I3(p_10_in),
        .I4(m_select_enc_2),
        .I5(wm_mr_wvalid_1),
        .O(m_aready__1));
  LUT4 #(
    .INIT(16'h4440)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__2 
       (.I0(m_select_enc_2),
        .I1(m_avalid_1),
        .I2(\gen_axi.s_axi_wready_i_i_2 ),
        .I3(\gen_axi.s_axi_wready_i_i_2_0 ),
        .O(wm_mr_wvalid_1));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[1]_i_1__0 
       (.I0(p_2_out),
        .I1(Q[0]),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[1] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_18_ndeep_srl" *) 
module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl__parameterized1
   (push,
    \FSM_onehot_state_reg[0] ,
    m_aready__1,
    fifoaddr,
    aclk,
    match,
    Q,
    load_s1,
    \storage_data1_reg[0] ,
    \FSM_onehot_state_reg[1] ,
    s_axi_awvalid,
    m_ready_d,
    s_axi_wvalid,
    \FSM_onehot_state_reg[1]_0 ,
    s_axi_wlast,
    \FSM_onehot_state_reg[1]_1 );
  output push;
  output \FSM_onehot_state_reg[0] ;
  output m_aready__1;
  input [2:0]fifoaddr;
  input aclk;
  input match;
  input [1:0]Q;
  input load_s1;
  input \storage_data1_reg[0] ;
  input \FSM_onehot_state_reg[1] ;
  input [0:0]s_axi_awvalid;
  input [0:0]m_ready_d;
  input [0:0]s_axi_wvalid;
  input \FSM_onehot_state_reg[1]_0 ;
  input [0:0]s_axi_wlast;
  input \FSM_onehot_state_reg[1]_1 ;

  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire [1:0]Q;
  wire aclk;
  wire [2:0]fifoaddr;
  wire load_s1;
  wire m_aready__1;
  wire [0:0]m_ready_d;
  wire match;
  wire push;
  wire [0:0]s_axi_awvalid;
  wire [0:0]s_axi_wlast;
  wire [0:0]s_axi_wvalid;
  wire st_aa_awtarget_enc_2;
  wire \storage_data1_reg[0] ;
  wire storage_data2;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_slave_slots[2].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,fifoaddr}),
        .CE(push),
        .CLK(aclk),
        .D(st_aa_awtarget_enc_2),
        .Q(storage_data2),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h000000008F880000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__0 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg[1] ),
        .I2(m_aready__1),
        .I3(Q[1]),
        .I4(s_axi_awvalid),
        .I5(m_ready_d),
        .O(push));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2 
       (.I0(match),
        .O(st_aa_awtarget_enc_2));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_3__0 
       (.I0(s_axi_wvalid),
        .I1(\FSM_onehot_state_reg[1]_0 ),
        .I2(s_axi_wlast),
        .I3(\FSM_onehot_state_reg[1]_1 ),
        .O(m_aready__1));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    \storage_data1[0]_i_1__1 
       (.I0(match),
        .I1(storage_data2),
        .I2(Q[0]),
        .I3(load_s1),
        .I4(\storage_data1_reg[0] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_18_ndeep_srl" *) 
module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl__parameterized1_8
   (\FSM_onehot_state_reg[0] ,
    push,
    A,
    aclk,
    Q,
    load_s1,
    m_select_enc_1);
  output \FSM_onehot_state_reg[0] ;
  input push;
  input [2:0]A;
  input aclk;
  input [0:0]Q;
  input load_s1;
  input [0:0]m_select_enc_1;

  wire [2:0]A;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]Q;
  wire aclk;
  wire \gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ;
  wire load_s1;
  wire [0:0]m_select_enc_1;
  wire push;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,A}),
        .CE(push),
        .CLK(aclk),
        .D(1'b0),
        .Q(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \storage_data1[0]_i_1 
       (.I0(Q),
        .I1(\gen_primitive_shifter.gen_srls[0].srl_inst_n_0 ),
        .I2(load_s1),
        .I3(m_select_enc_1),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_18_ndeep_srl" *) 
module e310v2_ps_bd_xbar_1_axi_data_fifo_v2_1_18_ndeep_srl__parameterized1_9
   (push,
    m_aready__1,
    \FSM_onehot_state_reg[0] ,
    aa_wm_awgrant_enc,
    A,
    aclk,
    Q,
    \FSM_onehot_state_reg[1] ,
    aa_sa_awvalid,
    m_ready_d,
    m_avalid,
    m_axi_wready,
    m_select_enc_1,
    m_valid_i_reg,
    m_valid_i_reg_0,
    load_s1,
    \storage_data1_reg[1] );
  output push;
  output m_aready__1;
  output \FSM_onehot_state_reg[0] ;
  input [0:0]aa_wm_awgrant_enc;
  input [2:0]A;
  input aclk;
  input [1:0]Q;
  input [0:0]\FSM_onehot_state_reg[1] ;
  input aa_sa_awvalid;
  input [0:0]m_ready_d;
  input m_avalid;
  input [0:0]m_axi_wready;
  input [0:0]m_select_enc_1;
  input m_valid_i_reg;
  input m_valid_i_reg_0;
  input load_s1;
  input \storage_data1_reg[1] ;

  wire [2:0]A;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]\FSM_onehot_state_reg[1] ;
  wire [1:0]Q;
  wire aa_sa_awvalid;
  wire [0:0]aa_wm_awgrant_enc;
  wire aclk;
  wire load_s1;
  wire m_aready__1;
  wire m_avalid;
  wire [0:0]m_axi_wready;
  wire [0:0]m_ready_d;
  wire [0:0]m_select_enc_1;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire p_2_out;
  wire push;
  wire \storage_data1_reg[1] ;
  wire \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls " *) 
  (* srl_name = "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst " *) 
  SRLC32E #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst 
       (.A({1'b0,1'b0,A}),
        .CE(push),
        .CLK(aclk),
        .D(aa_wm_awgrant_enc),
        .Q(p_2_out),
        .Q31(\NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h0000F00000004000)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_1__1 
       (.I0(m_aready__1),
        .I1(Q[1]),
        .I2(\FSM_onehot_state_reg[1] ),
        .I3(aa_sa_awvalid),
        .I4(m_ready_d),
        .I5(Q[0]),
        .O(push));
  LUT5 #(
    .INIT(32'h08080800)) 
    \gen_primitive_shifter.gen_srls[0].srl_inst_i_2__1 
       (.I0(m_avalid),
        .I1(m_axi_wready),
        .I2(m_select_enc_1),
        .I3(m_valid_i_reg),
        .I4(m_valid_i_reg_0),
        .O(m_aready__1));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \storage_data1[1]_i_1 
       (.I0(p_2_out),
        .I1(Q[0]),
        .I2(aa_wm_awgrant_enc),
        .I3(load_s1),
        .I4(\storage_data1_reg[1] ),
        .O(\FSM_onehot_state_reg[0] ));
endmodule

module e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axi_register_slice
   (m_axi_bready,
    p_1_in,
    s_ready_i_reg,
    \gen_single_thread.active_target_hot_reg[0] ,
    s_axi_rdata,
    Q,
    D,
    \gen_master_slots[1].w_issuing_cnt_reg[8] ,
    \gen_master_slots[0].w_issuing_cnt_reg[3] ,
    \gen_master_slots[1].w_issuing_cnt_reg[8]_0 ,
    m_valid_i_reg,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    s_axi_bvalid,
    \gen_single_thread.active_target_hot_reg[0]_1 ,
    E,
    \gen_master_slots[1].r_issuing_cnt_reg[8] ,
    \gen_master_slots[0].r_issuing_cnt_reg[0] ,
    \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ,
    p_2_in,
    s_axi_rvalid,
    \gen_single_thread.active_target_hot_reg[0]_2 ,
    \m_payload_i_reg[66] ,
    s_axi_bresp,
    \aresetn_d_reg[0] ,
    \s_axi_bvalid[2] ,
    p_0_in,
    aclk,
    \s_axi_rvalid[0] ,
    aresetn,
    m_axi_bvalid,
    s_ready_i_reg_0,
    m_axi_rvalid,
    \gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_enc_0 ,
    r_issuing_cnt,
    match,
    \gen_arbiter.qual_reg_reg[0] ,
    w_issuing_cnt,
    match_1,
    \gen_single_thread.active_target_hot ,
    \gen_single_thread.active_target_enc_2 ,
    \s_axi_bvalid[2]_0 ,
    \gen_single_thread.active_target_hot_3 ,
    \gen_single_thread.active_target_enc_4 ,
    s_axi_bready,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ,
    aa_mi_arvalid,
    \gen_master_slots[0].r_issuing_cnt_reg[2] ,
    m_axi_arready,
    match_5,
    \gen_arbiter.qual_reg_reg[0]_0 ,
    match_6,
    \gen_single_thread.active_target_hot_7 ,
    s_axi_rready,
    s_axi_rlast,
    \gen_single_thread.accept_cnt_reg[3] ,
    \s_axi_rvalid[0]_0 ,
    \gen_single_thread.active_target_hot_8 ,
    \gen_arbiter.last_rr_hot[2]_i_4__0 ,
    st_mr_rlast,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata,
    \m_payload_i_reg[3] );
  output [0:0]m_axi_bready;
  output p_1_in;
  output s_ready_i_reg;
  output \gen_single_thread.active_target_hot_reg[0] ;
  output [59:0]s_axi_rdata;
  output [36:0]Q;
  output [2:0]D;
  output \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  output \gen_master_slots[0].w_issuing_cnt_reg[3] ;
  output \gen_master_slots[1].w_issuing_cnt_reg[8]_0 ;
  output m_valid_i_reg;
  output \gen_single_thread.active_target_hot_reg[0]_0 ;
  output [0:0]s_axi_bvalid;
  output \gen_single_thread.active_target_hot_reg[0]_1 ;
  output [0:0]E;
  output \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  output \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  output \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  output p_2_in;
  output [1:0]s_axi_rvalid;
  output \gen_single_thread.active_target_hot_reg[0]_2 ;
  output [0:0]\m_payload_i_reg[66] ;
  output [3:0]s_axi_bresp;
  output \aresetn_d_reg[0] ;
  input [0:0]\s_axi_bvalid[2] ;
  input p_0_in;
  input aclk;
  input [0:0]\s_axi_rvalid[0] ;
  input aresetn;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;
  input [0:0]m_axi_rvalid;
  input \gen_single_thread.active_target_enc ;
  input \gen_single_thread.active_target_enc_0 ;
  input [4:0]r_issuing_cnt;
  input match;
  input \gen_arbiter.qual_reg_reg[0] ;
  input [4:0]w_issuing_cnt;
  input match_1;
  input [0:0]\gen_single_thread.active_target_hot ;
  input \gen_single_thread.active_target_enc_2 ;
  input [0:0]\s_axi_bvalid[2]_0 ;
  input [0:0]\gen_single_thread.active_target_hot_3 ;
  input \gen_single_thread.active_target_enc_4 ;
  input [1:0]s_axi_bready;
  input \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  input \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ;
  input aa_mi_arvalid;
  input [0:0]\gen_master_slots[0].r_issuing_cnt_reg[2] ;
  input [0:0]m_axi_arready;
  input match_5;
  input \gen_arbiter.qual_reg_reg[0]_0 ;
  input match_6;
  input [0:0]\gen_single_thread.active_target_hot_7 ;
  input [1:0]s_axi_rready;
  input [0:0]s_axi_rlast;
  input \gen_single_thread.accept_cnt_reg[3] ;
  input [0:0]\s_axi_rvalid[0]_0 ;
  input [0:0]\gen_single_thread.active_target_hot_8 ;
  input \gen_arbiter.last_rr_hot[2]_i_4__0 ;
  input [0:0]st_mr_rlast;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [63:0]m_axi_rdata;
  input [3:0]\m_payload_i_reg[3] ;

  wire [2:0]D;
  wire [0:0]E;
  wire [36:0]Q;
  wire aa_mi_arvalid;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0] ;
  wire \gen_arbiter.last_rr_hot[2]_i_4__0 ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_arbiter.qual_reg_reg[0]_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ;
  wire [0:0]\gen_master_slots[0].r_issuing_cnt_reg[2] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[3] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8]_0 ;
  wire \gen_single_thread.accept_cnt_reg[3] ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_0 ;
  wire \gen_single_thread.active_target_enc_2 ;
  wire \gen_single_thread.active_target_enc_4 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_3 ;
  wire [0:0]\gen_single_thread.active_target_hot_7 ;
  wire [0:0]\gen_single_thread.active_target_hot_8 ;
  wire \gen_single_thread.active_target_hot_reg[0] ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.active_target_hot_reg[0]_1 ;
  wire \gen_single_thread.active_target_hot_reg[0]_2 ;
  wire [0:0]m_axi_arready;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [3:0]\m_payload_i_reg[3] ;
  wire [0:0]\m_payload_i_reg[66] ;
  wire m_valid_i_reg;
  wire match;
  wire match_1;
  wire match_5;
  wire match_6;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire [4:0]r_issuing_cnt;
  wire [1:0]s_axi_bready;
  wire [3:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [0:0]\s_axi_bvalid[2] ;
  wire [0:0]\s_axi_bvalid[2]_0 ;
  wire [59:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rready;
  wire [1:0]s_axi_rvalid;
  wire [0:0]\s_axi_rvalid[0] ;
  wire [0:0]\s_axi_rvalid[0]_0 ;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire [0:0]st_mr_rlast;
  wire [4:0]w_issuing_cnt;

  e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axic_register_slice__parameterized1_6 \b.b_pipe 
       (.aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0]_0 (\aresetn_d_reg[0] ),
        .\gen_arbiter.qual_reg_reg[0] (\gen_arbiter.qual_reg_reg[0] ),
        .\gen_master_slots[0].w_issuing_cnt_reg[3] (\gen_master_slots[0].w_issuing_cnt_reg[3] ),
        .\gen_master_slots[1].w_issuing_cnt_reg[8] (\gen_master_slots[1].w_issuing_cnt_reg[8] ),
        .\gen_master_slots[1].w_issuing_cnt_reg[8]_0 (\gen_master_slots[1].w_issuing_cnt_reg[8]_0 ),
        .\gen_single_thread.active_target_enc_2 (\gen_single_thread.active_target_enc_2 ),
        .\gen_single_thread.active_target_enc_4 (\gen_single_thread.active_target_enc_4 ),
        .\gen_single_thread.active_target_hot (\gen_single_thread.active_target_hot ),
        .\gen_single_thread.active_target_hot_3 (\gen_single_thread.active_target_hot_3 ),
        .\gen_single_thread.active_target_hot_reg[0] (\gen_single_thread.active_target_hot_reg[0] ),
        .\gen_single_thread.active_target_hot_reg[0]_0 (\gen_single_thread.active_target_hot_reg[0]_0 ),
        .\gen_single_thread.active_target_hot_reg[0]_1 (\gen_single_thread.active_target_hot_reg[0]_1 ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[3]_0 (\m_payload_i_reg[3] ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .match(match),
        .match_1(match_1),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .\s_axi_bvalid[2] (\s_axi_bvalid[2] ),
        .\s_axi_bvalid[2]_0 (\s_axi_bvalid[2]_0 ),
        .s_ready_i_reg_0(s_ready_i_reg_0),
        .w_issuing_cnt(w_issuing_cnt));
  e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axic_register_slice__parameterized2_7 \r.r_pipe 
       (.D(D),
        .E(E),
        .Q(Q),
        .aa_mi_arvalid(aa_mi_arvalid),
        .aclk(aclk),
        .\gen_arbiter.last_rr_hot[2]_i_4__0 (\gen_arbiter.last_rr_hot[2]_i_4__0 ),
        .\gen_arbiter.qual_reg_reg[0] (\gen_arbiter.qual_reg_reg[0]_0 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0] (\gen_master_slots[0].r_issuing_cnt_reg[0] ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_0 (\gen_master_slots[0].r_issuing_cnt_reg[0]_0 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[0]_1 (\gen_master_slots[0].r_issuing_cnt_reg[0]_1 ),
        .\gen_master_slots[0].r_issuing_cnt_reg[2] (\gen_master_slots[0].r_issuing_cnt_reg[2] ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8] (\gen_master_slots[1].r_issuing_cnt_reg[8] ),
        .\gen_master_slots[1].r_issuing_cnt_reg[8]_0 (\gen_master_slots[1].r_issuing_cnt_reg[8]_0 ),
        .\gen_single_thread.accept_cnt_reg[3] (\gen_single_thread.accept_cnt_reg[3] ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_0 (\gen_single_thread.active_target_enc_0 ),
        .\gen_single_thread.active_target_hot_7 (\gen_single_thread.active_target_hot_7 ),
        .\gen_single_thread.active_target_hot_8 (\gen_single_thread.active_target_hot_8 ),
        .\gen_single_thread.active_target_hot_reg[0] (\gen_single_thread.active_target_hot_reg[0]_2 ),
        .m_axi_arready(m_axi_arready),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[66]_0 (\m_payload_i_reg[66] ),
        .match_5(match_5),
        .match_6(match_6),
        .p_0_in(p_0_in),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in),
        .r_issuing_cnt(r_issuing_cnt),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .\s_axi_rvalid[0] (\s_axi_rvalid[0]_0 ),
        .\s_axi_rvalid[0]_0 (\s_axi_rvalid[0] ),
        .s_ready_i_reg_0(s_ready_i_reg),
        .st_mr_rlast(st_mr_rlast));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_19_axi_register_slice" *) 
module e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axi_register_slice_1
   (m_valid_i_reg,
    p_0_in,
    mi_bready_1,
    m_valid_i_reg_0,
    mi_rready_1,
    \m_payload_i_reg[3] ,
    \aresetn_d_reg[1] ,
    \gen_single_thread.active_target_enc_reg[0] ,
    \gen_master_slots[1].w_issuing_cnt_reg[8] ,
    \m_payload_i_reg[3]_0 ,
    p_2_in,
    \gen_single_thread.accept_cnt_reg[0] ,
    s_axi_rready_0_sp_1,
    \m_payload_i_reg[67] ,
    st_mr_rlast,
    m_valid_i_reg_1,
    \m_payload_i_reg[67]_0 ,
    s_axi_rlast,
    m_valid_i_reg_2,
    aclk,
    p_1_in,
    \aresetn_d_reg[1]_0 ,
    p_17_in,
    p_11_in,
    \gen_arbiter.last_rr_hot_reg[2] ,
    w_issuing_cnt,
    match,
    \gen_arbiter.last_rr_hot_reg[2]_0 ,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    \gen_single_thread.active_target_enc_0 ,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_arbiter.last_rr_hot[2]_i_5 ,
    \gen_single_thread.accept_cnt_reg[3] ,
    \gen_arbiter.last_rr_hot_reg[2]_1 ,
    \gen_arbiter.last_rr_hot_reg[2]_2 ,
    match_1,
    \gen_arbiter.last_rr_hot_reg[2]_3 ,
    \gen_single_thread.active_target_enc_2 ,
    s_axi_rready,
    \gen_single_thread.active_target_enc_3 ,
    p_0_in36_in,
    r_issuing_cnt,
    \gen_single_thread.accept_cnt_reg[1] ,
    Q,
    p_16_in,
    p_13_in,
    p_20_in);
  output [0:0]m_valid_i_reg;
  output p_0_in;
  output mi_bready_1;
  output [0:0]m_valid_i_reg_0;
  output mi_rready_1;
  output [0:0]\m_payload_i_reg[3] ;
  output \aresetn_d_reg[1] ;
  output \gen_single_thread.active_target_enc_reg[0] ;
  output \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  output \m_payload_i_reg[3]_0 ;
  output p_2_in;
  output \gen_single_thread.accept_cnt_reg[0] ;
  output s_axi_rready_0_sp_1;
  output [0:0]\m_payload_i_reg[67] ;
  output [0:0]st_mr_rlast;
  output m_valid_i_reg_1;
  output \m_payload_i_reg[67]_0 ;
  output [0:0]s_axi_rlast;
  input m_valid_i_reg_2;
  input aclk;
  input p_1_in;
  input \aresetn_d_reg[1]_0 ;
  input p_17_in;
  input p_11_in;
  input \gen_arbiter.last_rr_hot_reg[2] ;
  input [0:0]w_issuing_cnt;
  input match;
  input \gen_arbiter.last_rr_hot_reg[2]_0 ;
  input \gen_single_thread.active_target_enc ;
  input [1:0]s_axi_bready;
  input \gen_single_thread.active_target_enc_0 ;
  input \gen_arbiter.qual_reg_reg[0] ;
  input \gen_arbiter.last_rr_hot[2]_i_5 ;
  input \gen_single_thread.accept_cnt_reg[3] ;
  input \gen_arbiter.last_rr_hot_reg[2]_1 ;
  input \gen_arbiter.last_rr_hot_reg[2]_2 ;
  input match_1;
  input \gen_arbiter.last_rr_hot_reg[2]_3 ;
  input \gen_single_thread.active_target_enc_2 ;
  input [1:0]s_axi_rready;
  input \gen_single_thread.active_target_enc_3 ;
  input p_0_in36_in;
  input [0:0]r_issuing_cnt;
  input \gen_single_thread.accept_cnt_reg[1] ;
  input [0:0]Q;
  input [0:0]p_16_in;
  input p_13_in;
  input [0:0]p_20_in;

  wire [0:0]Q;
  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire \gen_arbiter.last_rr_hot[2]_i_5 ;
  wire \gen_arbiter.last_rr_hot_reg[2] ;
  wire \gen_arbiter.last_rr_hot_reg[2]_0 ;
  wire \gen_arbiter.last_rr_hot_reg[2]_1 ;
  wire \gen_arbiter.last_rr_hot_reg[2]_2 ;
  wire \gen_arbiter.last_rr_hot_reg[2]_3 ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  wire \gen_single_thread.accept_cnt_reg[0] ;
  wire \gen_single_thread.accept_cnt_reg[1] ;
  wire \gen_single_thread.accept_cnt_reg[3] ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_0 ;
  wire \gen_single_thread.active_target_enc_2 ;
  wire \gen_single_thread.active_target_enc_3 ;
  wire \gen_single_thread.active_target_enc_reg[0] ;
  wire [0:0]\m_payload_i_reg[3] ;
  wire \m_payload_i_reg[3]_0 ;
  wire [0:0]\m_payload_i_reg[67] ;
  wire \m_payload_i_reg[67]_0 ;
  wire [0:0]m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire match;
  wire match_1;
  wire mi_bready_1;
  wire mi_rready_1;
  wire p_0_in;
  wire p_0_in36_in;
  wire p_11_in;
  wire p_13_in;
  wire [0:0]p_16_in;
  wire p_17_in;
  wire p_1_in;
  wire [0:0]p_20_in;
  wire p_2_in;
  wire [0:0]r_issuing_cnt;
  wire [1:0]s_axi_bready;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rready;
  wire s_axi_rready_0_sn_1;
  wire [0:0]st_mr_rlast;
  wire [0:0]w_issuing_cnt;

  assign s_axi_rready_0_sp_1 = s_axi_rready_0_sn_1;
  e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axic_register_slice__parameterized1 \b.b_pipe 
       (.aclk(aclk),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .\aresetn_d_reg[1]_1 (\aresetn_d_reg[1]_0 ),
        .\gen_arbiter.last_rr_hot[2]_i_5_0 (\gen_arbiter.last_rr_hot[2]_i_5 ),
        .\gen_arbiter.last_rr_hot_reg[2] (\gen_arbiter.last_rr_hot_reg[2] ),
        .\gen_arbiter.last_rr_hot_reg[2]_0 (\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .\gen_arbiter.qual_reg_reg[0] (\gen_arbiter.qual_reg_reg[0] ),
        .\gen_master_slots[1].w_issuing_cnt_reg[8] (\gen_master_slots[1].w_issuing_cnt_reg[8] ),
        .\gen_single_thread.accept_cnt_reg[3] (\gen_single_thread.accept_cnt_reg[3] ),
        .\gen_single_thread.active_target_enc (\gen_single_thread.active_target_enc ),
        .\gen_single_thread.active_target_enc_0 (\gen_single_thread.active_target_enc_0 ),
        .\gen_single_thread.active_target_enc_reg[0] (\gen_single_thread.active_target_enc_reg[0] ),
        .\m_payload_i_reg[3]_0 (\m_payload_i_reg[3] ),
        .\m_payload_i_reg[3]_1 (\m_payload_i_reg[3]_0 ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(m_valid_i_reg_2),
        .match(match),
        .mi_bready_1(mi_bready_1),
        .p_0_in(p_0_in),
        .p_17_in(p_17_in),
        .p_1_in(p_1_in),
        .p_20_in(p_20_in),
        .p_2_in(p_2_in),
        .s_axi_bready(s_axi_bready),
        .w_issuing_cnt(w_issuing_cnt));
  e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axic_register_slice__parameterized2 \r.r_pipe 
       (.Q(Q),
        .aclk(aclk),
        .\gen_arbiter.last_rr_hot_reg[2] (\gen_arbiter.last_rr_hot_reg[2]_1 ),
        .\gen_arbiter.last_rr_hot_reg[2]_0 (\gen_arbiter.last_rr_hot_reg[2]_2 ),
        .\gen_arbiter.last_rr_hot_reg[2]_1 (\gen_arbiter.last_rr_hot_reg[2]_3 ),
        .\gen_single_thread.accept_cnt_reg[0] (\gen_single_thread.accept_cnt_reg[0] ),
        .\gen_single_thread.accept_cnt_reg[1] (\gen_single_thread.accept_cnt_reg[1] ),
        .\gen_single_thread.active_target_enc_2 (\gen_single_thread.active_target_enc_2 ),
        .\gen_single_thread.active_target_enc_3 (\gen_single_thread.active_target_enc_3 ),
        .\m_payload_i_reg[66]_0 (st_mr_rlast),
        .\m_payload_i_reg[67]_0 (\m_payload_i_reg[67] ),
        .\m_payload_i_reg[67]_1 (\m_payload_i_reg[67]_0 ),
        .m_valid_i_reg_0(m_valid_i_reg_0),
        .m_valid_i_reg_1(m_valid_i_reg_1),
        .match_1(match_1),
        .p_0_in(p_0_in),
        .p_0_in36_in(p_0_in36_in),
        .p_11_in(p_11_in),
        .p_13_in(p_13_in),
        .p_16_in(p_16_in),
        .p_1_in(p_1_in),
        .r_issuing_cnt(r_issuing_cnt),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0_sp_1(s_axi_rready_0_sn_1),
        .s_ready_i_reg_0(mi_rready_1));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_19_axic_register_slice" *) 
module e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axic_register_slice__parameterized1
   (m_valid_i_reg_0,
    p_0_in,
    mi_bready_1,
    \m_payload_i_reg[3]_0 ,
    \aresetn_d_reg[1]_0 ,
    \gen_single_thread.active_target_enc_reg[0] ,
    \gen_master_slots[1].w_issuing_cnt_reg[8] ,
    \m_payload_i_reg[3]_1 ,
    p_2_in,
    m_valid_i_reg_1,
    aclk,
    p_1_in,
    \aresetn_d_reg[1]_1 ,
    p_17_in,
    \gen_arbiter.last_rr_hot_reg[2] ,
    w_issuing_cnt,
    match,
    \gen_arbiter.last_rr_hot_reg[2]_0 ,
    \gen_single_thread.active_target_enc ,
    s_axi_bready,
    \gen_single_thread.active_target_enc_0 ,
    \gen_arbiter.qual_reg_reg[0] ,
    \gen_arbiter.last_rr_hot[2]_i_5_0 ,
    \gen_single_thread.accept_cnt_reg[3] ,
    p_20_in);
  output m_valid_i_reg_0;
  output p_0_in;
  output mi_bready_1;
  output \m_payload_i_reg[3]_0 ;
  output \aresetn_d_reg[1]_0 ;
  output \gen_single_thread.active_target_enc_reg[0] ;
  output \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  output \m_payload_i_reg[3]_1 ;
  output p_2_in;
  input m_valid_i_reg_1;
  input aclk;
  input p_1_in;
  input \aresetn_d_reg[1]_1 ;
  input p_17_in;
  input \gen_arbiter.last_rr_hot_reg[2] ;
  input [0:0]w_issuing_cnt;
  input match;
  input \gen_arbiter.last_rr_hot_reg[2]_0 ;
  input \gen_single_thread.active_target_enc ;
  input [1:0]s_axi_bready;
  input \gen_single_thread.active_target_enc_0 ;
  input \gen_arbiter.qual_reg_reg[0] ;
  input \gen_arbiter.last_rr_hot[2]_i_5_0 ;
  input \gen_single_thread.accept_cnt_reg[3] ;
  input [0:0]p_20_in;

  wire aclk;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire \gen_arbiter.last_rr_hot[2]_i_5_0 ;
  wire \gen_arbiter.last_rr_hot[2]_i_8_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg[2] ;
  wire \gen_arbiter.last_rr_hot_reg[2]_0 ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  wire \gen_single_thread.accept_cnt_reg[3] ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_0 ;
  wire \gen_single_thread.active_target_enc_reg[0] ;
  wire \m_payload_i[3]_i_1__1_n_0 ;
  wire \m_payload_i_reg[3]_0 ;
  wire \m_payload_i_reg[3]_1 ;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match;
  wire mi_bready_1;
  wire p_0_in;
  wire p_17_in;
  wire p_1_in;
  wire [0:0]p_20_in;
  wire p_2_in;
  wire [1:0]s_axi_bready;
  wire s_ready_i_i_1__2_n_0;
  wire [0:0]w_issuing_cnt;

  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[1]_1 ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8888088800000888)) 
    \gen_arbiter.last_rr_hot[2]_i_5 
       (.I0(\gen_arbiter.last_rr_hot_reg[2] ),
        .I1(\gen_arbiter.last_rr_hot[2]_i_8_n_0 ),
        .I2(w_issuing_cnt),
        .I3(\gen_single_thread.active_target_enc_reg[0] ),
        .I4(match),
        .I5(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF8888A888)) 
    \gen_arbiter.last_rr_hot[2]_i_8 
       (.I0(s_axi_bready[0]),
        .I1(\gen_arbiter.qual_reg_reg[0] ),
        .I2(m_valid_i_reg_0),
        .I3(\gen_single_thread.active_target_enc ),
        .I4(\m_payload_i_reg[3]_0 ),
        .I5(\gen_arbiter.last_rr_hot[2]_i_5_0 ),
        .O(\gen_arbiter.last_rr_hot[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFF400000)) 
    \gen_arbiter.qual_reg[0]_i_5 
       (.I0(\m_payload_i_reg[3]_0 ),
        .I1(\gen_single_thread.active_target_enc ),
        .I2(m_valid_i_reg_0),
        .I3(\gen_arbiter.qual_reg_reg[0] ),
        .I4(s_axi_bready[0]),
        .O(\m_payload_i_reg[3]_1 ));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \gen_single_thread.accept_cnt[3]_i_3 
       (.I0(\m_payload_i_reg[3]_0 ),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .I2(m_valid_i_reg_0),
        .I3(\gen_single_thread.accept_cnt_reg[3] ),
        .I4(s_axi_bready[1]),
        .O(p_2_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__1 
       (.I0(\m_payload_i_reg[3]_0 ),
        .I1(m_valid_i_reg_0),
        .I2(p_20_in),
        .O(\m_payload_i[3]_i_1__1_n_0 ));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[3]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[3]_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    m_valid_i_i_1__6
       (.I0(\aresetn_d_reg[1]_0 ),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_reg_1),
        .Q(m_valid_i_reg_0),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h57FF)) 
    s_ready_i_i_1__2
       (.I0(\gen_single_thread.active_target_enc_reg[0] ),
        .I1(p_17_in),
        .I2(m_valid_i_reg_0),
        .I3(\aresetn_d_reg[1]_0 ),
        .O(s_ready_i_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h07F7F7F7FFFFFFFF)) 
    s_ready_i_i_2
       (.I0(\gen_single_thread.active_target_enc ),
        .I1(s_axi_bready[0]),
        .I2(\m_payload_i_reg[3]_0 ),
        .I3(s_axi_bready[1]),
        .I4(\gen_single_thread.active_target_enc_0 ),
        .I5(m_valid_i_reg_0),
        .O(\gen_single_thread.active_target_enc_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__2_n_0),
        .Q(mi_bready_1),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_19_axic_register_slice" *) 
module e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axic_register_slice__parameterized1_6
   (m_axi_bready,
    p_1_in,
    \gen_single_thread.active_target_hot_reg[0] ,
    \gen_master_slots[1].w_issuing_cnt_reg[8] ,
    \gen_master_slots[0].w_issuing_cnt_reg[3] ,
    \gen_master_slots[1].w_issuing_cnt_reg[8]_0 ,
    m_valid_i_reg_0,
    \gen_single_thread.active_target_hot_reg[0]_0 ,
    s_axi_bvalid,
    \gen_single_thread.active_target_hot_reg[0]_1 ,
    s_axi_bresp,
    \aresetn_d_reg[0]_0 ,
    p_0_in,
    aclk,
    aresetn,
    m_axi_bvalid,
    s_ready_i_reg_0,
    match,
    \gen_arbiter.qual_reg_reg[0] ,
    w_issuing_cnt,
    match_1,
    \gen_single_thread.active_target_hot ,
    \s_axi_bvalid[2] ,
    \gen_single_thread.active_target_enc_2 ,
    \s_axi_bvalid[2]_0 ,
    \gen_single_thread.active_target_hot_3 ,
    \gen_single_thread.active_target_enc_4 ,
    s_axi_bready,
    \m_payload_i_reg[3]_0 );
  output [0:0]m_axi_bready;
  output p_1_in;
  output \gen_single_thread.active_target_hot_reg[0] ;
  output \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  output \gen_master_slots[0].w_issuing_cnt_reg[3] ;
  output \gen_master_slots[1].w_issuing_cnt_reg[8]_0 ;
  output m_valid_i_reg_0;
  output \gen_single_thread.active_target_hot_reg[0]_0 ;
  output [0:0]s_axi_bvalid;
  output \gen_single_thread.active_target_hot_reg[0]_1 ;
  output [3:0]s_axi_bresp;
  output \aresetn_d_reg[0]_0 ;
  input p_0_in;
  input aclk;
  input aresetn;
  input [0:0]m_axi_bvalid;
  input s_ready_i_reg_0;
  input match;
  input \gen_arbiter.qual_reg_reg[0] ;
  input [4:0]w_issuing_cnt;
  input match_1;
  input [0:0]\gen_single_thread.active_target_hot ;
  input [0:0]\s_axi_bvalid[2] ;
  input \gen_single_thread.active_target_enc_2 ;
  input [0:0]\s_axi_bvalid[2]_0 ;
  input [0:0]\gen_single_thread.active_target_hot_3 ;
  input \gen_single_thread.active_target_enc_4 ;
  input [1:0]s_axi_bready;
  input [3:0]\m_payload_i_reg[3]_0 ;

  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0]_0 ;
  wire \aresetn_d_reg_n_0_[0] ;
  wire [4:4]bready_carry;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_master_slots[0].w_issuing_cnt_reg[3] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8] ;
  wire \gen_master_slots[1].w_issuing_cnt_reg[8]_0 ;
  wire \gen_single_thread.active_target_enc_2 ;
  wire \gen_single_thread.active_target_enc_4 ;
  wire [0:0]\gen_single_thread.active_target_hot ;
  wire [0:0]\gen_single_thread.active_target_hot_3 ;
  wire \gen_single_thread.active_target_hot_reg[0] ;
  wire \gen_single_thread.active_target_hot_reg[0]_0 ;
  wire \gen_single_thread.active_target_hot_reg[0]_1 ;
  wire [0:0]m_axi_bready;
  wire [0:0]m_axi_bvalid;
  wire \m_payload_i[3]_i_1_n_0 ;
  wire [3:0]\m_payload_i_reg[3]_0 ;
  wire m_valid_i_i_2__0_n_0;
  wire m_valid_i_reg_0;
  wire match;
  wire match_1;
  wire p_0_in;
  wire p_1_in;
  wire [1:0]s_axi_bready;
  wire [3:0]s_axi_bresp;
  wire [0:0]s_axi_bvalid;
  wire [0:0]\s_axi_bvalid[2] ;
  wire [0:0]\s_axi_bvalid[2]_0 ;
  wire \s_axi_bvalid[2]_INST_0_i_1_n_0 ;
  wire s_ready_i_i_2__2_n_0;
  wire s_ready_i_reg_0;
  wire [1:0]st_mr_bid;
  wire [1:0]st_mr_bmesg;
  wire [0:0]st_mr_bvalid;
  wire [4:0]w_issuing_cnt;

  LUT2 #(
    .INIT(4'h8)) 
    \aresetn_d[1]_i_1 
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(aresetn),
        .O(\aresetn_d_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \gen_arbiter.qual_reg[0]_i_3 
       (.I0(\gen_master_slots[0].w_issuing_cnt_reg[3] ),
        .I1(match_1),
        .I2(\gen_arbiter.qual_reg_reg[0] ),
        .I3(w_issuing_cnt[4]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \gen_arbiter.qual_reg[0]_i_7 
       (.I0(\gen_single_thread.active_target_hot ),
        .I1(st_mr_bvalid),
        .I2(st_mr_bid[1]),
        .I3(st_mr_bid[0]),
        .O(\gen_single_thread.active_target_hot_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \gen_arbiter.qual_reg[2]_i_3 
       (.I0(\gen_master_slots[0].w_issuing_cnt_reg[3] ),
        .I1(match),
        .I2(\gen_arbiter.qual_reg_reg[0] ),
        .I3(w_issuing_cnt[4]),
        .O(\gen_master_slots[1].w_issuing_cnt_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD5)) 
    \gen_arbiter.qual_reg[2]_i_6 
       (.I0(w_issuing_cnt[3]),
        .I1(bready_carry),
        .I2(st_mr_bvalid),
        .I3(w_issuing_cnt[0]),
        .I4(w_issuing_cnt[1]),
        .I5(w_issuing_cnt[2]),
        .O(\gen_master_slots[0].w_issuing_cnt_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_single_thread.accept_cnt[3]_i_4 
       (.I0(\gen_single_thread.active_target_hot_3 ),
        .I1(st_mr_bvalid),
        .I2(st_mr_bid[1]),
        .I3(st_mr_bid[0]),
        .O(\gen_single_thread.active_target_hot_reg[0]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[3]_i_1 
       (.I0(st_mr_bvalid),
        .O(\m_payload_i[3]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(\m_payload_i_reg[3]_0 [0]),
        .Q(st_mr_bmesg[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(\m_payload_i_reg[3]_0 [1]),
        .Q(st_mr_bmesg[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(\m_payload_i_reg[3]_0 [2]),
        .Q(st_mr_bid[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[3]_i_1_n_0 ),
        .D(\m_payload_i_reg[3]_0 [3]),
        .Q(st_mr_bid[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8B)) 
    m_valid_i_i_2__0
       (.I0(m_axi_bvalid),
        .I1(m_axi_bready),
        .I2(bready_carry),
        .O(m_valid_i_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hF8FF080008000800)) 
    m_valid_i_i_3
       (.I0(\gen_single_thread.active_target_hot_3 ),
        .I1(s_axi_bready[1]),
        .I2(st_mr_bid[0]),
        .I3(st_mr_bid[1]),
        .I4(s_axi_bready[0]),
        .I5(\gen_single_thread.active_target_hot ),
        .O(bready_carry));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_2__0_n_0),
        .Q(st_mr_bvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(st_mr_bmesg[0]),
        .I1(\gen_single_thread.active_target_enc_2 ),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(st_mr_bmesg[1]),
        .I1(\gen_single_thread.active_target_enc_2 ),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[4]_INST_0 
       (.I0(st_mr_bmesg[0]),
        .I1(\gen_single_thread.active_target_enc_4 ),
        .O(s_axi_bresp[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[5]_INST_0 
       (.I0(st_mr_bmesg[1]),
        .I1(\gen_single_thread.active_target_enc_4 ),
        .O(s_axi_bresp[3]));
  LUT6 #(
    .INIT(64'h80808080FF808080)) 
    \s_axi_bvalid[0]_INST_0 
       (.I0(\s_axi_bvalid[2]_INST_0_i_1_n_0 ),
        .I1(st_mr_bvalid),
        .I2(\gen_single_thread.active_target_hot ),
        .I3(\s_axi_bvalid[2] ),
        .I4(\gen_single_thread.active_target_enc_2 ),
        .I5(\s_axi_bvalid[2]_0 ),
        .O(m_valid_i_reg_0));
  LUT6 #(
    .INIT(64'hFF40404040404040)) 
    \s_axi_bvalid[2]_INST_0 
       (.I0(\s_axi_bvalid[2]_INST_0_i_1_n_0 ),
        .I1(st_mr_bvalid),
        .I2(\gen_single_thread.active_target_hot_3 ),
        .I3(\s_axi_bvalid[2] ),
        .I4(\gen_single_thread.active_target_enc_4 ),
        .I5(\s_axi_bvalid[2]_0 ),
        .O(s_axi_bvalid));
  LUT2 #(
    .INIT(4'hB)) 
    \s_axi_bvalid[2]_INST_0_i_1 
       (.I0(st_mr_bid[0]),
        .I1(st_mr_bid[1]),
        .O(\s_axi_bvalid[2]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    s_ready_i_i_1__1
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .O(p_1_in));
  LUT4 #(
    .INIT(16'hABFF)) 
    s_ready_i_i_2__2
       (.I0(\gen_single_thread.active_target_hot_reg[0] ),
        .I1(m_axi_bvalid),
        .I2(st_mr_bvalid),
        .I3(s_ready_i_reg_0),
        .O(s_ready_i_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h8F80808000000000)) 
    s_ready_i_i_3
       (.I0(\gen_single_thread.active_target_hot ),
        .I1(s_axi_bready[0]),
        .I2(\s_axi_bvalid[2]_INST_0_i_1_n_0 ),
        .I3(s_axi_bready[1]),
        .I4(\gen_single_thread.active_target_hot_3 ),
        .I5(st_mr_bvalid),
        .O(\gen_single_thread.active_target_hot_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_2__2_n_0),
        .Q(m_axi_bready),
        .R(p_1_in));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_19_axic_register_slice" *) 
module e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axic_register_slice__parameterized2
   (m_valid_i_reg_0,
    s_ready_i_reg_0,
    \gen_single_thread.accept_cnt_reg[0] ,
    s_axi_rready_0_sp_1,
    \m_payload_i_reg[67]_0 ,
    \m_payload_i_reg[66]_0 ,
    m_valid_i_reg_1,
    \m_payload_i_reg[67]_1 ,
    s_axi_rlast,
    p_0_in,
    aclk,
    p_1_in,
    p_11_in,
    \gen_arbiter.last_rr_hot_reg[2] ,
    \gen_arbiter.last_rr_hot_reg[2]_0 ,
    match_1,
    \gen_arbiter.last_rr_hot_reg[2]_1 ,
    \gen_single_thread.active_target_enc_2 ,
    s_axi_rready,
    \gen_single_thread.active_target_enc_3 ,
    p_0_in36_in,
    r_issuing_cnt,
    \gen_single_thread.accept_cnt_reg[1] ,
    Q,
    p_16_in,
    p_13_in);
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output \gen_single_thread.accept_cnt_reg[0] ;
  output s_axi_rready_0_sp_1;
  output \m_payload_i_reg[67]_0 ;
  output \m_payload_i_reg[66]_0 ;
  output m_valid_i_reg_1;
  output \m_payload_i_reg[67]_1 ;
  output [0:0]s_axi_rlast;
  input p_0_in;
  input aclk;
  input p_1_in;
  input p_11_in;
  input \gen_arbiter.last_rr_hot_reg[2] ;
  input \gen_arbiter.last_rr_hot_reg[2]_0 ;
  input match_1;
  input \gen_arbiter.last_rr_hot_reg[2]_1 ;
  input \gen_single_thread.active_target_enc_2 ;
  input [1:0]s_axi_rready;
  input \gen_single_thread.active_target_enc_3 ;
  input p_0_in36_in;
  input [0:0]r_issuing_cnt;
  input \gen_single_thread.accept_cnt_reg[1] ;
  input [0:0]Q;
  input [0:0]p_16_in;
  input p_13_in;

  wire [0:0]Q;
  wire aclk;
  wire \gen_arbiter.last_rr_hot[2]_i_6__0_n_0 ;
  wire \gen_arbiter.last_rr_hot_reg[2] ;
  wire \gen_arbiter.last_rr_hot_reg[2]_0 ;
  wire \gen_arbiter.last_rr_hot_reg[2]_1 ;
  wire \gen_arbiter.qual_reg[0]_i_6__0_n_0 ;
  wire \gen_single_thread.accept_cnt_reg[0] ;
  wire \gen_single_thread.accept_cnt_reg[1] ;
  wire \gen_single_thread.active_target_enc_2 ;
  wire \gen_single_thread.active_target_enc_3 ;
  wire \m_payload_i[66]_i_1_n_0 ;
  wire \m_payload_i[67]_i_1_n_0 ;
  wire \m_payload_i_reg[66]_0 ;
  wire \m_payload_i_reg[67]_0 ;
  wire \m_payload_i_reg[67]_1 ;
  wire m_valid_i0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire match_1;
  wire p_0_in;
  wire p_0_in36_in;
  wire p_11_in;
  wire p_13_in;
  wire [0:0]p_16_in;
  wire p_1_in;
  wire p_1_in_0;
  wire [0:0]r_issuing_cnt;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rready;
  wire s_axi_rready_0_sn_1;
  wire s_ready_i_i_1__3_n_0;
  wire s_ready_i_reg_0;
  wire [67:66]skid_buffer;
  wire \skid_buffer_reg_n_0_[66] ;
  wire \skid_buffer_reg_n_0_[67] ;

  assign s_axi_rready_0_sp_1 = s_axi_rready_0_sn_1;
  LUT6 #(
    .INIT(64'hB0B0B0000000B000)) 
    \gen_arbiter.last_rr_hot[2]_i_4__0 
       (.I0(\gen_arbiter.last_rr_hot_reg[2] ),
        .I1(s_axi_rready_0_sn_1),
        .I2(\gen_arbiter.last_rr_hot_reg[2]_0 ),
        .I3(\gen_arbiter.last_rr_hot[2]_i_6__0_n_0 ),
        .I4(match_1),
        .I5(\gen_arbiter.last_rr_hot_reg[2]_1 ),
        .O(\gen_single_thread.accept_cnt_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \gen_arbiter.last_rr_hot[2]_i_6__0 
       (.I0(p_0_in36_in),
        .I1(\m_payload_i_reg[66]_0 ),
        .I2(m_valid_i_reg_0),
        .I3(r_issuing_cnt),
        .O(\gen_arbiter.last_rr_hot[2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDFFFFDFFF)) 
    \gen_arbiter.qual_reg[0]_i_4__0 
       (.I0(s_axi_rready[0]),
        .I1(\gen_arbiter.qual_reg[0]_i_6__0_n_0 ),
        .I2(\gen_single_thread.active_target_enc_2 ),
        .I3(m_valid_i_reg_0),
        .I4(\m_payload_i_reg[67]_0 ),
        .I5(\gen_single_thread.accept_cnt_reg[1] ),
        .O(s_axi_rready_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \gen_arbiter.qual_reg[0]_i_6__0 
       (.I0(\m_payload_i_reg[66]_0 ),
        .I1(\gen_single_thread.active_target_enc_2 ),
        .I2(Q),
        .O(\gen_arbiter.qual_reg[0]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \gen_master_slots[1].r_issuing_cnt[8]_i_2 
       (.I0(m_valid_i_reg_0),
        .I1(\m_payload_i_reg[66]_0 ),
        .I2(p_0_in36_in),
        .O(m_valid_i_reg_1));
  LUT5 #(
    .INIT(32'h80000000)) 
    \gen_single_thread.accept_cnt[3]_i_4__0 
       (.I0(\m_payload_i_reg[67]_0 ),
        .I1(s_axi_rready[1]),
        .I2(\gen_single_thread.active_target_enc_3 ),
        .I3(m_valid_i_reg_0),
        .I4(\m_payload_i_reg[66]_0 ),
        .O(\m_payload_i_reg[67]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_payload_i[66]_i_1 
       (.I0(p_13_in),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[66] ),
        .I3(p_1_in_0),
        .I4(\m_payload_i_reg[66]_0 ),
        .O(\m_payload_i[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_payload_i[67]_i_1 
       (.I0(p_16_in),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[67] ),
        .I3(p_1_in_0),
        .I4(\m_payload_i_reg[67]_0 ),
        .O(\m_payload_i[67]_i_1_n_0 ));
  FDRE \m_payload_i_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[66]_i_1_n_0 ),
        .Q(\m_payload_i_reg[66]_0 ),
        .R(1'b0));
  FDRE \m_payload_i_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_payload_i[67]_i_1_n_0 ),
        .Q(\m_payload_i_reg[67]_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hDF)) 
    m_valid_i_i_1__0
       (.I0(s_ready_i_reg_0),
        .I1(p_11_in),
        .I2(p_1_in_0),
        .O(m_valid_i0));
  LUT6 #(
    .INIT(64'hF8080808FFFFFFFF)) 
    m_valid_i_i_2__1
       (.I0(\gen_single_thread.active_target_enc_2 ),
        .I1(s_axi_rready[0]),
        .I2(\m_payload_i_reg[67]_0 ),
        .I3(s_axi_rready[1]),
        .I4(\gen_single_thread.active_target_enc_3 ),
        .I5(m_valid_i_reg_0),
        .O(p_1_in_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i0),
        .Q(m_valid_i_reg_0),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rlast[1]_INST_0 
       (.I0(\m_payload_i_reg[66]_0 ),
        .I1(\gen_single_thread.active_target_enc_3 ),
        .I2(Q),
        .O(s_axi_rlast));
  LUT3 #(
    .INIT(8'hAE)) 
    s_ready_i_i_1__3
       (.I0(p_1_in_0),
        .I1(s_ready_i_reg_0),
        .I2(p_11_in),
        .O(s_ready_i_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__3_n_0),
        .Q(s_ready_i_reg_0),
        .R(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[66]_i_1 
       (.I0(p_13_in),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[66] ),
        .O(skid_buffer[66]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \skid_buffer[67]_i_1 
       (.I0(p_16_in),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[67] ),
        .O(skid_buffer[67]));
  FDRE \skid_buffer_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[66]),
        .Q(\skid_buffer_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[67] 
       (.C(aclk),
        .CE(1'b1),
        .D(skid_buffer[67]),
        .Q(\skid_buffer_reg_n_0_[67] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_19_axic_register_slice" *) 
module e310v2_ps_bd_xbar_1_axi_register_slice_v2_1_19_axic_register_slice__parameterized2_7
   (s_ready_i_reg_0,
    s_axi_rdata,
    D,
    E,
    Q,
    \gen_master_slots[1].r_issuing_cnt_reg[8] ,
    \gen_master_slots[0].r_issuing_cnt_reg[0] ,
    \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ,
    p_2_in,
    s_axi_rvalid,
    \gen_single_thread.active_target_hot_reg[0] ,
    \m_payload_i_reg[66]_0 ,
    p_0_in,
    aclk,
    p_1_in,
    m_axi_rvalid,
    \gen_single_thread.active_target_enc ,
    \gen_single_thread.active_target_enc_0 ,
    r_issuing_cnt,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ,
    \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ,
    aa_mi_arvalid,
    \gen_master_slots[0].r_issuing_cnt_reg[2] ,
    m_axi_arready,
    match_5,
    \gen_arbiter.qual_reg_reg[0] ,
    match_6,
    \gen_single_thread.active_target_hot_7 ,
    s_axi_rready,
    s_axi_rlast,
    \gen_single_thread.accept_cnt_reg[3] ,
    \s_axi_rvalid[0] ,
    \s_axi_rvalid[0]_0 ,
    \gen_single_thread.active_target_hot_8 ,
    \gen_arbiter.last_rr_hot[2]_i_4__0 ,
    st_mr_rlast,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rresp,
    m_axi_rdata);
  output s_ready_i_reg_0;
  output [59:0]s_axi_rdata;
  output [2:0]D;
  output [0:0]E;
  output [36:0]Q;
  output \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  output \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  output \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  output p_2_in;
  output [1:0]s_axi_rvalid;
  output \gen_single_thread.active_target_hot_reg[0] ;
  output [0:0]\m_payload_i_reg[66]_0 ;
  input p_0_in;
  input aclk;
  input p_1_in;
  input [0:0]m_axi_rvalid;
  input \gen_single_thread.active_target_enc ;
  input \gen_single_thread.active_target_enc_0 ;
  input [4:0]r_issuing_cnt;
  input \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  input \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ;
  input aa_mi_arvalid;
  input [0:0]\gen_master_slots[0].r_issuing_cnt_reg[2] ;
  input [0:0]m_axi_arready;
  input match_5;
  input \gen_arbiter.qual_reg_reg[0] ;
  input match_6;
  input [0:0]\gen_single_thread.active_target_hot_7 ;
  input [1:0]s_axi_rready;
  input [0:0]s_axi_rlast;
  input \gen_single_thread.accept_cnt_reg[3] ;
  input [0:0]\s_axi_rvalid[0] ;
  input [0:0]\s_axi_rvalid[0]_0 ;
  input [0:0]\gen_single_thread.active_target_hot_8 ;
  input \gen_arbiter.last_rr_hot[2]_i_4__0 ;
  input [0:0]st_mr_rlast;
  input [1:0]m_axi_rid;
  input [0:0]m_axi_rlast;
  input [1:0]m_axi_rresp;
  input [63:0]m_axi_rdata;

  wire [2:0]D;
  wire [0:0]E;
  wire [36:0]Q;
  wire aa_mi_arvalid;
  wire aclk;
  wire \gen_arbiter.last_rr_hot[2]_i_4__0 ;
  wire \gen_arbiter.qual_reg_reg[0] ;
  wire \gen_master_slots[0].r_issuing_cnt[3]_i_4_n_0 ;
  wire \gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0] ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_0 ;
  wire \gen_master_slots[0].r_issuing_cnt_reg[0]_1 ;
  wire [0:0]\gen_master_slots[0].r_issuing_cnt_reg[2] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8] ;
  wire \gen_master_slots[1].r_issuing_cnt_reg[8]_0 ;
  wire \gen_single_thread.accept_cnt_reg[3] ;
  wire \gen_single_thread.active_target_enc ;
  wire \gen_single_thread.active_target_enc_0 ;
  wire [0:0]\gen_single_thread.active_target_hot_7 ;
  wire [0:0]\gen_single_thread.active_target_hot_8 ;
  wire \gen_single_thread.active_target_hot_reg[0] ;
  wire [0:0]m_axi_arready;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [0:0]\m_payload_i_reg[66]_0 ;
  wire m_valid_i0;
  wire match_5;
  wire match_6;
  wire p_0_in;
  wire p_1_in;
  wire p_1_in_0;
  wire p_2_in;
  wire [4:0]r_issuing_cnt;
  wire [59:0]s_axi_rdata;
  wire [0:0]s_axi_rlast;
  wire [1:0]s_axi_rready;
  wire [1:0]s_axi_rvalid;
  wire [0:0]\s_axi_rvalid[0] ;
  wire [0:0]\s_axi_rvalid[0]_0 ;
  wire \s_axi_rvalid[1]_INST_0_i_1_n_0 ;
  wire s_ready_i_i_1__4_n_0;
  wire s_ready_i_reg_0;
  wire [68:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[37] ;
  wire \skid_buffer_reg_n_0_[38] ;
  wire \skid_buffer_reg_n_0_[39] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[40] ;
  wire \skid_buffer_reg_n_0_[41] ;
  wire \skid_buffer_reg_n_0_[42] ;
  wire \skid_buffer_reg_n_0_[43] ;
  wire \skid_buffer_reg_n_0_[44] ;
  wire \skid_buffer_reg_n_0_[45] ;
  wire \skid_buffer_reg_n_0_[46] ;
  wire \skid_buffer_reg_n_0_[47] ;
  wire \skid_buffer_reg_n_0_[48] ;
  wire \skid_buffer_reg_n_0_[49] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[50] ;
  wire \skid_buffer_reg_n_0_[51] ;
  wire \skid_buffer_reg_n_0_[52] ;
  wire \skid_buffer_reg_n_0_[53] ;
  wire \skid_buffer_reg_n_0_[54] ;
  wire \skid_buffer_reg_n_0_[55] ;
  wire \skid_buffer_reg_n_0_[56] ;
  wire \skid_buffer_reg_n_0_[57] ;
  wire \skid_buffer_reg_n_0_[58] ;
  wire \skid_buffer_reg_n_0_[59] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[60] ;
  wire \skid_buffer_reg_n_0_[61] ;
  wire \skid_buffer_reg_n_0_[62] ;
  wire \skid_buffer_reg_n_0_[63] ;
  wire \skid_buffer_reg_n_0_[64] ;
  wire \skid_buffer_reg_n_0_[65] ;
  wire \skid_buffer_reg_n_0_[66] ;
  wire \skid_buffer_reg_n_0_[67] ;
  wire \skid_buffer_reg_n_0_[68] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire [1:0]st_mr_rid;
  wire [0:0]st_mr_rlast;
  wire [64:3]st_mr_rmesg;
  wire [0:0]st_mr_rvalid;

  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \gen_arbiter.qual_reg[0]_i_3__0 
       (.I0(\gen_master_slots[0].r_issuing_cnt_reg[0] ),
        .I1(match_6),
        .I2(\gen_arbiter.qual_reg_reg[0] ),
        .I3(r_issuing_cnt[4]),
        .O(\gen_master_slots[1].r_issuing_cnt_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    \gen_arbiter.qual_reg[0]_i_7__0 
       (.I0(\gen_single_thread.active_target_hot_8 ),
        .I1(st_mr_rvalid),
        .I2(st_mr_rid[0]),
        .I3(st_mr_rid[1]),
        .O(\gen_single_thread.active_target_hot_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h8BBB)) 
    \gen_arbiter.qual_reg[1]_i_3 
       (.I0(\gen_master_slots[0].r_issuing_cnt_reg[0] ),
        .I1(match_5),
        .I2(\gen_arbiter.qual_reg_reg[0] ),
        .I3(r_issuing_cnt[4]),
        .O(\gen_master_slots[1].r_issuing_cnt_reg[8] ));
  LUT6 #(
    .INIT(64'hFFEFEFEFEFEFEFEF)) 
    \gen_arbiter.qual_reg[1]_i_6 
       (.I0(r_issuing_cnt[0]),
        .I1(\gen_arbiter.last_rr_hot[2]_i_4__0 ),
        .I2(r_issuing_cnt[3]),
        .I3(st_mr_rvalid),
        .I4(Q[36]),
        .I5(\gen_master_slots[0].r_issuing_cnt[3]_i_4_n_0 ),
        .O(\gen_master_slots[0].r_issuing_cnt_reg[0] ));
  LUT3 #(
    .INIT(8'h96)) 
    \gen_master_slots[0].r_issuing_cnt[1]_i_1 
       (.I0(r_issuing_cnt[1]),
        .I1(r_issuing_cnt[0]),
        .I2(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hBD42)) 
    \gen_master_slots[0].r_issuing_cnt[2]_i_1 
       (.I0(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ),
        .I1(r_issuing_cnt[1]),
        .I2(r_issuing_cnt[0]),
        .I3(r_issuing_cnt[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hE00F0F0F0F0F0F0F)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_1 
       (.I0(\gen_master_slots[0].r_issuing_cnt_reg[0]_0 ),
        .I1(r_issuing_cnt[3]),
        .I2(\gen_master_slots[0].r_issuing_cnt_reg[0]_1 ),
        .I3(st_mr_rvalid),
        .I4(Q[36]),
        .I5(\gen_master_slots[0].r_issuing_cnt[3]_i_4_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hBFFD4002)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_2 
       (.I0(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ),
        .I1(r_issuing_cnt[1]),
        .I2(r_issuing_cnt[0]),
        .I3(r_issuing_cnt[2]),
        .I4(r_issuing_cnt[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hF8FF080008000800)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_4 
       (.I0(\gen_single_thread.active_target_hot_7 ),
        .I1(s_axi_rready[1]),
        .I2(st_mr_rid[1]),
        .I3(st_mr_rid[0]),
        .I4(s_axi_rready[0]),
        .I5(\gen_single_thread.active_target_hot_8 ),
        .O(\gen_master_slots[0].r_issuing_cnt[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFFFFFFFFFFFF)) 
    \gen_master_slots[0].r_issuing_cnt[3]_i_5 
       (.I0(\gen_master_slots[0].r_issuing_cnt[3]_i_4_n_0 ),
        .I1(Q[36]),
        .I2(st_mr_rvalid),
        .I3(aa_mi_arvalid),
        .I4(\gen_master_slots[0].r_issuing_cnt_reg[2] ),
        .I5(m_axi_arready),
        .O(\gen_master_slots[0].r_issuing_cnt[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \gen_single_thread.accept_cnt[3]_i_3__0 
       (.I0(st_mr_rvalid),
        .I1(\gen_single_thread.active_target_hot_7 ),
        .I2(s_axi_rready[1]),
        .I3(s_axi_rlast),
        .I4(\s_axi_rvalid[1]_INST_0_i_1_n_0 ),
        .I5(\gen_single_thread.accept_cnt_reg[3] ),
        .O(p_2_in));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1 
       (.I0(m_axi_rdata[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1 
       (.I0(m_axi_rdata[10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1 
       (.I0(m_axi_rdata[11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1 
       (.I0(m_axi_rdata[12]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1 
       (.I0(m_axi_rdata[13]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1 
       (.I0(m_axi_rdata[14]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1 
       (.I0(m_axi_rdata[15]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1 
       (.I0(m_axi_rdata[16]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1 
       (.I0(m_axi_rdata[17]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(skid_buffer[17]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1 
       (.I0(m_axi_rdata[18]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1 
       (.I0(m_axi_rdata[19]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1 
       (.I0(m_axi_rdata[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1 
       (.I0(m_axi_rdata[20]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(skid_buffer[20]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1 
       (.I0(m_axi_rdata[21]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(skid_buffer[21]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1 
       (.I0(m_axi_rdata[22]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(skid_buffer[22]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1 
       (.I0(m_axi_rdata[23]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(skid_buffer[23]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1 
       (.I0(m_axi_rdata[24]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1 
       (.I0(m_axi_rdata[25]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1 
       (.I0(m_axi_rdata[26]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1 
       (.I0(m_axi_rdata[27]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1 
       (.I0(m_axi_rdata[28]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1 
       (.I0(m_axi_rdata[29]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1 
       (.I0(m_axi_rdata[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1 
       (.I0(m_axi_rdata[30]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_1 
       (.I0(m_axi_rdata[31]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1 
       (.I0(m_axi_rdata[32]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(skid_buffer[32]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1 
       (.I0(m_axi_rdata[33]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1 
       (.I0(m_axi_rdata[34]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_1 
       (.I0(m_axi_rdata[35]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(skid_buffer[35]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[36]_i_1 
       (.I0(m_axi_rdata[36]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[36] ),
        .O(skid_buffer[36]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[37]_i_1 
       (.I0(m_axi_rdata[37]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[37] ),
        .O(skid_buffer[37]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[38]_i_1 
       (.I0(m_axi_rdata[38]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[38] ),
        .O(skid_buffer[38]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[39]_i_1 
       (.I0(m_axi_rdata[39]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[39] ),
        .O(skid_buffer[39]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__0 
       (.I0(m_axi_rdata[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[40]_i_1 
       (.I0(m_axi_rdata[40]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[40] ),
        .O(skid_buffer[40]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[41]_i_1 
       (.I0(m_axi_rdata[41]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[41] ),
        .O(skid_buffer[41]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[42]_i_1 
       (.I0(m_axi_rdata[42]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[42] ),
        .O(skid_buffer[42]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[43]_i_1 
       (.I0(m_axi_rdata[43]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[43] ),
        .O(skid_buffer[43]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[44]_i_1 
       (.I0(m_axi_rdata[44]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[44] ),
        .O(skid_buffer[44]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[45]_i_1 
       (.I0(m_axi_rdata[45]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[45] ),
        .O(skid_buffer[45]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[46]_i_1 
       (.I0(m_axi_rdata[46]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[46] ),
        .O(skid_buffer[46]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[47]_i_1 
       (.I0(m_axi_rdata[47]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[47] ),
        .O(skid_buffer[47]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[48]_i_1 
       (.I0(m_axi_rdata[48]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[48] ),
        .O(skid_buffer[48]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[49]_i_1 
       (.I0(m_axi_rdata[49]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[49] ),
        .O(skid_buffer[49]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1 
       (.I0(m_axi_rdata[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[50]_i_1 
       (.I0(m_axi_rdata[50]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[50] ),
        .O(skid_buffer[50]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[51]_i_1 
       (.I0(m_axi_rdata[51]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[51] ),
        .O(skid_buffer[51]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[52]_i_1 
       (.I0(m_axi_rdata[52]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[52] ),
        .O(skid_buffer[52]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[53]_i_1 
       (.I0(m_axi_rdata[53]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[53] ),
        .O(skid_buffer[53]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[54]_i_1 
       (.I0(m_axi_rdata[54]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[54] ),
        .O(skid_buffer[54]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[55]_i_1 
       (.I0(m_axi_rdata[55]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[55] ),
        .O(skid_buffer[55]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[56]_i_1 
       (.I0(m_axi_rdata[56]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[56] ),
        .O(skid_buffer[56]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[57]_i_1 
       (.I0(m_axi_rdata[57]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[57] ),
        .O(skid_buffer[57]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[58]_i_1 
       (.I0(m_axi_rdata[58]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[58] ),
        .O(skid_buffer[58]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[59]_i_1 
       (.I0(m_axi_rdata[59]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[59] ),
        .O(skid_buffer[59]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1 
       (.I0(m_axi_rdata[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[60]_i_1 
       (.I0(m_axi_rdata[60]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[60] ),
        .O(skid_buffer[60]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[61]_i_1 
       (.I0(m_axi_rdata[61]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[61] ),
        .O(skid_buffer[61]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[62]_i_1 
       (.I0(m_axi_rdata[62]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[62] ),
        .O(skid_buffer[62]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[63]_i_1 
       (.I0(m_axi_rdata[63]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[63] ),
        .O(skid_buffer[63]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[64]_i_1 
       (.I0(m_axi_rresp[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[64] ),
        .O(skid_buffer[64]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[65]_i_1 
       (.I0(m_axi_rresp[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[65] ),
        .O(skid_buffer[65]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[66]_i_1 
       (.I0(m_axi_rlast),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[66] ),
        .O(skid_buffer[66]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[67]_i_1 
       (.I0(m_axi_rid[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[67] ),
        .O(skid_buffer[67]));
  LUT6 #(
    .INIT(64'h8F808080FFFFFFFF)) 
    \m_payload_i[68]_i_1 
       (.I0(\gen_single_thread.active_target_hot_8 ),
        .I1(s_axi_rready[0]),
        .I2(\s_axi_rvalid[1]_INST_0_i_1_n_0 ),
        .I3(s_axi_rready[1]),
        .I4(\gen_single_thread.active_target_hot_7 ),
        .I5(st_mr_rvalid),
        .O(p_1_in_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[68]_i_2 
       (.I0(m_axi_rid[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[68] ),
        .O(skid_buffer[68]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1 
       (.I0(m_axi_rdata[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1 
       (.I0(m_axi_rdata[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1 
       (.I0(m_axi_rdata[8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1 
       (.I0(m_axi_rdata[9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[0]),
        .Q(st_mr_rmesg[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[10]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[11]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[12]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[13]),
        .Q(st_mr_rmesg[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[14]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[15]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[16]),
        .Q(st_mr_rmesg[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[17]),
        .Q(st_mr_rmesg[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[18]),
        .Q(st_mr_rmesg[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[19]),
        .Q(st_mr_rmesg[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[1]),
        .Q(st_mr_rmesg[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[20]),
        .Q(st_mr_rmesg[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[21]),
        .Q(st_mr_rmesg[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[22]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[23]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[24]),
        .Q(st_mr_rmesg[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[25]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[26]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[27]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[28]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[29]),
        .Q(st_mr_rmesg[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[2]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[30]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[31]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[32]),
        .Q(st_mr_rmesg[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[33]),
        .Q(st_mr_rmesg[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[34]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[35]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[36]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[37]),
        .Q(st_mr_rmesg[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[38]),
        .Q(st_mr_rmesg[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[39]),
        .Q(st_mr_rmesg[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[3]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[40]),
        .Q(st_mr_rmesg[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[41]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[42]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[43]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[44]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[45]),
        .Q(st_mr_rmesg[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[46]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[47]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[48]),
        .Q(st_mr_rmesg[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[49]),
        .Q(st_mr_rmesg[52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[4]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[50]),
        .Q(st_mr_rmesg[53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[51]),
        .Q(st_mr_rmesg[54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[52]),
        .Q(st_mr_rmesg[55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[53]),
        .Q(st_mr_rmesg[56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[54]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[55]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[56]),
        .Q(st_mr_rmesg[59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[57]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[58]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[59]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[5]),
        .Q(st_mr_rmesg[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[60]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[61]),
        .Q(st_mr_rmesg[64]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[62]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[63]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[64] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[64]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[65] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[65]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[66] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[66]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[67] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[67]),
        .Q(st_mr_rid[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[68] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[68]),
        .Q(st_mr_rid[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[6]),
        .Q(st_mr_rmesg[9]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[7]),
        .Q(st_mr_rmesg[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[8]),
        .Q(st_mr_rmesg[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in_0),
        .D(skid_buffer[9]),
        .Q(Q[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hDF)) 
    m_valid_i_i_1__1
       (.I0(s_ready_i_reg_0),
        .I1(m_axi_rvalid),
        .I2(p_1_in_0),
        .O(m_valid_i0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i0),
        .Q(st_mr_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(st_mr_rmesg[3]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[101]_INST_0 
       (.I0(st_mr_rmesg[40]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[102]_INST_0 
       (.I0(st_mr_rmesg[41]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[103]_INST_0 
       (.I0(st_mr_rmesg[42]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[104]_INST_0 
       (.I0(st_mr_rmesg[43]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[109]_INST_0 
       (.I0(st_mr_rmesg[48]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[112]_INST_0 
       (.I0(st_mr_rmesg[51]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[113]_INST_0 
       (.I0(st_mr_rmesg[52]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[114]_INST_0 
       (.I0(st_mr_rmesg[53]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[115]_INST_0 
       (.I0(st_mr_rmesg[54]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[116]_INST_0 
       (.I0(st_mr_rmesg[55]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[117]_INST_0 
       (.I0(st_mr_rmesg[56]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[120]_INST_0 
       (.I0(st_mr_rmesg[59]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[58]));
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[125]_INST_0 
       (.I0(st_mr_rmesg[64]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(st_mr_rmesg[16]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(st_mr_rmesg[19]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(st_mr_rmesg[20]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(st_mr_rmesg[21]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(st_mr_rmesg[22]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(st_mr_rmesg[4]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(st_mr_rmesg[23]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(st_mr_rmesg[24]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(st_mr_rmesg[27]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(st_mr_rmesg[32]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[32]_INST_0 
       (.I0(st_mr_rmesg[35]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[33]_INST_0 
       (.I0(st_mr_rmesg[36]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[37]_INST_0 
       (.I0(st_mr_rmesg[40]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[38]_INST_0 
       (.I0(st_mr_rmesg[41]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[39]_INST_0 
       (.I0(st_mr_rmesg[42]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[40]_INST_0 
       (.I0(st_mr_rmesg[43]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[45]_INST_0 
       (.I0(st_mr_rmesg[48]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[48]_INST_0 
       (.I0(st_mr_rmesg[51]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[49]_INST_0 
       (.I0(st_mr_rmesg[52]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[50]_INST_0 
       (.I0(st_mr_rmesg[53]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[51]_INST_0 
       (.I0(st_mr_rmesg[54]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[52]_INST_0 
       (.I0(st_mr_rmesg[55]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[53]_INST_0 
       (.I0(st_mr_rmesg[56]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[56]_INST_0 
       (.I0(st_mr_rmesg[59]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(st_mr_rmesg[8]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[61]_INST_0 
       (.I0(st_mr_rmesg[64]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[64]_INST_0 
       (.I0(st_mr_rmesg[3]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[65]_INST_0 
       (.I0(st_mr_rmesg[4]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[69]_INST_0 
       (.I0(st_mr_rmesg[8]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(st_mr_rmesg[9]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[70]_INST_0 
       (.I0(st_mr_rmesg[9]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[71]_INST_0 
       (.I0(st_mr_rmesg[10]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[72]_INST_0 
       (.I0(st_mr_rmesg[11]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[77]_INST_0 
       (.I0(st_mr_rmesg[16]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(st_mr_rmesg[10]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[80]_INST_0 
       (.I0(st_mr_rmesg[19]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[81]_INST_0 
       (.I0(st_mr_rmesg[20]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[82]_INST_0 
       (.I0(st_mr_rmesg[21]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[83]_INST_0 
       (.I0(st_mr_rmesg[22]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[84]_INST_0 
       (.I0(st_mr_rmesg[23]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[85]_INST_0 
       (.I0(st_mr_rmesg[24]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[88]_INST_0 
       (.I0(st_mr_rmesg[27]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(st_mr_rmesg[11]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[93]_INST_0 
       (.I0(st_mr_rmesg[32]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[96]_INST_0 
       (.I0(st_mr_rmesg[35]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[97]_INST_0 
       (.I0(st_mr_rmesg[36]),
        .I1(\gen_single_thread.active_target_enc ),
        .O(s_axi_rdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \s_axi_rlast[0]_INST_0 
       (.I0(Q[36]),
        .I1(\gen_single_thread.active_target_enc_0 ),
        .I2(st_mr_rlast),
        .O(\m_payload_i_reg[66]_0 ));
  LUT6 #(
    .INIT(64'h80FF808080808080)) 
    \s_axi_rvalid[0]_INST_0 
       (.I0(\s_axi_rvalid[1]_INST_0_i_1_n_0 ),
        .I1(st_mr_rvalid),
        .I2(\gen_single_thread.active_target_hot_8 ),
        .I3(\s_axi_rvalid[0] ),
        .I4(\s_axi_rvalid[0]_0 ),
        .I5(\gen_single_thread.active_target_enc_0 ),
        .O(s_axi_rvalid[0]));
  LUT6 #(
    .INIT(64'hFF40404040404040)) 
    \s_axi_rvalid[1]_INST_0 
       (.I0(\s_axi_rvalid[1]_INST_0_i_1_n_0 ),
        .I1(\gen_single_thread.active_target_hot_7 ),
        .I2(st_mr_rvalid),
        .I3(\s_axi_rvalid[0] ),
        .I4(\gen_single_thread.active_target_enc ),
        .I5(\s_axi_rvalid[0]_0 ),
        .O(s_axi_rvalid[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_axi_rvalid[1]_INST_0_i_1 
       (.I0(st_mr_rid[1]),
        .I1(st_mr_rid[0]),
        .O(\s_axi_rvalid[1]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAE)) 
    s_ready_i_i_1__4
       (.I0(p_1_in_0),
        .I1(s_ready_i_reg_0),
        .I2(m_axi_rvalid),
        .O(s_ready_i_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__4_n_0),
        .Q(s_ready_i_reg_0),
        .R(p_1_in));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[32]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[33]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[34]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[35]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[36]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[37] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[37]),
        .Q(\skid_buffer_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[38] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[38]),
        .Q(\skid_buffer_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[39] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[39]),
        .Q(\skid_buffer_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[40] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[40]),
        .Q(\skid_buffer_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[41] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[41]),
        .Q(\skid_buffer_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[42] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[42]),
        .Q(\skid_buffer_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[43] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[43]),
        .Q(\skid_buffer_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[44] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[44]),
        .Q(\skid_buffer_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[45] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[45]),
        .Q(\skid_buffer_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[46] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[46]),
        .Q(\skid_buffer_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[47] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[47]),
        .Q(\skid_buffer_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[48] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[48]),
        .Q(\skid_buffer_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[49] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[49]),
        .Q(\skid_buffer_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[50] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[50]),
        .Q(\skid_buffer_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[51] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[51]),
        .Q(\skid_buffer_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[52] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[52]),
        .Q(\skid_buffer_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[53] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[53]),
        .Q(\skid_buffer_reg_n_0_[53] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[54] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[54]),
        .Q(\skid_buffer_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[55] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[55]),
        .Q(\skid_buffer_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[56] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[56]),
        .Q(\skid_buffer_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[57] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[57]),
        .Q(\skid_buffer_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[58] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[58]),
        .Q(\skid_buffer_reg_n_0_[58] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[59] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[59]),
        .Q(\skid_buffer_reg_n_0_[59] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[60] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[60]),
        .Q(\skid_buffer_reg_n_0_[60] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[61] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[61]),
        .Q(\skid_buffer_reg_n_0_[61] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[62] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[62]),
        .Q(\skid_buffer_reg_n_0_[62] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[63] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[63]),
        .Q(\skid_buffer_reg_n_0_[63] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[64] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[0]),
        .Q(\skid_buffer_reg_n_0_[64] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[65] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rresp[1]),
        .Q(\skid_buffer_reg_n_0_[65] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[66] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rlast),
        .Q(\skid_buffer_reg_n_0_[66] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[67] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[0]),
        .Q(\skid_buffer_reg_n_0_[67] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[68] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rid[1]),
        .Q(\skid_buffer_reg_n_0_[68] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(m_axi_rdata[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "e310v2_ps_bd_xbar_2,axi_crossbar_v2_1_20_axi_crossbar,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_crossbar_v2_1_20_axi_crossbar,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module e310v2_ps_bd_xbar_1
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN e310v2_ps_bd_bus_clk, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWID [1:0] [5:4]" *) input [5:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI AWADDR [31:0] [95:64]" *) input [95:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 S02_AXI AWLEN [7:0] [23:16]" *) input [23:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWSIZE [2:0] [8:6]" *) input [8:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI AWBURST [1:0] [5:4]" *) input [5:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK [0:0] [2:2]" *) input [2:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE [3:0] [11:8]" *) input [11:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI AWPROT [2:0] [8:6]" *) input [8:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI AWQOS [3:0] [11:8]" *) input [11:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWVALID [0:0] [2:2]" *) input [2:0]s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI AWREADY [0:0] [2:2]" *) output [2:0]s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [63:0] [127:64], xilinx.com:interface:aximm:1.0 S02_AXI WDATA [63:0] [191:128]" *) input [191:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [7:0] [15:8], xilinx.com:interface:aximm:1.0 S02_AXI WSTRB [7:0] [23:16]" *) input [23:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WLAST [0:0] [2:2]" *) input [2:0]s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WVALID [0:0] [2:2]" *) input [2:0]s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI WREADY [0:0] [2:2]" *) output [2:0]s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI BID [1:0] [5:4]" *) output [5:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI BRESP [1:0] [5:4]" *) output [5:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BVALID [0:0] [2:2]" *) output [2:0]s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI BREADY [0:0] [2:2]" *) input [2:0]s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARID [1:0] [5:4]" *) input [5:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 S02_AXI ARADDR [31:0] [95:64]" *) input [95:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [7:0] [15:8], xilinx.com:interface:aximm:1.0 S02_AXI ARLEN [7:0] [23:16]" *) input [23:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARSIZE [2:0] [8:6]" *) input [8:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI ARBURST [1:0] [5:4]" *) input [5:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK [0:0] [2:2]" *) input [2:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE [3:0] [11:8]" *) input [11:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 S02_AXI ARPROT [2:0] [8:6]" *) input [8:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 S02_AXI ARQOS [3:0] [11:8]" *) input [11:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARVALID [0:0] [2:2]" *) input [2:0]s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI ARREADY [0:0] [2:2]" *) output [2:0]s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI RID [1:0] [5:4]" *) output [5:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [63:0] [63:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [63:0] [127:64], xilinx.com:interface:aximm:1.0 S02_AXI RDATA [63:0] [191:128]" *) output [191:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 S02_AXI RRESP [1:0] [5:4]" *) output [5:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RLAST [0:0] [2:2]" *) output [2:0]s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RVALID [0:0] [2:2]" *) output [2:0]s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 S02_AXI RREADY [0:0] [2:2]" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN e310v2_ps_bd_bus_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN e310v2_ps_bd_bus_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S02_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN e310v2_ps_bd_bus_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [2:0]s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [1:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]m_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output [0:0]m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input [0:0]m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output [0:0]m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output [0:0]m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input [0:0]m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [1:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input [0:0]m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output [0:0]m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [1:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]m_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output [0:0]m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input [0:0]m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [1:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input [0:0]m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input [0:0]m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN e310v2_ps_bd_bus_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [0:0]m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [1:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire [0:0]m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire [0:0]m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [1:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire [0:0]m_axi_awready;
  wire [3:0]m_axi_awregion;
  wire [2:0]m_axi_awsize;
  wire [0:0]m_axi_awvalid;
  wire [1:0]m_axi_bid;
  wire [0:0]m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [1:0]m_axi_rid;
  wire [0:0]m_axi_rlast;
  wire [0:0]m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire [0:0]m_axi_wlast;
  wire [0:0]m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire [0:0]m_axi_wvalid;
  wire [95:0]s_axi_araddr;
  wire [5:0]s_axi_arburst;
  wire [11:0]s_axi_arcache;
  wire [5:0]s_axi_arid;
  wire [23:0]s_axi_arlen;
  wire [2:0]s_axi_arlock;
  wire [8:0]s_axi_arprot;
  wire [11:0]s_axi_arqos;
  wire [2:0]s_axi_arready;
  wire [8:0]s_axi_arsize;
  wire [2:0]s_axi_arvalid;
  wire [95:0]s_axi_awaddr;
  wire [5:0]s_axi_awburst;
  wire [11:0]s_axi_awcache;
  wire [5:0]s_axi_awid;
  wire [23:0]s_axi_awlen;
  wire [2:0]s_axi_awlock;
  wire [8:0]s_axi_awprot;
  wire [11:0]s_axi_awqos;
  wire [2:0]s_axi_awready;
  wire [8:0]s_axi_awsize;
  wire [2:0]s_axi_awvalid;
  wire [5:0]s_axi_bid;
  wire [2:0]s_axi_bready;
  wire [5:0]s_axi_bresp;
  wire [2:0]s_axi_bvalid;
  wire [191:0]s_axi_rdata;
  wire [5:0]s_axi_rid;
  wire [2:0]s_axi_rlast;
  wire [2:0]s_axi_rready;
  wire [5:0]s_axi_rresp;
  wire [2:0]s_axi_rvalid;
  wire [191:0]s_axi_wdata;
  wire [2:0]s_axi_wlast;
  wire [2:0]s_axi_wready;
  wire [23:0]s_axi_wstrb;
  wire [2:0]s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [2:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [2:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "2" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_CONNECTIVITY_MODE = "1" *) 
  (* C_DEBUG = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_M_AXI_ADDR_WIDTH = "64'b0000000000000000000000000001001000000000000000000000000000011110" *) 
  (* C_M_AXI_BASE_ADDR = "128'b00000000000000000000000000000000111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_M_AXI_READ_CONNECTIVITY = "3" *) 
  (* C_M_AXI_READ_ISSUING = "8" *) 
  (* C_M_AXI_SECURE = "0" *) 
  (* C_M_AXI_WRITE_CONNECTIVITY = "5" *) 
  (* C_M_AXI_WRITE_ISSUING = "8" *) 
  (* C_NUM_ADDR_RANGES = "2" *) 
  (* C_NUM_MASTER_SLOTS = "1" *) 
  (* C_NUM_SLAVE_SLOTS = "3" *) 
  (* C_R_REGISTER = "0" *) 
  (* C_S_AXI_ARB_PRIORITY = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_BASE_ID = "96'b000000000000000000000000000000100000000000000000000000000000000100000000000000000000000000000000" *) 
  (* C_S_AXI_READ_ACCEPTANCE = "96'b000000000000000000000000000000100000000000000000000000000000100000000000000000000000000000000010" *) 
  (* C_S_AXI_SINGLE_THREAD = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_THREAD_ID_WIDTH = "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_S_AXI_WRITE_ACCEPTANCE = "96'b000000000000000000000000000010000000000000000000000000000000001000000000000000000000000000000010" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_ADDR_DECODE = "1" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_FAMILY = "zynq" *) 
  (* P_INCR = "2'b01" *) 
  (* P_LEN = "8" *) 
  (* P_LOCK = "1" *) 
  (* P_M_AXI_ERR_MODE = "32'b00000000000000000000000000000000" *) 
  (* P_M_AXI_SUPPORTS_READ = "1'b1" *) 
  (* P_M_AXI_SUPPORTS_WRITE = "1'b1" *) 
  (* P_ONES = "65'b11111111111111111111111111111111111111111111111111111111111111111" *) 
  (* P_RANGE_CHECK = "1" *) 
  (* P_S_AXI_BASE_ID = "192'b000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_HIGH_ID = "192'b000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000" *) 
  (* P_S_AXI_SUPPORTS_READ = "3'b011" *) 
  (* P_S_AXI_SUPPORTS_WRITE = "3'b101" *) 
  e310v2_ps_bd_xbar_1_axi_crossbar_v2_1_20_axi_crossbar inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(m_axi_awregion),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[1:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[2:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[2:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser({1'b0,1'b0,1'b0}),
        .s_axi_wvalid(s_axi_wvalid));
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
