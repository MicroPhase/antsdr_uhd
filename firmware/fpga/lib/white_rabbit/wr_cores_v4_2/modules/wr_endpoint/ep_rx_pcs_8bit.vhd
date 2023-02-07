-------------------------------------------------------------------------------
-- Title      : 1000BaseT/X MAC Endpoint - receive path PCS for 1000BaseX
-- Project    : White Rabbit Switch
-------------------------------------------------------------------------------
-- File       : ep_rx_pcs_tbi.vhd
-- Author     : Tomasz Wlostowski
-- Company    : CERN BE-CO-HT
-- Created    : 2009-06-16
-- Last update: 2017-02-20
-- Platform   : FPGA-generic
-- Standard   : VHDL'93
-------------------------------------------------------------------------------
-- Description: Module implements the reception path for 1000BaseX PCS
-- (Physical Coding Sublayer). It provides synchronization between the PHY RX
-- clock and system reference clock, elastic buffering, preamble, SFD and other
-- 8b10b patterns recognition. It also generates deterministic timestamping
-- pulses for RXed packets.
-------------------------------------------------------------------------------
--
-- Copyright (c) 2009-2017 CERN
--
-- This source file is free software; you can redistribute it   
-- and/or modify it under the terms of the GNU Lesser General   
-- Public License as published by the Free Software Foundation; 
-- either version 2.1 of the License, or (at your option) any   
-- later version.                                               
--
-- This source is distributed in the hope that it will be       
-- useful, but WITHOUT ANY WARRANTY; without even the implied   
-- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR      
-- PURPOSE.  See the GNU Lesser General Public License for more 
-- details.                                                     
--
-- You should have received a copy of the GNU Lesser General    
-- Public License along with this source; if not, download it   
-- from http://www.gnu.org/licenses/lgpl-2.1.html
--
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author    Description
-- 2009-06-16  0.1      twlostow  Created (no error propagation supported yet)
-- 2010-10-25  0.2      twlostow  Names updated to comply with the coding,
--                                added some comments
-- 2010-11-18  0.4      twlostow  Added support for Xilinx GTP transceivers.
-- 2011-02-07  0.5      twlostow  Tested on Spartan6 GTP
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.gencores_pkg.all;
use work.genram_pkg.all;
use work.endpoint_private_pkg.all;
use work.endpoint_pkg.all;

entity ep_rx_pcs_8bit is
  generic (
    g_simulation : boolean);
  port (
-- 62.5 MHz refclk divided by 2
    clk_sys_i : in std_logic;

-- reset (refclk2-synchronous)
    rst_n_i : in std_logic;

-- reset (phy_rx_clk_i sync)
    rst_rxclk_n_i : in std_logic;

    pcs_fifo_almostfull_i : in  std_logic;
-- RX path busy indicator (active HI).
-- When asserted, the receiver is in the middle of reception of a frame
    pcs_busy_o            : out std_logic;
-- data FIFO output
    pcs_fab_o             : out t_ep_internal_fabric;


    timestamp_trigger_p_a_o : out std_logic;  -- strobe for RX timestamping

    timestamp_i           : in  std_logic_vector(31 downto 0);
    timestamp_stb_i       : in  std_logic;
    timestamp_valid_i     : in  std_logic;

-------------------------------------------------------------------------------
-- PHY interface
-------------------------------------------------------------------------------    

    phy_rdy_i        : in std_logic;
    phy_rx_clk_i     : in std_logic;
    phy_rx_data_i    : in std_logic_vector(7 downto 0);
    phy_rx_k_i       : in std_logic;
    phy_rx_enc_err_i : in std_logic;

-------------------------------------------------------------------------------
-- Wishbone registers
-------------------------------------------------------------------------------    

    -- Receive control regsiter
    mdio_mcr_reset_i           : in  std_logic;
    mdio_mcr_pdown_i           : in  std_logic;
    mdio_wr_spec_cal_crst_i    : in  std_logic;
    mdio_wr_spec_rx_cal_stat_o : out std_logic;

    synced_o    : out std_logic;
    sync_lost_o : out std_logic;

    -- autonegotiation signals
    an_rx_en_i      : in  std_logic;
    an_rx_val_o     : out std_logic_vector(15 downto 0);
    an_rx_valid_o   : out std_logic;
    an_idle_match_o : out std_logic;

    -- RMON events
    rmon_rx_overrun   : out std_logic;
    rmon_rx_inv_code  : out std_logic;
    rmon_rx_sync_lost : out std_logic
    );

