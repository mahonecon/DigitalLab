--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Tue Dec 19 19:56:19 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf finalFPGA.pcf -tpw 0 -rpw 100 -s 3 -ar Structure -insert_pp_buffers true finalFPGA.ncd time_sim.vhd 
-- Device	: 7a100tcsg324-3 (ADVANCED 1.04 2012-07-09)
-- Input file	: finalFPGA.ncd
-- Output file	: time_sim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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

architecture Structure of finalFPGA is
  signal digits_2_OBUF_789 : STD_LOGIC; 
  signal digits_3_OBUF_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd6_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd6_797 : STD_LOGIC; 
  signal U1_BUS289_6_Q : STD_LOGIC; 
  signal U1_U1_U5_Mmux_output6_split_6_0 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd4_802 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd1_803 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd2_804 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal y_4_IBUF_806 : STD_LOGIC; 
  signal x_4_IBUF_807 : STD_LOGIC; 
  signal y_5_IBUF_808 : STD_LOGIC; 
  signal U1_U2_in_sel_809 : STD_LOGIC; 
  signal x_5_IBUF_810 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal NET174 : STD_LOGIC; 
  signal start_IBUF_813 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd8_814 : STD_LOGIC; 
  signal reset_IBUF_815 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal y_6_IBUF_817 : STD_LOGIC; 
  signal x_6_IBUF_818 : STD_LOGIC; 
  signal y_7_IBUF_819 : STD_LOGIC; 
  signal x_7_IBUF_820 : STD_LOGIC; 
  signal display_6_OBUF_821 : STD_LOGIC; 
  signal U4_GND_39_o_GND_39_o_equal_1_o : STD_LOGIC; 
  signal display_4_OBUF_0 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal y_0_IBUF_831 : STD_LOGIC; 
  signal x_0_IBUF_832 : STD_LOGIC; 
  signal y_1_IBUF_833 : STD_LOGIC; 
  signal x_1_IBUF_834 : STD_LOGIC; 
  signal N29_0 : STD_LOGIC; 
  signal U1_BUS289_17_Q : STD_LOGIC; 
  signal U1_U2_cState_2_GND_36_o_Mux_8_o_0 : STD_LOGIC; 
  signal U1_BUS289_15_Q : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd5_839 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal y_2_IBUF_841 : STD_LOGIC; 
  signal x_2_IBUF_842 : STD_LOGIC; 
  signal y_3_IBUF_843 : STD_LOGIC; 
  signal x_3_IBUF_844 : STD_LOGIC; 
  signal N23_0 : STD_LOGIC; 
  signal digits_0_OBUF_846 : STD_LOGIC; 
  signal digits_1_OBUF_0 : STD_LOGIC; 
  signal display_0_OBUF_848 : STD_LOGIC; 
  signal display_3_OBUF_0 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_3_Q_853 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_7_Q_858 : STD_LOGIC; 
  signal U4_Mcount_gen_display_d_clk_cy_11_Q_863 : STD_LOGIC; 
  signal U1_U1_BUS993_0_0 : STD_LOGIC; 
  signal U1_U1_BUS295_0_0 : STD_LOGIC; 
  signal U1_U1_U5_Mmux_output6_split_0_0 : STD_LOGIC; 
  signal U1_U1_U5_sel_0_inv : STD_LOGIC; 
  signal U1_U1_U5_Mmux_output6_split_1_0 : STD_LOGIC; 
  signal U1_U1_BUS993_2_0 : STD_LOGIC; 
  signal U1_U1_BUS295_2_0 : STD_LOGIC; 
  signal U1_U1_U5_Mmux_output6_split_2_0 : STD_LOGIC; 
  signal U1_U1_U5_Mmux_output6_split_3_0 : STD_LOGIC; 
  signal U1_U1_BUS993_4_0 : STD_LOGIC; 
  signal U1_U1_BUS295_4_0 : STD_LOGIC; 
  signal U1_U1_U5_Mmux_output6_split_4_0 : STD_LOGIC; 
  signal U1_U1_U5_Mmux_output6_split_5_0 : STD_LOGIC; 
  signal U1_U1_BUS295_7_0 : STD_LOGIC; 
  signal U1_U1_BUS993_7_0 : STD_LOGIC; 
  signal U1_U1_U5_Mmux_output6_split_7_0 : STD_LOGIC; 
  signal clock_IBUFG_890 : STD_LOGIC; 
  signal display_1_OBUF_891 : STD_LOGIC; 
  signal display_2_OBUF_0 : STD_LOGIC; 
  signal display_5_OBUF_893 : STD_LOGIC; 
  signal U1_BUS289_9_Q : STD_LOGIC; 
  signal U1_BUS289_16_Q : STD_LOGIC; 
  signal U1_BUS289_12_Q : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd3_0 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal U4_GND_39_o_GND_39_o_equal_1_o_13_1_913 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal U1_U1_x_neq_y8 : STD_LOGIC; 
  signal U1_U1_x_neq_y81_916 : STD_LOGIC; 
  signal U1_U1_x_lt_y1_917 : STD_LOGIC; 
  signal U1_NET262 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal U1_U1_U9_Mram_registers11_RAMD_D1_O_0 : STD_LOGIC; 
  signal U1_U1_x_lt_y2 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal U1_U1_U9_Mram_registers2_RAMD_D1_O_0 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal U4_gen_display_d_clk_1_rt_17 : STD_LOGIC; 
  signal U4_gen_display_d_clk_2_rt_13 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal U4_gen_display_d_clk_3_rt_2 : STD_LOGIC; 
  signal U4_gen_display_d_clk_4_rt_49 : STD_LOGIC; 
  signal U4_gen_display_d_clk_5_rt_45 : STD_LOGIC; 
  signal U4_gen_display_d_clk_6_rt_41 : STD_LOGIC; 
  signal U4_gen_display_d_clk_7_rt_30 : STD_LOGIC; 
  signal U4_gen_display_d_clk_8_rt_77 : STD_LOGIC; 
  signal U4_gen_display_d_clk_9_rt_73 : STD_LOGIC; 
  signal U4_gen_display_d_clk_10_rt_69 : STD_LOGIC; 
  signal U4_gen_display_d_clk_11_rt_58 : STD_LOGIC; 
  signal U4_gen_display_d_clk_12_rt_93 : STD_LOGIC; 
  signal U4_gen_display_d_clk_13_rt_90 : STD_LOGIC; 
  signal U1_U1_BUS295_0_rt_125 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd3_272 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd3_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd4_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd5_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd6_In_pack_6 : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd7_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd8_In : STD_LOGIC; 
  signal U1_U1_U9_Mram_registers11_RAMD_D1_O : STD_LOGIC; 
  signal U1_U2_cState_2_GND_36_o_Mux_8_o : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd2_In : STD_LOGIC; 
  signal U1_U2_cState_FSM_FFd1_In : STD_LOGIC; 
  signal N10_pack_4 : STD_LOGIC; 
  signal U1_U1_U9_Mram_registers2_RAMD_D1_O : STD_LOGIC; 
  signal U4_digit_data_0_pack_3 : STD_LOGIC; 
  signal display_4_OBUF_659 : STD_LOGIC; 
  signal display_2_OBUF_680 : STD_LOGIC; 
  signal display_3_OBUF_708 : STD_LOGIC; 
  signal digits_1_OBUF_715 : STD_LOGIC; 
  signal digits_3_OBUF_718 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_gen_display_d_clk_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_xor_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_xor_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_xor_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_display_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digits_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digits_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digits_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_digits_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_display_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_display_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_display_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_display_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_display_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_display_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_U3_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_cState_FSM_FFd8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_cState_FSM_FFd7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_cState_FSM_FFd5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_cState_FSM_FFd4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_cState_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_cState_FSM_FFd6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_cState_FSM_FFd6_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_cState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_cState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U8_Q_tmp_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U8_Q_tmp_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U8_Q_tmp_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U8_Q_tmp_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_RADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_RADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_IN : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_WADR0 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_WADR1 : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U8_Q_tmp_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U8_Q_tmp_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U8_Q_tmp_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U1_U8_Q_tmp_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_in_sel_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U1_U2_in_sel_IN : STD_LOGIC; 
  signal NlwBufferSignal_U4_cur_digit_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U4_cur_digit_0_CLK : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_N0_5_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp9_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_4_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_3_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_digits_7_OBUF_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_9_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_8_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_7_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_6_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_13_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_12_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_11_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_10_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U4_Mcount_gen_display_d_clk_xor_13_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_N0_14_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U5_Mmux_output6_rs_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U5_Mmux_output6_rs_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U5_Mmux_output6_rs_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U5_Mmux_output6_rs_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U5_Mmux_output6_rs_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U5_Mmux_output6_rs_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U5_Mmux_output6_rs_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U5_Mmux_output6_rs_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers11_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers121_SP_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers122_SP_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers31_SP_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers32_SP_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U1_U1_U9_Mram_registers2_RAMD_D1_O_UNCONNECTED : STD_LOGIC; 
  signal U4_cur_digit : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U1_U1_BUS318 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_BUS295 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_BUS993 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U4_digit_data : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_U1_U8_Q_tmp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U4_gen_display_d_clk : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal U1_U1_U5_Mmux_output6_rs_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal U4_GND_39_o_GND_39_o_equal_1_o_0 : STD_LOGIC_VECTOR ( 13 downto 13 ); 
  signal U4_Mcount_gen_display_d_clk_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal U1_U1_U5_Mmux_output6_rs_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_U5_Mmux_output6_split : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_BUS215 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  U4_gen_display_d_clk_3 : X_FF
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_3_CLK,
      I => Result(3),
      O => U4_gen_display_d_clk(3),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U4_gen_display_d_clk(3),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_3_rt_2
    );
  N0_5_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_5_D5LUT_O_UNCONNECTED
    );
  ProtoComp9_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X52Y75"
    )
    port map (
      O => NLW_ProtoComp9_CYINITGND_O_UNCONNECTED
    );
  U4_gen_display_d_clk_2 : X_FF
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_2_CLK,
      I => Result(2),
      O => U4_gen_display_d_clk(2),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_Mcount_gen_display_d_clk_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X52Y75"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U4_Mcount_gen_display_d_clk_cy_3_Q_853,
      CO(2) => NLW_U4_Mcount_gen_display_d_clk_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U4_Mcount_gen_display_d_clk_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U4_Mcount_gen_display_d_clk_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result_1_1,
      O(0) => Result_0_1,
      S(3) => U4_gen_display_d_clk_3_rt_2,
      S(2) => U4_gen_display_d_clk_2_rt_13,
      S(1) => U4_gen_display_d_clk_1_rt_17,
      S(0) => U4_Mcount_gen_display_d_clk_lut(0)
    );
  U4_gen_display_d_clk_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U4_gen_display_d_clk(2),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_2_rt_13
    );
  N0_4_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_4_C5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_1 : X_FF
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_1_CLK,
      I => Result_1_1,
      O => U4_gen_display_d_clk(1),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U4_gen_display_d_clk(1),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_1_rt_17
    );
  N0_3_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_3_B5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_0 : X_FF
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_0_CLK,
      I => Result_0_1,
      O => U4_gen_display_d_clk(0),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_Mcount_gen_display_d_clk_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U4_gen_display_d_clk(0),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_Mcount_gen_display_d_clk_lut(0)
    );
  digits_7_OBUF_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y75",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_digits_7_OBUF_A5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_7 : X_FF
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_7_CLK,
      I => Result(7),
      O => U4_gen_display_d_clk(7),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U4_gen_display_d_clk(7),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_7_rt_30
    );
  N0_9_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_9_D5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_6 : X_FF
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_6_CLK,
      I => Result(6),
      O => U4_gen_display_d_clk(6),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_Mcount_gen_display_d_clk_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X52Y76"
    )
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy_3_Q_853,
      CYINIT => '0',
      CO(3) => U4_Mcount_gen_display_d_clk_cy_7_Q_858,
      CO(2) => NLW_U4_Mcount_gen_display_d_clk_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U4_Mcount_gen_display_d_clk_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U4_Mcount_gen_display_d_clk_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => U4_gen_display_d_clk_7_rt_30,
      S(2) => U4_gen_display_d_clk_6_rt_41,
      S(1) => U4_gen_display_d_clk_5_rt_45,
      S(0) => U4_gen_display_d_clk_4_rt_49
    );
  U4_gen_display_d_clk_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U4_gen_display_d_clk(6),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_6_rt_41
    );
  N0_8_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_8_C5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_5 : X_FF
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_5_CLK,
      I => Result(5),
      O => U4_gen_display_d_clk(5),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U4_gen_display_d_clk(5),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_5_rt_45
    );
  N0_7_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_7_B5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_4 : X_FF
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_4_CLK,
      I => Result(4),
      O => U4_gen_display_d_clk(4),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U4_gen_display_d_clk(4),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_4_rt_49
    );
  N0_6_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y76",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_6_A5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_11 : X_FF
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_11_CLK,
      I => Result(11),
      O => U4_gen_display_d_clk(11),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U4_gen_display_d_clk(11),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_11_rt_58
    );
  N0_13_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_13_D5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_10 : X_FF
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_10_CLK,
      I => Result(10),
      O => U4_gen_display_d_clk(10),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_Mcount_gen_display_d_clk_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X52Y77"
    )
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy_7_Q_858,
      CYINIT => '0',
      CO(3) => U4_Mcount_gen_display_d_clk_cy_11_Q_863,
      CO(2) => NLW_U4_Mcount_gen_display_d_clk_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U4_Mcount_gen_display_d_clk_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U4_Mcount_gen_display_d_clk_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => U4_gen_display_d_clk_11_rt_58,
      S(2) => U4_gen_display_d_clk_10_rt_69,
      S(1) => U4_gen_display_d_clk_9_rt_73,
      S(0) => U4_gen_display_d_clk_8_rt_77
    );
  U4_gen_display_d_clk_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U4_gen_display_d_clk(10),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_10_rt_69
    );
  N0_12_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_12_C5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_9 : X_FF
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_9_CLK,
      I => Result(9),
      O => U4_gen_display_d_clk(9),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U4_gen_display_d_clk(9),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_9_rt_73
    );
  N0_11_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_11_B5LUT_O_UNCONNECTED
    );
  U4_gen_display_d_clk_8 : X_FF
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_8_CLK,
      I => Result(8),
      O => U4_gen_display_d_clk(8),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U4_gen_display_d_clk(8),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_8_rt_77
    );
  N0_10_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y77",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_10_A5LUT_O_UNCONNECTED
    );
  U4_Mcount_gen_display_d_clk_xor_13_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X52Y78"
    )
    port map (
      CI => U4_Mcount_gen_display_d_clk_cy_11_Q_863,
      CYINIT => '0',
      CO(3) => NLW_U4_Mcount_gen_display_d_clk_xor_13_CO_3_UNCONNECTED,
      CO(2) => NLW_U4_Mcount_gen_display_d_clk_xor_13_CO_2_UNCONNECTED,
      CO(1) => NLW_U4_Mcount_gen_display_d_clk_xor_13_CO_1_UNCONNECTED,
      CO(0) => NLW_U4_Mcount_gen_display_d_clk_xor_13_CO_0_UNCONNECTED,
      DI(3) => NLW_U4_Mcount_gen_display_d_clk_xor_13_DI_3_UNCONNECTED,
      DI(2) => NLW_U4_Mcount_gen_display_d_clk_xor_13_DI_2_UNCONNECTED,
      DI(1) => NLW_U4_Mcount_gen_display_d_clk_xor_13_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_U4_Mcount_gen_display_d_clk_xor_13_O_3_UNCONNECTED,
      O(2) => NLW_U4_Mcount_gen_display_d_clk_xor_13_O_2_UNCONNECTED,
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => NLW_U4_Mcount_gen_display_d_clk_xor_13_S_3_UNCONNECTED,
      S(2) => NLW_U4_Mcount_gen_display_d_clk_xor_13_S_2_UNCONNECTED,
      S(1) => U4_gen_display_d_clk_13_rt_90,
      S(0) => U4_gen_display_d_clk_12_rt_93
    );
  U4_gen_display_d_clk_13 : X_FF
    generic map(
      LOC => "SLICE_X52Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_13_CLK,
      I => Result(13),
      O => U4_gen_display_d_clk(13),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y78",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U4_gen_display_d_clk(13),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_13_rt_90
    );
  U4_gen_display_d_clk_12 : X_FF
    generic map(
      LOC => "SLICE_X52Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U4_gen_display_d_clk_12_CLK,
      I => Result(12),
      O => U4_gen_display_d_clk(12),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_gen_display_d_clk_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X52Y78",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U4_gen_display_d_clk(12),
      ADR4 => '1',
      ADR5 => '1',
      O => U4_gen_display_d_clk_12_rt_93
    );
  N0_14_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X52Y78",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N0_14_A5LUT_O_UNCONNECTED
    );
  U1_U1_U5_Mmux_output6_rs_cy_3_U1_U1_U5_Mmux_output6_rs_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U5_Mmux_output6_split(3),
      O => U1_U1_U5_Mmux_output6_split_3_0
    );
  U1_U1_U5_Mmux_output6_rs_cy_3_U1_U1_U5_Mmux_output6_rs_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U5_Mmux_output6_split(2),
      O => U1_U1_U5_Mmux_output6_split_2_0
    );
  U1_U1_U5_Mmux_output6_rs_cy_3_U1_U1_U5_Mmux_output6_rs_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U5_Mmux_output6_split(1),
      O => U1_U1_U5_Mmux_output6_split_1_0
    );
  U1_U1_U5_Mmux_output6_rs_cy_3_U1_U1_U5_Mmux_output6_rs_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U5_Mmux_output6_split(0),
      O => U1_U1_U5_Mmux_output6_split_0_0
    );
  U1_U1_U5_Mmux_output6_rs_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y77",
      INIT => X"FFFAAAAA00055555"
    )
    port map (
      ADR1 => '1',
      ADR3 => U1_U2_cState_FSM_FFd2_804,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      ADR2 => U1_U2_cState_FSM_FFd1_803,
      ADR4 => U1_U1_BUS993(3),
      ADR5 => U1_U1_BUS295(3),
      O => U1_U1_U5_Mmux_output6_rs_lut(3)
    );
  U1_U1_U5_Mmux_output6_rs_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X69Y77"
    )
    port map (
      CI => '0',
      CYINIT => U1_U1_U5_sel_0_inv,
      CO(3) => U1_U1_U5_Mmux_output6_rs_cy(3),
      CO(2) => NLW_U1_U1_U5_Mmux_output6_rs_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_U1_U5_Mmux_output6_rs_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_U1_U5_Mmux_output6_rs_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_cy_3_DI_1_Q,
      DI(0) => U1_U1_BUS295_0_rt_125,
      O(3) => U1_U1_U5_Mmux_output6_split(3),
      O(2) => U1_U1_U5_Mmux_output6_split(2),
      O(1) => U1_U1_U5_Mmux_output6_split(1),
      O(0) => U1_U1_U5_Mmux_output6_split(0),
      S(3) => U1_U1_U5_Mmux_output6_rs_lut(3),
      S(2) => U1_U1_U5_Mmux_output6_rs_lut(2),
      S(1) => U1_U1_U5_Mmux_output6_rs_lut(1),
      S(0) => U1_U1_U5_Mmux_output6_rs_lut(0)
    );
  U1_U1_U5_Mmux_output6_rs_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y77",
      INIT => X"FFFAAAAA00055555"
    )
    port map (
      ADR1 => '1',
      ADR3 => U1_U2_cState_FSM_FFd2_804,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      ADR2 => U1_U2_cState_FSM_FFd1_803,
      ADR4 => U1_U1_BUS993_2_0,
      ADR5 => U1_U1_BUS295_2_0,
      O => U1_U1_U5_Mmux_output6_rs_lut(2)
    );
  U1_U1_U5_Mmux_output6_rs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y77",
      INIT => X"FFFA0005AAAA5555"
    )
    port map (
      ADR1 => '1',
      ADR2 => U1_U2_cState_FSM_FFd2_804,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      ADR3 => U1_U2_cState_FSM_FFd1_803,
      ADR5 => U1_U1_BUS993(1),
      ADR4 => U1_U1_BUS295(1),
      O => U1_U1_U5_Mmux_output6_rs_lut(1)
    );
  U1_U1_U5_Mmux_output6_rs_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y77",
      INIT => X"0F01F0FE0F01F0FE"
    )
    port map (
      ADR0 => U1_U2_cState_FSM_FFd2_804,
      ADR2 => U1_U2_cState_FSM_FFd4_802,
      ADR1 => U1_U2_cState_FSM_FFd1_803,
      ADR3 => U1_U1_BUS993_0_0,
      ADR4 => U1_U1_BUS295_0_0,
      ADR5 => '1',
      O => U1_U1_U5_Mmux_output6_rs_lut(0)
    );
  U1_U1_BUS295_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X69Y77",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U1_U1_BUS295_0_0,
      O => U1_U1_BUS295_0_rt_125
    );
  U1_U1_U5_Mmux_output6_split_7_U1_U1_U5_Mmux_output6_split_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U5_Mmux_output6_split(7),
      O => U1_U1_U5_Mmux_output6_split_7_0
    );
  U1_U1_U5_Mmux_output6_split_7_U1_U1_U5_Mmux_output6_split_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U5_Mmux_output6_split(6),
      O => U1_U1_U5_Mmux_output6_split_6_0
    );
  U1_U1_U5_Mmux_output6_split_7_U1_U1_U5_Mmux_output6_split_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U5_Mmux_output6_split(5),
      O => U1_U1_U5_Mmux_output6_split_5_0
    );
  U1_U1_U5_Mmux_output6_split_7_U1_U1_U5_Mmux_output6_split_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U5_Mmux_output6_split(4),
      O => U1_U1_U5_Mmux_output6_split_4_0
    );
  U1_U1_U5_Mmux_output6_rs_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y78",
      INIT => X"FFFAAAAA00055555"
    )
    port map (
      ADR1 => '1',
      ADR5 => U1_U1_BUS295_7_0,
      ADR4 => U1_U1_BUS993_7_0,
      ADR2 => U1_U2_cState_FSM_FFd2_804,
      ADR3 => U1_U2_cState_FSM_FFd1_803,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      O => U1_U1_U5_Mmux_output6_rs_lut(7)
    );
  U1_U1_U5_Mmux_output6_rs_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X69Y78"
    )
    port map (
      CI => U1_U1_U5_Mmux_output6_rs_cy(3),
      CYINIT => '0',
      CO(3) => NLW_U1_U1_U5_Mmux_output6_rs_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_U1_U1_U5_Mmux_output6_rs_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U1_U1_U5_Mmux_output6_rs_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U1_U1_U5_Mmux_output6_rs_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_U1_U1_U5_Mmux_output6_rs_xor_7_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_xor_7_DI_2_Q,
      DI(1) => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_xor_7_DI_1_Q,
      DI(0) => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_xor_7_DI_0_Q,
      O(3) => U1_U1_U5_Mmux_output6_split(7),
      O(2) => U1_U1_U5_Mmux_output6_split(6),
      O(1) => U1_U1_U5_Mmux_output6_split(5),
      O(0) => U1_U1_U5_Mmux_output6_split(4),
      S(3) => U1_U1_U5_Mmux_output6_rs_lut(7),
      S(2) => U1_U1_U5_Mmux_output6_rs_lut(6),
      S(1) => U1_U1_U5_Mmux_output6_rs_lut(5),
      S(0) => U1_U1_U5_Mmux_output6_rs_lut(4)
    );
  U1_U1_U5_Mmux_output6_rs_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y78",
      INIT => X"FFFCCCCC00033333"
    )
    port map (
      ADR0 => '1',
      ADR2 => U1_U2_cState_FSM_FFd2_804,
      ADR1 => U1_U2_cState_FSM_FFd4_802,
      ADR3 => U1_U2_cState_FSM_FFd1_803,
      ADR4 => U1_U1_BUS993(6),
      ADR5 => U1_U1_BUS295(6),
      O => U1_U1_U5_Mmux_output6_rs_lut(6)
    );
  U1_U1_U5_Mmux_output6_rs_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y78",
      INIT => X"FFF0FFC0000F003F"
    )
    port map (
      ADR0 => '1',
      ADR4 => U1_U2_cState_FSM_FFd2_804,
      ADR3 => U1_U2_cState_FSM_FFd4_802,
      ADR1 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U1_BUS993(5),
      ADR5 => U1_U1_BUS295(5),
      O => U1_U1_U5_Mmux_output6_rs_lut(5)
    );
  U1_U1_U5_Mmux_output6_rs_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X69Y78",
      INIT => X"FFFCFF00000300FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => U1_U2_cState_FSM_FFd2_804,
      ADR3 => U1_U2_cState_FSM_FFd4_802,
      ADR2 => U1_U2_cState_FSM_FFd1_803,
      ADR4 => U1_U1_BUS993_4_0,
      ADR5 => U1_U1_BUS295_4_0,
      O => U1_U1_U5_Mmux_output6_rs_lut(4)
    );
  display_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y88"
    )
    port map (
      I => NlwBufferSignal_display_6_OBUF_I,
      O => display(6)
    );
  x_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y58",
      PATHPULSE => 50 ps
    )
    port map (
      O => x_0_IBUF_832,
      I => x(0)
    );
  x_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y50",
      PATHPULSE => 50 ps
    )
    port map (
      O => x_1_IBUF_834,
      I => x(1)
    );
  x_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y54",
      PATHPULSE => 50 ps
    )
    port map (
      O => x_2_IBUF_842,
      I => x(2)
    );
  digits_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y63"
    )
    port map (
      I => NlwBufferSignal_digits_0_OBUF_I,
      O => digits(0)
    );
  x_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y62",
      PATHPULSE => 50 ps
    )
    port map (
      O => x_3_IBUF_844,
      I => x(3)
    );
  digits_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y64"
    )
    port map (
      I => NlwBufferSignal_digits_1_OBUF_I,
      O => digits(1)
    );
  y_0_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y84",
      PATHPULSE => 50 ps
    )
    port map (
      O => y_0_IBUF_831,
      I => y(0)
    );
  x_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y61",
      PATHPULSE => 50 ps
    )
    port map (
      O => x_4_IBUF_807,
      I => x(4)
    );
  digits_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y92"
    )
    port map (
      I => NlwBufferSignal_digits_2_OBUF_I,
      O => digits(2)
    );
  y_1_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y81",
      PATHPULSE => 50 ps
    )
    port map (
      O => y_1_IBUF_833,
      I => y(1)
    );
  x_5_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y60",
      PATHPULSE => 50 ps
    )
    port map (
      O => x_5_IBUF_810,
      I => x(5)
    );
  digits_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y74"
    )
    port map (
      I => NlwBufferSignal_digits_3_OBUF_I,
      O => digits(3)
    );
  y_2_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y82",
      PATHPULSE => 50 ps
    )
    port map (
      O => y_2_IBUF_841,
      I => y(2)
    );
  x_6_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y59",
      PATHPULSE => 50 ps
    )
    port map (
      O => x_6_IBUF_818,
      I => x(6)
    );
  digits_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y94"
    )
    port map (
      I => '1',
      O => digits(4)
    );
  y_3_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y77",
      PATHPULSE => 50 ps
    )
    port map (
      O => y_3_IBUF_843,
      I => y(3)
    );
  x_7_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y80",
      PATHPULSE => 50 ps
    )
    port map (
      O => x_7_IBUF_820,
      I => x(7)
    );
  digits_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y67"
    )
    port map (
      I => '1',
      O => digits(5)
    );
  y_4_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y65",
      PATHPULSE => 50 ps
    )
    port map (
      O => y_4_IBUF_806,
      I => y(4)
    );
  digits_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y98"
    )
    port map (
      I => '1',
      O => digits(6)
    );
  y_5_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y78",
      PATHPULSE => 50 ps
    )
    port map (
      O => y_5_IBUF_808,
      I => y(5)
    );
  digits_7_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y97"
    )
    port map (
      I => '1',
      O => digits(7)
    );
  y_6_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y71",
      PATHPULSE => 50 ps
    )
    port map (
      O => y_6_IBUF_817,
      I => y(6)
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y122",
      PATHPULSE => 50 ps
    )
    port map (
      O => start_IBUF_813,
      I => start
    );
  clock_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X1Y126",
      PATHPULSE => 50 ps
    )
    port map (
      O => clock_IBUFG_890,
      I => clock
    );
  y_7_IBUF : X_BUF
    generic map(
      LOC => "IOB_X1Y72",
      PATHPULSE => 50 ps
    )
    port map (
      O => y_7_IBUF_819,
      I => y(7)
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y58",
      PATHPULSE => 50 ps
    )
    port map (
      O => reset_IBUF_815,
      I => reset
    );
  display_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y95"
    )
    port map (
      I => NlwBufferSignal_display_0_OBUF_I,
      O => display(0)
    );
  display_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y93"
    )
    port map (
      I => NlwBufferSignal_display_1_OBUF_I,
      O => display(1)
    );
  display_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y87"
    )
    port map (
      I => NlwBufferSignal_display_2_OBUF_I,
      O => display(2)
    );
  display_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y89"
    )
    port map (
      I => NlwBufferSignal_display_3_OBUF_I,
      O => display(3)
    );
  display_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y96"
    )
    port map (
      I => NlwBufferSignal_display_4_OBUF_I,
      O => display(4)
    );
  display_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X1Y91"
    )
    port map (
      I => NlwBufferSignal_display_5_OBUF_I,
      O => display(5)
    );
  U3 : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y31",
      PATHPULSE => 50 ps
    )
    port map (
      I => NlwBufferSignal_U3_IN,
      O => NET174
    );
  U4_GND_39_o_GND_39_o_equal_1_o_13_1 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y76",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => U4_gen_display_d_clk(1),
      ADR2 => U4_gen_display_d_clk(0),
      ADR5 => U4_gen_display_d_clk(2),
      ADR0 => U4_gen_display_d_clk(3),
      ADR4 => U4_gen_display_d_clk(4),
      ADR3 => U4_gen_display_d_clk(5),
      O => U4_GND_39_o_GND_39_o_equal_1_o_0(13)
    );
  U4_GND_39_o_GND_39_o_equal_1_o_13_3 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y76",
      INIT => X"000000000000CC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => U4_GND_39_o_GND_39_o_equal_1_o_13_1_913,
      ADR3 => U4_GND_39_o_GND_39_o_equal_1_o_0(13),
      ADR5 => U4_gen_display_d_clk(13),
      ADR4 => U4_gen_display_d_clk(12),
      O => U4_GND_39_o_GND_39_o_equal_1_o
    );
  U4_GND_39_o_GND_39_o_equal_1_o_13_2 : X_LUT6
    generic map(
      LOC => "SLICE_X53Y77",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U4_gen_display_d_clk(7),
      ADR5 => U4_gen_display_d_clk(6),
      ADR4 => U4_gen_display_d_clk(8),
      ADR3 => U4_gen_display_d_clk(9),
      ADR2 => U4_gen_display_d_clk(10),
      ADR1 => U4_gen_display_d_clk(11),
      O => U4_GND_39_o_GND_39_o_equal_1_o_13_1_913
    );
  U1_U2_cState_FSM_FFd8_U1_U2_cState_FSM_FFd8_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd6_In_pack_6,
      O => U1_U2_cState_FSM_FFd6_In
    );
  U1_U2_cState_FSM_FFd8_U1_U2_cState_FSM_FFd8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd3_272,
      O => U1_U2_cState_FSM_FFd3_0
    );
  U1_U2_cState_FSM_FFd8 : X_FF
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_U2_cState_FSM_FFd8_CLK,
      I => U1_U2_cState_FSM_FFd8_In,
      O => U1_U2_cState_FSM_FFd8_814,
      SET => reset_IBUF_815,
      RST => GND
    );
  U1_U2_cState_FSM_FFd8_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"FF50FF50FF50FF50"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => start_IBUF_813,
      ADR2 => U1_U2_cState_FSM_FFd8_814,
      ADR3 => U1_U2_cState_FSM_FFd4_802,
      ADR5 => '1',
      O => U1_U2_cState_FSM_FFd8_In
    );
  U1_U2_cState_FSM_FFd7_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"A0A0A0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => start_IBUF_813,
      ADR2 => U1_U2_cState_FSM_FFd8_814,
      ADR4 => '1',
      O => U1_U2_cState_FSM_FFd7_In
    );
  U1_U2_cState_FSM_FFd7 : X_FF
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_U2_cState_FSM_FFd7_CLK,
      I => U1_U2_cState_FSM_FFd7_In,
      O => U1_U2_cState_FSM_FFd6_In_pack_6,
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U2_cState_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_U2_cState_FSM_FFd5_CLK,
      I => U1_U2_cState_FSM_FFd5_In,
      O => U1_U2_cState_FSM_FFd5_839,
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U2_cState_n0024_15_1 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"FFFFFEFEFFFFFEFE"
    )
    port map (
      ADR3 => '1',
      ADR4 => U1_U2_cState_FSM_FFd1_803,
      ADR1 => U1_U2_cState_FSM_FFd6_In,
      ADR2 => U1_U2_cState_FSM_FFd6_797,
      ADR0 => U1_U2_cState_FSM_FFd2_804,
      ADR5 => '1',
      O => U1_BUS289_15_Q
    );
  U1_U2_cState_FSM_FFd5_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"FFFFFAFA"
    )
    port map (
      ADR3 => '1',
      ADR4 => U1_U2_cState_FSM_FFd1_803,
      ADR1 => '1',
      ADR2 => U1_U2_cState_FSM_FFd6_797,
      ADR0 => U1_U2_cState_FSM_FFd2_804,
      O => U1_U2_cState_FSM_FFd5_In
    );
  U1_U2_cState_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_U2_cState_FSM_FFd4_CLK,
      I => U1_U2_cState_FSM_FFd4_In,
      O => U1_U2_cState_FSM_FFd4_802,
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U2_cState_FSM_FFd4_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"0000AAAA0000AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => U1_U2_cState_FSM_FFd5_839,
      ADR4 => U1_NET262,
      ADR5 => '1',
      O => U1_U2_cState_FSM_FFd4_In
    );
  U1_U2_cState_FSM_FFd3_In1 : X_LUT5
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"AAAA0000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => U1_U2_cState_FSM_FFd5_839,
      ADR4 => U1_NET262,
      O => U1_U2_cState_FSM_FFd3_In
    );
  U1_U2_cState_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_U2_cState_FSM_FFd3_CLK,
      I => U1_U2_cState_FSM_FFd3_In,
      O => U1_U2_cState_FSM_FFd3_272,
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U2_cState_FSM_FFd6 : X_FF
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_U2_cState_FSM_FFd6_CLK,
      I => NlwBufferSignal_U1_U2_cState_FSM_FFd6_IN,
      O => U1_U2_cState_FSM_FFd6_797,
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U1_x_neq_y83 : X_LUT6
    generic map(
      LOC => "SLICE_X65Y78",
      INIT => X"8000200008000200"
    )
    port map (
      ADR1 => U1_U1_BUS993(5),
      ADR5 => U1_U1_BUS993_4_0,
      ADR4 => U1_U1_BUS295(5),
      ADR2 => U1_U1_BUS295_4_0,
      ADR3 => U1_U1_x_neq_y81_916,
      ADR0 => U1_U1_x_neq_y8,
      O => U1_NET262
    );
  U1_U1_U5_sel_0_inv2_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X64Y77",
      INIT => X"3333333333333333"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U1_U2_cState_FSM_FFd4_802,
      O => U1_U1_U5_sel_0_inv
    );
  U1_U1_U2_Mmux_output41 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y76",
      INIT => X"CCCCDDD8CCCC8D88"
    )
    port map (
      ADR1 => N20,
      ADR4 => U1_U2_cState_FSM_FFd6_In,
      ADR0 => U1_U2_cState_FSM_FFd6_797,
      ADR2 => U1_BUS289_6_Q,
      ADR3 => N19,
      ADR5 => U1_U1_U5_Mmux_output6_split_3_0,
      O => U1_U1_BUS318(3)
    );
  U1_U1_U5_Mmux_output741_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y76",
      INIT => X"AAAAFFEEFFFF0011"
    )
    port map (
      ADR2 => '1',
      ADR1 => U1_U2_cState_FSM_FFd2_804,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      ADR3 => U1_U2_cState_FSM_FFd1_803,
      ADR4 => U1_U1_BUS993(3),
      ADR5 => U1_U1_BUS295(3),
      O => N19
    );
  U1_U1_x_lt_y1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X66Y76",
      INIT => X"FF0FFFFF0000FF0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U1_U1_BUS993_4_0,
      ADR5 => U1_U1_BUS295_4_0,
      ADR2 => U1_U1_BUS993(3),
      ADR3 => U1_U1_BUS295(3),
      O => N5
    );
  U1_U1_BUS993_5_U1_U1_BUS993_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U9_Mram_registers11_RAMD_D1_O,
      O => U1_U1_U9_Mram_registers11_RAMD_D1_O_0
    );
  U1_U1_BUS993_5_U1_U1_BUS993_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS993(4),
      O => U1_U1_BUS993_4_0
    );
  U1_U1_BUS993_5_U1_U1_BUS993_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS993(2),
      O => U1_U1_BUS993_2_0
    );
  U1_U1_BUS993_5_U1_U1_BUS993_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS993(0),
      O => U1_U1_BUS993_0_0
    );
  U1_U1_U9_Mram_registers11_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_CLK,
      I => '0',
      O => NLW_U1_U1_U9_Mram_registers11_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers11_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_CLK,
      I => '0',
      O => U1_U1_U9_Mram_registers11_RAMD_D1_O,
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers11_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_IN,
      O => U1_U1_BUS993(5),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers11_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_IN,
      O => U1_U1_BUS993(4),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers11_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_IN,
      O => U1_U1_BUS993(3),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers11_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_IN,
      O => U1_U1_BUS993(2),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers11_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_IN,
      O => U1_U1_BUS993(1),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers11_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_IN,
      O => U1_U1_BUS993(0),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_BUS993_6_U1_U1_BUS993_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS993(7),
      O => U1_U1_BUS993_7_0
    );
  U1_U1_BUS993_6_U1_U1_BUS993_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295(7),
      O => U1_U1_BUS295_7_0
    );
  U1_U1_U9_Mram_registers121_SP : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y78",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_RADR1,
      RADR2 => '1',
      RADR3 => '1',
      RADR4 => '1',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_IN,
      O => NLW_U1_U1_U9_Mram_registers121_SP_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_WADR1,
      WADR2 => '1',
      WADR3 => '1',
      WADR4 => '1',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers122_SP : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y78",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_RADR1,
      RADR2 => '1',
      RADR3 => '1',
      RADR4 => '1',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_IN,
      O => NLW_U1_U1_U9_Mram_registers122_SP_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_WADR1,
      WADR2 => '1',
      WADR3 => '1',
      WADR4 => '1',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers31_SP : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y78",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_RADR1,
      RADR2 => '1',
      RADR3 => '1',
      RADR4 => '1',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_IN,
      O => NLW_U1_U1_U9_Mram_registers31_SP_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_WADR1,
      WADR2 => '1',
      WADR3 => '1',
      WADR4 => '1',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers32_SP : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y78",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_RADR1,
      RADR2 => '1',
      RADR3 => '1',
      RADR4 => '1',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_IN,
      O => NLW_U1_U1_U9_Mram_registers32_SP_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_WADR1,
      WADR2 => '1',
      WADR3 => '1',
      WADR4 => '1',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers121_DP : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y78",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_RADR1,
      RADR2 => '1',
      RADR3 => '1',
      RADR4 => '1',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_IN,
      O => U1_U1_BUS993(6),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_WADR1,
      WADR2 => '1',
      WADR3 => '1',
      WADR4 => '1',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers122_DP : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y78",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_RADR1,
      RADR2 => '1',
      RADR3 => '1',
      RADR4 => '1',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_IN,
      O => U1_U1_BUS993(7),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_WADR1,
      WADR2 => '1',
      WADR3 => '1',
      WADR4 => '1',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers31_DP : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y78",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_RADR1,
      RADR2 => '1',
      RADR3 => '1',
      RADR4 => '1',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_IN,
      O => U1_U1_BUS295(6),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_WADR1,
      WADR2 => '1',
      WADR3 => '1',
      WADR4 => '1',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers32_DP : X_RAMD32
    generic map(
      LOC => "SLICE_X66Y78",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_RADR1,
      RADR2 => '1',
      RADR3 => '1',
      RADR4 => '1',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_IN,
      O => U1_U1_BUS295(7),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_WADR1,
      WADR2 => '1',
      WADR3 => '1',
      WADR4 => '1',
      WE => U1_BUS289_15_Q
    );
  U1_BUS289_17_U1_BUS289_17_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_2_GND_36_o_Mux_8_o,
      O => U1_U2_cState_2_GND_36_o_Mux_8_o_0
    );
  U1_U2_cState_n0024_17_1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y76",
      INIT => X"FFFFF0F0FFFFF0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U1_U2_cState_FSM_FFd1_803,
      ADR4 => U1_U2_cState_FSM_FFd6_797,
      ADR5 => '1',
      O => U1_BUS289_17_Q
    );
  U1_U2_cState_n0024_21_1 : X_LUT5
    generic map(
      LOC => "SLICE_X67Y76",
      INIT => X"FFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => U1_U2_cState_FSM_FFd8_814,
      ADR2 => '1',
      ADR4 => U1_U2_cState_FSM_FFd6_797,
      O => U1_U2_cState_2_GND_36_o_Mux_8_o
    );
  U1_U2_cState_n0024_12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => X"FFFFFFFFFFFFFFF0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U1_U2_cState_FSM_FFd3_0,
      ADR3 => U1_U2_cState_FSM_FFd5_839,
      ADR5 => U1_U2_cState_FSM_FFd2_804,
      ADR2 => U1_U2_cState_FSM_FFd4_802,
      O => U1_BUS289_12_Q
    );
  U1_U1_x_lt_y1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => X"FF333300F330F330"
    )
    port map (
      ADR0 => '1',
      ADR1 => U1_U1_BUS993(5),
      ADR3 => U1_U1_BUS295(5),
      ADR2 => N4,
      ADR4 => N5,
      ADR5 => U1_U1_x_lt_y1_917,
      O => U1_U1_x_lt_y2
    );
  U1_U2_cState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_U2_cState_FSM_FFd2_CLK,
      I => U1_U2_cState_FSM_FFd2_In,
      O => U1_U2_cState_FSM_FFd2_804,
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U2_cState_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => X"2000A2A0A020AAA2"
    )
    port map (
      ADR0 => U1_U2_cState_FSM_FFd3_0,
      ADR3 => U1_U1_BUS993(6),
      ADR2 => U1_U1_BUS993_7_0,
      ADR1 => U1_U1_BUS295(6),
      ADR4 => U1_U1_BUS295_7_0,
      ADR5 => U1_U1_x_lt_y2,
      O => U1_U2_cState_FSM_FFd2_In
    );
  U1_U2_cState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U1_U2_cState_FSM_FFd1_CLK,
      I => U1_U2_cState_FSM_FFd1_In,
      O => U1_U2_cState_FSM_FFd1_803,
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U2_cState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y77",
      INIT => X"8AAA080A0A8A0008"
    )
    port map (
      ADR0 => U1_U2_cState_FSM_FFd3_0,
      ADR3 => U1_U1_BUS993(6),
      ADR2 => U1_U1_BUS993_7_0,
      ADR1 => U1_U1_BUS295(6),
      ADR4 => U1_U1_BUS295_7_0,
      ADR5 => U1_U1_x_lt_y2,
      O => U1_U2_cState_FSM_FFd1_In
    );
  U1_BUS289_6_U1_BUS289_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N10_pack_4,
      O => N10
    );
  U1_U2_cState_n0024_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => X"FAFAFAFAFAFAFAFA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR0 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U2_cState_FSM_FFd2_804,
      ADR5 => '1',
      O => U1_BUS289_6_Q
    );
  U1_U1_U5_Mmux_output771_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => X"CCFEFF01"
    )
    port map (
      ADR4 => U1_U1_BUS295(6),
      ADR3 => U1_U1_BUS993(6),
      ADR1 => U1_U2_cState_FSM_FFd4_802,
      ADR0 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U2_cState_FSM_FFd2_804,
      O => N10_pack_4
    );
  U1_U1_U2_Mmux_output71 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => X"AAAABBB8AAAA88B8"
    )
    port map (
      ADR0 => N11_0,
      ADR4 => U1_U2_cState_FSM_FFd6_In,
      ADR1 => U1_U2_cState_FSM_FFd6_797,
      ADR3 => U1_BUS289_6_Q,
      ADR2 => N10,
      ADR5 => U1_U1_U5_Mmux_output6_split_6_0,
      O => U1_U1_BUS318(6)
    );
  U1_U2_cState_n0024_9_1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => X"FFFFFFFFFFFFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => U1_U2_cState_FSM_FFd3_0,
      ADR3 => U1_U2_cState_FSM_FFd2_804,
      ADR4 => U1_U2_cState_FSM_FFd5_839,
      O => U1_BUS289_9_Q
    );
  U1_U1_x_neq_y82 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y78",
      INIT => X"9000090000900009"
    )
    port map (
      ADR1 => U1_U1_BUS993(6),
      ADR3 => U1_U1_BUS993_7_0,
      ADR0 => U1_U1_BUS295(6),
      ADR5 => U1_U1_BUS295_7_0,
      ADR2 => U1_U1_BUS993(1),
      ADR4 => U1_U1_BUS295(1),
      O => U1_U1_x_neq_y81_916
    );
  U1_U2_cState_n0024_16_1 : X_LUT6
    generic map(
      LOC => "SLICE_X67Y79",
      INIT => X"FFCCFFCCFFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR1 => U1_U2_cState_FSM_FFd2_804,
      ADR3 => U1_U2_cState_FSM_FFd6_In,
      O => U1_BUS289_16_Q
    );
  U1_U1_U8_Q_tmp_3 : X_FF
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => '0'
    )
    port map (
      CE => U1_U2_cState_FSM_FFd4_802,
      CLK => NlwBufferSignal_U1_U1_U8_Q_tmp_3_CLK,
      I => U1_U1_BUS215(3),
      O => U1_U1_U8_Q_tmp(3),
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U1_U7_output_3_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => X"FFFFFFEF0F0F5F4F"
    )
    port map (
      ADR0 => U1_U2_cState_FSM_FFd2_804,
      ADR2 => U1_U2_cState_FSM_FFd4_802,
      ADR4 => U1_U2_cState_FSM_FFd1_803,
      ADR3 => U1_U1_BUS993(3),
      ADR1 => U1_U1_BUS295(3),
      ADR5 => U1_U1_U5_Mmux_output6_split_3_0,
      O => U1_U1_BUS215(3)
    );
  U1_U1_U8_Q_tmp_2 : X_FF
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => '0'
    )
    port map (
      CE => U1_U2_cState_FSM_FFd4_802,
      CLK => NlwBufferSignal_U1_U1_U8_Q_tmp_2_CLK,
      I => U1_U1_BUS215(2),
      O => U1_U1_U8_Q_tmp(2),
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U1_U7_output_2_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => X"FFFFFEFF00FF32FF"
    )
    port map (
      ADR1 => U1_U2_cState_FSM_FFd2_804,
      ADR3 => U1_U2_cState_FSM_FFd4_802,
      ADR4 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U1_BUS993_2_0,
      ADR0 => U1_U1_BUS295_2_0,
      ADR5 => U1_U1_U5_Mmux_output6_split_2_0,
      O => U1_U1_BUS215(2)
    );
  U1_U1_U8_Q_tmp_1 : X_FF
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => '0'
    )
    port map (
      CE => U1_U2_cState_FSM_FFd4_802,
      CLK => NlwBufferSignal_U1_U1_U8_Q_tmp_1_CLK,
      I => U1_U1_BUS215(1),
      O => U1_U1_U8_Q_tmp(1),
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U1_U7_output_1_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => X"AAFFAAFFAAFFFCFF"
    )
    port map (
      ADR5 => U1_U2_cState_FSM_FFd2_804,
      ADR3 => U1_U2_cState_FSM_FFd4_802,
      ADR4 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U1_BUS993(1),
      ADR1 => U1_U1_BUS295(1),
      ADR0 => U1_U1_U5_Mmux_output6_split_1_0,
      O => U1_U1_BUS215(1)
    );
  U1_U1_U8_Q_tmp_0 : X_FF
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => '0'
    )
    port map (
      CE => U1_U2_cState_FSM_FFd4_802,
      CLK => NlwBufferSignal_U1_U1_U8_Q_tmp_0_CLK,
      I => U1_U1_BUS215(0),
      O => U1_U1_U8_Q_tmp(0),
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U1_U7_output_0_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X69Y76",
      INIT => X"F0F3FFFFF0E2FFFF"
    )
    port map (
      ADR3 => U1_U2_cState_FSM_FFd1_803,
      ADR1 => U1_U2_cState_FSM_FFd2_804,
      ADR5 => U1_U1_BUS993_0_0,
      ADR0 => U1_U1_BUS295_0_0,
      ADR2 => U1_U1_U5_Mmux_output6_split_0_0,
      ADR4 => U1_U2_cState_FSM_FFd4_802,
      O => U1_U1_BUS215(0)
    );
  U1_U1_U2_Mmux_output61 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y76",
      INIT => X"AAAAAAAABBB888B8"
    )
    port map (
      ADR0 => N14,
      ADR5 => U1_U2_cState_FSM_FFd6_In,
      ADR1 => U1_U2_cState_FSM_FFd6_797,
      ADR3 => U1_BUS289_6_Q,
      ADR2 => N13,
      ADR4 => U1_U1_U5_Mmux_output6_split_5_0,
      O => U1_U1_BUS318(5)
    );
  U1_U1_U5_Mmux_output761_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y76",
      INIT => X"BBBBCCCCBABACDCD"
    )
    port map (
      ADR3 => '1',
      ADR5 => U1_U2_cState_FSM_FFd2_804,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      ADR2 => U1_U2_cState_FSM_FFd1_803,
      ADR1 => U1_U1_BUS993(5),
      ADR4 => U1_U1_BUS295(5),
      O => N13
    );
  U1_U1_x_lt_y3 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y76",
      INIT => X"3030F330B230F3B2"
    )
    port map (
      ADR5 => U1_U1_BUS993_0_0,
      ADR4 => U1_U1_BUS993(1),
      ADR1 => U1_U1_BUS993_2_0,
      ADR0 => U1_U1_BUS295_0_0,
      ADR3 => U1_U1_BUS295(1),
      ADR2 => U1_U1_BUS295_2_0,
      O => U1_U1_x_lt_y1_917
    );
  U1_U1_U2_Mmux_output31 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y77",
      INIT => X"CCCCDDD8CCCC8D88"
    )
    port map (
      ADR1 => N23_0,
      ADR4 => U1_U2_cState_FSM_FFd6_In,
      ADR0 => U1_U2_cState_FSM_FFd6_797,
      ADR2 => U1_BUS289_6_Q,
      ADR3 => N22,
      ADR5 => U1_U1_U5_Mmux_output6_split_2_0,
      O => U1_U1_BUS318(2)
    );
  U1_U1_U5_Mmux_output731_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y77",
      INIT => X"CFCFF0F0CFCFF0C3"
    )
    port map (
      ADR0 => '1',
      ADR3 => U1_U2_cState_FSM_FFd2_804,
      ADR1 => U1_U2_cState_FSM_FFd4_802,
      ADR5 => U1_U2_cState_FSM_FFd1_803,
      ADR4 => U1_U1_BUS993_2_0,
      ADR2 => U1_U1_BUS295_2_0,
      O => N22
    );
  U1_U1_U2_Mmux_output21 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y77",
      INIT => X"AAAABBB8AAAA88B8"
    )
    port map (
      ADR0 => N26,
      ADR4 => U1_U2_cState_FSM_FFd6_In,
      ADR1 => U1_U2_cState_FSM_FFd6_797,
      ADR3 => U1_BUS289_6_Q,
      ADR2 => N25,
      ADR5 => U1_U1_U5_Mmux_output6_split_1_0,
      O => U1_U1_BUS318(1)
    );
  U1_U1_U5_Mmux_output721_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y77",
      INIT => X"BBBBBBBBCCCCCC99"
    )
    port map (
      ADR2 => '1',
      ADR4 => U1_U2_cState_FSM_FFd2_804,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      ADR3 => U1_U2_cState_FSM_FFd1_803,
      ADR5 => U1_U1_BUS993(1),
      ADR1 => U1_U1_BUS295(1),
      O => N25
    );
  U1_U1_x_lt_y1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y78",
      INIT => X"00F00000FFFF00F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => U1_U1_BUS993_4_0,
      ADR3 => U1_U1_BUS993(3),
      ADR2 => U1_U1_BUS295(3),
      ADR4 => U1_U1_BUS295_4_0,
      O => N4
    );
  U1_U1_x_neq_y81 : X_LUT6
    generic map(
      LOC => "SLICE_X68Y78",
      INIT => X"9000090000900009"
    )
    port map (
      ADR3 => U1_U1_BUS993_0_0,
      ADR1 => U1_U1_BUS993_2_0,
      ADR4 => U1_U1_BUS993(3),
      ADR5 => U1_U1_BUS295_0_0,
      ADR0 => U1_U1_BUS295_2_0,
      ADR2 => U1_U1_BUS295(3),
      O => U1_U1_x_neq_y8
    );
  U1_U1_U2_Mmux_output11 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y76",
      INIT => X"AAAABBB8AAAA8B88"
    )
    port map (
      ADR0 => N29_0,
      ADR4 => U1_U2_cState_FSM_FFd6_In,
      ADR1 => U1_U2_cState_FSM_FFd6_797,
      ADR2 => U1_BUS289_6_Q,
      ADR3 => N28,
      ADR5 => U1_U1_U5_Mmux_output6_split_0_0,
      O => U1_U1_BUS318(0)
    );
  U1_U1_U5_Mmux_output711_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y76",
      INIT => X"BBBBCCCCBBAACCDD"
    )
    port map (
      ADR2 => '1',
      ADR3 => U1_U2_cState_FSM_FFd2_804,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      ADR5 => U1_U2_cState_FSM_FFd1_803,
      ADR1 => U1_U1_BUS993_0_0,
      ADR4 => U1_U1_BUS295_0_0,
      O => N28
    );
  U1_U1_U2_Mmux_output51 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y76",
      INIT => X"CCCCDDD8CCCC88D8"
    )
    port map (
      ADR1 => N17_0,
      ADR4 => U1_U2_cState_FSM_FFd6_In,
      ADR0 => U1_U2_cState_FSM_FFd6_797,
      ADR3 => U1_BUS289_6_Q,
      ADR2 => N16,
      ADR5 => U1_U1_U5_Mmux_output6_split_4_0,
      O => U1_U1_BUS318(4)
    );
  U1_U1_U5_Mmux_output751_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y76",
      INIT => X"CFCFCFCCF0F0F0F3"
    )
    port map (
      ADR0 => '1',
      ADR4 => U1_U2_cState_FSM_FFd2_804,
      ADR1 => U1_U2_cState_FSM_FFd4_802,
      ADR3 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U1_BUS993_4_0,
      ADR5 => U1_U1_BUS295_4_0,
      O => N16
    );
  U1_U1_BUS295_5_U1_U1_BUS295_5_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_U9_Mram_registers2_RAMD_D1_O,
      O => U1_U1_U9_Mram_registers2_RAMD_D1_O_0
    );
  U1_U1_BUS295_5_U1_U1_BUS295_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295(4),
      O => U1_U1_BUS295_4_0
    );
  U1_U1_BUS295_5_U1_U1_BUS295_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295(2),
      O => U1_U1_BUS295_2_0
    );
  U1_U1_BUS295_5_U1_U1_BUS295_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295(0),
      O => U1_U1_BUS295_0_0
    );
  U1_U1_U9_Mram_registers2_RAMD_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_CLK,
      I => '0',
      O => NLW_U1_U1_U9_Mram_registers2_RAMD_D1_O_UNCONNECTED,
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers2_RAMD : X_RAMD32
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_CLK,
      I => '0',
      O => U1_U1_U9_Mram_registers2_RAMD_D1_O,
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers2_RAMC_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_IN,
      O => U1_U1_BUS295(5),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers2_RAMC : X_RAMD32
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_IN,
      O => U1_U1_BUS295(4),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers2_RAMB_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_IN,
      O => U1_U1_BUS295(3),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers2_RAMB : X_RAMD32
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_IN,
      O => U1_U1_BUS295(2),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers2_RAMA_D1 : X_RAMD32
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_IN,
      O => U1_U1_BUS295(1),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U9_Mram_registers2_RAMA : X_RAMD32
    generic map(
      LOC => "SLICE_X70Y77",
      INIT => X"00000000"
    )
    port map (
      RADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_RADR0,
      RADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_RADR1,
      RADR2 => '0',
      RADR3 => '0',
      RADR4 => '0',
      CLK => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_CLK,
      I => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_IN,
      O => U1_U1_BUS295(0),
      WADR0 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_WADR0,
      WADR1 => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_WADR1,
      WADR2 => '0',
      WADR3 => '0',
      WADR4 => '0',
      WE => U1_BUS289_15_Q
    );
  U1_U1_U8_Q_tmp_7 : X_FF
    generic map(
      LOC => "SLICE_X70Y78",
      INIT => '0'
    )
    port map (
      CE => U1_U2_cState_FSM_FFd4_802,
      CLK => NlwBufferSignal_U1_U1_U8_Q_tmp_7_CLK,
      I => U1_U1_BUS215(7),
      O => U1_U1_U8_Q_tmp(7),
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U1_U7_output_7_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y78",
      INIT => X"FFFFFEFF00FF54FF"
    )
    port map (
      ADR0 => U1_U2_cState_FSM_FFd2_804,
      ADR3 => U1_U2_cState_FSM_FFd4_802,
      ADR4 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U1_BUS993_7_0,
      ADR1 => U1_U1_BUS295_7_0,
      ADR5 => U1_U1_U5_Mmux_output6_split_7_0,
      O => U1_U1_BUS215(7)
    );
  U1_U1_U8_Q_tmp_6 : X_FF
    generic map(
      LOC => "SLICE_X70Y78",
      INIT => '0'
    )
    port map (
      CE => U1_U2_cState_FSM_FFd4_802,
      CLK => NlwBufferSignal_U1_U1_U8_Q_tmp_6_CLK,
      I => U1_U1_BUS215(6),
      O => U1_U1_U8_Q_tmp(6),
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U1_U7_output_6_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y78",
      INIT => X"FFFFFEFF00FF32FF"
    )
    port map (
      ADR1 => U1_U2_cState_FSM_FFd2_804,
      ADR3 => U1_U2_cState_FSM_FFd4_802,
      ADR4 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U1_BUS993(6),
      ADR0 => U1_U1_BUS295(6),
      ADR5 => U1_U1_U5_Mmux_output6_split_6_0,
      O => U1_U1_BUS215(6)
    );
  U1_U1_U8_Q_tmp_5 : X_FF
    generic map(
      LOC => "SLICE_X70Y78",
      INIT => '0'
    )
    port map (
      CE => U1_U2_cState_FSM_FFd4_802,
      CLK => NlwBufferSignal_U1_U1_U8_Q_tmp_5_CLK,
      I => U1_U1_BUS215(5),
      O => U1_U1_U8_Q_tmp(5),
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U1_U7_output_5_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y78",
      INIT => X"FFFFFFFD555555FD"
    )
    port map (
      ADR3 => U1_U2_cState_FSM_FFd2_804,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      ADR4 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U1_BUS993(5),
      ADR1 => U1_U1_BUS295(5),
      ADR5 => U1_U1_U5_Mmux_output6_split_5_0,
      O => U1_U1_BUS215(5)
    );
  U1_U1_U8_Q_tmp_4 : X_FF
    generic map(
      LOC => "SLICE_X70Y78",
      INIT => '0'
    )
    port map (
      CE => U1_U2_cState_FSM_FFd4_802,
      CLK => NlwBufferSignal_U1_U1_U8_Q_tmp_4_CLK,
      I => U1_U1_BUS215(4),
      O => U1_U1_U8_Q_tmp(4),
      RST => reset_IBUF_815,
      SET => GND
    );
  U1_U1_U7_output_4_LogicTrst1 : X_LUT6
    generic map(
      LOC => "SLICE_X70Y78",
      INIT => X"FFFFFFFD555555FD"
    )
    port map (
      ADR4 => U1_U2_cState_FSM_FFd2_804,
      ADR0 => U1_U2_cState_FSM_FFd4_802,
      ADR3 => U1_U2_cState_FSM_FFd1_803,
      ADR2 => U1_U1_BUS993_4_0,
      ADR1 => U1_U1_BUS295_4_0,
      ADR5 => U1_U1_U5_Mmux_output6_split_4_0,
      O => U1_U1_BUS215(4)
    );
  U1_U2_in_sel : X_LATCHE
    generic map(
      LOC => "SLICE_X71Y76",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_U1_U2_in_sel_CLK,
      I => NlwBufferSignal_U1_U2_in_sel_IN,
      O => U1_U2_in_sel_809,
      RST => GND,
      SET => GND
    );
  U1_U1_U2_Mmux_output81 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y78",
      INIT => X"CCCCDDD8CCCC88D8"
    )
    port map (
      ADR1 => N8,
      ADR0 => U1_U2_cState_FSM_FFd6_In,
      ADR4 => U1_U2_cState_FSM_FFd6_797,
      ADR3 => U1_BUS289_6_Q,
      ADR2 => N7,
      ADR5 => U1_U1_U5_Mmux_output6_split_7_0,
      O => U1_U1_BUS318(7)
    );
  U1_U1_U5_Mmux_output781_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X71Y78",
      INIT => X"F0F0FFFCFFFF0003"
    )
    port map (
      ADR0 => '1',
      ADR5 => U1_U1_BUS295_7_0,
      ADR4 => U1_U1_BUS993_7_0,
      ADR1 => U1_U2_cState_FSM_FFd1_803,
      ADR3 => U1_U2_cState_FSM_FFd2_804,
      ADR2 => U1_U2_cState_FSM_FFd4_802,
      O => N7
    );
  U4_cur_digit_1_U4_cur_digit_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U4_digit_data_0_pack_3,
      O => U4_digit_data(0)
    );
  U4_cur_digit_1_U4_cur_digit_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_4_OBUF_659,
      O => display_4_OBUF_0
    );
  U4_cur_digit_1 : X_FF
    generic map(
      LOC => "SLICE_X81Y83",
      INIT => '0'
    )
    port map (
      CE => U4_GND_39_o_GND_39_o_equal_1_o,
      CLK => NlwBufferSignal_U4_cur_digit_1_CLK,
      I => Result(1),
      O => U4_cur_digit(1),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_Mcount_cur_digit_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y83",
      INIT => X"3333CCCC3333CCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U4_cur_digit(1),
      ADR4 => U4_cur_digit(0),
      ADR5 => '1',
      O => Result(1)
    );
  U4_Mmux_digit_data11 : X_LUT5
    generic map(
      LOC => "SLICE_X81Y83",
      INIT => X"30302222"
    )
    port map (
      ADR3 => '1',
      ADR2 => U1_U1_U8_Q_tmp(4),
      ADR0 => U1_U1_U8_Q_tmp(0),
      ADR1 => U4_cur_digit(1),
      ADR4 => U4_cur_digit(0),
      O => U4_digit_data_0_pack_3
    );
  U4_u1_Mram_segs61 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y83",
      INIT => X"0C0330030C033003"
    )
    port map (
      ADR0 => '1',
      ADR1 => U4_digit_data(1),
      ADR3 => U4_digit_data(2),
      ADR2 => U4_digit_data(3),
      ADR4 => U4_digit_data(0),
      ADR5 => '1',
      O => display_6_OBUF_821
    );
  U4_u1_Mram_segs41 : X_LUT5
    generic map(
      LOC => "SLICE_X81Y83",
      INIT => X"0F3F0300"
    )
    port map (
      ADR0 => '1',
      ADR1 => U4_digit_data(1),
      ADR3 => U4_digit_data(2),
      ADR2 => U4_digit_data(3),
      ADR4 => U4_digit_data(0),
      O => display_4_OBUF_659
    );
  U4_cur_digit_0 : X_FF
    generic map(
      LOC => "SLICE_X81Y83",
      INIT => '0'
    )
    port map (
      CE => U4_GND_39_o_GND_39_o_equal_1_o,
      CLK => NlwBufferSignal_U4_cur_digit_0_CLK,
      I => Result(0),
      O => U4_cur_digit(0),
      RST => reset_IBUF_815,
      SET => GND
    );
  U4_Mcount_cur_digit_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y83",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U4_cur_digit(0),
      ADR4 => '1',
      ADR5 => '1',
      O => Result(0)
    );
  display_5_OBUF_display_5_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_2_OBUF_680,
      O => display_2_OBUF_0
    );
  U4_u1_Mram_segs51 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y84",
      INIT => X"5055A0505055A050"
    )
    port map (
      ADR1 => '1',
      ADR0 => U4_digit_data(3),
      ADR4 => U4_digit_data(1),
      ADR2 => U4_digit_data(0),
      ADR3 => U4_digit_data(2),
      ADR5 => '1',
      O => display_5_OBUF_893
    );
  U4_u1_Mram_segs21 : X_LUT5
    generic map(
      LOC => "SLICE_X81Y84",
      INIT => X"AA050A00"
    )
    port map (
      ADR1 => '1',
      ADR0 => U4_digit_data(3),
      ADR4 => U4_digit_data(1),
      ADR2 => U4_digit_data(0),
      ADR3 => U4_digit_data(2),
      O => display_2_OBUF_680
    );
  U4_Mmux_digit_data31 : X_LUT6
    generic map(
      LOC => "SLICE_X81Y84",
      INIT => X"00EE00EE00440044"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U4_cur_digit(1),
      ADR0 => U4_cur_digit(0),
      ADR5 => U1_U1_U8_Q_tmp(6),
      ADR1 => U1_U1_U8_Q_tmp(2),
      O => U4_digit_data(2)
    );
  U4_Mmux_digit_data21 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y81",
      INIT => X"5511440055114400"
    )
    port map (
      ADR2 => '1',
      ADR5 => '1',
      ADR0 => U4_cur_digit(1),
      ADR1 => U4_cur_digit(0),
      ADR3 => U1_U1_U8_Q_tmp(5),
      ADR4 => U1_U1_U8_Q_tmp(1),
      O => U4_digit_data(1)
    );
  U4_u1_Mram_segs111 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y83",
      INIT => X"FAFA0A0A0A0AA0A0"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => U4_digit_data(2),
      ADR2 => U4_digit_data(0),
      ADR4 => U4_digit_data(1),
      ADR5 => U4_digit_data(3),
      O => display_1_OBUF_891
    );
  U4_Mmux_digit_data41 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y83",
      INIT => X"00000000CCCCAAAA"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => U4_cur_digit(1),
      ADR4 => U4_cur_digit(0),
      ADR1 => U1_U1_U8_Q_tmp(7),
      ADR0 => U1_U1_U8_Q_tmp(3),
      O => U4_digit_data(3)
    );
  display_0_OBUF_display_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_3_OBUF_708,
      O => display_3_OBUF_0
    );
  U4_u1_Mram_segs11 : X_LUT6
    generic map(
      LOC => "SLICE_X80Y84",
      INIT => X"00C3C00C00C3C00C"
    )
    port map (
      ADR0 => '1',
      ADR1 => U4_digit_data(0),
      ADR3 => U4_digit_data(1),
      ADR4 => U4_digit_data(2),
      ADR2 => U4_digit_data(3),
      ADR5 => '1',
      O => display_0_OBUF_848
    );
  U4_u1_Mram_segs31 : X_LUT5
    generic map(
      LOC => "SLICE_X80Y84",
      INIT => X"CC0330CC"
    )
    port map (
      ADR0 => '1',
      ADR1 => U4_digit_data(0),
      ADR3 => U4_digit_data(1),
      ADR4 => U4_digit_data(2),
      ADR2 => U4_digit_data(3),
      O => display_3_OBUF_708
    );
  digits_0_OBUF_digits_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => digits_1_OBUF_715,
      O => digits_1_OBUF_0
    );
  U4_Mram_digits12 : X_LUT6
    generic map(
      LOC => "SLICE_X85Y75",
      INIT => X"FCFCFCFCFCFCFCFC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U4_cur_digit(1),
      ADR2 => U4_cur_digit(0),
      ADR5 => '1',
      O => digits_0_OBUF_846
    );
  U4_Mram_digits111 : X_LUT5
    generic map(
      LOC => "SLICE_X85Y75",
      INIT => X"CFCFCFCF"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR1 => U4_cur_digit(1),
      ADR2 => U4_cur_digit(0),
      O => digits_1_OBUF_715
    );
  digits_2_OBUF_digits_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => digits_3_OBUF_718,
      O => digits_3_OBUF_0
    );
  U4_Mram_digits21 : X_LUT6
    generic map(
      LOC => "SLICE_X85Y81",
      INIT => X"FF33FF33FF33FF33"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U4_cur_digit(1),
      ADR3 => U4_cur_digit(0),
      ADR5 => '1',
      O => digits_2_OBUF_789
    );
  U4_Mram_digits31 : X_LUT5
    generic map(
      LOC => "SLICE_X85Y81",
      INIT => X"33FF33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U4_cur_digit(1),
      ADR3 => U4_cur_digit(0),
      O => digits_3_OBUF_718
    );
  N14_N14_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  U1_U1_U5_Mmux_output761_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y75",
      INIT => X"FFCC00CCFFCC00CC"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR4 => y_5_IBUF_808,
      ADR3 => U1_U2_in_sel_809,
      ADR1 => x_5_IBUF_810,
      ADR5 => '1',
      O => N14
    );
  U1_U1_U5_Mmux_output751_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X88Y75",
      INIT => X"AAF0AAF0"
    )
    port map (
      ADR0 => y_4_IBUF_806,
      ADR2 => x_4_IBUF_807,
      ADR1 => '1',
      ADR3 => U1_U2_in_sel_809,
      ADR4 => '1',
      O => N17
    );
  N26_N26_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N29,
      O => N29_0
    );
  N26_N26_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  U1_U1_U5_Mmux_output721_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y76",
      INIT => X"FC30FC30FC30FC30"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR3 => y_1_IBUF_833,
      ADR1 => U1_U2_in_sel_809,
      ADR2 => x_1_IBUF_834,
      ADR5 => '1',
      O => N26
    );
  U1_U1_U5_Mmux_output711_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X88Y76",
      INIT => X"BBBB8888"
    )
    port map (
      ADR0 => y_0_IBUF_831,
      ADR4 => x_0_IBUF_832,
      ADR2 => '1',
      ADR1 => U1_U2_in_sel_809,
      ADR3 => '1',
      O => N29
    );
  U1_U1_U5_Mmux_output781_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X88Y76",
      INIT => X"CCFFCC00CCFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR1 => y_7_IBUF_819,
      ADR3 => U1_U2_in_sel_809,
      ADR4 => x_7_IBUF_820,
      ADR5 => '1',
      O => N8
    );
  U1_U1_U5_Mmux_output771_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X88Y76",
      INIT => X"AAF0AAF0"
    )
    port map (
      ADR0 => y_6_IBUF_817,
      ADR2 => x_6_IBUF_818,
      ADR1 => '1',
      ADR3 => U1_U2_in_sel_809,
      ADR4 => '1',
      O => N11
    );
  N20_N20_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => N23,
      O => N23_0
    );
  U1_U1_U5_Mmux_output741_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X89Y76",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => y_3_IBUF_843,
      ADR3 => U1_U2_in_sel_809,
      ADR2 => x_3_IBUF_844,
      ADR5 => '1',
      O => N20
    );
  U1_U1_U5_Mmux_output731_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X89Y76",
      INIT => X"FFCC00CC"
    )
    port map (
      ADR4 => y_2_IBUF_841,
      ADR1 => x_2_IBUF_842,
      ADR2 => '1',
      ADR3 => U1_U2_in_sel_809,
      ADR0 => '1',
      O => N23
    );
  NlwBufferBlock_U4_gen_display_d_clk_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_3_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_2_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_1_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_0_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_7_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_6_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_5_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_4_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_11_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_10_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_9_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_8_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_13_CLK
    );
  NlwBufferBlock_U4_gen_display_d_clk_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_gen_display_d_clk_12_CLK
    );
  NlwBufferBlock_U1_U1_U5_Mmux_output6_rs_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295(1),
      O => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_cy_3_DI_1_Q
    );
  NlwBufferBlock_U1_U1_U5_Mmux_output6_rs_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295_2_0,
      O => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_cy_3_DI_2_Q
    );
  NlwBufferBlock_U1_U1_U5_Mmux_output6_rs_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295(3),
      O => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_cy_3_DI_3_Q
    );
  NlwBufferBlock_U1_U1_U5_Mmux_output6_rs_xor_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295_4_0,
      O => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_xor_7_DI_0_Q
    );
  NlwBufferBlock_U1_U1_U5_Mmux_output6_rs_xor_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295(5),
      O => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_xor_7_DI_1_Q
    );
  NlwBufferBlock_U1_U1_U5_Mmux_output6_rs_xor_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS295(6),
      O => NlwBufferSignal_U1_U1_U5_Mmux_output6_rs_xor_7_DI_2_Q
    );
  NlwBufferBlock_display_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_6_OBUF_821,
      O => NlwBufferSignal_display_6_OBUF_I
    );
  NlwBufferBlock_digits_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => digits_0_OBUF_846,
      O => NlwBufferSignal_digits_0_OBUF_I
    );
  NlwBufferBlock_digits_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => digits_1_OBUF_0,
      O => NlwBufferSignal_digits_1_OBUF_I
    );
  NlwBufferBlock_digits_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => digits_2_OBUF_789,
      O => NlwBufferSignal_digits_2_OBUF_I
    );
  NlwBufferBlock_digits_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => digits_3_OBUF_0,
      O => NlwBufferSignal_digits_3_OBUF_I
    );
  NlwBufferBlock_display_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_0_OBUF_848,
      O => NlwBufferSignal_display_0_OBUF_I
    );
  NlwBufferBlock_display_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_1_OBUF_891,
      O => NlwBufferSignal_display_1_OBUF_I
    );
  NlwBufferBlock_display_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_2_OBUF_0,
      O => NlwBufferSignal_display_2_OBUF_I
    );
  NlwBufferBlock_display_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_3_OBUF_0,
      O => NlwBufferSignal_display_3_OBUF_I
    );
  NlwBufferBlock_display_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_4_OBUF_0,
      O => NlwBufferSignal_display_4_OBUF_I
    );
  NlwBufferBlock_display_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_5_OBUF_893,
      O => NlwBufferSignal_display_5_OBUF_I
    );
  NlwBufferBlock_U3_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clock_IBUFG_890,
      O => NlwBufferSignal_U3_IN
    );
  NlwBufferBlock_U1_U2_cState_FSM_FFd8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U2_cState_FSM_FFd8_CLK
    );
  NlwBufferBlock_U1_U2_cState_FSM_FFd7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U2_cState_FSM_FFd7_CLK
    );
  NlwBufferBlock_U1_U2_cState_FSM_FFd5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U2_cState_FSM_FFd5_CLK
    );
  NlwBufferBlock_U1_U2_cState_FSM_FFd4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U2_cState_FSM_FFd4_CLK
    );
  NlwBufferBlock_U1_U2_cState_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U2_cState_FSM_FFd3_CLK
    );
  NlwBufferBlock_U1_U2_cState_FSM_FFd6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U2_cState_FSM_FFd6_CLK
    );
  NlwBufferBlock_U1_U2_cState_FSM_FFd6_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd6_In,
      O => NlwBufferSignal_U1_U2_cState_FSM_FFd6_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_D1_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMD_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_9_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(5),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_D1_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_9_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(4),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMC_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_9_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(3),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_D1_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_9_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(2),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMB_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_9_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(1),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_D1_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_9_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(0),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers11_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers11_RAMA_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_SP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_SP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_SP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_SP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(6),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_SP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_SP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_SP_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_SP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_SP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_SP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_SP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(7),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_SP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_SP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_SP_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_SP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_SP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_SP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_SP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(6),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_SP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_SP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_SP_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_SP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_SP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_SP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_SP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(7),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_SP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_SP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_SP_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_DP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_DP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_9_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_DP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_DP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(6),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_DP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers121_DP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers121_DP_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_DP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_DP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_9_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_DP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_DP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(7),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_DP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers122_DP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers122_DP_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_DP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_12_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_DP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_DP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_DP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(6),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_DP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers31_DP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers31_DP_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_DP_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_12_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_DP_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_DP_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_DP_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(7),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_DP_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers32_DP_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers32_DP_WADR1
    );
  NlwBufferBlock_U1_U2_cState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U2_cState_FSM_FFd2_CLK
    );
  NlwBufferBlock_U1_U2_cState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U2_cState_FSM_FFd1_CLK
    );
  NlwBufferBlock_U1_U1_U8_Q_tmp_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U8_Q_tmp_3_CLK
    );
  NlwBufferBlock_U1_U1_U8_Q_tmp_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U8_Q_tmp_2_CLK
    );
  NlwBufferBlock_U1_U1_U8_Q_tmp_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U8_Q_tmp_1_CLK
    );
  NlwBufferBlock_U1_U1_U8_Q_tmp_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U8_Q_tmp_0_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_D1_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMD_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMD_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_12_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(5),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_D1_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_12_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(4),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMC_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMC_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_12_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(3),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_D1_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_12_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(2),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMB_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMB_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_D1_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_12_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_D1_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_D1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_D1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(1),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_D1_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_D1_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_D1_WADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_RADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_12_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_RADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_RADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd1_803,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_RADR1
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_CLK
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U1_BUS318(0),
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_IN
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_WADR0 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_16_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_WADR0
    );
  NlwBufferBlock_U1_U1_U9_Mram_registers2_RAMA_WADR1 : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_BUS289_17_Q,
      O => NlwBufferSignal_U1_U1_U9_Mram_registers2_RAMA_WADR1
    );
  NlwBufferBlock_U1_U1_U8_Q_tmp_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U8_Q_tmp_7_CLK
    );
  NlwBufferBlock_U1_U1_U8_Q_tmp_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U8_Q_tmp_6_CLK
    );
  NlwBufferBlock_U1_U1_U8_Q_tmp_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U8_Q_tmp_5_CLK
    );
  NlwBufferBlock_U1_U1_U8_Q_tmp_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U1_U1_U8_Q_tmp_4_CLK
    );
  NlwBufferBlock_U1_U2_in_sel_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_2_GND_36_o_Mux_8_o_0,
      O => NlwBufferSignal_U1_U2_in_sel_CLK
    );
  NlwBufferBlock_U1_U2_in_sel_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U1_U2_cState_FSM_FFd6_797,
      O => NlwBufferSignal_U1_U2_in_sel_IN
    );
  NlwBufferBlock_U4_cur_digit_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_cur_digit_1_CLK
    );
  NlwBufferBlock_U4_cur_digit_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET174,
      O => NlwBufferSignal_U4_cur_digit_0_CLK
    );
  NlwBlock_finalFPGA_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_finalFPGA_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

