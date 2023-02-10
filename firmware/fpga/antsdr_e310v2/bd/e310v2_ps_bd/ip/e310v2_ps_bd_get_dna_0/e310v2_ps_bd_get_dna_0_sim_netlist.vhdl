-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Fri Feb 10 10:54:14 2023
-- Host        : jcc running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/jcc/work/Git/lone-boy/antsdr_uhd/firmware/fpga/antsdr_e310v2/bd/e310v2_ps_bd/ip/e310v2_ps_bd_get_dna_0/e310v2_ps_bd_get_dna_0_sim_netlist.vhdl
-- Design      : e310v2_ps_bd_get_dna_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity e310v2_ps_bd_get_dna_0_get_dna_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of e310v2_ps_bd_get_dna_0_get_dna_v1_0_S00_AXI : entity is "get_dna_v1_0_S00_AXI";
end e310v2_ps_bd_get_dna_0_get_dna_v1_0_S00_AXI;

architecture STRUCTURE of e310v2_ps_bd_get_dna_0_get_dna_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal cnt_delay : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_delay0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_delay0_carry__1_n_0\ : STD_LOGIC;
  signal cnt_delay0_carry_n_0 : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[0]_0\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[10]_1\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[11]_2\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[12]_3\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[13]_4\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[14]_5\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[15]_6\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[1]_7\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[2]_8\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[3]_9\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[4]_10\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[5]_11\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[6]_12\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[7]_13\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[8]_14\ : STD_LOGIC;
  signal \cnt_delay_reg_n_0_[9]_15\ : STD_LOGIC;
  signal \cnt_shift[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_shift[7]_i_2_n_0\ : STD_LOGIC;
  signal cnt_shift_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal device_dna : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal device_dna0 : STD_LOGIC;
  signal dna_port_out : STD_LOGIC;
  signal dna_port_shift : STD_LOGIC;
  signal dna_port_shift_dly : STD_LOGIC;
  signal dna_port_shift_i_1_n_0 : STD_LOGIC;
  signal dna_shift : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal in4 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  signal \state[4]_i_1_n_0\ : STD_LOGIC;
  signal \state[4]_i_3_n_0\ : STD_LOGIC;
  signal \state[4]_i_4_n_0\ : STD_LOGIC;
  signal \state[4]_i_5_n_0\ : STD_LOGIC;
  signal \state[4]_i_6_n_0\ : STD_LOGIC;
  signal \state[4]_i_7_n_0\ : STD_LOGIC;
  signal \state[4]_i_8_n_0\ : STD_LOGIC;
  signal \state[4]_i_9_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_cnt_delay0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_delay0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_delay0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_delay0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_delay0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DNA_PORT_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of DNA_PORT_inst_i_1 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DNA_PORT_inst_i_1 : label is "soft_lutpair0";
  attribute BOX_TYPE of aw_en_i_1 : label is "PRIMITIVE";
  attribute BOX_TYPE of aw_en_reg : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_araddr[2]_i_1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair6";
  attribute BOX_TYPE of \axi_araddr[3]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_araddr_reg[2]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_araddr_reg[3]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of axi_arready_i_1 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair6";
  attribute BOX_TYPE of axi_arready_reg : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_awaddr[2]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_awaddr[3]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_awaddr_reg[2]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_awaddr_reg[3]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of axi_awready_i_1 : label is "PRIMITIVE";
  attribute BOX_TYPE of axi_awready_i_2 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair4";
  attribute BOX_TYPE of axi_awready_reg : label is "PRIMITIVE";
  attribute BOX_TYPE of axi_bvalid_i_1 : label is "PRIMITIVE";
  attribute BOX_TYPE of axi_bvalid_reg : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[0]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[10]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[11]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[12]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[13]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[14]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[15]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[16]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[17]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[18]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[19]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[1]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[20]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[21]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[22]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[23]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[24]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[25]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[26]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[27]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[28]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[29]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[2]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[30]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[31]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[3]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[4]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[5]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[6]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[7]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[8]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata[9]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[0]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[10]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[11]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[12]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[13]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[14]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[15]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[16]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[17]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[18]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[19]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[1]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[20]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[21]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[22]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[23]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[24]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[25]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[26]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[27]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[28]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[29]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[2]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[30]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[31]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[3]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[4]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[5]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[6]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[7]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[8]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \axi_rdata_reg[9]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of axi_rvalid_i_1 : label is "PRIMITIVE";
  attribute BOX_TYPE of axi_rvalid_reg : label is "PRIMITIVE";
  attribute BOX_TYPE of axi_wready_i_1 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair4";
  attribute BOX_TYPE of axi_wready_reg : label is "PRIMITIVE";
  attribute BOX_TYPE of cnt_delay0_carry : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay0_carry__0\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay0_carry__1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay0_carry__2\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[0]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[10]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[11]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[12]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[13]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[14]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[15]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[1]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[2]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[3]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[4]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[5]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[6]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[7]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[8]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay[9]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[0]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[10]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[11]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[12]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[13]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[14]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[15]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[1]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[2]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[3]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[4]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[5]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[6]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[7]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[8]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_delay_reg[9]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift[0]_i_1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \cnt_shift[0]_i_1\ : label is "soft_lutpair7";
  attribute BOX_TYPE of \cnt_shift[1]_i_1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \cnt_shift[1]_i_1\ : label is "soft_lutpair7";
  attribute BOX_TYPE of \cnt_shift[2]_i_1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \cnt_shift[2]_i_1\ : label is "soft_lutpair2";
  attribute BOX_TYPE of \cnt_shift[3]_i_1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \cnt_shift[3]_i_1\ : label is "soft_lutpair2";
  attribute BOX_TYPE of \cnt_shift[4]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift[5]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift[5]_i_2\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift[6]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift[7]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift[7]_i_2\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \cnt_shift[7]_i_2\ : label is "soft_lutpair5";
  attribute BOX_TYPE of \cnt_shift_reg[0]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift_reg[1]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift_reg[2]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift_reg[3]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift_reg[4]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift_reg[5]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift_reg[6]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \cnt_shift_reg[7]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna[63]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[0]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[10]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[11]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[12]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[13]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[14]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[15]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[16]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[17]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[18]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[19]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[1]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[20]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[21]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[22]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[23]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[24]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[25]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[26]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[27]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[28]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[29]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[2]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[30]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[31]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[32]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[33]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[34]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[35]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[36]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[37]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[38]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[39]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[3]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[40]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[41]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[42]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[43]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[44]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[45]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[46]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[47]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[48]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[49]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[4]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[50]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[51]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[52]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[53]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[54]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[55]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[56]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[57]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[58]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[59]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[5]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[60]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[61]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[62]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[63]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[6]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[7]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[8]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \device_dna_reg[9]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of dna_port_shift_dly_reg : label is "PRIMITIVE";
  attribute BOX_TYPE of dna_port_shift_i_1 : label is "PRIMITIVE";
  attribute BOX_TYPE of dna_port_shift_reg : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[0]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[10]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[11]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[12]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[13]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[14]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[15]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[16]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[17]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[18]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[19]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[1]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[20]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[21]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[22]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[23]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[24]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[25]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[26]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[27]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[28]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[29]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[2]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[30]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[31]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[32]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[33]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[34]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[35]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[36]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[37]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[38]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[39]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[3]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[40]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[41]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[42]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[43]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[44]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[45]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[46]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[47]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[48]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[49]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[4]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[50]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[51]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[52]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[53]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[54]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[55]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[56]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[57]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[58]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[59]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[5]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[60]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[61]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[62]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[63]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[6]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[7]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[8]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \dna_shift_reg[9]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2[15]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2[23]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2[31]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2[7]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[0]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[10]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[11]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[12]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[13]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[14]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[15]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[16]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[17]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[18]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[19]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[1]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[20]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[21]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[22]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[23]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[24]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[25]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[26]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[27]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[28]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[29]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[2]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[30]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[31]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[3]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[4]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[5]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[6]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[7]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[8]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg2_reg[9]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3[15]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3[23]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3[31]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3[31]_i_2\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3[7]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[0]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[10]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[11]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[12]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[13]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[14]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[15]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[16]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[17]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[18]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[19]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[1]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[20]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[21]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[22]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[23]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[24]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[25]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[26]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[27]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[28]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[29]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[2]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[30]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[31]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[3]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[4]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[5]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[6]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[7]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[8]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \slv_reg3_reg[9]\ : label is "PRIMITIVE";
  attribute BOX_TYPE of slv_reg_rden : label is "PRIMITIVE";
  attribute BOX_TYPE of \state[0]_i_1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair0";
  attribute BOX_TYPE of \state[1]_i_1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair1";
  attribute BOX_TYPE of \state[2]_i_1\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair1";
  attribute BOX_TYPE of \state[4]_i_1\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \state[4]_i_2\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \state[4]_i_2\ : label is "soft_lutpair3";
  attribute BOX_TYPE of \state[4]_i_3\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \state[4]_i_4\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \state[4]_i_5\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \state[4]_i_6\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \state[4]_i_6\ : label is "soft_lutpair3";
  attribute BOX_TYPE of \state[4]_i_7\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \state[4]_i_8\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \state[4]_i_9\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \state[4]_i_9\ : label is "soft_lutpair5";
  attribute BOX_TYPE of \state_reg[0]\ : label is "PRIMITIVE";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \state_reg[0]\ : label is "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000,";
  attribute BOX_TYPE of \state_reg[1]\ : label is "PRIMITIVE";
  attribute FSM_ENCODED_STATES of \state_reg[1]\ : label is "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000,";
  attribute BOX_TYPE of \state_reg[2]\ : label is "PRIMITIVE";
  attribute FSM_ENCODED_STATES of \state_reg[2]\ : label is "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000,";
  attribute BOX_TYPE of \state_reg[3]\ : label is "PRIMITIVE";
  attribute FSM_ENCODED_STATES of \state_reg[3]\ : label is "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000,";
  attribute BOX_TYPE of \state_reg[4]\ : label is "PRIMITIVE";
  attribute FSM_ENCODED_STATES of \state_reg[4]\ : label is "IDLE:00001,DELAY:00010,READ:00100,SHIFT:01000,DONE:10000,";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
DNA_PORT_inst: unisim.vcomponents.DNA_PORT
    generic map(
      SIM_DNA_VALUE => X"1FE000000000000"
    )
        port map (
      CLK => s00_axi_aclk,
      DIN => '0',
      DOUT => dna_port_out,
      READ => p_1_in_0(3),
      SHIFT => dna_port_shift
    );
DNA_PORT_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(4),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      O => p_1_in_0(3)
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_S_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(32),
      I1 => device_dna(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(42),
      I1 => device_dna(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(43),
      I1 => device_dna(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(44),
      I1 => device_dna(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(45),
      I1 => device_dna(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(46),
      I1 => device_dna(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(47),
      I1 => device_dna(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(48),
      I1 => device_dna(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(49),
      I1 => device_dna(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(50),
      I1 => device_dna(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(51),
      I1 => device_dna(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(33),
      I1 => device_dna(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(52),
      I1 => device_dna(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(53),
      I1 => device_dna(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(54),
      I1 => device_dna(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(55),
      I1 => device_dna(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(56),
      I1 => device_dna(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(57),
      I1 => device_dna(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(58),
      I1 => device_dna(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(59),
      I1 => device_dna(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(60),
      I1 => device_dna(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(61),
      I1 => device_dna(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(34),
      I1 => device_dna(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(62),
      I1 => device_dna(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(63),
      I1 => device_dna(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(35),
      I1 => device_dna(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(36),
      I1 => device_dna(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(37),
      I1 => device_dna(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(38),
      I1 => device_dna(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(39),
      I1 => device_dna(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(40),
      I1 => device_dna(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => device_dna(41),
      I1 => device_dna(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
cnt_delay0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_delay0_carry_n_0,
      CO(2 downto 0) => NLW_cnt_delay0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => \cnt_delay_reg_n_0_[0]_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(4 downto 1),
      S(3) => \cnt_delay_reg_n_0_[4]_10\,
      S(2) => \cnt_delay_reg_n_0_[3]_9\,
      S(1) => \cnt_delay_reg_n_0_[2]_8\,
      S(0) => \cnt_delay_reg_n_0_[1]_7\
    );
\cnt_delay0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_delay0_carry_n_0,
      CO(3) => \cnt_delay0_carry__0_n_0\,
      CO(2 downto 0) => \NLW_cnt_delay0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(8 downto 5),
      S(3) => \cnt_delay_reg_n_0_[8]_14\,
      S(2) => \cnt_delay_reg_n_0_[7]_13\,
      S(1) => \cnt_delay_reg_n_0_[6]_12\,
      S(0) => \cnt_delay_reg_n_0_[5]_11\
    );
\cnt_delay0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_delay0_carry__0_n_0\,
      CO(3) => \cnt_delay0_carry__1_n_0\,
      CO(2 downto 0) => \NLW_cnt_delay0_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(12 downto 9),
      S(3) => \cnt_delay_reg_n_0_[12]_3\,
      S(2) => \cnt_delay_reg_n_0_[11]_2\,
      S(1) => \cnt_delay_reg_n_0_[10]_1\,
      S(0) => \cnt_delay_reg_n_0_[9]_15\
    );
\cnt_delay0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_delay0_carry__1_n_0\,
      CO(3 downto 0) => \NLW_cnt_delay0_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_delay0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => in4(15 downto 13),
      S(3) => '0',
      S(2) => \cnt_delay_reg_n_0_[15]_6\,
      S(1) => \cnt_delay_reg_n_0_[14]_5\,
      S(0) => \cnt_delay_reg_n_0_[13]_4\
    );
\cnt_delay[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(4),
      I2 => \state__0\(3),
      I3 => \cnt_delay_reg_n_0_[0]_0\,
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => cnt_delay(0)
    );
\cnt_delay[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(10),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(10)
    );
\cnt_delay[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(11),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(11)
    );
\cnt_delay[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(12),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(12)
    );
\cnt_delay[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(13),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(13)
    );
\cnt_delay[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(14),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(14)
    );
\cnt_delay[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(15),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(15)
    );
\cnt_delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(1),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(1)
    );
\cnt_delay[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(2)
    );
\cnt_delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(3),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(3)
    );
\cnt_delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(4),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(4)
    );
\cnt_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(5),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(5)
    );
\cnt_delay[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(6),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(6)
    );
\cnt_delay[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(7),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(7)
    );
\cnt_delay[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(8),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(8)
    );
\cnt_delay[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => in4(9),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \state__0\(4),
      I5 => \state__0\(2),
      O => cnt_delay(9)
    );
\cnt_delay_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(0),
      Q => \cnt_delay_reg_n_0_[0]_0\
    );
\cnt_delay_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(10),
      Q => \cnt_delay_reg_n_0_[10]_1\
    );
\cnt_delay_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(11),
      Q => \cnt_delay_reg_n_0_[11]_2\
    );
\cnt_delay_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(12),
      Q => \cnt_delay_reg_n_0_[12]_3\
    );
\cnt_delay_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(13),
      Q => \cnt_delay_reg_n_0_[13]_4\
    );
\cnt_delay_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(14),
      Q => \cnt_delay_reg_n_0_[14]_5\
    );
\cnt_delay_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(15),
      Q => \cnt_delay_reg_n_0_[15]_6\
    );
\cnt_delay_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(1),
      Q => \cnt_delay_reg_n_0_[1]_7\
    );
\cnt_delay_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(2),
      Q => \cnt_delay_reg_n_0_[2]_8\
    );
\cnt_delay_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(3),
      Q => \cnt_delay_reg_n_0_[3]_9\
    );
\cnt_delay_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(4),
      Q => \cnt_delay_reg_n_0_[4]_10\
    );
\cnt_delay_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(5),
      Q => \cnt_delay_reg_n_0_[5]_11\
    );
\cnt_delay_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(6),
      Q => \cnt_delay_reg_n_0_[6]_12\
    );
\cnt_delay_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(7),
      Q => \cnt_delay_reg_n_0_[7]_13\
    );
\cnt_delay_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(8),
      Q => \cnt_delay_reg_n_0_[8]_14\
    );
\cnt_delay_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => cnt_delay(9),
      Q => \cnt_delay_reg_n_0_[9]_15\
    );
\cnt_shift[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_shift[5]_i_2_n_0\,
      I1 => cnt_shift_reg(0),
      O => p_0_in(0)
    );
\cnt_shift[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_shift_reg(0),
      I1 => cnt_shift_reg(1),
      O => p_0_in(1)
    );
\cnt_shift[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => cnt_shift_reg(2),
      I1 => cnt_shift_reg(0),
      I2 => cnt_shift_reg(1),
      O => p_0_in(2)
    );
\cnt_shift[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt_shift[5]_i_2_n_0\,
      I1 => cnt_shift_reg(1),
      I2 => cnt_shift_reg(0),
      I3 => cnt_shift_reg(2),
      I4 => cnt_shift_reg(3),
      O => p_0_in(3)
    );
\cnt_shift[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cnt_shift[5]_i_2_n_0\,
      I1 => cnt_shift_reg(3),
      I2 => cnt_shift_reg(2),
      I3 => cnt_shift_reg(0),
      I4 => cnt_shift_reg(1),
      I5 => cnt_shift_reg(4),
      O => p_0_in(4)
    );
\cnt_shift[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => \cnt_shift[5]_i_2_n_0\,
      I1 => \cnt_shift[7]_i_2_n_0\,
      I2 => cnt_shift_reg(3),
      I3 => cnt_shift_reg(4),
      I4 => cnt_shift_reg(5),
      O => p_0_in(5)
    );
\cnt_shift[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFFFFFFFFF"
    )
        port map (
      I0 => \state[4]_i_9_n_0\,
      I1 => cnt_shift_reg(4),
      I2 => cnt_shift_reg(3),
      I3 => cnt_shift_reg(5),
      I4 => cnt_shift_reg(1),
      I5 => dna_port_shift,
      O => \cnt_shift[5]_i_2_n_0\
    );
\cnt_shift[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => cnt_shift_reg(6),
      I1 => cnt_shift_reg(5),
      I2 => \cnt_shift[7]_i_2_n_0\,
      I3 => cnt_shift_reg(3),
      I4 => cnt_shift_reg(4),
      O => p_0_in(6)
    );
\cnt_shift[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => cnt_shift_reg(7),
      I1 => cnt_shift_reg(4),
      I2 => cnt_shift_reg(3),
      I3 => \cnt_shift[7]_i_2_n_0\,
      I4 => cnt_shift_reg(5),
      I5 => cnt_shift_reg(6),
      O => p_0_in(7)
    );
\cnt_shift[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cnt_shift_reg(1),
      I1 => cnt_shift_reg(0),
      I2 => cnt_shift_reg(2),
      O => \cnt_shift[7]_i_2_n_0\
    );
\cnt_shift_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => p_0_in(0),
      Q => cnt_shift_reg(0)
    );
\cnt_shift_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => p_0_in(1),
      Q => cnt_shift_reg(1)
    );
\cnt_shift_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => p_0_in(2),
      Q => cnt_shift_reg(2)
    );
\cnt_shift_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => p_0_in(3),
      Q => cnt_shift_reg(3)
    );
\cnt_shift_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => p_0_in(4),
      Q => cnt_shift_reg(4)
    );
\cnt_shift_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => p_0_in(5),
      Q => cnt_shift_reg(5)
    );
\cnt_shift_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => p_0_in(6),
      Q => cnt_shift_reg(6)
    );
\cnt_shift_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => p_0_in(7),
      Q => cnt_shift_reg(7)
    );
\device_dna[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dna_port_shift_dly,
      I1 => dna_port_shift,
      O => device_dna0
    );
\device_dna_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(0),
      Q => device_dna(0)
    );
