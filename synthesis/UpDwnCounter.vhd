--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: UpDwnCounter.vhd
-- /___/   /\     Timestamp: Tue Nov 14 20:32:12 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -ofmt vhdl -intstyle silent -w UpDwnCounter.ngc UpDwnCounter.vhd 
-- Device	: xc7a100tcsg324-3
-- Input file	: UpDwnCounter.ngc
-- Output file	: UpDwnCounter.vhd
-- # of Entities	: 1
-- Design Name	: UpDwnCounter
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

entity UpDwnCounter is
  port (
    clock : in STD_LOGIC := 'X'; 
    enable : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    upDwn : in STD_LOGIC := 'X'; 
    digits : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    display : out STD_LOGIC_VECTOR ( 6 downto 0 ) 
  );
end UpDwnCounter;

architecture STRUCTURE of UpDwnCounter is
  signal clock_IBUFG_0 : STD_LOGIC; 
  signal enable_IBUF_1 : STD_LOGIC; 
  signal reset_IBUF_2 : STD_LOGIC; 
  signal upDwn_IBUF_3 : STD_LOGIC; 
  signal NET490 : STD_LOGIC; 
  signal U2_clk_bit_5 : STD_LOGIC; 
  signal display_6_OBUF_6 : STD_LOGIC; 
  signal display_5_OBUF_7 : STD_LOGIC; 
  signal display_4_OBUF_8 : STD_LOGIC; 
  signal display_3_OBUF_9 : STD_LOGIC; 
  signal display_2_OBUF_10 : STD_LOGIC; 
  signal display_1_OBUF_11 : STD_LOGIC; 
  signal display_0_OBUF_12 : STD_LOGIC; 
  signal digits_3_OBUF_13 : STD_LOGIC; 
  signal digits_2_OBUF_14 : STD_LOGIC; 
  signal digits_1_OBUF_15 : STD_LOGIC; 
  signal digits_0_OBUF_16 : STD_LOGIC; 
  signal U3_cnt_tmp_3_17 : STD_LOGIC; 
  signal U3_cnt_tmp_2_18 : STD_LOGIC; 
  signal U3_cnt_tmp_1_19 : STD_LOGIC; 
  signal U3_cnt_tmp_0_20 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U5_GND_15_o_GND_15_o_equal_1_o : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_0 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_1 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_2 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_3 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_4 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_5 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_6 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_7 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_8 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_9 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_10 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_11_78 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_12 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_13 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_14 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_15 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_16 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_17 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_18 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_19 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_20 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_21_98 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_22 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_23 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal U3_currentState_FSM_FFd1_In : STD_LOGIC; 
  signal U3_currentState_FSM_FFd2_In : STD_LOGIC; 
  signal U3_currentState_FSM_FFd3_In : STD_LOGIC; 
  signal U3_currentState_FSM_FFd2_155 : STD_LOGIC; 
  signal U3_currentState_FSM_FFd1_156 : STD_LOGIC; 
  signal U3_currentState_FSM_FFd3_157 : STD_LOGIC; 
  signal U3_currentState_1_X_9_o_Mux_18_o : STD_LOGIC; 
  signal U3_currentState_1_X_9_o_Mux_16_o : STD_LOGIC; 
  signal U3_currentState_1_X_9_o_Mux_14_o : STD_LOGIC; 
  signal U3_currentState_1_X_9_o_Mux_12_o : STD_LOGIC; 
  signal U3_currentState_1_PWR_11_o_Mux_13_o : STD_LOGIC; 
  signal U5_GND_15_o_GND_15_o_equal_1_o_13_1_164 : STD_LOGIC; 
  signal U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q : STD_LOGIC; 
  signal U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166 : STD_LOGIC; 
  signal U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167 : STD_LOGIC; 
  signal U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_1_rt_184 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_2_rt_185 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_3_rt_186 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_4_rt_187 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_5_rt_188 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_6_rt_189 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_7_rt_190 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_8_rt_191 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_9_rt_192 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_10_rt_193 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_11_rt_194 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_12_rt_195 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_1_rt_196 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_2_rt_197 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_3_rt_198 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_4_rt_199 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_5_rt_200 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_6_rt_201 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_7_rt_202 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_8_rt_203 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_9_rt_204 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_10_rt_205 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_11_rt_206 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_12_rt_207 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_13_rt_208 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_14_rt_209 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_15_rt_210 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_16_rt_211 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_17_rt_212 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_18_rt_213 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_19_rt_214 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_20_rt_215 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_21_rt_216 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_22_rt_217 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_xor_13_rt_218 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_xor_23_rt_219 : STD_LOGIC; 
  signal U2_clk_bit_dpot_220 : STD_LOGIC; 
  signal U2_clk_cnt : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal U5_gen_display_d_clk : STD_LOGIC_VECTOR ( 13 downto 7 ); 
  signal Result : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal U5_Mcount_gen_display_d_clk_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U5_Mcount_gen_display_d_clk_cy : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal U2_Mcount_clk_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U2_Mcount_clk_cnt_cy : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal U5_cur_digit : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U5_GND_15_o_GND_15_o_equal_1_o_0 : STD_LOGIC_VECTOR ( 13 downto 13 ); 
