--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: finalFPGA.vhd
-- /___/   /\     Timestamp: Tue Dec 19 19:42:36 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w finalFPGA.ngc finalFPGA.vhd 
-- Device	: xc7a100tcsg324-3
-- Input file	: finalFPGA.ngc
-- Output file	: finalFPGA.vhd
-- # of Entities	: 1
-- Design Name	: finalFPGA
-- Xilinx	: C:\Xilinx\14.2\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity finalFPGA is
  port (
    clock : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    start : in STD_LOGIC := 'X'; 
    x : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    y : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    digits : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    display : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end finalFPGA;

architecture STRUCTURE of finalFPGA is
  signal x_7_IBUF_0 : STD_LOGIC; 
  signal x_6_IBUF_1 : STD_LOGIC; 
  signal x_5_IBUF_2 : STD_LOGIC; 
  signal x_4_IBUF_3 : STD_LOGIC; 
  signal x_3_IBUF_4 : STD_LOGIC; 
  signal x_2_IBUF_5 : STD_LOGIC; 
  signal x_1_IBUF_6 : STD_LOGIC; 
  signal x_0_IBUF_7 : STD_LOGIC; 
  signal y_7_IBUF_8 : STD_LOGIC; 
  signal y_6_IBUF_9 : STD_LOGIC; 
  signal y_5_IBUF_10 : STD_LOGIC; 
  signal y_4_IBUF_11 : STD_LOGIC; 
  signal y_3_IBUF_12 : STD_LOGIC; 
  signal y_2_IBUF_13 : STD_LOGIC; 
  signal y_1_IBUF_14 : STD_LOGIC; 
  signal y_0_IBUF_15 : STD_LOGIC; 
  signal clock_IBUFG_16 : STD_LOGIC; 
  signal reset_IBUF_17 : STD_LOGIC; 
  signal start_IBUF_18 : STD_LOGIC; 
  signal NET174 : STD_LOGIC; 
  signal display_6_OBUF_28 : STD_LOGIC; 
  signal display_5_OBUF_29 : STD_LOGIC; 
  signal display_4_OBUF_30 : STD_LOGIC; 
  signal display_3_OBUF_31 : STD_LOGIC; 
  signal display_2_OBUF_32 : STD_LOGIC; 
  signal display_1_OBUF_33 : STD_LOGIC; 
  signal display_0_OBUF_34 : STD_LOGIC; 
  signal digits_7_OBUF_35 : STD_LOGIC; 
  signal digits_3_OBUF_36 : STD_LOGIC; 
  signal digits_2_OBUF_37 : STD_LOGIC; 
  signal digits_1_OBUF_38 : STD_LOGIC; 
  signal digits_0_OBUF_39 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal U1_U2_in_sel_41 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd4_42 : STD_LOGIC; 
  signal U1_BUS289_6_Q : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd1_44 : STD_LOGIC; 
  signal U1_BUS289_9_Q : STD_LOGIC; 
  signal U1_BUS289_12_Q : STD_LOGIC; 
  signal U1_BUS289_15_Q : STD_LOGIC; 
  signal U1_BUS289_16_Q : STD_LOGIC; 
  signal U1_BUS289_17_Q : STD_LOGIC; 
  signal U1_NET262 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd6_51 : STD_LOGIC; 
  signal U1_U2_cState_2_GND_36_o_Mux_8_o : STD_LOGIC; 
  signal U4_GND_39_o_GND_39_o_equal_1_o : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd8_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd7_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd6_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd5_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd4_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd3_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd2_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd1_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd8_80 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd5_81 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd3_82 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd2_83 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal U1_U1_x_lt_y2 : STD_LOGIC; 
  signal U1_U1_x_lt_y1_117 : STD_LOGIC; 
  signal U1_U1_U5_sel_0_inv : STD_LOGIC; 
  signal U4_GND_39_o_GND_39_o_equal_1_o_13_1_175 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal U1_U1_x_neq_y8 : STD_LOGIC; 
  signal U1_U1_x_neq_y81_179 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_1_rt_214 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_2_rt_215 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_3_rt_216 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_4_rt_217 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_5_rt_218 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_6_rt_219 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_7_rt_220 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_8_rt_221 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_9_rt_222 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_10_rt_223 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_11_rt_224 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_12_rt_225 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_xor_13_rt_226 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers31_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers122_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers32_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers121_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers11_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers11_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers2_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers2_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal U1_U1_U8_Q_tmp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U4_digit_data : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U4_gen_display_d_clk : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal U4_cur_digit : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U4_Mcount_gen_display_d_clk_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U4_Mcount_gen_display_d_clk_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal U1_U1_BUS318 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_BUS215 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_BUS993 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_BUS295 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_U5_Mmux_output6_rs_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_U5_Mmux_output6_rs_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal U1_U1_U5_Mmux_output6_split : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U4_GND_39_o_GND_39_o_equal_1_o_0 : STD_LOGIC_VECTOR ( 13 downto 13 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => digits_7_OBUF_35
    );
  U1_U2_in_sel : LD
    port map (
      D => U1_U2_cState_FSM_FFd6_51,
      G => U1_U2_cState_2_GND_36_o_Mux_8_o,
      Q => U1_U2_in_sel_41
    );
  U1_U2_cState_FSM_FFd8 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => NET174,
      D => U1_U2_cState_FSM_FFd8_In,
      PRE => reset_IBUF_17,
      Q => U1_U2_cState_FSM_FFd8_80
    );
  U1_U2_cState_FSM_FFd7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => U1_U2_cState_FSM_FFd7_In,
      Q => U1_U2_cState_FSM_FFd6_In
    );
  U1_U2_cState_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => U1_U2_cState_FSM_FFd5_In,
      Q => U1_U2_cState_FSM_FFd5_81
    );
  U1_U2_cState_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => U1_U2_cState_FSM_FFd4_In,
      Q => U1_U2_cState_FSM_FFd4_42
    );
  U1_U2_cState_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => U1_U2_cState_FSM_FFd3_In,
      Q => U1_U2_cState_FSM_FFd3_82
    );
  U1_U2_cState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => U1_U2_cState_FSM_FFd2_In,
      Q => U1_U2_cState_FSM_FFd2_83
    );
  U1_U2_cState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => U1_U2_cState_FSM_FFd1_In,
      Q => U1_U2_cState_FSM_FFd1_44
    );
  U4_gen_display_d_clk_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result_0_1,
      Q => U4_gen_display_d_clk(0)
    );
  U4_gen_display_d_clk_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result_1_1,
      Q => U4_gen_display_d_clk(1)
    );
  U4_gen_display_d_clk_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(2),
      Q => U4_gen_display_d_clk(2)
    );
  U4_gen_display_d_clk_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(3),
      Q => U4_gen_display_d_clk(3)
    );
  U4_gen_display_d_clk_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(4),
      Q => U4_gen_display_d_clk(4)
    );
  U4_gen_display_d_clk_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(5),
      Q => U4_gen_display_d_clk(5)
    );
  U4_gen_display_d_clk_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(6),
      Q => U4_gen_display_d_clk(6)
    );
  U4_gen_display_d_clk_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(7),
      Q => U4_gen_display_d_clk(7)
    );
  U4_gen_display_d_clk_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(8),
      Q => U4_gen_display_d_clk(8)
    );
  U4_gen_display_d_clk_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(9),
      Q => U4_gen_display_d_clk(9)
    );
  U4_gen_display_d_clk_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(10),
      Q => U4_gen_display_d_clk(10)
    );
  U4_gen_display_d_clk_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(11),
      Q => U4_gen_display_d_clk(11)
    );
  U4_gen_display_d_clk_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(12),
      Q => U4_gen_display_d_clk(12)
    );
  U4_gen_display_d_clk_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => Result(13),
      Q => U4_gen_display_d_clk(13)
    );
  U4_cur_digit_0 : FDCE
    port map (
      C => NET174,
      CE => U4_GND_39_o_GND_39_o_equal_1_o,
      CLR => reset_IBUF_17,
      D => Result(0),
      Q => U4_cur_digit(0)
    );
  U4_cur_digit_1 : FDCE
    port map (
      C => NET174,
      CE => U4_GND_39_o_GND_39_o_equal_1_o,
      CLR => reset_IBUF_17,
      D => Result(1),
      Q => U4_cur_digit(1)
    );
  U1_U2_cState_FSM_FFd6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET174,
      CLR => reset_IBUF_17,
      D => U1_U2_cState_FSM_FFd6_In,
      Q => U1_U2_cState_FSM_FFd6_51
    );
  U4_Mcount_gen_display_d_clk_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => digits_7_OBUF_35,
      S => U4_Mcount_gen_display_d_clk_lut(0),
      O => U4_Mcount_gen_display_d_clk_cy(0)
    );
  U4_Mcount_gen_display_d_clk_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U4_Mcount_gen_display_d_clk_lut(0),
      O => Result_0_1
    );
  U4_Mcount_gen_display_d_clk_cy_1_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(0),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_1_rt_214,
      O => U4_Mcount_gen_display_d_clk_cy(1)
    );
  U4_Mcount_gen_display_d_clk_xor_1_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(0),
      LI => U4_Mcount_gen_display_d_clk_cy_1_rt_214,
      O => Result_1_1
    );
  U4_Mcount_gen_display_d_clk_cy_2_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(1),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_2_rt_215,
      O => U4_Mcount_gen_display_d_clk_cy(2)
    );
  U4_Mcount_gen_display_d_clk_xor_2_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(1),
      LI => U4_Mcount_gen_display_d_clk_cy_2_rt_215,
      O => Result(2)
    );
  U4_Mcount_gen_display_d_clk_cy_3_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(2),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_3_rt_216,
      O => U4_Mcount_gen_display_d_clk_cy(3)
    );
  U4_Mcount_gen_display_d_clk_xor_3_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(2),
      LI => U4_Mcount_gen_display_d_clk_cy_3_rt_216,
      O => Result(3)
    );
  U4_Mcount_gen_display_d_clk_cy_4_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(3),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_4_rt_217,
      O => U4_Mcount_gen_display_d_clk_cy(4)
    );
  U4_Mcount_gen_display_d_clk_xor_4_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(3),
      LI => U4_Mcount_gen_display_d_clk_cy_4_rt_217,
      O => Result(4)
    );
  U4_Mcount_gen_display_d_clk_cy_5_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(4),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_5_rt_218,
      O => U4_Mcount_gen_display_d_clk_cy(5)
    );
  U4_Mcount_gen_display_d_clk_xor_5_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(4),
      LI => U4_Mcount_gen_display_d_clk_cy_5_rt_218,
      O => Result(5)
    );
  U4_Mcount_gen_display_d_clk_cy_6_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(5),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_6_rt_219,
      O => U4_Mcount_gen_display_d_clk_cy(6)
    );
  U4_Mcount_gen_display_d_clk_xor_6_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(5),
      LI => U4_Mcount_gen_display_d_clk_cy_6_rt_219,
      O => Result(6)
    );
  U4_Mcount_gen_display_d_clk_cy_7_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(6),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_7_rt_220,
      O => U4_Mcount_gen_display_d_clk_cy(7)
    );
  U4_Mcount_gen_display_d_clk_xor_7_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(6),
      LI => U4_Mcount_gen_display_d_clk_cy_7_rt_220,
      O => Result(7)
    );
  U4_Mcount_gen_display_d_clk_cy_8_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(7),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_8_rt_221,
      O => U4_Mcount_gen_display_d_clk_cy(8)
    );
  U4_Mcount_gen_display_d_clk_xor_8_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(7),
      LI => U4_Mcount_gen_display_d_clk_cy_8_rt_221,
      O => Result(8)
    );
  U4_Mcount_gen_display_d_clk_cy_9_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(8),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_9_rt_222,
      O => U4_Mcount_gen_display_d_clk_cy(9)
    );
  U4_Mcount_gen_display_d_clk_xor_9_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(8),
      LI => U4_Mcount_gen_display_d_clk_cy_9_rt_222,
      O => Result(9)
    );
  U4_Mcount_gen_display_d_clk_cy_10_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(9),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_10_rt_223,
      O => U4_Mcount_gen_display_d_clk_cy(10)
    );
  U4_Mcount_gen_display_d_clk_xor_10_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(9),
      LI => U4_Mcount_gen_display_d_clk_cy_10_rt_223,
      O => Result(10)
    );
  U4_Mcount_gen_display_d_clk_cy_11_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(10),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_11_rt_224,
      O => U4_Mcount_gen_display_d_clk_cy(11)
    );
  U4_Mcount_gen_display_d_clk_xor_11_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(10),
      LI => U4_Mcount_gen_display_d_clk_cy_11_rt_224,
      O => Result(11)
    );
  U4_Mcount_gen_display_d_clk_cy_12_Q : MUXCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(11),
      DI => N0,
      S => U4_Mcount_gen_display_d_clk_cy_12_rt_225,
      O => U4_Mcount_gen_display_d_clk_cy(12)
    );
  U4_Mcount_gen_display_d_clk_xor_12_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(11),
      LI => U4_Mcount_gen_display_d_clk_cy_12_rt_225,
      O => Result(12)
    );
  U4_Mcount_gen_display_d_clk_xor_13_Q : XORCY
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy(12),
      LI => U4_Mcount_gen_display_d_clk_xor_13_rt_226,
      O => Result(13)
    );
  U3 : BUFG
    port map (
      O => NET174,
      I => clock_IBUFG_16
    );
  U1_U1_U9_Mram_registers31 : RAM32X1D
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U1_BUS289_16_Q,
      A1 => U1_BUS289_17_Q,
      A2 => N0,
      A3 => N0,
      A4 => N0,
      D => U1_U1_BUS318(6),
      DPRA0 => U1_BUS289_12_Q,
      DPRA1 => U1_U2_cState_FSM_FFd1_44,
      DPRA2 => N0,
      DPRA3 => N0,
      DPRA4 => N0,
      WCLK => NET174,
      WE => U1_BUS289_15_Q,
      SPO => NLW_U1_U1_U9_Mram_registers31_SPO_UNCONNECTED,
      DPO => U1_U1_BUS295(6)
    );
  U1_U1_U9_Mram_registers122 : RAM32X1D
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U1_BUS289_16_Q,
      A1 => U1_BUS289_17_Q,
      A2 => N0,
      A3 => N0,
      A4 => N0,
      D => U1_U1_BUS318(7),
      DPRA0 => U1_U2_cState_FSM_FFd1_44,
      DPRA1 => U1_BUS289_9_Q,
      DPRA2 => N0,
      DPRA3 => N0,
      DPRA4 => N0,
      WCLK => NET174,
      WE => U1_BUS289_15_Q,
      SPO => NLW_U1_U1_U9_Mram_registers122_SPO_UNCONNECTED,
      DPO => U1_U1_BUS993(7)
    );
  U1_U1_U9_Mram_registers32 : RAM32X1D
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U1_BUS289_16_Q,
      A1 => U1_BUS289_17_Q,
      A2 => N0,
      A3 => N0,
      A4 => N0,
      D => U1_U1_BUS318(7),
      DPRA0 => U1_BUS289_12_Q,
      DPRA1 => U1_U2_cState_FSM_FFd1_44,
      DPRA2 => N0,
      DPRA3 => N0,
      DPRA4 => N0,
      WCLK => NET174,
      WE => U1_BUS289_15_Q,
      SPO => NLW_U1_U1_U9_Mram_registers32_SPO_UNCONNECTED,
      DPO => U1_U1_BUS295(7)
    );
  U1_U1_U9_Mram_registers121 : RAM32X1D
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => U1_BUS289_16_Q,
      A1 => U1_BUS289_17_Q,
      A2 => N0,
      A3 => N0,
      A4 => N0,
      D => U1_U1_BUS318(6),
      DPRA0 => U1_U2_cState_FSM_FFd1_44,
      DPRA1 => U1_BUS289_9_Q,
      DPRA2 => N0,
      DPRA3 => N0,
      DPRA4 => N0,
      WCLK => NET174,
      WE => U1_BUS289_15_Q,
      SPO => NLW_U1_U1_U9_Mram_registers121_SPO_UNCONNECTED,
      DPO => U1_U1_BUS993(6)
    );
  U1_U1_U9_Mram_registers11 : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => NET174,
      WE => U1_BUS289_15_Q,
      DIA(1) => U1_U1_BUS318(1),
      DIA(0) => U1_U1_BUS318(0),
      DIB(1) => U1_U1_BUS318(3),
      DIB(0) => U1_U1_BUS318(2),
      DIC(1) => U1_U1_BUS318(5),
      DIC(0) => U1_U1_BUS318(4),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => N0,
      ADDRA(2) => N0,
      ADDRA(1) => U1_BUS289_9_Q,
      ADDRA(0) => U1_U2_cState_FSM_FFd1_44,
      ADDRB(4) => N0,
      ADDRB(3) => N0,
      ADDRB(2) => N0,
      ADDRB(1) => U1_BUS289_9_Q,
      ADDRB(0) => U1_U2_cState_FSM_FFd1_44,
      ADDRC(4) => N0,
      ADDRC(3) => N0,
      ADDRC(2) => N0,
      ADDRC(1) => U1_BUS289_9_Q,
      ADDRC(0) => U1_U2_cState_FSM_FFd1_44,
      ADDRD(4) => N0,
      ADDRD(3) => N0,
      ADDRD(2) => N0,
      ADDRD(1) => U1_BUS289_17_Q,
      ADDRD(0) => U1_BUS289_16_Q,
      DOA(1) => U1_U1_BUS993(1),
      DOA(0) => U1_U1_BUS993(0),
      DOB(1) => U1_U1_BUS993(3),
      DOB(0) => U1_U1_BUS993(2),
      DOC(1) => U1_U1_BUS993(5),
      DOC(0) => U1_U1_BUS993(4),
      DOD(1) => NLW_U1_U1_U9_Mram_registers11_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U1_U1_U9_Mram_registers11_DOD_0_UNCONNECTED
    );
  U1_U1_U9_Mram_registers2 : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => NET174,
      WE => U1_BUS289_15_Q,
      DIA(1) => U1_U1_BUS318(1),
      DIA(0) => U1_U1_BUS318(0),
      DIB(1) => U1_U1_BUS318(3),
      DIB(0) => U1_U1_BUS318(2),
      DIC(1) => U1_U1_BUS318(5),
      DIC(0) => U1_U1_BUS318(4),
      DID(1) => N0,
      DID(0) => N0,
      ADDRA(4) => N0,
      ADDRA(3) => N0,
      ADDRA(2) => N0,
      ADDRA(1) => U1_U2_cState_FSM_FFd1_44,
      ADDRA(0) => U1_BUS289_12_Q,
      ADDRB(4) => N0,
      ADDRB(3) => N0,
      ADDRB(2) => N0,
      ADDRB(1) => U1_U2_cState_FSM_FFd1_44,
      ADDRB(0) => U1_BUS289_12_Q,
      ADDRC(4) => N0,
      ADDRC(3) => N0,
      ADDRC(2) => N0,
      ADDRC(1) => U1_U2_cState_FSM_FFd1_44,
      ADDRC(0) => U1_BUS289_12_Q,
      ADDRD(4) => N0,
      ADDRD(3) => N0,
      ADDRD(2) => N0,
      ADDRD(1) => U1_BUS289_17_Q,
      ADDRD(0) => U1_BUS289_16_Q,
      DOA(1) => U1_U1_BUS295(1),
      DOA(0) => U1_U1_BUS295(0),
      DOB(1) => U1_U1_BUS295(3),
      DOB(0) => U1_U1_BUS295(2),
      DOC(1) => U1_U1_BUS295(5),
      DOC(0) => U1_U1_BUS295(4),
      DOD(1) => NLW_U1_U1_U9_Mram_registers2_DOD_1_UNCONNECTED,
      DOD(0) => NLW_U1_U1_U9_Mram_registers2_DOD_0_UNCONNECTED
    );
  U1_U1_U5_Mmux_output6_rs_xor_7_Q : XORCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(6),
      LI => U1_U1_U5_Mmux_output6_rs_lut(7),
      O => U1_U1_U5_Mmux_output6_split(7)
    );
  U1_U1_U5_Mmux_output6_rs_xor_6_Q : XORCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(5),
      LI => U1_U1_U5_Mmux_output6_rs_lut(6),
      O => U1_U1_U5_Mmux_output6_split(6)
    );
  U1_U1_U5_Mmux_output6_rs_cy_6_Q : MUXCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(5),
      DI => U1_U1_BUS295(6),
      S => U1_U1_U5_Mmux_output6_rs_lut(6),
      O => U1_U1_U5_Mmux_output6_rs_cy(6)
    );
  U1_U1_U5_Mmux_output6_rs_xor_5_Q : XORCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(4),
      LI => U1_U1_U5_Mmux_output6_rs_lut(5),
      O => U1_U1_U5_Mmux_output6_split(5)
    );
  U1_U1_U5_Mmux_output6_rs_cy_5_Q : MUXCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(4),
      DI => U1_U1_BUS295(5),
      S => U1_U1_U5_Mmux_output6_rs_lut(5),
      O => U1_U1_U5_Mmux_output6_rs_cy(5)
    );
  U1_U1_U5_Mmux_output6_rs_xor_4_Q : XORCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(3),
      LI => U1_U1_U5_Mmux_output6_rs_lut(4),
      O => U1_U1_U5_Mmux_output6_split(4)
    );
  U1_U1_U5_Mmux_output6_rs_cy_4_Q : MUXCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(3),
      DI => U1_U1_BUS295(4),
      S => U1_U1_U5_Mmux_output6_rs_lut(4),
      O => U1_U1_U5_Mmux_output6_rs_cy(4)
    );
  U1_U1_U5_Mmux_output6_rs_xor_3_Q : XORCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(2),
      LI => U1_U1_U5_Mmux_output6_rs_lut(3),
      O => U1_U1_U5_Mmux_output6_split(3)
    );
  U1_U1_U5_Mmux_output6_rs_cy_3_Q : MUXCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(2),
      DI => U1_U1_BUS295(3),
      S => U1_U1_U5_Mmux_output6_rs_lut(3),
      O => U1_U1_U5_Mmux_output6_rs_cy(3)
    );
  U1_U1_U5_Mmux_output6_rs_xor_2_Q : XORCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(1),
      LI => U1_U1_U5_Mmux_output6_rs_lut(2),
      O => U1_U1_U5_Mmux_output6_split(2)
    );
  U1_U1_U5_Mmux_output6_rs_cy_2_Q : MUXCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(1),
      DI => U1_U1_BUS295(2),
      S => U1_U1_U5_Mmux_output6_rs_lut(2),
      O => U1_U1_U5_Mmux_output6_rs_cy(2)
    );
  U1_U1_U5_Mmux_output6_rs_xor_1_Q : XORCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(0),
      LI => U1_U1_U5_Mmux_output6_rs_lut(1),
      O => U1_U1_U5_Mmux_output6_split(1)
    );
  U1_U1_U5_Mmux_output6_rs_cy_1_Q : MUXCY
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(0),
      DI => U1_U1_BUS295(1),
      S => U1_U1_U5_Mmux_output6_rs_lut(1),
      O => U1_U1_U5_Mmux_output6_rs_cy(1)
    );
  U1_U1_U5_Mmux_output6_rs_xor_0_Q : XORCY
    port map (
      CI => U1_U1_U5_sel_0_inv,
      LI => U1_U1_U5_Mmux_output6_rs_lut(0),
      O => U1_U1_U5_Mmux_output6_split(0)
    );
  U1_U1_U5_Mmux_output6_rs_cy_0_Q : MUXCY
    port map (
      CI => U1_U1_U5_sel_0_inv,
      DI => U1_U1_BUS295(0),
      S => U1_U1_U5_Mmux_output6_rs_lut(0),
      O => U1_U1_U5_Mmux_output6_rs_cy(0)
    );
  U1_U1_U8_Q_tmp_7 : FDCE
    port map (
      C => NET174,
      CE => U1_U2_cState_FSM_FFd4_42,
      CLR => reset_IBUF_17,
      D => U1_U1_BUS215(7),
      Q => U1_U1_U8_Q_tmp(7)
    );
  U1_U1_U8_Q_tmp_6 : FDCE
    port map (
      C => NET174,
      CE => U1_U2_cState_FSM_FFd4_42,
      CLR => reset_IBUF_17,
      D => U1_U1_BUS215(6),
      Q => U1_U1_U8_Q_tmp(6)
    );
  U1_U1_U8_Q_tmp_5 : FDCE
    port map (
      C => NET174,
      CE => U1_U2_cState_FSM_FFd4_42,
      CLR => reset_IBUF_17,
      D => U1_U1_BUS215(5),
      Q => U1_U1_U8_Q_tmp(5)
    );
  U1_U1_U8_Q_tmp_4 : FDCE
    port map (
      C => NET174,
      CE => U1_U2_cState_FSM_FFd4_42,
      CLR => reset_IBUF_17,
      D => U1_U1_BUS215(4),
      Q => U1_U1_U8_Q_tmp(4)
    );
  U1_U1_U8_Q_tmp_3 : FDCE
    port map (
      C => NET174,
      CE => U1_U2_cState_FSM_FFd4_42,
      CLR => reset_IBUF_17,
      D => U1_U1_BUS215(3),
      Q => U1_U1_U8_Q_tmp(3)
    );
  U1_U1_U8_Q_tmp_2 : FDCE
    port map (
      C => NET174,
      CE => U1_U2_cState_FSM_FFd4_42,
      CLR => reset_IBUF_17,
      D => U1_U1_BUS215(2),
      Q => U1_U1_U8_Q_tmp(2)
    );
  U1_U1_U8_Q_tmp_1 : FDCE
    port map (
      C => NET174,
      CE => U1_U2_cState_FSM_FFd4_42,
      CLR => reset_IBUF_17,
      D => U1_U1_BUS215(1),
      Q => U1_U1_U8_Q_tmp(1)
    );
  U1_U1_U8_Q_tmp_0 : FDCE
    port map (
      C => NET174,
      CE => U1_U2_cState_FSM_FFd4_42,
      CLR => reset_IBUF_17,
      D => U1_U1_BUS215(0),
      Q => U1_U1_U8_Q_tmp(0)
    );
  U1_U2_cState_n0024_6_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd1_44,
      I1 => U1_U2_cState_FSM_FFd2_83,
      O => U1_BUS289_6_Q
    );
  U1_U2_cState_n0024_9_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd3_82,
      I1 => U1_U2_cState_FSM_FFd2_83,
      I2 => U1_U2_cState_FSM_FFd5_81,
      O => U1_BUS289_9_Q
    );
  U1_U2_cState_n0024_12_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd3_82,
      I1 => U1_U2_cState_FSM_FFd5_81,
      I2 => U1_U2_cState_FSM_FFd2_83,
      I3 => U1_U2_cState_FSM_FFd4_42,
      O => U1_BUS289_12_Q
    );
  U1_U2_cState_n0024_15_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd1_44,
      I1 => U1_U2_cState_FSM_FFd6_In,
      I2 => U1_U2_cState_FSM_FFd6_51,
      I3 => U1_U2_cState_FSM_FFd2_83,
      O => U1_BUS289_15_Q
    );
  U1_U2_cState_n0024_16_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd6_In,
      O => U1_BUS289_16_Q
    );
  U1_U2_cState_n0024_17_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd1_44,
      I1 => U1_U2_cState_FSM_FFd6_51,
      O => U1_BUS289_17_Q
    );
  U1_U2_cState_n0024_21_1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd6_51,
      I1 => U1_U2_cState_FSM_FFd8_80,
      O => U1_U2_cState_2_GND_36_o_Mux_8_o
    );
  U1_U2_cState_FSM_FFd8_In1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => start_IBUF_18,
      I1 => U1_U2_cState_FSM_FFd8_80,
      I2 => U1_U2_cState_FSM_FFd4_42,
      O => U1_U2_cState_FSM_FFd8_In
    );
  U1_U2_cState_FSM_FFd7_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => start_IBUF_18,
      I1 => U1_U2_cState_FSM_FFd8_80,
      O => U1_U2_cState_FSM_FFd7_In
    );
  U1_U2_cState_FSM_FFd5_In1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd1_44,
      I2 => U1_U2_cState_FSM_FFd6_51,
      O => U1_U2_cState_FSM_FFd5_In
    );
  U1_U2_cState_FSM_FFd4_In1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd5_81,
      I1 => U1_NET262,
      O => U1_U2_cState_FSM_FFd4_In
    );
  U1_U2_cState_FSM_FFd3_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd5_81,
      I1 => U1_NET262,
      O => U1_U2_cState_FSM_FFd3_In
    );
  U4_Mram_digits12 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U4_cur_digit(1),
      I1 => U4_cur_digit(0),
      O => digits_0_OBUF_39
    );
  U4_Mram_digits111 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U4_cur_digit(0),
      I1 => U4_cur_digit(1),
      O => digits_1_OBUF_38
    );
  U4_Mram_digits21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U4_cur_digit(1),
      I1 => U4_cur_digit(0),
      O => digits_2_OBUF_37
    );
  U4_Mram_digits31 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U4_cur_digit(0),
      I1 => U4_cur_digit(1),
      O => digits_3_OBUF_36
    );
  U4_Mcount_cur_digit_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U4_cur_digit(1),
      I1 => U4_cur_digit(0),
      O => Result(1)
    );
  U4_u1_Mram_segs111 : LUT4
    generic map(
      INIT => X"E228"
    )
    port map (
      I0 => U4_digit_data(2),
      I1 => U4_digit_data(0),
      I2 => U4_digit_data(1),
      I3 => U4_digit_data(3),
      O => display_1_OBUF_33
    );
  U4_u1_Mram_segs61 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => U4_digit_data(1),
      I1 => U4_digit_data(2),
      I2 => U4_digit_data(3),
      I3 => U4_digit_data(0),
      O => display_6_OBUF_28
    );
  U4_Mmux_digit_data41 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => U4_cur_digit(1),
      I1 => U4_cur_digit(0),
      I2 => U1_U1_U8_Q_tmp(7),
      I3 => U1_U1_U8_Q_tmp(3),
      O => U4_digit_data(3)
    );
  U4_Mmux_digit_data31 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => U4_cur_digit(1),
      I1 => U4_cur_digit(0),
      I2 => U1_U1_U8_Q_tmp(6),
      I3 => U1_U1_U8_Q_tmp(2),
      O => U4_digit_data(2)
    );
  U4_Mmux_digit_data21 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => U4_cur_digit(1),
      I1 => U4_cur_digit(0),
      I2 => U1_U1_U8_Q_tmp(5),
      I3 => U1_U1_U8_Q_tmp(1),
      O => U4_digit_data(1)
    );
  U4_Mmux_digit_data11 : LUT4
    generic map(
      INIT => X"5140"
    )
    port map (
      I0 => U4_cur_digit(1),
      I1 => U4_cur_digit(0),
      I2 => U1_U1_U8_Q_tmp(4),
      I3 => U1_U1_U8_Q_tmp(0),
      O => U4_digit_data(0)
    );
  U4_u1_Mram_segs41 : LUT4
    generic map(
      INIT => X"02BA"
    )
    port map (
      I0 => U4_digit_data(0),
      I1 => U4_digit_data(1),
      I2 => U4_digit_data(2),
      I3 => U4_digit_data(3),
      O => display_4_OBUF_30
    );
  U4_u1_Mram_segs11 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => U4_digit_data(0),
      I1 => U4_digit_data(1),
      I2 => U4_digit_data(2),
      I3 => U4_digit_data(3),
      O => display_0_OBUF_34
    );
  U4_u1_Mram_segs31 : LUT4
    generic map(
      INIT => X"9294"
    )
    port map (
      I0 => U4_digit_data(1),
      I1 => U4_digit_data(2),
      I2 => U4_digit_data(0),
      I3 => U4_digit_data(3),
      O => display_3_OBUF_31
    );
  U4_u1_Mram_segs51 : LUT4
    generic map(
      INIT => X"6054"
    )
    port map (
      I0 => U4_digit_data(3),
      I1 => U4_digit_data(1),
      I2 => U4_digit_data(0),
      I3 => U4_digit_data(2),
      O => display_5_OBUF_29
    );
  U4_u1_Mram_segs21 : LUT4
    generic map(
      INIT => X"D004"
    )
    port map (
      I0 => U4_digit_data(0),
      I1 => U4_digit_data(1),
      I2 => U4_digit_data(2),
      I3 => U4_digit_data(3),
      O => display_2_OBUF_32
    );
  U1_U1_x_lt_y3 : LUT6
    generic map(
      INIT => X"7F3F1F0F07030100"
    )
    port map (
      I0 => U1_U1_BUS993(0),
      I1 => U1_U1_BUS993(1),
      I2 => U1_U1_BUS993(2),
      I3 => U1_U1_BUS295(0),
      I4 => U1_U1_BUS295(1),
      I5 => U1_U1_BUS295(2),
      O => U1_U1_x_lt_y1_117
    );
  U4_GND_39_o_GND_39_o_equal_1_o_13_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U4_gen_display_d_clk(1),
      I1 => U4_gen_display_d_clk(0),
      I2 => U4_gen_display_d_clk(2),
      I3 => U4_gen_display_d_clk(3),
      I4 => U4_gen_display_d_clk(4),
      I5 => U4_gen_display_d_clk(5),
      O => U4_GND_39_o_GND_39_o_equal_1_o_0(13)
    );
  U4_GND_39_o_GND_39_o_equal_1_o_13_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U4_gen_display_d_clk(7),
      I1 => U4_gen_display_d_clk(6),
      I2 => U4_gen_display_d_clk(8),
      I3 => U4_gen_display_d_clk(9),
      I4 => U4_gen_display_d_clk(10),
      I5 => U4_gen_display_d_clk(11),
      O => U4_GND_39_o_GND_39_o_equal_1_o_13_1_175
    );
  U4_GND_39_o_GND_39_o_equal_1_o_13_3 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => U4_GND_39_o_GND_39_o_equal_1_o_13_1_175,
      I1 => U4_GND_39_o_GND_39_o_equal_1_o_0(13),
      I2 => U4_gen_display_d_clk(13),
      I3 => U4_gen_display_d_clk(12),
      O => U4_GND_39_o_GND_39_o_equal_1_o
    );
  U1_U1_x_lt_y1_SW0 : LUT4
    generic map(
      INIT => X"7510"
    )
    port map (
      I0 => U1_U1_BUS993(4),
      I1 => U1_U1_BUS993(3),
      I2 => U1_U1_BUS295(3),
      I3 => U1_U1_BUS295(4),
      O => N4
    );
  U1_U1_x_lt_y1_SW1 : LUT4
    generic map(
      INIT => X"DD4D"
    )
    port map (
      I0 => U1_U1_BUS993(4),
      I1 => U1_U1_BUS295(4),
      I2 => U1_U1_BUS993(3),
      I3 => U1_U1_BUS295(3),
      O => N5
    );
  U1_U1_x_lt_y1 : LUT5
    generic map(
      INIT => X"DD44D4D4"
    )
    port map (
      I0 => U1_U1_BUS993(5),
      I1 => U1_U1_BUS295(5),
      I2 => N4,
      I3 => N5,
      I4 => U1_U1_x_lt_y1_117,
      O => U1_U1_x_lt_y2
    );
  U1_U1_x_neq_y81 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => U1_U1_BUS993(0),
      I1 => U1_U1_BUS993(2),
      I2 => U1_U1_BUS993(3),
      I3 => U1_U1_BUS295(0),
      I4 => U1_U1_BUS295(2),
      I5 => U1_U1_BUS295(3),
      O => U1_U1_x_neq_y8
    );
  U1_U1_x_neq_y82 : LUT6
    generic map(
      INIT => X"8421000000008421"
    )
    port map (
      I0 => U1_U1_BUS993(6),
      I1 => U1_U1_BUS993(7),
      I2 => U1_U1_BUS295(6),
      I3 => U1_U1_BUS295(7),
      I4 => U1_U1_BUS993(1),
      I5 => U1_U1_BUS295(1),
      O => U1_U1_x_neq_y81_179
    );
  U1_U1_x_neq_y83 : LUT6
    generic map(
      INIT => X"8421000000000000"
    )
    port map (
      I0 => U1_U1_BUS993(5),
      I1 => U1_U1_BUS993(4),
      I2 => U1_U1_BUS295(5),
      I3 => U1_U1_BUS295(4),
      I4 => U1_U1_x_neq_y81_179,
      I5 => U1_U1_x_neq_y8,
      O => U1_NET262
    );
  x_7_IBUF : IBUF
    port map (
      I => x(7),
      O => x_7_IBUF_0
    );
  x_6_IBUF : IBUF
    port map (
      I => x(6),
      O => x_6_IBUF_1
    );
  x_5_IBUF : IBUF
    port map (
      I => x(5),
      O => x_5_IBUF_2
    );
  x_4_IBUF : IBUF
    port map (
      I => x(4),
      O => x_4_IBUF_3
    );
  x_3_IBUF : IBUF
    port map (
      I => x(3),
      O => x_3_IBUF_4
    );
  x_2_IBUF : IBUF
    port map (
      I => x(2),
      O => x_2_IBUF_5
    );
  x_1_IBUF : IBUF
    port map (
      I => x(1),
      O => x_1_IBUF_6
    );
  x_0_IBUF : IBUF
    port map (
      I => x(0),
      O => x_0_IBUF_7
    );
  y_7_IBUF : IBUF
    port map (
      I => y(7),
      O => y_7_IBUF_8
    );
  y_6_IBUF : IBUF
    port map (
      I => y(6),
      O => y_6_IBUF_9
    );
  y_5_IBUF : IBUF
    port map (
      I => y(5),
      O => y_5_IBUF_10
    );
  y_4_IBUF : IBUF
    port map (
      I => y(4),
      O => y_4_IBUF_11
    );
  y_3_IBUF : IBUF
    port map (
      I => y(3),
      O => y_3_IBUF_12
    );
  y_2_IBUF : IBUF
    port map (
      I => y(2),
      O => y_2_IBUF_13
    );
  y_1_IBUF : IBUF
    port map (
      I => y(1),
      O => y_1_IBUF_14
    );
  y_0_IBUF : IBUF
    port map (
      I => y(0),
      O => y_0_IBUF_15
    );
  clock_IBUFG : IBUFG
    port map (
      I => clock,
      O => clock_IBUFG_16
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_17
    );
  start_IBUF : IBUF
    port map (
      I => start,
      O => start_IBUF_18
    );
  digits_7_OBUF : OBUF
    port map (
      I => digits_7_OBUF_35,
      O => digits(7)
    );
  digits_6_OBUF : OBUF
    port map (
      I => digits_7_OBUF_35,
      O => digits(6)
    );
  digits_5_OBUF : OBUF
    port map (
      I => digits_7_OBUF_35,
      O => digits(5)
    );
  digits_4_OBUF : OBUF
    port map (
      I => digits_7_OBUF_35,
      O => digits(4)
    );
  digits_3_OBUF : OBUF
    port map (
      I => digits_3_OBUF_36,
      O => digits(3)
    );
  digits_2_OBUF : OBUF
    port map (
      I => digits_2_OBUF_37,
      O => digits(2)
    );
  digits_1_OBUF : OBUF
    port map (
      I => digits_1_OBUF_38,
      O => digits(1)
    );
  digits_0_OBUF : OBUF
    port map (
      I => digits_0_OBUF_39,
      O => digits(0)
    );
  display_6_OBUF : OBUF
    port map (
      I => display_6_OBUF_28,
      O => display(6)
    );
  display_5_OBUF : OBUF
    port map (
      I => display_5_OBUF_29,
      O => display(5)
    );
  display_4_OBUF : OBUF
    port map (
      I => display_4_OBUF_30,
      O => display(4)
    );
  display_3_OBUF : OBUF
    port map (
      I => display_3_OBUF_31,
      O => display(3)
    );
  display_2_OBUF : OBUF
    port map (
      I => display_2_OBUF_32,
      O => display(2)
    );
  display_1_OBUF : OBUF
    port map (
      I => display_1_OBUF_33,
      O => display(1)
    );
  display_0_OBUF : OBUF
    port map (
      I => display_0_OBUF_34,
      O => display(0)
    );
  U4_Mcount_gen_display_d_clk_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(1),
      O => U4_Mcount_gen_display_d_clk_cy_1_rt_214
    );
  U4_Mcount_gen_display_d_clk_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(2),
      O => U4_Mcount_gen_display_d_clk_cy_2_rt_215
    );
  U4_Mcount_gen_display_d_clk_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(3),
      O => U4_Mcount_gen_display_d_clk_cy_3_rt_216
    );
  U4_Mcount_gen_display_d_clk_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(4),
      O => U4_Mcount_gen_display_d_clk_cy_4_rt_217
    );
  U4_Mcount_gen_display_d_clk_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(5),
      O => U4_Mcount_gen_display_d_clk_cy_5_rt_218
    );
  U4_Mcount_gen_display_d_clk_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(6),
      O => U4_Mcount_gen_display_d_clk_cy_6_rt_219
    );
  U4_Mcount_gen_display_d_clk_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(7),
      O => U4_Mcount_gen_display_d_clk_cy_7_rt_220
    );
  U4_Mcount_gen_display_d_clk_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(8),
      O => U4_Mcount_gen_display_d_clk_cy_8_rt_221
    );
  U4_Mcount_gen_display_d_clk_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(9),
      O => U4_Mcount_gen_display_d_clk_cy_9_rt_222
    );
  U4_Mcount_gen_display_d_clk_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(10),
      O => U4_Mcount_gen_display_d_clk_cy_10_rt_223
    );
  U4_Mcount_gen_display_d_clk_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(11),
      O => U4_Mcount_gen_display_d_clk_cy_11_rt_224
    );
  U4_Mcount_gen_display_d_clk_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(12),
      O => U4_Mcount_gen_display_d_clk_cy_12_rt_225
    );
  U4_Mcount_gen_display_d_clk_xor_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U4_gen_display_d_clk(13),
      O => U4_Mcount_gen_display_d_clk_xor_13_rt_226
    );
  U1_U1_U5_Mmux_output781_SW1 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => y_7_IBUF_8,
      I1 => U1_U2_in_sel_41,
      I2 => x_7_IBUF_0,
      O => N8
    );
  U1_U1_U5_Mmux_output771_SW1 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => y_6_IBUF_9,
      I1 => U1_U2_in_sel_41,
      I2 => x_6_IBUF_1,
      O => N11
    );
  U1_U1_U5_Mmux_output761_SW1 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => y_5_IBUF_10,
      I1 => U1_U2_in_sel_41,
      I2 => x_5_IBUF_2,
      O => N14
    );
  U1_U1_U5_Mmux_output751_SW1 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => y_4_IBUF_11,
      I1 => U1_U2_in_sel_41,
      I2 => x_4_IBUF_3,
      O => N17
    );
  U1_U1_U5_Mmux_output741_SW1 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => y_3_IBUF_12,
      I1 => U1_U2_in_sel_41,
      I2 => x_3_IBUF_4,
      O => N20
    );
  U1_U1_U5_Mmux_output731_SW1 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => y_2_IBUF_13,
      I1 => U1_U2_in_sel_41,
      I2 => x_2_IBUF_5,
      O => N23
    );
  U1_U2_cState_FSM_FFd2_In1 : LUT6
    generic map(
      INIT => X"0080A0A880A0A8AA"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd3_82,
      I1 => U1_U1_BUS993(6),
      I2 => U1_U1_BUS993(7),
      I3 => U1_U1_BUS295(6),
      I4 => U1_U1_BUS295(7),
      I5 => U1_U1_x_lt_y2,
      O => U1_U2_cState_FSM_FFd2_In
    );
  U1_U2_cState_FSM_FFd1_In1 : LUT6
    generic map(
      INIT => X"AA2A0A022A0A0200"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd3_82,
      I1 => U1_U1_BUS993(6),
      I2 => U1_U1_BUS993(7),
      I3 => U1_U1_BUS295(6),
      I4 => U1_U1_BUS295(7),
      I5 => U1_U1_x_lt_y2,
      O => U1_U2_cState_FSM_FFd1_In
    );
  U1_U1_U5_Mmux_output721_SW1 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => y_1_IBUF_14,
      I1 => U1_U2_in_sel_41,
      I2 => x_1_IBUF_6,
      O => N26
    );
  U1_U1_U2_Mmux_output21 : LUT6
    generic map(
      INIT => X"ABABABA8A8ABA8A8"
    )
    port map (
      I0 => N26,
      I1 => U1_U2_cState_FSM_FFd6_In,
      I2 => U1_U2_cState_FSM_FFd6_51,
      I3 => U1_BUS289_6_Q,
      I4 => N25,
      I5 => U1_U1_U5_Mmux_output6_split(1),
      O => U1_U1_BUS318(1)
    );
  U1_U1_U2_Mmux_output81 : LUT6
    generic map(
      INIT => X"ABABABA8A8ABA8A8"
    )
    port map (
      I0 => N8,
      I1 => U1_U2_cState_FSM_FFd6_In,
      I2 => U1_U2_cState_FSM_FFd6_51,
      I3 => U1_BUS289_6_Q,
      I4 => N7,
      I5 => U1_U1_U5_Mmux_output6_split(7),
      O => U1_U1_BUS318(7)
    );
  U1_U1_U2_Mmux_output71 : LUT6
    generic map(
      INIT => X"ABABABA8A8ABA8A8"
    )
    port map (
      I0 => N11,
      I1 => U1_U2_cState_FSM_FFd6_In,
      I2 => U1_U2_cState_FSM_FFd6_51,
      I3 => U1_BUS289_6_Q,
      I4 => N10,
      I5 => U1_U1_U5_Mmux_output6_split(6),
      O => U1_U1_BUS318(6)
    );
  U1_U1_U2_Mmux_output51 : LUT6
    generic map(
      INIT => X"ABABABA8A8ABA8A8"
    )
    port map (
      I0 => N17,
      I1 => U1_U2_cState_FSM_FFd6_In,
      I2 => U1_U2_cState_FSM_FFd6_51,
      I3 => U1_BUS289_6_Q,
      I4 => N16,
      I5 => U1_U1_U5_Mmux_output6_split(4),
      O => U1_U1_BUS318(4)
    );
  U1_U1_U2_Mmux_output31 : LUT6
    generic map(
      INIT => X"ABABABA8A8ABA8A8"
    )
    port map (
      I0 => N23,
      I1 => U1_U2_cState_FSM_FFd6_In,
      I2 => U1_U2_cState_FSM_FFd6_51,
      I3 => U1_BUS289_6_Q,
      I4 => N22,
      I5 => U1_U1_U5_Mmux_output6_split(2),
      O => U1_U1_BUS318(2)
    );
  U1_U1_U5_Mmux_output711_SW1 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => y_0_IBUF_15,
      I1 => U1_U2_in_sel_41,
      I2 => x_0_IBUF_7,
      O => N29
    );
  U1_U1_U2_Mmux_output61 : LUT6
    generic map(
      INIT => X"ABABABA8A8ABA8A8"
    )
    port map (
      I0 => N14,
      I1 => U1_U2_cState_FSM_FFd6_In,
      I2 => U1_U2_cState_FSM_FFd6_51,
      I3 => U1_BUS289_6_Q,
      I4 => N13,
      I5 => U1_U1_U5_Mmux_output6_split(5),
      O => U1_U1_BUS318(5)
    );
  U1_U1_U2_Mmux_output41 : LUT6
    generic map(
      INIT => X"ABABABA8A8ABA8A8"
    )
    port map (
      I0 => N20,
      I1 => U1_U2_cState_FSM_FFd6_In,
      I2 => U1_U2_cState_FSM_FFd6_51,
      I3 => U1_BUS289_6_Q,
      I4 => N19,
      I5 => U1_U1_U5_Mmux_output6_split(3),
      O => U1_U1_BUS318(3)
    );
  U1_U1_U5_Mmux_output6_rs_lut_2_Q : LUT5
    generic map(
      INIT => X"FECC0133"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(2),
      I4 => U1_U1_BUS295(2),
      O => U1_U1_U5_Mmux_output6_rs_lut(2)
    );
  U1_U1_U5_Mmux_output6_rs_lut_3_Q : LUT5
    generic map(
      INIT => X"FECC0133"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(3),
      I4 => U1_U1_BUS295(3),
      O => U1_U1_U5_Mmux_output6_rs_lut(3)
    );
  U1_U1_U5_Mmux_output6_rs_lut_0_Q : LUT5
    generic map(
      INIT => X"3301CCFE"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(0),
      I4 => U1_U1_BUS295(0),
      O => U1_U1_U5_Mmux_output6_rs_lut(0)
    );
  U1_U1_U5_Mmux_output6_rs_lut_1_Q : LUT5
    generic map(
      INIT => X"FECC0133"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(1),
      I4 => U1_U1_BUS295(1),
      O => U1_U1_U5_Mmux_output6_rs_lut(1)
    );
  U1_U1_U7_output_7_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFFB37373733"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(7),
      I4 => U1_U1_BUS295(7),
      I5 => U1_U1_U5_Mmux_output6_split(7),
      O => U1_U1_BUS215(7)
    );
  U1_U1_U7_output_6_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFFB37373733"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(6),
      I4 => U1_U1_BUS295(6),
      I5 => U1_U1_U5_Mmux_output6_split(6),
      O => U1_U1_BUS215(6)
    );
  U1_U1_U7_output_5_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFFB37373733"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(5),
      I4 => U1_U1_BUS295(5),
      I5 => U1_U1_U5_Mmux_output6_split(5),
      O => U1_U1_BUS215(5)
    );
  U1_U1_U7_output_4_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFFB37373733"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(4),
      I4 => U1_U1_BUS295(4),
      I5 => U1_U1_U5_Mmux_output6_split(4),
      O => U1_U1_BUS215(4)
    );
  U1_U1_U7_output_3_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFFB37373733"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(3),
      I4 => U1_U1_BUS295(3),
      I5 => U1_U1_U5_Mmux_output6_split(3),
      O => U1_U1_BUS215(3)
    );
  U1_U1_U7_output_2_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFFB37373733"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(2),
      I4 => U1_U1_BUS295(2),
      I5 => U1_U1_U5_Mmux_output6_split(2),
      O => U1_U1_BUS215(2)
    );
  U1_U1_U7_output_1_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFFFFFB37373733"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(1),
      I4 => U1_U1_BUS295(1),
      I5 => U1_U1_U5_Mmux_output6_split(1),
      O => U1_U1_BUS215(1)
    );
  U1_U1_U5_Mmux_output6_rs_lut_4_Q : LUT5
    generic map(
      INIT => X"FECC0133"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(4),
      I4 => U1_U1_BUS295(4),
      O => U1_U1_U5_Mmux_output6_rs_lut(4)
    );
  U1_U1_U5_Mmux_output6_rs_lut_5_Q : LUT5
    generic map(
      INIT => X"FECC0133"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(5),
      I4 => U1_U1_BUS295(5),
      O => U1_U1_U5_Mmux_output6_rs_lut(5)
    );
  U1_U1_U2_Mmux_output11 : LUT6
    generic map(
      INIT => X"ABABABA8A8ABA8A8"
    )
    port map (
      I0 => N29,
      I1 => U1_U2_cState_FSM_FFd6_In,
      I2 => U1_U2_cState_FSM_FFd6_51,
      I3 => U1_BUS289_6_Q,
      I4 => N28,
      I5 => U1_U1_U5_Mmux_output6_split(0),
      O => U1_U1_BUS318(0)
    );
  U1_U1_U5_Mmux_output6_rs_lut_6_Q : LUT5
    generic map(
      INIT => X"FECC0133"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(6),
      I4 => U1_U1_BUS295(6),
      O => U1_U1_U5_Mmux_output6_rs_lut(6)
    );
  U1_U1_U5_Mmux_output751_SW0 : LUT5
    generic map(
      INIT => X"CCFEFF01"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(4),
      I4 => U1_U1_BUS295(4),
      O => N16
    );
  U1_U1_U5_Mmux_output731_SW0 : LUT5
    generic map(
      INIT => X"CCFEFF01"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(2),
      I4 => U1_U1_BUS295(2),
      O => N22
    );
  U1_U1_U5_Mmux_output711_SW0 : LUT5
    generic map(
      INIT => X"CCFEFF01"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(0),
      I4 => U1_U1_BUS295(0),
      O => N28
    );
  U1_U1_U5_Mmux_output761_SW0 : LUT5
    generic map(
      INIT => X"CCFEFF01"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(5),
      I4 => U1_U1_BUS295(5),
      O => N13
    );
  U1_U1_U5_Mmux_output741_SW0 : LUT5
    generic map(
      INIT => X"CCFEFF01"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(3),
      I4 => U1_U1_BUS295(3),
      O => N19
    );
  U1_U1_U5_Mmux_output721_SW0 : LUT5
    generic map(
      INIT => X"CCFEFF01"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd2_83,
      I1 => U1_U2_cState_FSM_FFd4_42,
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U1_BUS993(1),
      I4 => U1_U1_BUS295(1),
      O => N25
    );
  U1_U1_U5_Mmux_output6_rs_lut_7_Q : LUT5
    generic map(
      INIT => X"AAAA9995"
    )
    port map (
      I0 => U1_U1_BUS295(7),
      I1 => U1_U1_BUS993(7),
      I2 => U1_U2_cState_FSM_FFd2_83,
      I3 => U1_U2_cState_FSM_FFd1_44,
      I4 => U1_U2_cState_FSM_FFd4_42,
      O => U1_U1_U5_Mmux_output6_rs_lut(7)
    );
  U1_U1_U5_Mmux_output781_SW0 : LUT5
    generic map(
      INIT => X"EEEE6665"
    )
    port map (
      I0 => U1_U1_BUS295(7),
      I1 => U1_U1_BUS993(7),
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U2_cState_FSM_FFd2_83,
      I4 => U1_U2_cState_FSM_FFd4_42,
      O => N7
    );
  U1_U1_U5_Mmux_output771_SW0 : LUT5
    generic map(
      INIT => X"EEEE6665"
    )
    port map (
      I0 => U1_U1_BUS295(6),
      I1 => U1_U1_BUS993(6),
      I2 => U1_U2_cState_FSM_FFd1_44,
      I3 => U1_U2_cState_FSM_FFd2_83,
      I4 => U1_U2_cState_FSM_FFd4_42,
      O => N10
    );
  U1_U1_U7_output_0_LogicTrst1 : LUT6
    generic map(
      INIT => X"FFFE1110FFFFFFFF"
    )
    port map (
      I0 => U1_U2_cState_FSM_FFd1_44,
      I1 => U1_U2_cState_FSM_FFd2_83,
      I2 => U1_U1_BUS993(0),
      I3 => U1_U1_BUS295(0),
      I4 => U1_U1_U5_Mmux_output6_split(0),
      I5 => U1_U2_cState_FSM_FFd4_42,
      O => U1_U1_BUS215(0)
    );
  U4_Mcount_gen_display_d_clk_lut_0_INV_0 : INV
    port map (
      I => U4_gen_display_d_clk(0),
      O => U4_Mcount_gen_display_d_clk_lut(0)
    );
  U4_Mcount_cur_digit_xor_0_11_INV_0 : INV
    port map (
      I => U4_cur_digit(0),
      O => Result(0)
    );
  U1_U1_U5_sel_0_inv2_INV_0 : INV
    port map (
      I => U1_U2_cState_FSM_FFd4_42,
      O => U1_U1_U5_sel_0_inv
    );

end STRUCTURE;