\device_dna_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(10),
      Q => device_dna(10)
    );
\device_dna_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(11),
      Q => device_dna(11)
    );
\device_dna_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(12),
      Q => device_dna(12)
    );
\device_dna_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(13),
      Q => device_dna(13)
    );
\device_dna_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(14),
      Q => device_dna(14)
    );
\device_dna_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(15),
      Q => device_dna(15)
    );
\device_dna_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(16),
      Q => device_dna(16)
    );
\device_dna_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(17),
      Q => device_dna(17)
    );
\device_dna_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(18),
      Q => device_dna(18)
    );
\device_dna_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(19),
      Q => device_dna(19)
    );
\device_dna_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(1),
      Q => device_dna(1)
    );
\device_dna_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(20),
      Q => device_dna(20)
    );
\device_dna_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(21),
      Q => device_dna(21)
    );
\device_dna_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(22),
      Q => device_dna(22)
    );
\device_dna_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(23),
      Q => device_dna(23)
    );
\device_dna_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(24),
      Q => device_dna(24)
    );
\device_dna_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(25),
      Q => device_dna(25)
    );
\device_dna_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(26),
      Q => device_dna(26)
    );
\device_dna_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(27),
      Q => device_dna(27)
    );
\device_dna_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(28),
      Q => device_dna(28)
    );