begin
  XST_GND : GND
    port map (
      G => U2_clk_cnt(24)
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  U2_clk_bit : FDCE
    port map (
      C => NET490,
      CE => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      CLR => reset_IBUF_2,
      D => U2_clk_bit_dpot_220,
      Q => U2_clk_bit_5
    );
  U2_clk_cnt_0 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_0,
      Q => U2_clk_cnt(0)
    );
  U2_clk_cnt_1 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_1,
      Q => U2_clk_cnt(1)
    );
  U2_clk_cnt_2 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_2,
      Q => U2_clk_cnt(2)
    );
  U2_clk_cnt_3 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_3,
      Q => U2_clk_cnt(3)
    );
  U2_clk_cnt_4 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_4,
      Q => U2_clk_cnt(4)
    );
  U2_clk_cnt_5 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_5,
      Q => U2_clk_cnt(5)
    );
  U2_clk_cnt_6 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_6,
      Q => U2_clk_cnt(6)
    );
  U2_clk_cnt_7 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_7,
      Q => U2_clk_cnt(7)
    );
  U2_clk_cnt_8 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_8,
      Q => U2_clk_cnt(8)
    );
  U2_clk_cnt_9 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_9,
      Q => U2_clk_cnt(9)
    );
  U2_clk_cnt_10 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_10,
      Q => U2_clk_cnt(10)
    );
  U2_clk_cnt_11 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_11_78,
      Q => U2_clk_cnt(11)
    );
  U2_clk_cnt_12 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_12,
      Q => U2_clk_cnt(12)
    );
  U2_clk_cnt_13 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_13,
      Q => U2_clk_cnt(13)
    );
  U2_clk_cnt_14 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_14,
      Q => U2_clk_cnt(14)
    );
  U2_clk_cnt_15 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_15,
      Q => U2_clk_cnt(15)
    );
  U2_clk_cnt_16 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_16,
      Q => U2_clk_cnt(16)
    );
  U2_clk_cnt_17 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_17,
      Q => U2_clk_cnt(17)
    );
  U2_clk_cnt_18 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_18,
      Q => U2_clk_cnt(18)
    );
  U2_clk_cnt_19 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_19,
      Q => U2_clk_cnt(19)
    );
  U2_clk_cnt_20 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_20,
      Q => U2_clk_cnt(20)
    );
  U2_clk_cnt_21 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_21_98,
      Q => U2_clk_cnt(21)
    );
  U2_clk_cnt_22 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_22,
      Q => U2_clk_cnt(22)
    );
  U2_clk_cnt_23 : FDC
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => U2_Mcount_clk_cnt_eqn_23,
      Q => U2_clk_cnt(23)
    );
  U5_cur_digit_0 : FDCE
    port map (
      C => NET490,
      CE => U5_GND_15_o_GND_15_o_equal_1_o,
      CLR => reset_IBUF_2,
      D => Result_0_1,
      Q => U5_cur_digit(0)
    );
  U5_cur_digit_1 : FDCE
    port map (
      C => NET490,
      CE => U5_GND_15_o_GND_15_o_equal_1_o,
      CLR => reset_IBUF_2,
      D => Result_1_1,
      Q => U5_cur_digit(1)
    );
  U5_gen_display_d_clk_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => Result_7_1,
      Q => U5_gen_display_d_clk(7)
    );
  U5_gen_display_d_clk_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => Result_8_1,
      Q => U5_gen_display_d_clk(8)
    );
  U5_gen_display_d_clk_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => Result_9_1,
      Q => U5_gen_display_d_clk(9)
    );
  U5_gen_display_d_clk_10 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => Result_10_1,
      Q => U5_gen_display_d_clk(10)
    );
  U5_gen_display_d_clk_11 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => Result_11_1,
      Q => U5_gen_display_d_clk(11)
    );
  U5_gen_display_d_clk_12 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => Result_12_1,
      Q => U5_gen_display_d_clk(12)
    );
  U5_gen_display_d_clk_13 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => NET490,
      CLR => reset_IBUF_2,
      D => Result_13_1,
      Q => U5_gen_display_d_clk(13)
    );
  U5_Mcount_gen_display_d_clk_cy_0_Q : MUXCY
    port map (
      CI => U2_clk_cnt(24),
      DI => N1,
      S => U5_Mcount_gen_display_d_clk_lut(0),
      O => U5_Mcount_gen_display_d_clk_cy(0)
    );
  U5_Mcount_gen_display_d_clk_cy_1_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(0),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_1_rt_184,
      O => U5_Mcount_gen_display_d_clk_cy(1)
    );
  U5_Mcount_gen_display_d_clk_cy_2_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(1),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_2_rt_185,
      O => U5_Mcount_gen_display_d_clk_cy(2)
    );
  U5_Mcount_gen_display_d_clk_cy_3_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(2),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_3_rt_186,
      O => U5_Mcount_gen_display_d_clk_cy(3)
    );
  U5_Mcount_gen_display_d_clk_cy_4_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(3),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_4_rt_187,
      O => U5_Mcount_gen_display_d_clk_cy(4)
    );
  U5_Mcount_gen_display_d_clk_cy_5_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(4),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_5_rt_188,
      O => U5_Mcount_gen_display_d_clk_cy(5)
    );
  U5_Mcount_gen_display_d_clk_cy_6_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(5),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_6_rt_189,
      O => U5_Mcount_gen_display_d_clk_cy(6)
    );
  U5_Mcount_gen_display_d_clk_cy_7_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(6),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_7_rt_190,
      O => U5_Mcount_gen_display_d_clk_cy(7)
    );
  U5_Mcount_gen_display_d_clk_xor_7_Q : XORCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(6),
      LI => U5_Mcount_gen_display_d_clk_cy_7_rt_190,
      O => Result_7_1
    );
  U5_Mcount_gen_display_d_clk_cy_8_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(7),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_8_rt_191,
      O => U5_Mcount_gen_display_d_clk_cy(8)
    );
  U5_Mcount_gen_display_d_clk_xor_8_Q : XORCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(7),
      LI => U5_Mcount_gen_display_d_clk_cy_8_rt_191,
      O => Result_8_1
    );
  U5_Mcount_gen_display_d_clk_cy_9_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(8),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_9_rt_192,
      O => U5_Mcount_gen_display_d_clk_cy(9)
    );
  U5_Mcount_gen_display_d_clk_xor_9_Q : XORCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(8),
      LI => U5_Mcount_gen_display_d_clk_cy_9_rt_192,
      O => Result_9_1
    );
  U5_Mcount_gen_display_d_clk_cy_10_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(9),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_10_rt_193,
      O => U5_Mcount_gen_display_d_clk_cy(10)
    );
  U5_Mcount_gen_display_d_clk_xor_10_Q : XORCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(9),
      LI => U5_Mcount_gen_display_d_clk_cy_10_rt_193,
      O => Result_10_1
    );
  U5_Mcount_gen_display_d_clk_cy_11_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(10),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_11_rt_194,
      O => U5_Mcount_gen_display_d_clk_cy(11)
    );
  U5_Mcount_gen_display_d_clk_xor_11_Q : XORCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(10),
      LI => U5_Mcount_gen_display_d_clk_cy_11_rt_194,
      O => Result_11_1
    );
  U5_Mcount_gen_display_d_clk_cy_12_Q : MUXCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(11),
      DI => U2_clk_cnt(24),
      S => U5_Mcount_gen_display_d_clk_cy_12_rt_195,
      O => U5_Mcount_gen_display_d_clk_cy(12)
    );
  U5_Mcount_gen_display_d_clk_xor_12_Q : XORCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(11),
      LI => U5_Mcount_gen_display_d_clk_cy_12_rt_195,
      O => Result_12_1
    );
  U5_Mcount_gen_display_d_clk_xor_13_Q : XORCY
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy(12),
      LI => U5_Mcount_gen_display_d_clk_xor_13_rt_218,
      O => Result_13_1
    );
  U2_Mcount_clk_cnt_cy_0_Q : MUXCY
    port map (
      CI => U2_clk_cnt(24),
      DI => N1,
      S => U2_Mcount_clk_cnt_lut(0),
      O => U2_Mcount_clk_cnt_cy(0)
    );
  U2_Mcount_clk_cnt_xor_0_Q : XORCY
    port map (
      CI => U2_clk_cnt(24),
      LI => U2_Mcount_clk_cnt_lut(0),
      O => Result(0)
    );
  U2_Mcount_clk_cnt_cy_1_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(0),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_1_rt_196,
      O => U2_Mcount_clk_cnt_cy(1)
    );
  U2_Mcount_clk_cnt_xor_1_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(0),
      LI => U2_Mcount_clk_cnt_cy_1_rt_196,
      O => Result(1)
    );
  U2_Mcount_clk_cnt_cy_2_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(1),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_2_rt_197,
      O => U2_Mcount_clk_cnt_cy(2)
    );
  U2_Mcount_clk_cnt_xor_2_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(1),
      LI => U2_Mcount_clk_cnt_cy_2_rt_197,
      O => Result(2)
    );
  U2_Mcount_clk_cnt_cy_3_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(2),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_3_rt_198,
      O => U2_Mcount_clk_cnt_cy(3)
    );
  U2_Mcount_clk_cnt_xor_3_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(2),
      LI => U2_Mcount_clk_cnt_cy_3_rt_198,
      O => Result(3)
    );
  U2_Mcount_clk_cnt_cy_4_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(3),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_4_rt_199,
      O => U2_Mcount_clk_cnt_cy(4)
    );
  U2_Mcount_clk_cnt_xor_4_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(3),
      LI => U2_Mcount_clk_cnt_cy_4_rt_199,
      O => Result(4)
    );
  U2_Mcount_clk_cnt_cy_5_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(4),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_5_rt_200,
      O => U2_Mcount_clk_cnt_cy(5)
    );
  U2_Mcount_clk_cnt_xor_5_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(4),
      LI => U2_Mcount_clk_cnt_cy_5_rt_200,
      O => Result(5)
    );
  U2_Mcount_clk_cnt_cy_6_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(5),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_6_rt_201,
      O => U2_Mcount_clk_cnt_cy(6)
    );
  U2_Mcount_clk_cnt_xor_6_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(5),
      LI => U2_Mcount_clk_cnt_cy_6_rt_201,
      O => Result(6)
    );
  U2_Mcount_clk_cnt_cy_7_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(6),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_7_rt_202,
      O => U2_Mcount_clk_cnt_cy(7)
    );
  U2_Mcount_clk_cnt_xor_7_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(6),
      LI => U2_Mcount_clk_cnt_cy_7_rt_202,
      O => Result(7)
    );
  U2_Mcount_clk_cnt_cy_8_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(7),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_8_rt_203,
      O => U2_Mcount_clk_cnt_cy(8)
    );
  U2_Mcount_clk_cnt_xor_8_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(7),
      LI => U2_Mcount_clk_cnt_cy_8_rt_203,
      O => Result(8)
    );
  U2_Mcount_clk_cnt_cy_9_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(8),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_9_rt_204,
      O => U2_Mcount_clk_cnt_cy(9)
    );
  U2_Mcount_clk_cnt_xor_9_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(8),
      LI => U2_Mcount_clk_cnt_cy_9_rt_204,
      O => Result(9)
    );
  U2_Mcount_clk_cnt_cy_10_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(9),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_10_rt_205,
      O => U2_Mcount_clk_cnt_cy(10)
    );
  U2_Mcount_clk_cnt_xor_10_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(9),
      LI => U2_Mcount_clk_cnt_cy_10_rt_205,
      O => Result(10)
    );
  U2_Mcount_clk_cnt_cy_11_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(10),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_11_rt_206,
      O => U2_Mcount_clk_cnt_cy(11)
    );
  U2_Mcount_clk_cnt_xor_11_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(10),
      LI => U2_Mcount_clk_cnt_cy_11_rt_206,
      O => Result(11)
    );
  U2_Mcount_clk_cnt_cy_12_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(11),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_12_rt_207,
      O => U2_Mcount_clk_cnt_cy(12)
    );
  U2_Mcount_clk_cnt_xor_12_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(11),
      LI => U2_Mcount_clk_cnt_cy_12_rt_207,
      O => Result(12)
    );
  U2_Mcount_clk_cnt_cy_13_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(12),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_13_rt_208,
      O => U2_Mcount_clk_cnt_cy(13)
    );
  U2_Mcount_clk_cnt_xor_13_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(12),
      LI => U2_Mcount_clk_cnt_cy_13_rt_208,
      O => Result(13)
    );
  U2_Mcount_clk_cnt_cy_14_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(13),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_14_rt_209,
      O => U2_Mcount_clk_cnt_cy(14)
    );
  U2_Mcount_clk_cnt_xor_14_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(13),
      LI => U2_Mcount_clk_cnt_cy_14_rt_209,
      O => Result(14)
    );
  U2_Mcount_clk_cnt_cy_15_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(14),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_15_rt_210,
      O => U2_Mcount_clk_cnt_cy(15)
    );
  U2_Mcount_clk_cnt_xor_15_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(14),
      LI => U2_Mcount_clk_cnt_cy_15_rt_210,
      O => Result(15)
    );
  U2_Mcount_clk_cnt_cy_16_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(15),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_16_rt_211,
      O => U2_Mcount_clk_cnt_cy(16)
    );
  U2_Mcount_clk_cnt_xor_16_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(15),
      LI => U2_Mcount_clk_cnt_cy_16_rt_211,
      O => Result(16)
    );
  U2_Mcount_clk_cnt_cy_17_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(16),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_17_rt_212,
      O => U2_Mcount_clk_cnt_cy(17)
    );
  U2_Mcount_clk_cnt_xor_17_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(16),
      LI => U2_Mcount_clk_cnt_cy_17_rt_212,
      O => Result(17)
    );
  U2_Mcount_clk_cnt_cy_18_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(17),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_18_rt_213,
      O => U2_Mcount_clk_cnt_cy(18)
    );
  U2_Mcount_clk_cnt_xor_18_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(17),
      LI => U2_Mcount_clk_cnt_cy_18_rt_213,
      O => Result(18)
    );
  U2_Mcount_clk_cnt_cy_19_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(18),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_19_rt_214,
      O => U2_Mcount_clk_cnt_cy(19)
    );
  U2_Mcount_clk_cnt_xor_19_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(18),
      LI => U2_Mcount_clk_cnt_cy_19_rt_214,
      O => Result(19)
    );
  U2_Mcount_clk_cnt_cy_20_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(19),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_20_rt_215,
      O => U2_Mcount_clk_cnt_cy(20)
    );
  U2_Mcount_clk_cnt_xor_20_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(19),
      LI => U2_Mcount_clk_cnt_cy_20_rt_215,
      O => Result(20)
    );
  U2_Mcount_clk_cnt_cy_21_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(20),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_21_rt_216,
      O => U2_Mcount_clk_cnt_cy(21)
    );
  U2_Mcount_clk_cnt_xor_21_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(20),
      LI => U2_Mcount_clk_cnt_cy_21_rt_216,
      O => Result(21)
    );
  U2_Mcount_clk_cnt_cy_22_Q : MUXCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(21),
      DI => U2_clk_cnt(24),
      S => U2_Mcount_clk_cnt_cy_22_rt_217,
      O => U2_Mcount_clk_cnt_cy(22)
    );
  U2_Mcount_clk_cnt_xor_22_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(21),
      LI => U2_Mcount_clk_cnt_cy_22_rt_217,
      O => Result(22)
    );
  U2_Mcount_clk_cnt_xor_23_Q : XORCY
    port map (
      CI => U2_Mcount_clk_cnt_cy(22),
      LI => U2_Mcount_clk_cnt_xor_23_rt_219,
      O => Result(23)
    );
  U1 : BUFG
    port map (
      O => NET490,
      I => clock_IBUFG_0
    );
  U3_currentState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_clk_bit_5,
      CLR => reset_IBUF_2,
      D => U3_currentState_FSM_FFd1_In,
      Q => U3_currentState_FSM_FFd1_156
    );
  U3_currentState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U2_clk_bit_5,
      CLR => reset_IBUF_2,
      D => U3_currentState_FSM_FFd2_In,
      Q => U3_currentState_FSM_FFd2_155
    );
  U3_currentState_FSM_FFd3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => U2_clk_bit_5,
      D => U3_currentState_FSM_FFd3_In,
      PRE => reset_IBUF_2,
      Q => U3_currentState_FSM_FFd3_157
    );
  U3_cnt_tmp_0 : LD
    port map (
      D => U3_currentState_1_X_9_o_Mux_18_o,
      G => U3_currentState_1_PWR_11_o_Mux_13_o,
      Q => U3_cnt_tmp_0_20
    );
  U3_cnt_tmp_2 : LD
    port map (
      D => U3_currentState_1_X_9_o_Mux_14_o,
      G => U3_currentState_1_PWR_11_o_Mux_13_o,
      Q => U3_cnt_tmp_2_18
    );
  U3_cnt_tmp_3 : LD
    port map (
      D => U3_currentState_1_X_9_o_Mux_12_o,
      G => U3_currentState_1_PWR_11_o_Mux_13_o,
      Q => U3_cnt_tmp_3_17
    );
  U3_cnt_tmp_1 : LD
    port map (
      D => U3_currentState_1_X_9_o_Mux_16_o,
      G => U3_currentState_1_PWR_11_o_Mux_13_o,
      Q => U3_cnt_tmp_1_19
    );
  U5_Mram_digits12 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U5_cur_digit(1),
      I1 => U5_cur_digit(0),
      O => digits_0_OBUF_16
    );
  U5_Mram_digits111 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U5_cur_digit(0),
      I1 => U5_cur_digit(1),
      O => digits_1_OBUF_15
    );
  U5_Mram_digits21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U5_cur_digit(1),
      I1 => U5_cur_digit(0),
      O => digits_2_OBUF_14
    );
  U5_Mram_digits31 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U5_cur_digit(0),
      I1 => U5_cur_digit(1),
      O => digits_3_OBUF_13
    );
  U5_Mcount_cur_digit_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U5_cur_digit(1),
      I1 => U5_cur_digit(0),
      O => Result_1_1
    );
  display_5_1 : LUT6
    generic map(
      INIT => X"0010001110000010"
    )
    port map (
      I0 => U5_cur_digit(0),
      I1 => U5_cur_digit(1),
      I2 => U3_cnt_tmp_0_20,
      I3 => U3_cnt_tmp_3_17,
      I4 => U3_cnt_tmp_2_18,
      I5 => U3_cnt_tmp_1_19,
      O => display_5_OBUF_7
    );
  display_1_1 : LUT6
    generic map(
      INIT => X"1110001000101000"
    )
    port map (
      I0 => U5_cur_digit(0),
      I1 => U5_cur_digit(1),
      I2 => U3_cnt_tmp_2_18,
      I3 => U3_cnt_tmp_0_20,
      I4 => U3_cnt_tmp_3_17,
      I5 => U3_cnt_tmp_1_19,
      O => display_1_OBUF_11
    );
  display_0_1 : LUT6
    generic map(
      INIT => X"0000100010010010"
    )
    port map (
      I0 => U5_cur_digit(0),
      I1 => U5_cur_digit(1),
      I2 => U3_cnt_tmp_0_20,
      I3 => U3_cnt_tmp_3_17,
      I4 => U3_cnt_tmp_2_18,
      I5 => U3_cnt_tmp_1_19,
      O => display_0_OBUF_12
    );
  display_4_1 : LUT6
    generic map(
      INIT => X"0010001000111010"
    )
    port map (
      I0 => U5_cur_digit(0),
      I1 => U5_cur_digit(1),
      I2 => U3_cnt_tmp_0_20,
      I3 => U3_cnt_tmp_3_17,
      I4 => U3_cnt_tmp_2_18,
      I5 => U3_cnt_tmp_1_19,
      O => display_4_OBUF_8
    );
  display_2_1 : LUT6
    generic map(
      INIT => X"1100000101000000"
    )
    port map (
      I0 => U5_cur_digit(0),
      I1 => U5_cur_digit(1),
      I2 => U3_cnt_tmp_0_20,
      I3 => U3_cnt_tmp_3_17,
      I4 => U3_cnt_tmp_2_18,
      I5 => U3_cnt_tmp_1_19,
      O => display_2_OBUF_10
    );
  display_6_1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4109"
    )
    port map (
      I0 => U3_cnt_tmp_3_17,
      I1 => U3_cnt_tmp_2_18,
      I2 => U3_cnt_tmp_1_19,
      I3 => U3_cnt_tmp_0_20,
      I4 => U5_cur_digit(0),
      I5 => U5_cur_digit(1),
      O => display_6_OBUF_6
    );
  display_3_1 : LUT6
    generic map(
      INIT => X"1001001010000110"
    )
    port map (
      I0 => U5_cur_digit(0),
      I1 => U5_cur_digit(1),
      I2 => U3_cnt_tmp_0_20,
      I3 => U3_cnt_tmp_2_18,
      I4 => U3_cnt_tmp_1_19,
      I5 => U3_cnt_tmp_3_17,
      O => display_3_OBUF_9
    );
  U3_currentState_FSM_FFd2_In1 : LUT5
    generic map(
      INIT => X"AAAA2220"
    )
    port map (
      I0 => enable_IBUF_1,
      I1 => upDwn_IBUF_3,
      I2 => U3_currentState_FSM_FFd1_156,
      I3 => U3_currentState_FSM_FFd2_155,
      I4 => U3_currentState_FSM_FFd3_157,
      O => U3_currentState_FSM_FFd2_In
    );
  U3_Mmux_currentState_1_X_9_o_Mux_18_o_0_1 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => U3_cnt_tmp_0_20,
      I1 => U3_currentState_FSM_FFd1_156,
      I2 => U3_currentState_FSM_FFd2_155,
      O => U3_currentState_1_X_9_o_Mux_18_o
    );
  U3_currentState_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => enable_IBUF_1,
      I1 => upDwn_IBUF_3,
      I2 => U3_currentState_FSM_FFd1_156,
      I3 => U3_currentState_FSM_FFd2_155,
      O => U3_currentState_FSM_FFd1_In
    );
  U3_Mmux_currentState_1_X_9_o_Mux_16_o_0_1 : LUT4
    generic map(
      INIT => X"BE82"
    )
    port map (
      I0 => U3_currentState_FSM_FFd1_156,
      I1 => U3_cnt_tmp_0_20,
      I2 => U3_cnt_tmp_1_19,
      I3 => U3_currentState_FSM_FFd2_155,
      O => U3_currentState_1_X_9_o_Mux_16_o
    );
  U3_Mmux_currentState_1_X_9_o_Mux_14_o_0_1 : LUT5
    generic map(
      INIT => X"DAAE8884"
    )
    port map (
      I0 => U3_cnt_tmp_2_18,
      I1 => U3_currentState_FSM_FFd1_156,
      I2 => U3_cnt_tmp_0_20,
      I3 => U3_cnt_tmp_1_19,
      I4 => U3_currentState_FSM_FFd2_155,
      O => U3_currentState_1_X_9_o_Mux_14_o
    );
  U3_Mmux_currentState_1_X_9_o_Mux_12_o_0_1 : LUT6
    generic map(
      INIT => X"DAAAAAAE88888884"
    )
    port map (
      I0 => U3_cnt_tmp_3_17,
      I1 => U3_currentState_FSM_FFd1_156,
      I2 => U3_cnt_tmp_0_20,
      I3 => U3_cnt_tmp_1_19,
      I4 => U3_cnt_tmp_2_18,
      I5 => U3_currentState_FSM_FFd2_155,
      O => U3_currentState_1_X_9_o_Mux_12_o
    );
  U3_Mmux_currentState_1_PWR_11_o_Mux_13_o_0_1 : LUT5
    generic map(
      INIT => X"FFFF8A80"
    )
    port map (
      I0 => enable_IBUF_1,
      I1 => U3_currentState_FSM_FFd1_156,
      I2 => upDwn_IBUF_3,
      I3 => U3_currentState_FSM_FFd2_155,
      I4 => U3_currentState_FSM_FFd3_157,
      O => U3_currentState_1_PWR_11_o_Mux_13_o
    );
  U5_GND_15_o_GND_15_o_equal_1_o_13_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U2_clk_cnt(1),
      I1 => U2_clk_cnt(0),
      I2 => U2_clk_cnt(2),
      I3 => U2_clk_cnt(3),
      I4 => U2_clk_cnt(4),
      I5 => U2_clk_cnt(5),
      O => U5_GND_15_o_GND_15_o_equal_1_o_0(13)
    );
  U5_GND_15_o_GND_15_o_equal_1_o_13_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U5_gen_display_d_clk(7),
      I1 => U2_clk_cnt(6),
      I2 => U5_gen_display_d_clk(8),
      I3 => U5_gen_display_d_clk(9),
      I4 => U5_gen_display_d_clk(10),
      I5 => U5_gen_display_d_clk(11),
      O => U5_GND_15_o_GND_15_o_equal_1_o_13_1_164
    );
  U5_GND_15_o_GND_15_o_equal_1_o_13_3 : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => U5_gen_display_d_clk(12),
      I1 => U5_gen_display_d_clk(13),
      I2 => U5_GND_15_o_GND_15_o_equal_1_o_13_1_164,
      I3 => U5_GND_15_o_GND_15_o_equal_1_o_0(13),
      O => U5_GND_15_o_GND_15_o_equal_1_o
    );
  U2_clk_cnt_27_GND_8_o_equal_1_o_27_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U2_clk_cnt(12),
      I1 => U2_clk_cnt(10),
      I2 => U2_clk_cnt(19),
      I3 => U2_clk_cnt(15),
      I4 => U2_clk_cnt(23),
      I5 => U2_clk_cnt(20),
      O => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q
    );
  U2_clk_cnt_27_GND_8_o_equal_1_o_27_2 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => U2_clk_cnt(3),
      I1 => U2_clk_cnt(2),
      I2 => U2_clk_cnt(5),
      I3 => U2_clk_cnt(4),
      I4 => U2_clk_cnt(9),
      I5 => U2_clk_cnt(6),
      O => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166
    );
  U2_clk_cnt_27_GND_8_o_equal_1_o_27_3 : LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => U2_clk_cnt(7),
      I1 => U2_clk_cnt(8),
      I2 => U2_clk_cnt(11),
      I3 => U2_clk_cnt(13),
      I4 => U2_clk_cnt(1),
      I5 => U2_clk_cnt(0),
      O => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167
    );
  U2_clk_cnt_27_GND_8_o_equal_1_o_27_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => U2_clk_cnt(16),
      I1 => U2_clk_cnt(14),
      I2 => U2_clk_cnt(17),
      I3 => U2_clk_cnt(18),
      I4 => U2_clk_cnt(21),
      I5 => U2_clk_cnt(22),
      O => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168
    );
  clock_IBUFG : IBUFG
    port map (
      I => clock,
      O => clock_IBUFG_0
    );
  enable_IBUF : IBUF
    port map (
      I => enable,
      O => enable_IBUF_1
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_2
    );
  upDwn_IBUF : IBUF
    port map (
      I => upDwn,
      O => upDwn_IBUF_3
    );
  digits_3_OBUF : OBUF
    port map (
      I => digits_3_OBUF_13,
      O => digits(3)
    );
  digits_2_OBUF : OBUF
    port map (
      I => digits_2_OBUF_14,
      O => digits(2)
    );
  digits_1_OBUF : OBUF
    port map (
      I => digits_1_OBUF_15,
      O => digits(1)
    );
  digits_0_OBUF : OBUF
    port map (
      I => digits_0_OBUF_16,
      O => digits(0)
    );
  display_6_OBUF : OBUF
    port map (
      I => display_6_OBUF_6,
      O => display(6)
    );
  display_5_OBUF : OBUF
    port map (
      I => display_5_OBUF_7,
      O => display(5)
    );
  display_4_OBUF : OBUF
    port map (
      I => display_4_OBUF_8,
      O => display(4)
    );
  display_3_OBUF : OBUF
    port map (
      I => display_3_OBUF_9,
      O => display(3)
    );
  display_2_OBUF : OBUF
    port map (
      I => display_2_OBUF_10,
      O => display(2)
    );
  display_1_OBUF : OBUF
    port map (
      I => display_1_OBUF_11,
      O => display(1)
    );
  display_0_OBUF : OBUF
    port map (
      I => display_0_OBUF_12,
      O => display(0)
    );
  U5_Mcount_gen_display_d_clk_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(1),
      O => U5_Mcount_gen_display_d_clk_cy_1_rt_184
    );
  U5_Mcount_gen_display_d_clk_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(2),
      O => U5_Mcount_gen_display_d_clk_cy_2_rt_185
    );
  U5_Mcount_gen_display_d_clk_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(3),
      O => U5_Mcount_gen_display_d_clk_cy_3_rt_186
    );
  U5_Mcount_gen_display_d_clk_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(4),
      O => U5_Mcount_gen_display_d_clk_cy_4_rt_187
    );
  U5_Mcount_gen_display_d_clk_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(5),
      O => U5_Mcount_gen_display_d_clk_cy_5_rt_188
    );
  U5_Mcount_gen_display_d_clk_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(6),
      O => U5_Mcount_gen_display_d_clk_cy_6_rt_189
    );
  U5_Mcount_gen_display_d_clk_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U5_gen_display_d_clk(7),
      O => U5_Mcount_gen_display_d_clk_cy_7_rt_190
    );
  U5_Mcount_gen_display_d_clk_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U5_gen_display_d_clk(8),
      O => U5_Mcount_gen_display_d_clk_cy_8_rt_191
    );
  U5_Mcount_gen_display_d_clk_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U5_gen_display_d_clk(9),
      O => U5_Mcount_gen_display_d_clk_cy_9_rt_192
    );
  U5_Mcount_gen_display_d_clk_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U5_gen_display_d_clk(10),
      O => U5_Mcount_gen_display_d_clk_cy_10_rt_193
    );
  U5_Mcount_gen_display_d_clk_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U5_gen_display_d_clk(11),
      O => U5_Mcount_gen_display_d_clk_cy_11_rt_194
    );
  U5_Mcount_gen_display_d_clk_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U5_gen_display_d_clk(12),
      O => U5_Mcount_gen_display_d_clk_cy_12_rt_195
    );
  U2_Mcount_clk_cnt_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(1),
      O => U2_Mcount_clk_cnt_cy_1_rt_196
    );
  U2_Mcount_clk_cnt_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(2),
      O => U2_Mcount_clk_cnt_cy_2_rt_197
    );
  U2_Mcount_clk_cnt_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(3),
      O => U2_Mcount_clk_cnt_cy_3_rt_198
    );
  U2_Mcount_clk_cnt_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(4),
      O => U2_Mcount_clk_cnt_cy_4_rt_199
    );
  U2_Mcount_clk_cnt_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(5),
      O => U2_Mcount_clk_cnt_cy_5_rt_200
    );
  U2_Mcount_clk_cnt_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(6),
      O => U2_Mcount_clk_cnt_cy_6_rt_201
    );
  U2_Mcount_clk_cnt_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(7),
      O => U2_Mcount_clk_cnt_cy_7_rt_202
    );
  U2_Mcount_clk_cnt_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(8),
      O => U2_Mcount_clk_cnt_cy_8_rt_203
    );
  U2_Mcount_clk_cnt_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(9),
      O => U2_Mcount_clk_cnt_cy_9_rt_204
    );
  U2_Mcount_clk_cnt_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(10),
      O => U2_Mcount_clk_cnt_cy_10_rt_205
    );
  U2_Mcount_clk_cnt_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(11),
      O => U2_Mcount_clk_cnt_cy_11_rt_206
    );
  U2_Mcount_clk_cnt_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(12),
      O => U2_Mcount_clk_cnt_cy_12_rt_207
    );
  U2_Mcount_clk_cnt_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(13),
      O => U2_Mcount_clk_cnt_cy_13_rt_208
    );
  U2_Mcount_clk_cnt_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(14),
      O => U2_Mcount_clk_cnt_cy_14_rt_209
    );
  U2_Mcount_clk_cnt_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(15),
      O => U2_Mcount_clk_cnt_cy_15_rt_210
    );
  U2_Mcount_clk_cnt_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(16),
      O => U2_Mcount_clk_cnt_cy_16_rt_211
    );
  U2_Mcount_clk_cnt_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(17),
      O => U2_Mcount_clk_cnt_cy_17_rt_212
    );
  U2_Mcount_clk_cnt_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(18),
      O => U2_Mcount_clk_cnt_cy_18_rt_213
    );
  U2_Mcount_clk_cnt_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(19),
      O => U2_Mcount_clk_cnt_cy_19_rt_214
    );
  U2_Mcount_clk_cnt_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(20),
      O => U2_Mcount_clk_cnt_cy_20_rt_215
    );
  U2_Mcount_clk_cnt_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(21),
      O => U2_Mcount_clk_cnt_cy_21_rt_216
    );
  U2_Mcount_clk_cnt_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(22),
      O => U2_Mcount_clk_cnt_cy_22_rt_217
    );
  U5_Mcount_gen_display_d_clk_xor_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U5_gen_display_d_clk(13),
      O => U5_Mcount_gen_display_d_clk_xor_13_rt_218
    );
  U2_Mcount_clk_cnt_xor_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U2_clk_cnt(23),
      O => U2_Mcount_clk_cnt_xor_23_rt_219
    );
  U2_Mcount_clk_cnt_eqn_231 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(23),
      O => U2_Mcount_clk_cnt_eqn_23
    );
  U2_Mcount_clk_cnt_eqn_221 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(22),
      O => U2_Mcount_clk_cnt_eqn_22
    );
  U2_Mcount_clk_cnt_eqn_211 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(21),
      O => U2_Mcount_clk_cnt_eqn_21_98
    );
  U2_Mcount_clk_cnt_eqn_201 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(20),
      O => U2_Mcount_clk_cnt_eqn_20
    );
  U2_Mcount_clk_cnt_eqn_191 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(19),
      O => U2_Mcount_clk_cnt_eqn_19
    );
  U2_Mcount_clk_cnt_eqn_181 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(18),
      O => U2_Mcount_clk_cnt_eqn_18
    );
  U2_Mcount_clk_cnt_eqn_171 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(17),
      O => U2_Mcount_clk_cnt_eqn_17
    );
  U2_Mcount_clk_cnt_eqn_161 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(16),
      O => U2_Mcount_clk_cnt_eqn_16
    );
  U2_Mcount_clk_cnt_eqn_151 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(15),
      O => U2_Mcount_clk_cnt_eqn_15
    );
  U2_Mcount_clk_cnt_eqn_141 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(14),
      O => U2_Mcount_clk_cnt_eqn_14
    );
  U2_Mcount_clk_cnt_eqn_131 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(13),
      O => U2_Mcount_clk_cnt_eqn_13
    );
  U2_Mcount_clk_cnt_eqn_121 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(12),
      O => U2_Mcount_clk_cnt_eqn_12
    );
  U2_Mcount_clk_cnt_eqn_111 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(11),
      O => U2_Mcount_clk_cnt_eqn_11_78
    );
  U2_Mcount_clk_cnt_eqn_101 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(10),
      O => U2_Mcount_clk_cnt_eqn_10
    );
  U2_Mcount_clk_cnt_eqn_91 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(9),
      O => U2_Mcount_clk_cnt_eqn_9
    );
  U2_Mcount_clk_cnt_eqn_81 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(8),
      O => U2_Mcount_clk_cnt_eqn_8
    );
  U2_Mcount_clk_cnt_eqn_71 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(7),
      O => U2_Mcount_clk_cnt_eqn_7
    );
  U2_Mcount_clk_cnt_eqn_61 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(6),
      O => U2_Mcount_clk_cnt_eqn_6
    );
  U2_Mcount_clk_cnt_eqn_51 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(5),
      O => U2_Mcount_clk_cnt_eqn_5
    );
  U2_Mcount_clk_cnt_eqn_41 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(4),
      O => U2_Mcount_clk_cnt_eqn_4
    );
  U2_Mcount_clk_cnt_eqn_31 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(3),
      O => U2_Mcount_clk_cnt_eqn_3
    );
  U2_Mcount_clk_cnt_eqn_21 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(2),
      O => U2_Mcount_clk_cnt_eqn_2
    );
  U2_Mcount_clk_cnt_eqn_11 : LUT5
    generic map(
      INIT => X"7FFF0000"
    )
    port map (
      I0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I4 => Result(1),
      O => U2_Mcount_clk_cnt_eqn_1
    );
  U2_Mcount_clk_cnt_eqn_01 : LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
    port map (
      I0 => Result(0),
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      O => U2_Mcount_clk_cnt_eqn_0
    );
  U2_clk_bit_dpot : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U2_clk_bit_5,
      I1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_166,
      I2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_167,
      I3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_168,
      O => U2_clk_bit_dpot_220
    );
  U5_Mcount_gen_display_d_clk_lut_0_INV_0 : INV
    port map (
      I => U2_clk_cnt(0),
      O => U5_Mcount_gen_display_d_clk_lut(0)
    );
  U2_Mcount_clk_cnt_lut_0_INV_0 : INV
    port map (
      I => U2_clk_cnt(0),
      O => U2_Mcount_clk_cnt_lut(0)
    );
  U5_Mcount_cur_digit_xor_0_11_INV_0 : INV
    port map (
      I => U5_cur_digit(0),
      O => Result_0_1
    );
  U3_currentState_FSM_FFd3_In1_INV_0 : INV
    port map (
      I => enable_IBUF_1,
      O => U3_currentState_FSM_FFd3_In
    );

end STRUCTURE;