end ep_rx_pcs_8bit;

architecture behavioral of ep_rx_pcs_8bit is

-- RX state machine definitions
  type t_tbif_rx_state is (RX_NOFRAME, RX_COMMA, RX_CR3, RX_CR4, RX_SPD_PREAMBLE, RX_PAYLOAD, RX_EXTEND);

-- size of the calibrration pattern detection counter. It counts up every time
-- a valid calibration pattern character is received and resets upon detecion
-- of non-calibration character. The pattern is validated when the counter
-- overflows (after 2**c_cal_pattern_counter_bits counts)


  function f_calc_pattern_counter_bits
    return integer is
  begin  -- f_calc_pattern_counter_bits
    if(g_simulation) then
      return 8;                         -- use smaller calibration counter to
                                        -- speed up the simulation
    else
      return 17;
    end if;
  end f_calc_pattern_counter_bits;

  constant c_cal_pattern_counter_bits : integer := f_calc_pattern_counter_bits;

  component ep_sync_detect
    port (
      rst_n_i  : in  std_logic;
      rbclk_i  : in  std_logic;
      en_i     : in  std_logic;
      data_i   : in  std_logic_vector(7 downto 0);
      k_i      : in  std_logic;
      err_i    : in  std_logic;
      synced_o : out std_logic;
      even_o   : out std_logic;
      cal_i    : in  std_logic);
  end component;

  signal rst_n_rx : std_logic;

  signal rx_state             : t_tbif_rx_state;
  signal preamble_cntr        : unsigned(2 downto 0);
  signal rx_busy              : std_logic;
  signal rx_enable_synced     : std_logic;
  signal rx_rdreq, fifo_wrreq : std_logic;

  -- 8b10b decoding and postprocessing signals
  signal d_is_k, d_err, d_is_comma, d_is_epd        : std_logic;
  signal d_is_spd, d_is_extend, d_is_idle, d_is_lcr : std_logic;
  signal d_is_sfd_char, d_is_preamble_char          : std_logic;
  signal d_data                                     : std_logic_vector(7 downto 0);
  signal d_is_even                                  : std_logic;
  signal d_is_cal                                   : std_logic;

  -- Clock alignment FIFO signals
  signal fifo_wr_toggle     : std_logic;
  signal fifo_rx_data       : std_logic_vector(15 downto 0);
  signal fifo_mask_write    : std_logic;
  signal fifo_bytesel       : std_logic;
  signal fifo_sof, fifo_eof : std_logic;
  signal fifo_error         : std_logic;
  signal fifo_almostfull    : std_logic;
  signal fifo_clear_n       : std_logic;
  signal fifo_with_rx_ts    : std_logic;
  signal fifo_ts_valid    : std_logic;

-- Synchronization detection FSM signals
  signal rx_synced, rx_even : std_logic;
  signal rx_sync_lost_p     : std_logic;
  signal rx_sync_status     : std_logic;
  signal rx_sync_enable     : std_logic;

-- Autonegotiation control signals
  signal an_rx_en_synced : std_logic;

  signal lcr_ready         : std_logic;
  signal lcr_prev_val      : std_logic_vector(15 downto 0);
  signal lcr_cur_val       : std_logic_vector(15 downto 0);
  signal lcr_final_val     : std_logic_vector(15 downto 0);
  signal lcr_validity_cntr : unsigned(1 downto 0);

  signal an_idle_cntr      : unsigned(1 downto 0);
  signal an_idle_match_int : std_logic;

-- RMON counter pulses
  signal rmon_rx_overrun_p_int   : std_logic;
  signal rmon_invalid_code_p_int : std_logic;

-- Misc. signals
  signal cal_pattern_cntr      : unsigned(c_cal_pattern_counter_bits-1 downto 0);
  signal mdio_mcr_reset_synced : std_logic;
  signal mdio_mcr_pdown_synced : std_logic;


  signal pcs_valid_int     : std_logic;
  signal timestamp_pending : std_logic_vector(2 downto 0);
  