\device_dna_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(29),
      Q => device_dna(29)
    );
\device_dna_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(2),
      Q => device_dna(2)
    );
\device_dna_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(30),
      Q => device_dna(30)
    );
\device_dna_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(31),
      Q => device_dna(31)
    );
\device_dna_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(32),
      Q => device_dna(32)
    );
\device_dna_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(33),
      Q => device_dna(33)
    );
\device_dna_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(34),
      Q => device_dna(34)
    );
\device_dna_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(35),
      Q => device_dna(35)
    );
\device_dna_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(36),
      Q => device_dna(36)
    );
\device_dna_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(37),
      Q => device_dna(37)
    );
\device_dna_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(38),
      Q => device_dna(38)
    );
\device_dna_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(39),
      Q => device_dna(39)
    );
\device_dna_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(3),
      Q => device_dna(3)
    );
\device_dna_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(40),
      Q => device_dna(40)
    );
\device_dna_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(41),
      Q => device_dna(41)
    );
\device_dna_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(42),
      Q => device_dna(42)
    );
\device_dna_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(43),
      Q => device_dna(43)
    );
\device_dna_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(44),
      Q => device_dna(44)
    );
\device_dna_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(45),
      Q => device_dna(45)
    );
\device_dna_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(46),
      Q => device_dna(46)
    );
