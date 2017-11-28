--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.28xd
--  \   \         Application: netgen
--  /   /         Filename: time_sim.vhd
-- /___/   /\     Timestamp: Tue Nov 14 20:33:40 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl -pcf UpDwnCounter.pcf -tpw 0 -rpw 100 -s 3 -ar Structure -insert_pp_buffers true UpDwnCounter.ncd time_sim.vhd 
-- Device	: 7a100tcsg324-3 (ADVANCED 1.04 2012-07-09)
-- Input file	: UpDwnCounter.ncd
-- Output file	: time_sim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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

architecture Structure of UpDwnCounter is
  signal clock_IBUFG_612 : STD_LOGIC; 
  signal NET490 : STD_LOGIC; 
  signal U5_GND_15_o_GND_15_o_equal_1_o : STD_LOGIC; 
  signal reset_IBUF_616 : STD_LOGIC; 
  signal U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618 : STD_LOGIC; 
  signal U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619 : STD_LOGIC; 
  signal U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q : STD_LOGIC; 
  signal U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621 : STD_LOGIC; 
  signal Result_10_0 : STD_LOGIC; 
  signal Result_11_0 : STD_LOGIC; 
  signal Result_20_0 : STD_LOGIC; 
  signal Result_12_0 : STD_LOGIC; 
  signal Result_21_0 : STD_LOGIC; 
  signal Result_13_0 : STD_LOGIC; 
  signal Result_22_0 : STD_LOGIC; 
  signal Result_14_0 : STD_LOGIC; 
  signal Result_15_0 : STD_LOGIC; 
  signal Result_16_0 : STD_LOGIC; 
  signal Result_17_0 : STD_LOGIC; 
  signal Result_18_0 : STD_LOGIC; 
  signal Result_19_0 : STD_LOGIC; 
  signal U2_clk_bit_648 : STD_LOGIC; 
  signal enable_IBUF_649 : STD_LOGIC; 
  signal U3_currentState_FSM_FFd1_650 : STD_LOGIC; 
  signal upDwn_IBUF_651 : STD_LOGIC; 
  signal U3_currentState_FSM_FFd2_652 : STD_LOGIC; 
  signal U3_currentState_1_PWR_11_o_Mux_13_o_0 : STD_LOGIC; 
  signal U3_cnt_tmp_0_654 : STD_LOGIC; 
  signal U3_cnt_tmp_1_655 : STD_LOGIC; 
  signal U3_cnt_tmp_3_656 : STD_LOGIC; 
  signal U3_cnt_tmp_2_657 : STD_LOGIC; 
  signal Result_1_0 : STD_LOGIC; 
  signal Result_2_0 : STD_LOGIC; 
  signal Result_3_0 : STD_LOGIC; 
  signal Result_4_0 : STD_LOGIC; 
  signal Result_5_0 : STD_LOGIC; 
  signal Result_6_0 : STD_LOGIC; 
  signal Result_7_0 : STD_LOGIC; 
  signal Result_8_0 : STD_LOGIC; 
  signal Result_9_0 : STD_LOGIC; 
  signal Result_23_0 : STD_LOGIC; 
  signal Result_0_0 : STD_LOGIC; 
  signal display_0_OBUF_680 : STD_LOGIC; 
  signal display_1_OBUF_681 : STD_LOGIC; 
  signal display_2_OBUF_682 : STD_LOGIC; 
  signal display_3_OBUF_683 : STD_LOGIC; 
  signal display_4_OBUF_684 : STD_LOGIC; 
  signal display_5_OBUF_685 : STD_LOGIC; 
  signal display_6_OBUF_686 : STD_LOGIC; 
  signal U5_GND_15_o_GND_15_o_equal_1_o_13_1_689 : STD_LOGIC; 
  signal digits_0_OBUF_696 : STD_LOGIC; 
  signal digits_1_OBUF_0 : STD_LOGIC; 
  signal digits_2_OBUF_698 : STD_LOGIC; 
  signal digits_3_OBUF_0 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_3_Q_700 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_7_Q_701 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_11_Q_702 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_15_Q_703 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_cy_19_Q_704 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_3_Q_705 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_7_Q_706 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_11_Q_707 : STD_LOGIC; 
  signal U3_currentState_FSM_FFd3_708 : STD_LOGIC; 
  signal U3_currentState_1_X_9_o_Mux_14_o : STD_LOGIC; 
  signal U2_clk_cnt_1_rt_14 : STD_LOGIC; 
  signal U2_clk_cnt_2_rt_11 : STD_LOGIC; 
  signal U2_clk_cnt_3_rt_2 : STD_LOGIC; 
  signal U2_clk_cnt_4_rt_39 : STD_LOGIC; 
  signal U2_clk_cnt_5_rt_36 : STD_LOGIC; 
  signal U2_clk_cnt_6_rt_33 : STD_LOGIC; 
  signal U2_clk_cnt_7_rt_24 : STD_LOGIC; 
  signal U2_clk_cnt_8_rt_61 : STD_LOGIC; 
  signal U2_clk_cnt_9_rt_58 : STD_LOGIC; 
  signal U2_clk_cnt_10_rt_55 : STD_LOGIC; 
  signal U2_clk_cnt_11_rt_46 : STD_LOGIC; 
  signal U2_clk_cnt_12_rt_83 : STD_LOGIC; 
  signal U2_clk_cnt_13_rt_80 : STD_LOGIC; 
  signal U2_clk_cnt_14_rt_77 : STD_LOGIC; 
  signal U2_clk_cnt_15_rt_68 : STD_LOGIC; 
  signal U2_clk_cnt_16_rt_105 : STD_LOGIC; 
  signal U2_clk_cnt_17_rt_102 : STD_LOGIC; 
  signal U2_clk_cnt_18_rt_99 : STD_LOGIC; 
  signal U2_clk_cnt_19_rt_90 : STD_LOGIC; 
  signal U2_clk_cnt_20_rt_125 : STD_LOGIC; 
  signal U2_clk_cnt_21_rt_122 : STD_LOGIC; 
  signal U2_clk_cnt_22_rt_119 : STD_LOGIC; 
  signal U2_clk_cnt_23_rt_112 : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_3_U2_clk_cnt_1_rt : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_3_U2_clk_cnt_2_rt : STD_LOGIC; 
  signal U5_Mcount_gen_display_d_clk_cy_3_U2_clk_cnt_3_rt : STD_LOGIC; 
  signal U5_gen_display_d_clk_7_U2_clk_cnt_4_rt : STD_LOGIC; 
  signal U5_gen_display_d_clk_7_U2_clk_cnt_5_rt : STD_LOGIC; 
  signal U5_gen_display_d_clk_7_U2_clk_cnt_6_rt : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal U5_gen_display_d_clk_7_rt_151 : STD_LOGIC; 
  signal U5_gen_display_d_clk_8_rt_192 : STD_LOGIC; 
  signal U5_gen_display_d_clk_9_rt_188 : STD_LOGIC; 
  signal U5_gen_display_d_clk_10_rt_184 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Result_9_1 : STD_LOGIC; 
  signal Result_10_1 : STD_LOGIC; 
  signal Result_11_1 : STD_LOGIC; 
  signal U5_gen_display_d_clk_11_rt_173 : STD_LOGIC; 
  signal U3_currentState_1_X_9_o_Mux_18_o : STD_LOGIC; 
  signal U5_gen_display_d_clk_12_rt_265 : STD_LOGIC; 
  signal U5_gen_display_d_clk_13_rt_262 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_1 : STD_LOGIC; 
  signal Result_12_1 : STD_LOGIC; 
  signal Result_13_1 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_2 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_17 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_0 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_18 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_10 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_14 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_16 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_15 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_9 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_11_330 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_12 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_7 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_22 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_13 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_19 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_20 : STD_LOGIC; 
  signal digits_3_OBUF_421 : STD_LOGIC; 
  signal U3_currentState_FSM_FFd1_In : STD_LOGIC; 
  signal U3_currentState_FSM_FFd2_In : STD_LOGIC; 
  signal U3_currentState_1_PWR_11_o_Mux_13_o : STD_LOGIC; 
  signal U3_currentState_FSM_FFd3_In : STD_LOGIC; 
  signal U3_currentState_1_X_9_o_Mux_14_o_pack_7 : STD_LOGIC; 
  signal U3_currentState_1_X_9_o_Mux_16_o : STD_LOGIC; 
  signal U3_currentState_1_X_9_o_Mux_12_o : STD_LOGIC; 
  signal digits_1_OBUF_480 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_6 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_5 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_3 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_4 : STD_LOGIC; 
  signal U2_clk_bit_dpot_542 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_8 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_23 : STD_LOGIC; 
  signal U2_Mcount_clk_cnt_eqn_21_582 : STD_LOGIC; 
  signal NlwBufferSignal_U1_IN : STD_LOGIC; 
  signal NlwBufferSignal_U5_gen_display_d_clk_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U5_gen_display_d_clk_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U5_gen_display_d_clk_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U5_gen_display_d_clk_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U5_gen_display_d_clk_8_CLK : STD_LOGIC; 
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
  signal NlwBufferSignal_U3_cnt_tmp_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U5_gen_display_d_clk_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U5_gen_display_d_clk_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_17_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_18_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_10_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_16_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_14_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_15_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_9_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_12_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_11_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_22_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_13_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_20_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_19_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U3_currentState_FSM_FFd3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U3_currentState_FSM_FFd2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U3_currentState_FSM_FFd1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U3_cnt_tmp_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U3_cnt_tmp_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U3_cnt_tmp_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U3_cnt_tmp_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_U5_cur_digit_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U5_cur_digit_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_bit_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_23_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_8_CLK : STD_LOGIC; 
  signal NlwBufferSignal_U2_clk_cnt_21_CLK : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_18_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp26_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_17_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_16_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_2_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_22_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_21_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_20_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_19_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_26_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_25_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_24_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_23_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_30_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_15_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_15_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_15_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_29_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_28_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_27_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_34_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_19_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_19_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_cy_19_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_33_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_32_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_31_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_xor_23_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_xor_23_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_xor_23_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_xor_23_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_Mcount_clk_cnt_xor_23_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_37_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_36_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_35_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_4_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_ProtoComp29_CYINITGND_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_3_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_3_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_3_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_3_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_3_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_2_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_N1_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_8_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_7_O_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_7_O_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_7_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_7_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_6_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_5_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_12_D5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_11_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_11_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_cy_11_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_11_C5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_10_B5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_9_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_DI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_DI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_DI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_O_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_O_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_S_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_U5_Mcount_gen_display_d_clk_xor_13_S_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_U2_clk_cnt_24_13_A5LUT_O_UNCONNECTED : STD_LOGIC; 
  signal U5_cur_digit : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U2_clk_cnt : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal U5_gen_display_d_clk : STD_LOGIC_VECTOR ( 13 downto 7 ); 
  signal U5_GND_15_o_GND_15_o_equal_1_o_0 : STD_LOGIC_VECTOR ( 13 downto 13 ); 
  signal U2_Mcount_clk_cnt_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal U5_Mcount_gen_display_d_clk_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  U1 : X_CKBUF
    generic map(
      LOC => "BUFGCTRL_X0Y31",
      PATHPULSE => 50 ps
    )
    port map (
      I => NlwBufferSignal_U1_IN,
      O => NET490
    );
  U2_Mcount_clk_cnt_cy_3_U2_Mcount_clk_cnt_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(3),
      O => Result_3_0
    );
  U2_Mcount_clk_cnt_cy_3_U2_Mcount_clk_cnt_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(2),
      O => Result_2_0
    );
  U2_Mcount_clk_cnt_cy_3_U2_Mcount_clk_cnt_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(1),
      O => Result_1_0
    );
  U2_Mcount_clk_cnt_cy_3_U2_Mcount_clk_cnt_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(0),
      O => Result_0_0
    );
  U2_clk_cnt_3_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y122",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(3),
      ADR5 => '1',
      O => U2_clk_cnt_3_rt_2
    );
  U2_clk_cnt_24_18_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y122",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_18_D5LUT_O_UNCONNECTED
    );
  ProtoComp26_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X0Y122"
    )
    port map (
      O => NLW_ProtoComp26_CYINITGND_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y122"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U2_Mcount_clk_cnt_cy_3_Q_700,
      CO(2) => NLW_U2_Mcount_clk_cnt_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_Mcount_clk_cnt_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_Mcount_clk_cnt_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => Result(3),
      O(2) => Result(2),
      O(1) => Result(1),
      O(0) => Result(0),
      S(3) => U2_clk_cnt_3_rt_2,
      S(2) => U2_clk_cnt_2_rt_11,
      S(1) => U2_clk_cnt_1_rt_14,
      S(0) => U2_Mcount_clk_cnt_lut(0)
    );
  U2_clk_cnt_2_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y122",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(2),
      ADR5 => '1',
      O => U2_clk_cnt_2_rt_11
    );
  U2_clk_cnt_24_17_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y122",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_17_C5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_1_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y122",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(1),
      ADR5 => '1',
      O => U2_clk_cnt_1_rt_14
    );
  U2_clk_cnt_24_16_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y122",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_16_B5LUT_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y122",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(0),
      ADR5 => '1',
      O => U2_Mcount_clk_cnt_lut(0)
    );
  N1_2_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y122",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_2_A5LUT_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_cy_7_U2_Mcount_clk_cnt_cy_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(7),
      O => Result_7_0
    );
  U2_Mcount_clk_cnt_cy_7_U2_Mcount_clk_cnt_cy_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(6),
      O => Result_6_0
    );
  U2_Mcount_clk_cnt_cy_7_U2_Mcount_clk_cnt_cy_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(5),
      O => Result_5_0
    );
  U2_Mcount_clk_cnt_cy_7_U2_Mcount_clk_cnt_cy_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(4),
      O => Result_4_0
    );
  U2_clk_cnt_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y123",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(7),
      ADR5 => '1',
      O => U2_clk_cnt_7_rt_24
    );
  U2_clk_cnt_24_22_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y123",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_22_D5LUT_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y123"
    )
    port map (
      CI => U2_Mcount_clk_cnt_cy_3_Q_700,
      CYINIT => '0',
      CO(3) => U2_Mcount_clk_cnt_cy_7_Q_701,
      CO(2) => NLW_U2_Mcount_clk_cnt_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_Mcount_clk_cnt_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_Mcount_clk_cnt_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(7),
      O(2) => Result(6),
      O(1) => Result(5),
      O(0) => Result(4),
      S(3) => U2_clk_cnt_7_rt_24,
      S(2) => U2_clk_cnt_6_rt_33,
      S(1) => U2_clk_cnt_5_rt_36,
      S(0) => U2_clk_cnt_4_rt_39
    );
  U2_clk_cnt_6_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y123",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(6),
      ADR5 => '1',
      O => U2_clk_cnt_6_rt_33
    );
  U2_clk_cnt_24_21_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y123",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_21_C5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_5_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y123",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(5),
      ADR5 => '1',
      O => U2_clk_cnt_5_rt_36
    );
  U2_clk_cnt_24_20_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y123",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_20_B5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_4_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y123",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(4),
      ADR5 => '1',
      O => U2_clk_cnt_4_rt_39
    );
  U2_clk_cnt_24_19_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y123",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_19_A5LUT_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_cy_11_U2_Mcount_clk_cnt_cy_11_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(11),
      O => Result_11_0
    );
  U2_Mcount_clk_cnt_cy_11_U2_Mcount_clk_cnt_cy_11_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(10),
      O => Result_10_0
    );
  U2_Mcount_clk_cnt_cy_11_U2_Mcount_clk_cnt_cy_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(9),
      O => Result_9_0
    );
  U2_Mcount_clk_cnt_cy_11_U2_Mcount_clk_cnt_cy_11_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(8),
      O => Result_8_0
    );
  U2_clk_cnt_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y124",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(11),
      ADR5 => '1',
      O => U2_clk_cnt_11_rt_46
    );
  U2_clk_cnt_24_26_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y124",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_26_D5LUT_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y124"
    )
    port map (
      CI => U2_Mcount_clk_cnt_cy_7_Q_701,
      CYINIT => '0',
      CO(3) => U2_Mcount_clk_cnt_cy_11_Q_702,
      CO(2) => NLW_U2_Mcount_clk_cnt_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_Mcount_clk_cnt_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_Mcount_clk_cnt_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(11),
      O(2) => Result(10),
      O(1) => Result(9),
      O(0) => Result(8),
      S(3) => U2_clk_cnt_11_rt_46,
      S(2) => U2_clk_cnt_10_rt_55,
      S(1) => U2_clk_cnt_9_rt_58,
      S(0) => U2_clk_cnt_8_rt_61
    );
  U2_clk_cnt_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y124",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U2_clk_cnt(10),
      ADR5 => '1',
      O => U2_clk_cnt_10_rt_55
    );
  U2_clk_cnt_24_25_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y124",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_25_C5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y124",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(9),
      ADR5 => '1',
      O => U2_clk_cnt_9_rt_58
    );
  U2_clk_cnt_24_24_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y124",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_24_B5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y124",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(8),
      ADR5 => '1',
      O => U2_clk_cnt_8_rt_61
    );
  U2_clk_cnt_24_23_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y124",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_23_A5LUT_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_cy_15_U2_Mcount_clk_cnt_cy_15_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(15),
      O => Result_15_0
    );
  U2_Mcount_clk_cnt_cy_15_U2_Mcount_clk_cnt_cy_15_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(14),
      O => Result_14_0
    );
  U2_Mcount_clk_cnt_cy_15_U2_Mcount_clk_cnt_cy_15_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(13),
      O => Result_13_0
    );
  U2_Mcount_clk_cnt_cy_15_U2_Mcount_clk_cnt_cy_15_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(12),
      O => Result_12_0
    );
  U2_clk_cnt_15_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y125",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(15),
      ADR5 => '1',
      O => U2_clk_cnt_15_rt_68
    );
  U2_clk_cnt_24_30_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y125",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_30_D5LUT_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_cy_15_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y125"
    )
    port map (
      CI => U2_Mcount_clk_cnt_cy_11_Q_702,
      CYINIT => '0',
      CO(3) => U2_Mcount_clk_cnt_cy_15_Q_703,
      CO(2) => NLW_U2_Mcount_clk_cnt_cy_15_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_Mcount_clk_cnt_cy_15_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_Mcount_clk_cnt_cy_15_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(15),
      O(2) => Result(14),
      O(1) => Result(13),
      O(0) => Result(12),
      S(3) => U2_clk_cnt_15_rt_68,
      S(2) => U2_clk_cnt_14_rt_77,
      S(1) => U2_clk_cnt_13_rt_80,
      S(0) => U2_clk_cnt_12_rt_83
    );
  U2_clk_cnt_14_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y125",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(14),
      ADR5 => '1',
      O => U2_clk_cnt_14_rt_77
    );
  U2_clk_cnt_24_29_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y125",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_29_C5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y125",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(13),
      ADR5 => '1',
      O => U2_clk_cnt_13_rt_80
    );
  U2_clk_cnt_24_28_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y125",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_28_B5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y125",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U2_clk_cnt(12),
      ADR5 => '1',
      O => U2_clk_cnt_12_rt_83
    );
  U2_clk_cnt_24_27_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y125",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_27_A5LUT_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_cy_19_U2_Mcount_clk_cnt_cy_19_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(19),
      O => Result_19_0
    );
  U2_Mcount_clk_cnt_cy_19_U2_Mcount_clk_cnt_cy_19_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(18),
      O => Result_18_0
    );
  U2_Mcount_clk_cnt_cy_19_U2_Mcount_clk_cnt_cy_19_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(17),
      O => Result_17_0
    );
  U2_Mcount_clk_cnt_cy_19_U2_Mcount_clk_cnt_cy_19_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(16),
      O => Result_16_0
    );
  U2_clk_cnt_19_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y126",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(19),
      ADR5 => '1',
      O => U2_clk_cnt_19_rt_90
    );
  U2_clk_cnt_24_34_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y126",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_34_D5LUT_O_UNCONNECTED
    );
  U2_Mcount_clk_cnt_cy_19_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y126"
    )
    port map (
      CI => U2_Mcount_clk_cnt_cy_15_Q_703,
      CYINIT => '0',
      CO(3) => U2_Mcount_clk_cnt_cy_19_Q_704,
      CO(2) => NLW_U2_Mcount_clk_cnt_cy_19_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_Mcount_clk_cnt_cy_19_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_Mcount_clk_cnt_cy_19_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(19),
      O(2) => Result(18),
      O(1) => Result(17),
      O(0) => Result(16),
      S(3) => U2_clk_cnt_19_rt_90,
      S(2) => U2_clk_cnt_18_rt_99,
      S(1) => U2_clk_cnt_17_rt_102,
      S(0) => U2_clk_cnt_16_rt_105
    );
  U2_clk_cnt_18_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y126",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(18),
      ADR5 => '1',
      O => U2_clk_cnt_18_rt_99
    );
  U2_clk_cnt_24_33_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y126",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_33_C5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_17_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y126",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(17),
      ADR5 => '1',
      O => U2_clk_cnt_17_rt_102
    );
  U2_clk_cnt_24_32_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y126",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_32_B5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_16_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y126",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(16),
      ADR5 => '1',
      O => U2_clk_cnt_16_rt_105
    );
  U2_clk_cnt_24_31_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y126",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_31_A5LUT_O_UNCONNECTED
    );
  Result_23_Result_23_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(23),
      O => Result_23_0
    );
  Result_23_Result_23_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(22),
      O => Result_22_0
    );
  Result_23_Result_23_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(21),
      O => Result_21_0
    );
  Result_23_Result_23_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => Result(20),
      O => Result_20_0
    );
  U2_clk_cnt_23_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y127",
      INIT => X"FFFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR5 => U2_clk_cnt(23),
      O => U2_clk_cnt_23_rt_112
    );
  U2_Mcount_clk_cnt_xor_23_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X0Y127"
    )
    port map (
      CI => U2_Mcount_clk_cnt_cy_19_Q_704,
      CYINIT => '0',
      CO(3) => NLW_U2_Mcount_clk_cnt_xor_23_CO_3_UNCONNECTED,
      CO(2) => NLW_U2_Mcount_clk_cnt_xor_23_CO_2_UNCONNECTED,
      CO(1) => NLW_U2_Mcount_clk_cnt_xor_23_CO_1_UNCONNECTED,
      CO(0) => NLW_U2_Mcount_clk_cnt_xor_23_CO_0_UNCONNECTED,
      DI(3) => NLW_U2_Mcount_clk_cnt_xor_23_DI_3_UNCONNECTED,
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result(23),
      O(2) => Result(22),
      O(1) => Result(21),
      O(0) => Result(20),
      S(3) => U2_clk_cnt_23_rt_112,
      S(2) => U2_clk_cnt_22_rt_119,
      S(1) => U2_clk_cnt_21_rt_122,
      S(0) => U2_clk_cnt_20_rt_125
    );
  U2_clk_cnt_22_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y127",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(22),
      ADR5 => '1',
      O => U2_clk_cnt_22_rt_119
    );
  U2_clk_cnt_24_37_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y127",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_37_C5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_21_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y127",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U2_clk_cnt(21),
      ADR5 => '1',
      O => U2_clk_cnt_21_rt_122
    );
  U2_clk_cnt_24_36_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y127",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_36_B5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_20_rt : X_LUT6
    generic map(
      LOC => "SLICE_X0Y127",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => U2_clk_cnt(20),
      ADR5 => '1',
      O => U2_clk_cnt_20_rt_125
    );
  U2_clk_cnt_24_35_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X0Y127",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_35_A5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_3_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y119",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(3),
      ADR5 => '1',
      O => U5_Mcount_gen_display_d_clk_cy_3_U2_clk_cnt_3_rt
    );
  U2_clk_cnt_24_4_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y119",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_4_D5LUT_O_UNCONNECTED
    );
  ProtoComp29_CYINITGND : X_ZERO
    generic map(
      LOC => "SLICE_X1Y119"
    )
    port map (
      O => NLW_ProtoComp29_CYINITGND_O_UNCONNECTED
    );
  U5_Mcount_gen_display_d_clk_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X1Y119"
    )
    port map (
      CI => '0',
      CYINIT => '0',
      CO(3) => U5_Mcount_gen_display_d_clk_cy_3_Q_705,
      CO(2) => NLW_U5_Mcount_gen_display_d_clk_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_U5_Mcount_gen_display_d_clk_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_U5_Mcount_gen_display_d_clk_cy_3_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => NLW_U5_Mcount_gen_display_d_clk_cy_3_O_3_UNCONNECTED,
      O(2) => NLW_U5_Mcount_gen_display_d_clk_cy_3_O_2_UNCONNECTED,
      O(1) => NLW_U5_Mcount_gen_display_d_clk_cy_3_O_1_UNCONNECTED,
      O(0) => NLW_U5_Mcount_gen_display_d_clk_cy_3_O_0_UNCONNECTED,
      S(3) => U5_Mcount_gen_display_d_clk_cy_3_U2_clk_cnt_3_rt,
      S(2) => U5_Mcount_gen_display_d_clk_cy_3_U2_clk_cnt_2_rt,
      S(1) => U5_Mcount_gen_display_d_clk_cy_3_U2_clk_cnt_1_rt,
      S(0) => U5_Mcount_gen_display_d_clk_lut(0)
    );
  U2_clk_cnt_2_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y119",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(2),
      ADR5 => '1',
      O => U5_Mcount_gen_display_d_clk_cy_3_U2_clk_cnt_2_rt
    );
  U2_clk_cnt_24_3_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y119",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_3_C5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_1_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y119",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(1),
      ADR5 => '1',
      O => U5_Mcount_gen_display_d_clk_cy_3_U2_clk_cnt_1_rt
    );
  U2_clk_cnt_24_2_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y119",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_2_B5LUT_O_UNCONNECTED
    );
  U5_Mcount_gen_display_d_clk_lut_0_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y119",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(0),
      ADR5 => '1',
      O => U5_Mcount_gen_display_d_clk_lut(0)
    );
  N1_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y119",
      INIT => X"FFFFFFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_N1_A5LUT_O_UNCONNECTED
    );
  U5_gen_display_d_clk_7 : X_FF
    generic map(
      LOC => "SLICE_X1Y120",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U5_gen_display_d_clk_7_CLK,
      I => Result_7_1,
      O => U5_gen_display_d_clk(7),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_gen_display_d_clk_7_rt : X_LUT6
    generic map(
      LOC => "SLICE_X1Y120",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U5_gen_display_d_clk(7),
      ADR4 => '1',
      ADR5 => '1',
      O => U5_gen_display_d_clk_7_rt_151
    );
  U2_clk_cnt_24_8_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y120",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_8_D5LUT_O_UNCONNECTED
    );
  U5_Mcount_gen_display_d_clk_cy_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X1Y120"
    )
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy_3_Q_705,
      CYINIT => '0',
      CO(3) => U5_Mcount_gen_display_d_clk_cy_7_Q_706,
      CO(2) => NLW_U5_Mcount_gen_display_d_clk_cy_7_CO_2_UNCONNECTED,
      CO(1) => NLW_U5_Mcount_gen_display_d_clk_cy_7_CO_1_UNCONNECTED,
      CO(0) => NLW_U5_Mcount_gen_display_d_clk_cy_7_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_7_1,
      O(2) => NLW_U5_Mcount_gen_display_d_clk_cy_7_O_2_UNCONNECTED,
      O(1) => NLW_U5_Mcount_gen_display_d_clk_cy_7_O_1_UNCONNECTED,
      O(0) => NLW_U5_Mcount_gen_display_d_clk_cy_7_O_0_UNCONNECTED,
      S(3) => U5_gen_display_d_clk_7_rt_151,
      S(2) => U5_gen_display_d_clk_7_U2_clk_cnt_6_rt,
      S(1) => U5_gen_display_d_clk_7_U2_clk_cnt_5_rt,
      S(0) => U5_gen_display_d_clk_7_U2_clk_cnt_4_rt
    );
  U2_clk_cnt_6_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y120",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(6),
      ADR5 => '1',
      O => U5_gen_display_d_clk_7_U2_clk_cnt_6_rt
    );
  U2_clk_cnt_24_7_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y120",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_7_C5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_5_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y120",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(5),
      ADR5 => '1',
      O => U5_gen_display_d_clk_7_U2_clk_cnt_5_rt
    );
  U2_clk_cnt_24_6_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y120",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_6_B5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_4_rt_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y120",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => U2_clk_cnt(4),
      ADR5 => '1',
      O => U5_gen_display_d_clk_7_U2_clk_cnt_4_rt
    );
  U2_clk_cnt_24_5_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y120",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_5_A5LUT_O_UNCONNECTED
    );
  U5_gen_display_d_clk_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U5_gen_display_d_clk_11_CLK,
      I => Result_11_1,
      O => U5_gen_display_d_clk(11),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_gen_display_d_clk_11_rt : X_LUT6
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U5_gen_display_d_clk(11),
      ADR4 => '1',
      ADR5 => '1',
      O => U5_gen_display_d_clk_11_rt_173
    );
  U2_clk_cnt_24_12_D5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_12_D5LUT_O_UNCONNECTED
    );
  U5_gen_display_d_clk_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U5_gen_display_d_clk_10_CLK,
      I => Result_10_1,
      O => U5_gen_display_d_clk(10),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_Mcount_gen_display_d_clk_cy_11_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X1Y121"
    )
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy_7_Q_706,
      CYINIT => '0',
      CO(3) => U5_Mcount_gen_display_d_clk_cy_11_Q_707,
      CO(2) => NLW_U5_Mcount_gen_display_d_clk_cy_11_CO_2_UNCONNECTED,
      CO(1) => NLW_U5_Mcount_gen_display_d_clk_cy_11_CO_1_UNCONNECTED,
      CO(0) => NLW_U5_Mcount_gen_display_d_clk_cy_11_CO_0_UNCONNECTED,
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => Result_11_1,
      O(2) => Result_10_1,
      O(1) => Result_9_1,
      O(0) => Result_8_1,
      S(3) => U5_gen_display_d_clk_11_rt_173,
      S(2) => U5_gen_display_d_clk_10_rt_184,
      S(1) => U5_gen_display_d_clk_9_rt_188,
      S(0) => U5_gen_display_d_clk_8_rt_192
    );
  U5_gen_display_d_clk_10_rt : X_LUT6
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U5_gen_display_d_clk(10),
      ADR3 => '1',
      ADR5 => '1',
      O => U5_gen_display_d_clk_10_rt_184
    );
  U2_clk_cnt_24_11_C5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_11_C5LUT_O_UNCONNECTED
    );
  U5_gen_display_d_clk_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U5_gen_display_d_clk_9_CLK,
      I => Result_9_1,
      O => U5_gen_display_d_clk(9),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_gen_display_d_clk_9_rt : X_LUT6
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => X"FFFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => U5_gen_display_d_clk(9),
      ADR3 => '1',
      ADR5 => '1',
      O => U5_gen_display_d_clk_9_rt_188
    );
  U2_clk_cnt_24_10_B5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_10_B5LUT_O_UNCONNECTED
    );
  U5_gen_display_d_clk_8 : X_FF
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U5_gen_display_d_clk_8_CLK,
      I => Result_8_1,
      O => U5_gen_display_d_clk(8),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_gen_display_d_clk_8_rt : X_LUT6
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U5_gen_display_d_clk(8),
      ADR4 => '1',
      ADR5 => '1',
      O => U5_gen_display_d_clk_8_rt_192
    );
  U2_clk_cnt_24_9_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y121",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_9_A5LUT_O_UNCONNECTED
    );
  display_6_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y92"
    )
    port map (
      I => NlwBufferSignal_display_6_OBUF_I,
      O => display(6)
    );
  enable_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y93",
      PATHPULSE => 50 ps
    )
    port map (
      O => enable_IBUF_649,
      I => enable
    );
  digits_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y104"
    )
    port map (
      I => NlwBufferSignal_digits_0_OBUF_I,
      O => digits(0)
    );
  digits_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y103"
    )
    port map (
      I => NlwBufferSignal_digits_1_OBUF_I,
      O => digits(1)
    );
  digits_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y52"
    )
    port map (
      I => NlwBufferSignal_digits_2_OBUF_I,
      O => digits(2)
    );
  upDwn_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y87",
      PATHPULSE => 50 ps
    )
    port map (
      O => upDwn_IBUF_651,
      I => upDwn
    );
  digits_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y112"
    )
    port map (
      I => NlwBufferSignal_digits_3_OBUF_I,
      O => digits(3)
    );
  clock_IBUFG : X_BUF
    generic map(
      LOC => "IOB_X1Y126",
      PATHPULSE => 50 ps
    )
    port map (
      O => clock_IBUFG_612,
      I => clock
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "IOB_X0Y101",
      PATHPULSE => 50 ps
    )
    port map (
      O => reset_IBUF_616,
      I => reset
    );
  display_0_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y51"
    )
    port map (
      I => NlwBufferSignal_display_0_OBUF_I,
      O => display(0)
    );
  display_1_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y50"
    )
    port map (
      I => NlwBufferSignal_display_1_OBUF_I,
      O => display(1)
    );
  display_2_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y100"
    )
    port map (
      I => NlwBufferSignal_display_2_OBUF_I,
      O => display(2)
    );
  display_3_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y116"
    )
    port map (
      I => NlwBufferSignal_display_3_OBUF_I,
      O => display(3)
    );
  display_4_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y74"
    )
    port map (
      I => NlwBufferSignal_display_4_OBUF_I,
      O => display(4)
    );
  display_5_OBUF : X_OBUF
    generic map(
      LOC => "IOB_X0Y62"
    )
    port map (
      I => NlwBufferSignal_display_5_OBUF_I,
      O => display(5)
    );
  display_6_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y91",
      INIT => X"FFFFFFFFF0F9F4F1"
    )
    port map (
      ADR3 => U3_cnt_tmp_3_656,
      ADR1 => U3_cnt_tmp_2_657,
      ADR0 => U3_cnt_tmp_1_655,
      ADR4 => U3_cnt_tmp_0_654,
      ADR2 => U5_cur_digit(0),
      ADR5 => U5_cur_digit(1),
      O => display_6_OBUF_686
    );
  U3_cnt_tmp_0 : X_LATCHE
    generic map(
      LOC => "SLICE_X1Y95",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_U3_cnt_tmp_0_CLK,
      I => U3_currentState_1_X_9_o_Mux_18_o,
      O => U3_cnt_tmp_0_654,
      RST => GND,
      SET => GND
    );
  U3_Mmux_currentState_1_X_9_o_Mux_18_o_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y95",
      INIT => X"00000000FFFFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => U3_cnt_tmp_0_654,
      ADR4 => U3_currentState_FSM_FFd1_650,
      ADR1 => U3_currentState_FSM_FFd2_652,
      O => U3_currentState_1_X_9_o_Mux_18_o
    );
  U2_clk_cnt_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y122",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_2_CLK,
      I => U2_Mcount_clk_cnt_eqn_2,
      O => U2_clk_cnt(2),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_21 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y122",
      INIT => X"5FFFFFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_2_0,
      O => U2_Mcount_clk_cnt_eqn_2
    );
  U2_clk_cnt_1 : X_FF
    generic map(
      LOC => "SLICE_X1Y122",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_1_CLK,
      I => U2_Mcount_clk_cnt_eqn_1,
      O => U2_clk_cnt(1),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_Mcount_gen_display_d_clk_xor_13_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X1Y122"
    )
    port map (
      CI => U5_Mcount_gen_display_d_clk_cy_11_Q_707,
      CYINIT => '0',
      CO(3) => NLW_U5_Mcount_gen_display_d_clk_xor_13_CO_3_UNCONNECTED,
      CO(2) => NLW_U5_Mcount_gen_display_d_clk_xor_13_CO_2_UNCONNECTED,
      CO(1) => NLW_U5_Mcount_gen_display_d_clk_xor_13_CO_1_UNCONNECTED,
      CO(0) => NLW_U5_Mcount_gen_display_d_clk_xor_13_CO_0_UNCONNECTED,
      DI(3) => NLW_U5_Mcount_gen_display_d_clk_xor_13_DI_3_UNCONNECTED,
      DI(2) => NLW_U5_Mcount_gen_display_d_clk_xor_13_DI_2_UNCONNECTED,
      DI(1) => NLW_U5_Mcount_gen_display_d_clk_xor_13_DI_1_UNCONNECTED,
      DI(0) => '0',
      O(3) => NLW_U5_Mcount_gen_display_d_clk_xor_13_O_3_UNCONNECTED,
      O(2) => NLW_U5_Mcount_gen_display_d_clk_xor_13_O_2_UNCONNECTED,
      O(1) => Result_13_1,
      O(0) => Result_12_1,
      S(3) => NLW_U5_Mcount_gen_display_d_clk_xor_13_S_3_UNCONNECTED,
      S(2) => NLW_U5_Mcount_gen_display_d_clk_xor_13_S_2_UNCONNECTED,
      S(1) => U5_gen_display_d_clk_13_rt_262,
      S(0) => U5_gen_display_d_clk_12_rt_265
    );
  U2_Mcount_clk_cnt_eqn_11 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y122",
      INIT => X"30F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR5 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR2 => Result_1_0,
      O => U2_Mcount_clk_cnt_eqn_1
    );
  U5_gen_display_d_clk_13 : X_FF
    generic map(
      LOC => "SLICE_X1Y122",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U5_gen_display_d_clk_13_CLK,
      I => Result_13_1,
      O => U5_gen_display_d_clk(13),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_gen_display_d_clk_13_rt : X_LUT6
    generic map(
      LOC => "SLICE_X1Y122",
      INIT => X"CCCCCCCCCCCCCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => U5_gen_display_d_clk(13),
      ADR4 => '1',
      ADR5 => '1',
      O => U5_gen_display_d_clk_13_rt_262
    );
  U5_gen_display_d_clk_12 : X_FF
    generic map(
      LOC => "SLICE_X1Y122",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U5_gen_display_d_clk_12_CLK,
      I => Result_12_1,
      O => U5_gen_display_d_clk(12),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_gen_display_d_clk_12_rt : X_LUT6
    generic map(
      LOC => "SLICE_X1Y122",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U5_gen_display_d_clk(12),
      ADR4 => '1',
      ADR5 => '1',
      O => U5_gen_display_d_clk_12_rt_265
    );
  U2_clk_cnt_24_13_A5LUT : X_LUT5
    generic map(
      LOC => "SLICE_X1Y122",
      INIT => X"00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => NLW_U2_clk_cnt_24_13_A5LUT_O_UNCONNECTED
    );
  U2_clk_cnt_17 : X_FF
    generic map(
      LOC => "SLICE_X1Y123",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_17_CLK,
      I => U2_Mcount_clk_cnt_eqn_17,
      O => U2_clk_cnt(17),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_171 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y123",
      INIT => X"5FFF0000FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR5 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR4 => Result_17_0,
      O => U2_Mcount_clk_cnt_eqn_17
    );
  U2_clk_cnt_27_GND_8_o_equal_1_o_27_4 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y123",
      INIT => X"0000000000000001"
    )
    port map (
      ADR1 => U2_clk_cnt(16),
      ADR2 => U2_clk_cnt(14),
      ADR3 => U2_clk_cnt(17),
      ADR0 => U2_clk_cnt(18),
      ADR5 => U2_clk_cnt(21),
      ADR4 => U2_clk_cnt(22),
      O => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618
    );
  U2_clk_cnt_0 : X_FF
    generic map(
      LOC => "SLICE_X1Y123",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_0_CLK,
      I => U2_Mcount_clk_cnt_eqn_0,
      O => U2_clk_cnt(0),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_01 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y123",
      INIT => X"50F0F0F0F0F0F0F0"
    )
    port map (
      ADR1 => '1',
      ADR2 => Result_0_0,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR5 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      O => U2_Mcount_clk_cnt_eqn_0
    );
  U2_clk_cnt_18 : X_FF
    generic map(
      LOC => "SLICE_X1Y124",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_18_CLK,
      I => U2_Mcount_clk_cnt_eqn_18,
      O => U2_clk_cnt(18),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_181 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y124",
      INIT => X"3FFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_18_0,
      O => U2_Mcount_clk_cnt_eqn_18
    );
  U2_clk_cnt_10 : X_FF
    generic map(
      LOC => "SLICE_X1Y124",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_10_CLK,
      I => U2_Mcount_clk_cnt_eqn_10,
      O => U2_clk_cnt(10),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_101 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y124",
      INIT => X"3FFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_10_0,
      O => U2_Mcount_clk_cnt_eqn_10
    );
  U2_clk_cnt_16 : X_FF
    generic map(
      LOC => "SLICE_X1Y124",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_16_CLK,
      I => U2_Mcount_clk_cnt_eqn_16,
      O => U2_clk_cnt(16),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_161 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y124",
      INIT => X"3FFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_16_0,
      O => U2_Mcount_clk_cnt_eqn_16
    );
  U2_clk_cnt_14 : X_FF
    generic map(
      LOC => "SLICE_X1Y124",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_14_CLK,
      I => U2_Mcount_clk_cnt_eqn_14,
      O => U2_clk_cnt(14),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_141 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y124",
      INIT => X"3FFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR5 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR4 => Result_14_0,
      O => U2_Mcount_clk_cnt_eqn_14
    );
  U2_clk_cnt_15 : X_FF
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_15_CLK,
      I => U2_Mcount_clk_cnt_eqn_15,
      O => U2_clk_cnt(15),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_151 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => X"5FFFFFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_15_0,
      O => U2_Mcount_clk_cnt_eqn_15
    );
  U2_clk_cnt_9 : X_FF
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_9_CLK,
      I => U2_Mcount_clk_cnt_eqn_9,
      O => U2_clk_cnt(9),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_91 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => X"3FFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR5 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR4 => Result_9_0,
      O => U2_Mcount_clk_cnt_eqn_9
    );
  U2_clk_cnt_12 : X_FF
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_12_CLK,
      I => U2_Mcount_clk_cnt_eqn_12,
      O => U2_clk_cnt(12),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_121 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => X"5FFFFFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_12_0,
      O => U2_Mcount_clk_cnt_eqn_12
    );
  U2_clk_cnt_11 : X_FF
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_11_CLK,
      I => U2_Mcount_clk_cnt_eqn_11_330,
      O => U2_clk_cnt(11),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_111 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y125",
      INIT => X"3FFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_11_0,
      O => U2_Mcount_clk_cnt_eqn_11_330
    );
  U2_clk_cnt_7 : X_FF
    generic map(
      LOC => "SLICE_X1Y126",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_7_CLK,
      I => U2_Mcount_clk_cnt_eqn_7,
      O => U2_clk_cnt(7),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_71 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y126",
      INIT => X"3FFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_7_0,
      O => U2_Mcount_clk_cnt_eqn_7
    );
  U2_clk_cnt_22 : X_FF
    generic map(
      LOC => "SLICE_X1Y127",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_22_CLK,
      I => U2_Mcount_clk_cnt_eqn_22,
      O => U2_clk_cnt(22),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_221 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y127",
      INIT => X"5FFFFFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_22_0,
      O => U2_Mcount_clk_cnt_eqn_22
    );
  U2_clk_cnt_13 : X_FF
    generic map(
      LOC => "SLICE_X1Y127",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_13_CLK,
      I => U2_Mcount_clk_cnt_eqn_13,
      O => U2_clk_cnt(13),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_131 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y127",
      INIT => X"5FFF0000FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR5 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR4 => Result_13_0,
      O => U2_Mcount_clk_cnt_eqn_13
    );
  U2_clk_cnt_20 : X_FF
    generic map(
      LOC => "SLICE_X1Y127",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_20_CLK,
      I => U2_Mcount_clk_cnt_eqn_20,
      O => U2_clk_cnt(20),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_201 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y127",
      INIT => X"5FFFFFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_20_0,
      O => U2_Mcount_clk_cnt_eqn_20
    );
  U2_clk_cnt_19 : X_FF
    generic map(
      LOC => "SLICE_X1Y127",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_19_CLK,
      I => U2_Mcount_clk_cnt_eqn_19,
      O => U2_clk_cnt(19),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_191 : X_LUT6
    generic map(
      LOC => "SLICE_X1Y127",
      INIT => X"3FFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_19_0,
      O => U2_Mcount_clk_cnt_eqn_19
    );
  display_1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => X"0000000050440440"
    )
    port map (
      ADR5 => U5_cur_digit(0),
      ADR0 => U5_cur_digit(1),
      ADR1 => U3_cnt_tmp_2_657,
      ADR3 => U3_cnt_tmp_0_654,
      ADR2 => U3_cnt_tmp_3_656,
      ADR4 => U3_cnt_tmp_1_655,
      O => display_1_OBUF_681
    );
  display_5_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y84",
      INIT => X"0004000B00000002"
    )
    port map (
      ADR3 => U5_cur_digit(0),
      ADR2 => U5_cur_digit(1),
      ADR5 => U3_cnt_tmp_0_654,
      ADR4 => U3_cnt_tmp_3_656,
      ADR1 => U3_cnt_tmp_2_657,
      ADR0 => U3_cnt_tmp_1_655,
      O => display_5_OBUF_685
    );
  display_4_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y85",
      INIT => X"0002000300020022"
    )
    port map (
      ADR1 => U5_cur_digit(0),
      ADR3 => U5_cur_digit(1),
      ADR0 => U3_cnt_tmp_0_654,
      ADR2 => U3_cnt_tmp_3_656,
      ADR5 => U3_cnt_tmp_2_657,
      ADR4 => U3_cnt_tmp_1_655,
      O => display_4_OBUF_684
    );
  display_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y85",
      INIT => X"0000000900080004"
    )
    port map (
      ADR2 => U5_cur_digit(0),
      ADR3 => U5_cur_digit(1),
      ADR1 => U3_cnt_tmp_0_654,
      ADR0 => U3_cnt_tmp_3_656,
      ADR5 => U3_cnt_tmp_2_657,
      ADR4 => U3_cnt_tmp_1_655,
      O => display_0_OBUF_680
    );
  digits_2_OBUF_digits_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => digits_3_OBUF_421,
      O => digits_3_OBUF_0
    );
  U5_Mram_digits21 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y86",
      INIT => X"FF33FF33FF33FF33"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U5_cur_digit(1),
      ADR3 => U5_cur_digit(0),
      ADR5 => '1',
      O => digits_2_OBUF_698
    );
  U5_Mram_digits31 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y86",
      INIT => X"33FF33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR1 => U5_cur_digit(1),
      ADR3 => U5_cur_digit(0),
      O => digits_3_OBUF_421
    );
  U3_currentState_FSM_FFd3_U3_currentState_FSM_FFd3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U3_currentState_1_PWR_11_o_Mux_13_o,
      O => U3_currentState_1_PWR_11_o_Mux_13_o_0
    );
  U3_currentState_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => '1'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U3_currentState_FSM_FFd3_CLK,
      I => U3_currentState_FSM_FFd3_In,
      O => U3_currentState_FSM_FFd3_708,
      SET => reset_IBUF_616,
      RST => GND
    );
  U3_currentState_FSM_FFd3_In1_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => X"0000FFFF0000FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR4 => enable_IBUF_649,
      O => U3_currentState_FSM_FFd3_In
    );
  U3_currentState_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U3_currentState_FSM_FFd2_CLK,
      I => U3_currentState_FSM_FFd2_In,
      O => U3_currentState_FSM_FFd2_652,
      RST => reset_IBUF_616,
      SET => GND
    );
  U3_currentState_FSM_FFd2_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => X"AA22AA20AA22AA20"
    )
    port map (
      ADR0 => enable_IBUF_649,
      ADR1 => upDwn_IBUF_651,
      ADR2 => U3_currentState_FSM_FFd1_650,
      ADR4 => U3_currentState_FSM_FFd2_652,
      ADR3 => U3_currentState_FSM_FFd3_708,
      ADR5 => '1',
      O => U3_currentState_FSM_FFd2_In
    );
  U3_Mmux_currentState_1_PWR_11_o_Mux_13_o_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => X"FFA2FF80"
    )
    port map (
      ADR0 => enable_IBUF_649,
      ADR1 => upDwn_IBUF_651,
      ADR2 => U3_currentState_FSM_FFd1_650,
      ADR4 => U3_currentState_FSM_FFd2_652,
      ADR3 => U3_currentState_FSM_FFd3_708,
      O => U3_currentState_1_PWR_11_o_Mux_13_o
    );
  U3_currentState_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U3_currentState_FSM_FFd1_CLK,
      I => U3_currentState_FSM_FFd1_In,
      O => U3_currentState_FSM_FFd1_650,
      RST => reset_IBUF_616,
      SET => GND
    );
  U3_currentState_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y94",
      INIT => X"C0C0C0C0C0C00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR1 => enable_IBUF_649,
      ADR5 => U3_currentState_FSM_FFd1_650,
      ADR2 => upDwn_IBUF_651,
      ADR4 => U3_currentState_FSM_FFd2_652,
      O => U3_currentState_FSM_FFd1_In
    );
  U3_cnt_tmp_3_U3_cnt_tmp_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U3_currentState_1_X_9_o_Mux_14_o_pack_7,
      O => U3_currentState_1_X_9_o_Mux_14_o
    );
  U3_cnt_tmp_3 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_U3_cnt_tmp_3_CLK,
      I => U3_currentState_1_X_9_o_Mux_12_o,
      O => U3_cnt_tmp_3_656,
      RST => GND,
      SET => GND
    );
  U3_Mmux_currentState_1_X_9_o_Mux_12_o_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"ACE0E0E0E0E0E0CA"
    )
    port map (
      ADR0 => U3_currentState_FSM_FFd1_650,
      ADR3 => U3_cnt_tmp_0_654,
      ADR5 => U3_cnt_tmp_1_655,
      ADR2 => U3_cnt_tmp_3_656,
      ADR4 => U3_cnt_tmp_2_657,
      ADR1 => U3_currentState_FSM_FFd2_652,
      O => U3_currentState_1_X_9_o_Mux_12_o
    );
  U3_cnt_tmp_1 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_U3_cnt_tmp_1_CLK,
      I => U3_currentState_1_X_9_o_Mux_16_o,
      O => U3_cnt_tmp_1_655,
      RST => GND,
      SET => GND
    );
  U3_Mmux_currentState_1_X_9_o_Mux_16_o_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"ACACCACAACACCACA"
    )
    port map (
      ADR3 => '1',
      ADR0 => U3_currentState_FSM_FFd1_650,
      ADR2 => U3_cnt_tmp_0_654,
      ADR4 => U3_cnt_tmp_1_655,
      ADR1 => U3_currentState_FSM_FFd2_652,
      ADR5 => '1',
      O => U3_currentState_1_X_9_o_Mux_16_o
    );
  U3_Mmux_currentState_1_X_9_o_Mux_14_o_0_1 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => X"AEC0EC0A"
    )
    port map (
      ADR3 => U3_cnt_tmp_2_657,
      ADR0 => U3_currentState_FSM_FFd1_650,
      ADR2 => U3_cnt_tmp_0_654,
      ADR4 => U3_cnt_tmp_1_655,
      ADR1 => U3_currentState_FSM_FFd2_652,
      O => U3_currentState_1_X_9_o_Mux_14_o_pack_7
    );
  U3_cnt_tmp_2 : X_LATCHE
    generic map(
      LOC => "SLICE_X0Y95",
      INIT => '0'
    )
    port map (
      GE => VCC,
      CLK => NlwBufferSignal_U3_cnt_tmp_2_CLK,
      I => NlwBufferSignal_U3_cnt_tmp_2_IN,
      O => U3_cnt_tmp_2_657,
      RST => GND,
      SET => GND
    );
  display_2_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y99",
      INIT => X"0008000900000008"
    )
    port map (
      ADR2 => U5_cur_digit(0),
      ADR3 => U5_cur_digit(1),
      ADR4 => U3_cnt_tmp_0_654,
      ADR0 => U3_cnt_tmp_3_656,
      ADR1 => U3_cnt_tmp_2_657,
      ADR5 => U3_cnt_tmp_1_655,
      O => display_2_OBUF_682
    );
  display_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y100",
      INIT => X"000C00010002000C"
    )
    port map (
      ADR2 => U5_cur_digit(0),
      ADR3 => U5_cur_digit(1),
      ADR1 => U3_cnt_tmp_0_654,
      ADR5 => U3_cnt_tmp_2_657,
      ADR4 => U3_cnt_tmp_1_655,
      ADR0 => U3_cnt_tmp_3_656,
      O => display_3_OBUF_683
    );
  digits_0_OBUF_digits_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => digits_1_OBUF_480,
      O => digits_1_OBUF_0
    );
  U5_Mram_digits12 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y103",
      INIT => X"FFCCFFCCFFCCFFCC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => U5_cur_digit(1),
      ADR1 => U5_cur_digit(0),
      ADR5 => '1',
      O => digits_0_OBUF_696
    );
  U5_Mram_digits111 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y103",
      INIT => X"FF33FF33"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR3 => U5_cur_digit(1),
      ADR1 => U5_cur_digit(0),
      O => digits_1_OBUF_480
    );
  U5_GND_15_o_GND_15_o_equal_1_o_13_2 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y118",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => U5_gen_display_d_clk(7),
      ADR3 => U2_clk_cnt(6),
      ADR4 => U5_gen_display_d_clk(8),
      ADR1 => U5_gen_display_d_clk(9),
      ADR5 => U5_gen_display_d_clk(10),
      ADR2 => U5_gen_display_d_clk(11),
      O => U5_GND_15_o_GND_15_o_equal_1_o_13_1_689
    );
  U5_cur_digit_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y119",
      INIT => '0'
    )
    port map (
      CE => U5_GND_15_o_GND_15_o_equal_1_o,
      CLK => NlwBufferSignal_U5_cur_digit_1_CLK,
      I => Result_1_1,
      O => U5_cur_digit(1),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_Mcount_cur_digit_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y119",
      INIT => X"3C3C3C3C3C3C3C3C"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR5 => '1',
      ADR1 => U5_cur_digit(1),
      ADR4 => '1',
      ADR2 => U5_cur_digit(0),
      O => Result_1_1
    );
  U5_cur_digit_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y119",
      INIT => '0'
    )
    port map (
      CE => U5_GND_15_o_GND_15_o_equal_1_o,
      CLK => NlwBufferSignal_U5_cur_digit_0_CLK,
      I => Result_0_1,
      O => U5_cur_digit(0),
      RST => reset_IBUF_616,
      SET => GND
    );
  U5_Mcount_cur_digit_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y119",
      INIT => X"0F0F0F0F0F0F0F0F"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => U5_cur_digit(0),
      ADR4 => '1',
      ADR5 => '1',
      O => Result_0_1
    );
  U5_GND_15_o_GND_15_o_equal_1_o_13_1 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y120",
      INIT => X"0000000000000001"
    )
    port map (
      ADR3 => U2_clk_cnt(1),
      ADR2 => U2_clk_cnt(0),
      ADR0 => U2_clk_cnt(2),
      ADR4 => U2_clk_cnt(3),
      ADR1 => U2_clk_cnt(4),
      ADR5 => U2_clk_cnt(5),
      O => U5_GND_15_o_GND_15_o_equal_1_o_0(13)
    );
  U5_GND_15_o_GND_15_o_equal_1_o_13_3 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y120",
      INIT => X"000000000F000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => U5_gen_display_d_clk(12),
      ADR5 => U5_gen_display_d_clk(13),
      ADR4 => U5_GND_15_o_GND_15_o_equal_1_o_13_1_689,
      ADR3 => U5_GND_15_o_GND_15_o_equal_1_o_0(13),
      O => U5_GND_15_o_GND_15_o_equal_1_o
    );
  U2_clk_cnt_6 : X_FF
    generic map(
      LOC => "SLICE_X0Y121",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_6_CLK,
      I => U2_Mcount_clk_cnt_eqn_6,
      O => U2_clk_cnt(6),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_61 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y121",
      INIT => X"3FFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_6_0,
      O => U2_Mcount_clk_cnt_eqn_6
    );
  U2_clk_cnt_5 : X_FF
    generic map(
      LOC => "SLICE_X0Y121",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_5_CLK,
      I => U2_Mcount_clk_cnt_eqn_5,
      O => U2_clk_cnt(5),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_51 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y121",
      INIT => X"5FFF0000FFFF0000"
    )
    port map (
      ADR1 => '1',
      ADR5 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR4 => Result_5_0,
      O => U2_Mcount_clk_cnt_eqn_5
    );
  U2_clk_cnt_4 : X_FF
    generic map(
      LOC => "SLICE_X0Y121",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_4_CLK,
      I => U2_Mcount_clk_cnt_eqn_4,
      O => U2_clk_cnt(4),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_41 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y121",
      INIT => X"5FFFFFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_4_0,
      O => U2_Mcount_clk_cnt_eqn_4
    );
  U2_clk_cnt_3 : X_FF
    generic map(
      LOC => "SLICE_X0Y121",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_3_CLK,
      I => U2_Mcount_clk_cnt_eqn_3,
      O => U2_clk_cnt(3),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_31 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y121",
      INIT => X"3FFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_3_0,
      O => U2_Mcount_clk_cnt_eqn_3
    );
  U2_clk_bit : X_FF
    generic map(
      LOC => "SLICE_X2Y121",
      INIT => '0'
    )
    port map (
      CE => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      CLK => NlwBufferSignal_U2_clk_bit_CLK,
      I => U2_clk_bit_dpot_542,
      O => U2_clk_bit_648,
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_clk_bit_dpot : X_LUT6
    generic map(
      LOC => "SLICE_X2Y121",
      INIT => X"0FF0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR2 => U2_clk_bit_648,
      ADR5 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      O => U2_clk_bit_dpot_542
    );
  U2_clk_cnt_27_GND_8_o_equal_1_o_27_2 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y124",
      INIT => X"8000000000000000"
    )
    port map (
      ADR4 => U2_clk_cnt(3),
      ADR0 => U2_clk_cnt(2),
      ADR3 => U2_clk_cnt(5),
      ADR5 => U2_clk_cnt(4),
      ADR1 => U2_clk_cnt(9),
      ADR2 => U2_clk_cnt(6),
      O => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621
    );
  U2_clk_cnt_23 : X_FF
    generic map(
      LOC => "SLICE_X2Y124",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_23_CLK,
      I => U2_Mcount_clk_cnt_eqn_23,
      O => U2_clk_cnt(23),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_231 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y124",
      INIT => X"5FFFFFFF00000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_23_0,
      O => U2_Mcount_clk_cnt_eqn_23
    );
  U2_clk_cnt_8 : X_FF
    generic map(
      LOC => "SLICE_X2Y124",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_8_CLK,
      I => U2_Mcount_clk_cnt_eqn_8,
      O => U2_clk_cnt(8),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_81 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y124",
      INIT => X"3FFFFFFF00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR4 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR5 => Result_8_0,
      O => U2_Mcount_clk_cnt_eqn_8
    );
  U2_clk_cnt_27_GND_8_o_equal_1_o_27_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y124",
      INIT => X"8000000000000000"
    )
    port map (
      ADR1 => U2_clk_cnt(12),
      ADR0 => U2_clk_cnt(10),
      ADR2 => U2_clk_cnt(19),
      ADR5 => U2_clk_cnt(15),
      ADR4 => U2_clk_cnt(23),
      ADR3 => U2_clk_cnt(20),
      O => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q
    );
  U2_clk_cnt_21 : X_FF
    generic map(
      LOC => "SLICE_X2Y126",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => NlwBufferSignal_U2_clk_cnt_21_CLK,
      I => U2_Mcount_clk_cnt_eqn_21_582,
      O => U2_clk_cnt(21),
      RST => reset_IBUF_616,
      SET => GND
    );
  U2_Mcount_clk_cnt_eqn_211 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y126",
      INIT => X"3FFF0000FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_3_618,
      ADR3 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619,
      ADR5 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_Q,
      ADR2 => U2_clk_cnt_27_GND_8_o_equal_1_o_27_1_621,
      ADR4 => Result_21_0,
      O => U2_Mcount_clk_cnt_eqn_21_582
    );
  U2_clk_cnt_27_GND_8_o_equal_1_o_27_3 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y124",
      INIT => X"0000000400000000"
    )
    port map (
      ADR2 => U2_clk_cnt(7),
      ADR3 => U2_clk_cnt(8),
      ADR0 => U2_clk_cnt(11),
      ADR4 => U2_clk_cnt(13),
      ADR5 => U2_clk_cnt(1),
      ADR1 => U2_clk_cnt(0),
      O => U2_clk_cnt_27_GND_8_o_equal_1_o_27_2_619
    );
  NlwBufferBlock_U1_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => clock_IBUFG_612,
      O => NlwBufferSignal_U1_IN
    );
  NlwBufferBlock_U5_gen_display_d_clk_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U5_gen_display_d_clk_7_CLK
    );
  NlwBufferBlock_U5_gen_display_d_clk_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U5_gen_display_d_clk_11_CLK
    );
  NlwBufferBlock_U5_gen_display_d_clk_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U5_gen_display_d_clk_10_CLK
    );
  NlwBufferBlock_U5_gen_display_d_clk_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U5_gen_display_d_clk_9_CLK
    );
  NlwBufferBlock_U5_gen_display_d_clk_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U5_gen_display_d_clk_8_CLK
    );
  NlwBufferBlock_display_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_6_OBUF_686,
      O => NlwBufferSignal_display_6_OBUF_I
    );
  NlwBufferBlock_digits_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => digits_0_OBUF_696,
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
      I => digits_2_OBUF_698,
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
      I => display_0_OBUF_680,
      O => NlwBufferSignal_display_0_OBUF_I
    );
  NlwBufferBlock_display_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_1_OBUF_681,
      O => NlwBufferSignal_display_1_OBUF_I
    );
  NlwBufferBlock_display_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_2_OBUF_682,
      O => NlwBufferSignal_display_2_OBUF_I
    );
  NlwBufferBlock_display_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_3_OBUF_683,
      O => NlwBufferSignal_display_3_OBUF_I
    );
  NlwBufferBlock_display_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_4_OBUF_684,
      O => NlwBufferSignal_display_4_OBUF_I
    );
  NlwBufferBlock_display_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => display_5_OBUF_685,
      O => NlwBufferSignal_display_5_OBUF_I
    );
  NlwBufferBlock_U3_cnt_tmp_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U3_currentState_1_PWR_11_o_Mux_13_o_0,
      O => NlwBufferSignal_U3_cnt_tmp_0_CLK
    );
  NlwBufferBlock_U2_clk_cnt_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_2_CLK
    );
  NlwBufferBlock_U2_clk_cnt_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_1_CLK
    );
  NlwBufferBlock_U5_gen_display_d_clk_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U5_gen_display_d_clk_13_CLK
    );
  NlwBufferBlock_U5_gen_display_d_clk_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U5_gen_display_d_clk_12_CLK
    );
  NlwBufferBlock_U2_clk_cnt_17_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_17_CLK
    );
  NlwBufferBlock_U2_clk_cnt_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_0_CLK
    );
  NlwBufferBlock_U2_clk_cnt_18_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_18_CLK
    );
  NlwBufferBlock_U2_clk_cnt_10_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_10_CLK
    );
  NlwBufferBlock_U2_clk_cnt_16_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_16_CLK
    );
  NlwBufferBlock_U2_clk_cnt_14_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_14_CLK
    );
  NlwBufferBlock_U2_clk_cnt_15_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_15_CLK
    );
  NlwBufferBlock_U2_clk_cnt_9_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_9_CLK
    );
  NlwBufferBlock_U2_clk_cnt_12_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_12_CLK
    );
  NlwBufferBlock_U2_clk_cnt_11_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_11_CLK
    );
  NlwBufferBlock_U2_clk_cnt_7_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_7_CLK
    );
  NlwBufferBlock_U2_clk_cnt_22_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_22_CLK
    );
  NlwBufferBlock_U2_clk_cnt_13_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_13_CLK
    );
  NlwBufferBlock_U2_clk_cnt_20_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_20_CLK
    );
  NlwBufferBlock_U2_clk_cnt_19_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_19_CLK
    );
  NlwBufferBlock_U3_currentState_FSM_FFd3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U2_clk_bit_648,
      O => NlwBufferSignal_U3_currentState_FSM_FFd3_CLK
    );
  NlwBufferBlock_U3_currentState_FSM_FFd2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U2_clk_bit_648,
      O => NlwBufferSignal_U3_currentState_FSM_FFd2_CLK
    );
  NlwBufferBlock_U3_currentState_FSM_FFd1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U2_clk_bit_648,
      O => NlwBufferSignal_U3_currentState_FSM_FFd1_CLK
    );
  NlwBufferBlock_U3_cnt_tmp_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U3_currentState_1_PWR_11_o_Mux_13_o_0,
      O => NlwBufferSignal_U3_cnt_tmp_3_CLK
    );
  NlwBufferBlock_U3_cnt_tmp_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U3_currentState_1_PWR_11_o_Mux_13_o_0,
      O => NlwBufferSignal_U3_cnt_tmp_1_CLK
    );
  NlwBufferBlock_U3_cnt_tmp_2_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U3_currentState_1_PWR_11_o_Mux_13_o_0,
      O => NlwBufferSignal_U3_cnt_tmp_2_CLK
    );
  NlwBufferBlock_U3_cnt_tmp_2_IN : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => U3_currentState_1_X_9_o_Mux_14_o,
      O => NlwBufferSignal_U3_cnt_tmp_2_IN
    );
  NlwBufferBlock_U5_cur_digit_1_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U5_cur_digit_1_CLK
    );
  NlwBufferBlock_U5_cur_digit_0_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U5_cur_digit_0_CLK
    );
  NlwBufferBlock_U2_clk_cnt_6_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_6_CLK
    );
  NlwBufferBlock_U2_clk_cnt_5_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_5_CLK
    );
  NlwBufferBlock_U2_clk_cnt_4_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_4_CLK
    );
  NlwBufferBlock_U2_clk_cnt_3_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_3_CLK
    );
  NlwBufferBlock_U2_clk_bit_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_bit_CLK
    );
  NlwBufferBlock_U2_clk_cnt_23_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_23_CLK
    );
  NlwBufferBlock_U2_clk_cnt_8_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_8_CLK
    );
  NlwBufferBlock_U2_clk_cnt_21_CLK : X_BUF
    generic map(
      PATHPULSE => 50 ps
    )
    port map (
      I => NET490,
      O => NlwBufferSignal_U2_clk_cnt_21_CLK
    );
  NlwBlock_UpDwnCounter_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_UpDwnCounter_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