begin
-------------------------------------------------------------------------------
-- synchronizer chains for Wishbone-accessible control signals
-------------------------------------------------------------------------------

  U_sync_pcs_busy : gc_sync_ffs
    generic map (
      g_sync_edge => "positive")
    port map (
      clk_i    => clk_sys_i,
      rst_n_i  => '1',
      data_i   => rx_busy,
      synced_o => pcs_busy_o,
      npulse_o => open,
      ppulse_o => open);

  U_sync_an_rx_enable : gc_sync_ffs
    generic map (
      g_sync_edge => "positive")
    port map (
      clk_i    => phy_rx_clk_i,
      rst_n_i  => rst_n_rx,
      data_i   => an_rx_en_i,
      synced_o => an_rx_en_synced,
      npulse_o => open,
      ppulse_o => open);

  U_sync_mcr_reset : gc_sync_ffs
    generic map (
      g_sync_edge => "positive")
    port map (
      clk_i    => phy_rx_clk_i,
      rst_n_i  => '1',
      data_i   => mdio_mcr_reset_i,
      synced_o => mdio_mcr_reset_synced,
      npulse_o => open,
      ppulse_o => open);

  U_sync_power_down : gc_sync_ffs
    generic map (
      g_sync_edge => "positive")
    port map (
      clk_i    => phy_rx_clk_i,
      rst_n_i  => '1',
      data_i   => mdio_mcr_pdown_i,
      synced_o => mdio_mcr_pdown_synced,
      npulse_o => open,
      ppulse_o => open);

  rx_sync_enable <= not mdio_mcr_pdown_synced;
  rst_n_rx  <= rst_rxclk_n_i and not mdio_mcr_reset_synced and phy_rdy_i;

-------------------------------------------------------------------------------
-- 802.3z Link Synchronization State Machine
-------------------------------------------------------------------------------

  U_SYNC_DET : ep_sync_detect
    port map (
      rst_n_i  => rst_n_rx,
      rbclk_i  => phy_rx_clk_i,
      en_i     => rx_sync_enable,
      data_i   => phy_rx_data_i,
      k_i      => phy_rx_k_i,
      err_i    => phy_rx_enc_err_i,
      synced_o => rx_synced,
      even_o   => rx_even,
      cal_i    => d_is_cal);

  -- synchronizer chain for rx_synced signal, also serving as a loss-of-sync detector
  U_sync_los : gc_sync_ffs
    generic map (
      g_sync_edge => "positive")
    port map (
      clk_i    => clk_sys_i,
      rst_n_i  => '1',
      data_i   => rx_synced,
      synced_o => rx_sync_status,
      npulse_o => rx_sync_lost_p,
      ppulse_o => open);

  synced_o    <= rx_sync_status;        -- drive the PCS outputs
  sync_lost_o <= rx_sync_lost_p;

-------------------------------------------------------------------------------
-- Calibration pattern logic
-------------------------------------------------------------------------------

  -- process checks the presence of valid calibtaion pattern and controls the
  -- state of CAL_STA bit in Receive Control Register.
  --
  -- reads: phy_rx_data_i, mdio_wr_spec_cal_crst_i
  -- writes: mdio_wr_spec_rx_cal_stat_o
  --
  p_detect_cal : process(phy_rx_clk_i)
  begin
    if rising_edge(phy_rx_clk_i) then
      if rst_n_rx = '0' then
        cal_pattern_cntr <= (others => '0');
        d_is_cal         <= '0';
      else
        
        if(phy_rx_data_i = c_k28_7 and phy_rx_k_i = '1') then
          d_is_cal <= '1';
        else
          d_is_cal <= '0';
        end if;

        if(d_is_cal = '1' and mdio_wr_spec_cal_crst_i = '0') then