\device_dna_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(47),
      Q => device_dna(47)
    );
\device_dna_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(48),
      Q => device_dna(48)
    );
\device_dna_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(49),
      Q => device_dna(49)
    );
\device_dna_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(4),
      Q => device_dna(4)
    );
\device_dna_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(50),
      Q => device_dna(50)
    );
\device_dna_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(51),
      Q => device_dna(51)
    );
\device_dna_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(52),
      Q => device_dna(52)
    );
\device_dna_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(53),
      Q => device_dna(53)
    );
\device_dna_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(54),
      Q => device_dna(54)
    );
\device_dna_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(55),
      Q => device_dna(55)
    );
\device_dna_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(56),
      Q => device_dna(56)
    );
\device_dna_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(57),
      Q => device_dna(57)
    );
\device_dna_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(58),
      Q => device_dna(58)
    );
\device_dna_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(59),
      Q => device_dna(59)
    );
\device_dna_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(5),
      Q => device_dna(5)
    );
\device_dna_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(60),
      Q => device_dna(60)
    );
\device_dna_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(61),
      Q => device_dna(61)
    );
\device_dna_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(62),
      Q => device_dna(62)
    );
\device_dna_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(63),
      Q => device_dna(63)
    );
\device_dna_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(6),
      Q => device_dna(6)
    );
