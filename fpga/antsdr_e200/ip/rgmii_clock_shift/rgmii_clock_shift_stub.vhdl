-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Sep 22 13:04:46 2022
-- Host        : mp-dev running 64-bit Kylin V10 SP1
-- Command     : write_vhdl -force -mode synth_stub
--               /home/mp/wcc_demo/e200_net/ip/rgmii_clock_shift/rgmii_clock_shift_stub.vhdl
-- Design      : rgmii_clock_shift
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rgmii_clock_shift is
  Port ( 
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end rgmii_clock_shift;

architecture stub of rgmii_clock_shift is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,locked,clk_in1";
begin
end;