-- we've got c_cal_pattern_threshold valid calibration characters - indicate
-- that we're receiving a valid calibration pattern
          if(cal_pattern_cntr(cal_pattern_cntr'high) = '1') then
            mdio_wr_spec_rx_cal_stat_o <= '1';
          else
            mdio_wr_spec_rx_cal_stat_o <= '0';
            cal_pattern_cntr           <= cal_pattern_cntr + 1;
          end if;
-- we've got a non-calibration character or the pattern detection has been reset
        else
          mdio_wr_spec_rx_cal_stat_o <= '0';
          cal_pattern_cntr           <= (others => '0');
        end if;
      end if;
    end if;
  end process;


-------------------------------------------------------------------------------
-- Clock adjustment FIFO
-------------------------------------------------------------------------------  

  -- FIFO input data formatting
  fifo_wrreq <= fifo_wr_toggle and fifo_mask_write;

  pcs_fab_o.data             <= fifo_rx_data;
  pcs_fab_o.addr             <= (others => '0');
  pcs_fab_o.sof              <= fifo_sof and fifo_wrreq;
  pcs_fab_o.eof              <= fifo_eof and fifo_wrreq;
  pcs_fab_o.bytesel          <= fifo_bytesel;
  pcs_fab_o.error            <= fifo_error and fifo_wrreq;
  pcs_fab_o.has_rx_timestamp <= fifo_with_rx_ts;
  pcs_fab_o.rx_timestamp_valid <= timestamp_valid_i;
  pcs_fab_o.dvalid           <= not (fifo_sof or fifo_eof or fifo_error) and fifo_wrreq;

  fifo_almostfull <= pcs_fifo_almostfull_i;

  -- process postprocesses the raw 8b10b decoder output (phy_rx_data_i, phy_rx_k_i, phy_rx_enc_err_ior)
  -- providing 1-bit signals indicating various 8b10b control patterns
  p_8b10b_postprocess : process(phy_rx_clk_i)
  begin
    if rising_edge(phy_rx_clk_i) then
      
      if(rst_n_rx = '0') then
        d_data             <= (others => '0');
        d_is_comma         <= '0';
        d_is_spd           <= '0';
        d_is_extend        <= '0';
        d_is_lcr           <= '0';
        d_is_epd           <= '0';
        d_is_idle          <= '0';
        d_is_k             <= '0';
        d_err              <= '0';
        d_is_sfd_char      <= '0';
        d_is_preamble_char <= '0';
        d_err              <= '0';
      else

        -- store the odd/even field information from sync detection unit (U_SYNC_DET)
        d_is_even <= rx_even;
        d_data    <= phy_rx_data_i;
        d_is_k    <= phy_rx_k_i;

        if(phy_rx_enc_err_i = '0') then
          d_err <= '0';

-- decode commas and other control characters....
          if(phy_rx_data_i = c_K28_5 and phy_rx_k_i = '1') then
            d_is_comma <= '1';
          else
            d_is_comma <= '0';
          end if;

          if(phy_rx_data_i = c_k23_7 and phy_rx_k_i = '1') then
            d_is_extend <= '1';
          else
            d_is_extend <= '0';
          end if;

          if(phy_rx_data_i = c_k27_7 and phy_rx_k_i = '1') then
            d_is_spd <= '1';
          else
            d_is_spd <= '0';
          end if;

          if(phy_rx_data_i = c_K29_7 and phy_rx_k_i = '1') then
            d_is_epd <= '1';
          else
            d_is_epd <= '0';
          end if;

          if((phy_rx_data_i = c_d21_5 or phy_rx_data_i = c_d2_2) and phy_rx_k_i = '0') then
            d_is_lcr <= '1';
          else
            d_is_lcr <= '0';
          end if;

          if((phy_rx_data_i = c_d5_6 or phy_rx_data_i = c_d16_2) and phy_rx_k_i = '0') then
            d_is_idle <= '1';
          else
            d_is_idle <= '0';
          end if;

          if(phy_rx_data_i = c_preamble_sfd and phy_rx_k_i = '0') then
            d_is_sfd_char <= '1';
          else
            d_is_sfd_char <= '0';
          end if;

          if(phy_rx_data_i = c_preamble_char and phy_rx_k_i = '0') then
            d_is_preamble_char <= '1';
          else
            d_is_preamble_char <= '0';
          end if;

-- invalid code received?
        else
          d_err              <= '1';
          d_is_sfd_char      <= '0';
          d_is_preamble_char <= '0';
          d_is_comma         <= '0';
          d_is_spd           <= '0';
          d_is_extend        <= '0';
          d_is_lcr           <= '0';
          d_is_epd           <= '0';
          d_is_idle          <= '0';
          d_is_k             <= '0';
        end if;
      end if;
    end if;
  end process;


-- process: RBCLK-driven RX state machine. Implements the receive logic od 802.3z compliant
-- 1000BaseX PCS.
-- reads: almost everything
-- writes: almost everything

  rx_fsm : process (phy_rx_clk_i)
  begin
    if rising_edge(phy_rx_clk_i) then
      -- reset or PCS disabled
      if(rst_n_rx = '0' or mdio_mcr_pdown_synced = '1') then
        rx_state <= RX_NOFRAME;
        rx_busy  <= '0';

        fifo_sof        <= '0';
        fifo_eof        <= '0';
        fifo_error      <= '0';
        fifo_wr_toggle  <= '0';
        fifo_mask_write <= '0';
        fifo_with_rx_ts <= '0';

        lcr_ready         <= '0';
        lcr_cur_val       <= (others => '0');
        lcr_prev_val      <= (others => '0');
        -- lcr_final_val ===> DO NOT CLEAR on reset
        lcr_validity_cntr <= (others => '0');
        an_idle_cntr      <= (others => '0');
        an_idle_match_int <= '0';

        rmon_rx_overrun_p_int   <= '0';
        rmon_invalid_code_p_int <= '0';

        timestamp_trigger_p_a_o <= '0';
        timestamp_pending <= "000";
      else                              -- normal PCS operation

        -- clear the autogotiation variables if the autonegotiation is disabled
        if(an_rx_en_synced = '0') then
          lcr_ready         <= '0';
          lcr_validity_cntr <= (others => '0');
          lcr_prev_val      <= (others => '0');
          an_idle_cntr      <= (others => '0');
          an_idle_match_int <= '0';
        end if;

-------------------------------------------------------------------------------
-- Main RX PCS state machine
-------------------------------------------------------------------------------          
        case rx_state is

-------------------------------------------------------------------------------
-- State NOFRAME: receiver is receiving IDLE pattern
-------------------------------------------------------------------------------            
          when RX_NOFRAME =>

            
            fifo_sof     <= '0';
            fifo_eof     <= '0';
            fifo_error   <= '0';
            fifo_bytesel <= '0';

            rx_busy           <= '0';
            timestamp_trigger_p_a_o <= '0';

            -- insert the RX timestamp into the FIFO
            if(timestamp_pending /= "000") then
              fifo_mask_write <= '1';
              fifo_wr_toggle  <= '1';
            else
              fifo_mask_write <= '0';
              fifo_wr_toggle  <= '0';
            end if;

            if(timestamp_pending(0) = '1')then
              fifo_rx_data <= timestamp_i(31 downto 16);
            elsif(timestamp_pending(1) = '1')then
              fifo_rx_data <= timestamp_i(15 downto 0);
            elsif(timestamp_pending(2) = '1')then
              fifo_eof <= '1';
            end if;

            timestamp_pending <= timestamp_pending(1 downto 0) & '0';

            if (rx_synced = '0') then
-- PCS is not synced: stay in NOFRAME state and ignore the incoming codes.
              rx_state <= RX_NOFRAME;

            elsif(d_is_comma = '1') then
-- we've got a comma character: it's probably an idle sequence or a Config_Reg value,
-- check the next code.
              rx_state <= RX_COMMA;
            elsif (d_is_spd = '1') then
-- we've got a Start-of-Packet Delimeter

              if(d_is_even = '1' and fifo_almostfull = '0') then
                preamble_cntr <= "111";
                rx_state      <= RX_SPD_PREAMBLE;
              elsif (fifo_almostfull = '1') then
                rmon_rx_overrun_p_int <= '1';
              end if;
              
            end if;


-- produce a pulse at every invalid 8b10b code.
            rmon_invalid_code_p_int <= d_err;

-------------------------------------------------------------------------------
-- State COMMA: we've received a comma character followed by something else.
-- Determine what's "something else"
-------------------------------------------------------------------------------                            

          when RX_COMMA =>
-- received a code with error (or a control code group) or a misaligned code:
-- go to the initial NOFRAME state and account the error.

            fifo_mask_write <= '0';
            fifo_wr_toggle  <= '0';
            fifo_with_rx_ts <= '0';

            if (d_err = '1' or d_is_k = '1' or d_is_even = '1' or rx_synced = '0') then
              rmon_invalid_code_p_int <= d_err;
              rx_state                <= RX_NOFRAME;

              lcr_ready         <= '0';
              an_idle_match_int <= '0';
              an_idle_cntr      <= (others => '0');
            else

-- don't write anything to the PCS FIFO, it's a control character
              fifo_mask_write <= '0';

-- received D5.6 or D16.2 - it's an idle pattern. Simply ignore it.
              if(d_is_idle = '1') then
                rx_state  <= RX_NOFRAME;
                lcr_ready <= '0';


                if(an_idle_cntr = "11") then
                  an_idle_match_int <= '1';
                else
                  an_idle_cntr <= an_idle_cntr + 1;
                end if;


-- received D21.5 or D2.2 - it's a 802.3x autonegotiation Config_Reg (802.3 p.
-- 36.2.4.10). Begin the reception of its value.
              elsif(d_is_lcr = '1') then
                an_idle_match_int <= '0';
                an_idle_cntr      <= (others => '0');
                rx_busy           <= '1';
                rx_state          <= RX_CR3;
              else
                lcr_ready         <= '0';
                an_idle_match_int <= '0';
                an_idle_cntr      <= (others => '0');
                lcr_validity_cntr <= (others => '0');
              end if;
            end if;

-------------------------------------------------------------------------------
-- States CR3/CR4: reception of LCR register value.
-------------------------------------------------------------------------------              
          when RX_CR3 =>  -- receives the 1st byte of Config_Reg and
            -- checks if the subsequent Config_Reg
            -- values are identical.

-- an error? - abort the reception and go to NOFRAME state.
            if(d_err = '1' or d_is_k = '1' or d_is_even = '0' or rx_synced = '0') then
              rx_state                <= RX_NOFRAME;
              rmon_invalid_code_p_int <= d_err;

              -- reset the Config_Reg value and mark it as invalid
              lcr_ready         <= '0';
              lcr_validity_cntr <= (others => '0');

-- check if the autonegotiation unit has enabled the reception of LCR
            elsif (an_rx_en_synced = '1') then
              lcr_prev_val <= lcr_cur_val;

-- check for 3 subsequent Configuration sequences with identical Config_Reg value
              if(lcr_cur_val = lcr_prev_val) then
                if(lcr_validity_cntr = "10") then
-- we've got 3? Indicate that we have received valid Config_Reg.
                  lcr_ready <= '1';
                  lcr_final_val <= lcr_cur_val; -- only latched here, not even on reset
                else
                  lcr_validity_cntr <= lcr_validity_cntr + 1;
                  lcr_ready         <= '0';
                end if;
              else
-- the subsequent values of Config_Reg are different?
                lcr_validity_cntr <= (others => '0');
                lcr_ready         <= '0';
              end if;

              lcr_cur_val (7 downto 0) <= d_data;
            end if;

            rx_state <= RX_CR4;

          when RX_CR4 =>                -- receives the 2nd byte of LCR

            if(d_err = '1' or d_is_k = '1' or d_is_even = '1' or rx_synced = '0') then
              -- in case of an error
              rx_state                <= RX_NOFRAME;
              rmon_invalid_code_p_int <= d_err;
            elsif (an_rx_en_synced = '1') then
              -- store the value of the LSB of the Config_Reg
              lcr_cur_val (15 downto 8) <= d_data;
            end if;

            rx_state <= RX_NOFRAME;

-------------------------------------------------------------------------------
-- State SPD_PREAMBLE: we've received an Start-Of-Packet delimeter. Check for
-- the valid preamble.
-------------------------------------------------------------------------------                            
          when RX_SPD_PREAMBLE =>

            rx_busy <= '1';

            if(d_err = '1' or rx_synced = '0') then  -- check for encoding errors.
              rx_state                <= RX_NOFRAME;
              rmon_invalid_code_p_int <= d_err;
            else

              -- keep looking for Ethernet SFD char (0xd5). If it occurs on
              -- the right position, start receiving the frame payload
              if d_is_sfd_char = '1' then
-- generate the RX timestamp pulse
                timestamp_trigger_p_a_o <= '1';

-- we've got an SFD at proper offset from the beginning of the preamble
                if (preamble_cntr = "010") or (preamble_cntr = "001") then

-- indicate a start-of-packet condition in the RX FIFO and enable writing to
-- the FIFO.
                  fifo_sof        <= '1';
                  fifo_mask_write <= '1';
                  fifo_wr_toggle  <= '1';
                  rx_state        <= RX_PAYLOAD;
                end if;
                
              elsif (d_is_preamble_char = '1') then
                preamble_cntr <= preamble_cntr - 1;
                -- got duplicated SPD code?
              elsif (d_is_spd = '1') then
                preamble_cntr <= "111";
              end if;

              if(preamble_cntr = "000") then  -- too long preamble - abort reception
                rx_state <= RX_NOFRAME;
              end if;
            end if;

-------------------------------------------------------------------------------
-- State PAYLOAD: receives the full frame payload (including the MAC header and
-- the CRC)
-------------------------------------------------------------------------------

          when RX_PAYLOAD =>

            fifo_sof <= '0';

            -- check for errors.
            if (d_err = '1' or rx_synced = '0' or fifo_almostfull = '1') then
              rmon_invalid_code_p_int <= d_err;
              rmon_rx_overrun_p_int   <= fifo_almostfull;

              rx_state <= RX_NOFRAME;

              -- indicate an errorneous termination of the current frame in the
              -- RX FIFO
              fifo_error     <= '1';
              fifo_wr_toggle <= '1';
              
            elsif d_is_k = '1' then
              if d_is_epd = '1' then    -- got an EPD (End-of-packet delimeter)

                fifo_bytesel   <= not fifo_wr_toggle;
                fifo_wr_toggle <= not fifo_wr_toggle;

                rx_state <= RX_EXTEND;

              else
                -- any other K-character in the middle of frame (premature
                -- end)? - terminate the frame and indicate an error in the
                -- RX FIFO.

                if d_is_comma = '1' then  -- got link idle inside frame
                  rx_state <= RX_COMMA;
                else
                  rx_state <= RX_NOFRAME;
                end if;

                fifo_error     <= '1';
                fifo_wr_toggle <= '1';
              end if;
            else
              -- got a data character. Every 2 characters, write them to the
              -- 16-bit FIFO.

              fifo_wr_toggle <= not fifo_wr_toggle;

              if fifo_wr_toggle = '1' then
                fifo_rx_data(15 downto 8) <= d_data;
              else
                fifo_rx_data(7 downto 0) <= d_data;
              end if;
            end if;

-------------------------------------------------------------------------------
-- State EXTEND: receive carrier extension
-------------------------------------------------------------------------------

          when RX_EXTEND =>

            timestamp_trigger_p_a_o <= '0';

            if d_is_extend = '1' then    -- got carrier extend. Just keep
                                         -- receiving it.
              fifo_mask_write <= '0';
              rx_state        <= RX_EXTEND;
            elsif d_is_comma = '1' then  -- got comma, real end-of-frame
              -- indicate the correct ending of the current frame in the RX FIFO
              fifo_eof          <= not timestamp_stb_i;
              fifo_with_rx_ts   <= timestamp_stb_i;
              fifo_mask_write   <= '1';
              fifo_wr_toggle    <= '1';
              timestamp_pending <= (others => timestamp_stb_i);


              rx_state <= RX_COMMA;
              
            else
              -- got anything else than comma (for example, the /V/ code):

              rmon_invalid_code_p_int <= '1';
              fifo_error              <= '1';
              fifo_mask_write         <= '1';
              fifo_wr_toggle          <= '1';

              rx_state <= RX_NOFRAME;
            end if;

          when others => null;
        end case;
      end if;
    end if;
  end process;

  an_rx_val_o <= lcr_final_val;

  U_sync_an_rx_ready : gc_sync_ffs
    generic map (
      g_sync_edge => "positive")
    port map (
      clk_i    => clk_sys_i,
      rst_n_i  => rst_n_i,
      data_i   => lcr_ready,
      synced_o => an_rx_valid_o,
      npulse_o => open,
      ppulse_o => open);

  U_sync_an_idle_match : gc_sync_ffs
    generic map (
      g_sync_edge => "positive")
    port map (
      clk_i    => clk_sys_i,
      rst_n_i  => rst_n_i,
      data_i   => an_idle_match_int,
      synced_o => an_idle_match_o,
      npulse_o => open,
      ppulse_o => open);

  U_ext_rmon_1 : gc_extend_pulse
    generic map (
      g_width => 3)
    port map (
      clk_i      => phy_rx_clk_i,
      rst_n_i    => rst_n_rx,
      pulse_i    => rmon_invalid_code_p_int,
      extended_o => rmon_rx_inv_code);

  U_ext_rmon_2 : gc_extend_pulse
    generic map (
      g_width => 3)
    port map (
      clk_i      => phy_rx_clk_i,
      rst_n_i    => rst_n_rx,
      pulse_i    => rmon_rx_overrun_p_int,
      extended_o => rmon_rx_overrun);

-- drive the "RX PCS Sync Lost" event counter
  rmon_rx_sync_lost <= rx_sync_lost_p and (not mdio_mcr_pdown_i);

end behavioral;