\device_dna_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(7),
      Q => device_dna(7)
    );
\device_dna_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(8),
      Q => device_dna(8)
    );
\device_dna_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => device_dna0,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(9),
      Q => device_dna(9)
    );
dna_port_shift_dly_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => dna_port_shift,
      Q => dna_port_shift_dly
    );
dna_port_shift_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => p_1_in_0(3),
      I1 => \cnt_shift[5]_i_2_n_0\,
      I2 => dna_port_shift,
      O => dna_port_shift_i_1_n_0
    );
dna_port_shift_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => axi_awready_i_1_n_0,
      D => dna_port_shift_i_1_n_0,
      Q => dna_port_shift
    );
\dna_shift_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_port_out,
      Q => dna_shift(0)
    );
\dna_shift_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(9),
      Q => dna_shift(10)
    );
\dna_shift_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(10),
      Q => dna_shift(11)
    );
\dna_shift_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(11),
      Q => dna_shift(12)
    );
\dna_shift_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(12),
      Q => dna_shift(13)
    );
\dna_shift_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(13),
      Q => dna_shift(14)
    );
\dna_shift_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(14),
      Q => dna_shift(15)
    );
\dna_shift_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(15),
      Q => dna_shift(16)
    );
\dna_shift_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(16),
      Q => dna_shift(17)
    );
\dna_shift_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(17),
      Q => dna_shift(18)
    );
\dna_shift_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(18),
      Q => dna_shift(19)
    );
\dna_shift_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(0),
      Q => dna_shift(1)
    );
\dna_shift_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(19),
      Q => dna_shift(20)
    );
\dna_shift_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(20),
      Q => dna_shift(21)
    );
\dna_shift_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(21),
      Q => dna_shift(22)
    );
\dna_shift_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(22),
      Q => dna_shift(23)
    );
\dna_shift_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(23),
      Q => dna_shift(24)
    );
\dna_shift_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(24),
      Q => dna_shift(25)
    );
\dna_shift_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(25),
      Q => dna_shift(26)
    );
\dna_shift_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(26),
      Q => dna_shift(27)
    );
\dna_shift_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(27),
      Q => dna_shift(28)
    );
\dna_shift_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(28),
      Q => dna_shift(29)
    );
\dna_shift_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(1),
      Q => dna_shift(2)
    );
\dna_shift_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(29),
      Q => dna_shift(30)
    );
\dna_shift_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(30),
      Q => dna_shift(31)
    );
\dna_shift_reg[32]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(31),
      Q => dna_shift(32)
    );
\dna_shift_reg[33]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(32),
      Q => dna_shift(33)
    );
\dna_shift_reg[34]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(33),
      Q => dna_shift(34)
    );
\dna_shift_reg[35]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(34),
      Q => dna_shift(35)
    );
\dna_shift_reg[36]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(35),
      Q => dna_shift(36)
    );
\dna_shift_reg[37]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(36),
      Q => dna_shift(37)
    );
\dna_shift_reg[38]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(37),
      Q => dna_shift(38)
    );
\dna_shift_reg[39]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(38),
      Q => dna_shift(39)
    );
\dna_shift_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(2),
      Q => dna_shift(3)
    );
\dna_shift_reg[40]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(39),
      Q => dna_shift(40)
    );
\dna_shift_reg[41]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(40),
      Q => dna_shift(41)
    );
\dna_shift_reg[42]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(41),
      Q => dna_shift(42)
    );
\dna_shift_reg[43]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(42),
      Q => dna_shift(43)
    );
\dna_shift_reg[44]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(43),
      Q => dna_shift(44)
    );
\dna_shift_reg[45]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(44),
      Q => dna_shift(45)
    );
\dna_shift_reg[46]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(45),
      Q => dna_shift(46)
    );
\dna_shift_reg[47]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(46),
      Q => dna_shift(47)
    );
\dna_shift_reg[48]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(47),
      Q => dna_shift(48)
    );
\dna_shift_reg[49]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(48),
      Q => dna_shift(49)
    );
\dna_shift_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(3),
      Q => dna_shift(4)
    );
\dna_shift_reg[50]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(49),
      Q => dna_shift(50)
    );
\dna_shift_reg[51]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(50),
      Q => dna_shift(51)
    );
\dna_shift_reg[52]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(51),
      Q => dna_shift(52)
    );
\dna_shift_reg[53]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(52),
      Q => dna_shift(53)
    );
\dna_shift_reg[54]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(53),
      Q => dna_shift(54)
    );
\dna_shift_reg[55]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(54),
      Q => dna_shift(55)
    );
\dna_shift_reg[56]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(55),
      Q => dna_shift(56)
    );
\dna_shift_reg[57]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(56),
      Q => dna_shift(57)
    );
\dna_shift_reg[58]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(57),
      Q => dna_shift(58)
    );
\dna_shift_reg[59]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(58),
      Q => dna_shift(59)
    );
\dna_shift_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(4),
      Q => dna_shift(5)
    );
\dna_shift_reg[60]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(59),
      Q => dna_shift(60)
    );
\dna_shift_reg[61]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(60),
      Q => dna_shift(61)
    );
\dna_shift_reg[62]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(61),
      Q => dna_shift(62)
    );
\dna_shift_reg[63]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(62),
      Q => dna_shift(63)
    );
\dna_shift_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(5),
      Q => dna_shift(6)
    );
\dna_shift_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(6),
      Q => dna_shift(7)
    );
\dna_shift_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(7),
      Q => dna_shift(8)
    );
\dna_shift_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => dna_port_shift,
      CLR => axi_awready_i_1_n_0,
      D => dna_shift(8),
      Q => dna_shift(9)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(15)
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(23)
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(31)
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => p_1_in(7)
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => \slv_reg_rden__0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEE9"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(3),
      I3 => \state__0\(4),
      I4 => \state__0\(1),
      O => p_1_in_0(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(3),
      I3 => \state__0\(4),
      I4 => \state__0\(2),
      O => p_1_in_0(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(4),
      I2 => \state__0\(3),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => p_1_in_0(2)
    );
\state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF40FF4FF"
    )
        port map (
      I0 => \state[4]_i_3_n_0\,
      I1 => \state[4]_i_4_n_0\,
      I2 => \state__0\(3),
      I3 => \state__0\(1),
      I4 => \state[4]_i_5_n_0\,
      I5 => \state[4]_i_6_n_0\,
      O => \state[4]_i_1_n_0\
    );
\state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000110"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(4),
      I3 => \state__0\(3),
      I4 => \state__0\(1),
      O => p_1_in_0(4)
    );
\state[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => \cnt_delay_reg_n_0_[0]_0\,
      I1 => \cnt_delay_reg_n_0_[7]_13\,
      I2 => \cnt_delay_reg_n_0_[11]_2\,
      I3 => \cnt_delay_reg_n_0_[5]_11\,
      I4 => \state[4]_i_7_n_0\,
      O => \state[4]_i_3_n_0\
    );
\state[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \cnt_delay_reg_n_0_[10]_1\,
      I1 => \cnt_delay_reg_n_0_[8]_14\,
      I2 => \cnt_delay_reg_n_0_[1]_7\,
      I3 => \cnt_delay_reg_n_0_[15]_6\,
      I4 => \state[4]_i_8_n_0\,
      O => \state[4]_i_4_n_0\
    );
\state[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => cnt_shift_reg(1),
      I1 => cnt_shift_reg(5),
      I2 => cnt_shift_reg(3),
      I3 => cnt_shift_reg(4),
      I4 => \state[4]_i_9_n_0\,
      O => \state[4]_i_5_n_0\
    );
\state[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \state__0\(4),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => \state[4]_i_6_n_0\
    );
\state[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \cnt_delay_reg_n_0_[9]_15\,
      I1 => \cnt_delay_reg_n_0_[12]_3\,
      I2 => \cnt_delay_reg_n_0_[2]_8\,
      I3 => \cnt_delay_reg_n_0_[3]_9\,
      O => \state[4]_i_7_n_0\
    );
\state[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \cnt_delay_reg_n_0_[6]_12\,
      I1 => \cnt_delay_reg_n_0_[13]_4\,
      I2 => \cnt_delay_reg_n_0_[14]_5\,
      I3 => \cnt_delay_reg_n_0_[4]_10\,
      O => \state[4]_i_8_n_0\
    );
\state[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_shift_reg(2),
      I1 => cnt_shift_reg(0),
      I2 => cnt_shift_reg(7),
      I3 => cnt_shift_reg(6),
      O => \state[4]_i_9_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_PRE_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      D => p_1_in_0(0),
      PRE => axi_awready_i_1_n_0,
      Q => \state__0\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      CLR => axi_awready_i_1_n_0,
      D => p_1_in_0(1),
      Q => \state__0\(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      CLR => axi_awready_i_1_n_0,
      D => p_1_in_0(2),
      Q => \state__0\(2)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      CLR => axi_awready_i_1_n_0,
      D => p_1_in_0(3),
      Q => \state__0\(3)
    );
\state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \state[4]_i_1_n_0\,
      CLR => axi_awready_i_1_n_0,
      D => p_1_in_0(4),
      Q => \state__0\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity e310v2_ps_bd_get_dna_0_get_dna_v1_0 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of e310v2_ps_bd_get_dna_0_get_dna_v1_0 : entity is "get_dna_v1_0";
end e310v2_ps_bd_get_dna_0_get_dna_v1_0;

architecture STRUCTURE of e310v2_ps_bd_get_dna_0_get_dna_v1_0 is
begin
get_dna_v1_0_S00_AXI_inst: entity work.e310v2_ps_bd_get_dna_0_get_dna_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity e310v2_ps_bd_get_dna_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of e310v2_ps_bd_get_dna_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of e310v2_ps_bd_get_dna_0 : entity is "e310v2_ps_bd_get_dna_0,get_dna_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of e310v2_ps_bd_get_dna_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of e310v2_ps_bd_get_dna_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of e310v2_ps_bd_get_dna_0 : entity is "get_dna_v1_0,Vivado 2019.1";
end e310v2_ps_bd_get_dna_0;

architecture STRUCTURE of e310v2_ps_bd_get_dna_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 40000000, PHASE 0.000, CLK_DOMAIN e310v2_ps_bd_clk40, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 40000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN e310v2_ps_bd_clk40, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.e310v2_ps_bd_get_dna_0_get_dna_v1_0
     port map (
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
