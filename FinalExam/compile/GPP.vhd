-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : FinalExam
-- Author      : Computer Science
-- Company     : Rowan University
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\F2017_Mahoney\FinalExam\compile\GPP.vhd
-- Generated   : Tue Dec 19 19:26:58 2017
-- From        : c:\My_Designs\F2017_Mahoney\FinalExam\src\GPP.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;


entity GPP is
  port(
       clock : in STD_LOGIC;
       reset : in STD_LOGIC;
       start : in STD_LOGIC;
       x : in STD_LOGIC_VECTOR(7 downto 0);
       y : in STD_LOGIC_VECTOR(7 downto 0);
       output : out STD_LOGIC_VECTOR(7 downto 0)
  );
end GPP;

architecture GPP of GPP is

---- Component declarations -----

component dataPath
  port (
       ALU_mode : in STD_LOGIC;
       ALU_sel : in STD_LOGIC_VECTOR(1 downto 0);
       clear : in STD_LOGIC;
       clk : in STD_LOGIC;
       in_sel : in STD_LOGIC;
       outSel : in STD_LOGIC;
       raa : in STD_LOGIC_VECTOR(2 downto 0);
       rab : in STD_LOGIC_VECTOR(2 downto 0);
       rea : in STD_LOGIC;
       reb : in STD_LOGIC;
       selector_select : in STD_LOGIC;
       shifter_sel : in STD_LOGIC_VECTOR(2 downto 0);
       wa : in STD_LOGIC_VECTOR(2 downto 0);
       we : in STD_LOGIC;
       x : in STD_LOGIC_VECTOR(7 downto 0);
       y : in STD_LOGIC_VECTOR(7 downto 0);
       output : out STD_LOGIC_VECTOR(7 downto 0);
       x_lt_y : out STD_LOGIC;
       x_neq_y : out STD_LOGIC
  );
end component;
component FSM
  port (
       clock : in STD_LOGIC;
       reset : in STD_LOGIC;
       start : in STD_LOGIC;
       x_lt_y : in STD_LOGIC;
       x_neq_y : in STD_LOGIC;
       Cntrl_word : out STD_LOGIC_VECTOR(19 downto 0);
       in_sel : out STD_LOGIC
  );
end component;
component instDecoder
  port (
       cntrlWord : in STD_LOGIC_VECTOR(19 downto 0);
       ALU_mode : out STD_LOGIC;
       ALU_sel : out STD_LOGIC_VECTOR(1 downto 0);
       outSel : out STD_LOGIC;
       raa : out STD_LOGIC_VECTOR(2 downto 0);
       rab : out STD_LOGIC_VECTOR(2 downto 0);
       rea : out STD_LOGIC;
       reb : out STD_LOGIC;
       selector_sel : out STD_LOGIC;
       shifter_sel : out STD_LOGIC_VECTOR(2 downto 0);
       wa : out STD_LOGIC_VECTOR(2 downto 0);
       we : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET262 : STD_LOGIC;
signal NET275 : STD_LOGIC;
signal NET350 : STD_LOGIC;
signal NET359 : STD_LOGIC;
signal NET368 : STD_LOGIC;
signal NET435 : STD_LOGIC;
signal NET444 : STD_LOGIC;
signal NET453 : STD_LOGIC;
signal NET462 : STD_LOGIC;
signal BUS289 : STD_LOGIC_VECTOR (19 downto 0);
signal BUS467 : STD_LOGIC_VECTOR (2 downto 0);
signal BUS476 : STD_LOGIC_VECTOR (2 downto 0);
signal BUS491 : STD_LOGIC_VECTOR (2 downto 0);
signal BUS505 : STD_LOGIC_VECTOR (2 downto 0);
signal BUS518 : STD_LOGIC_VECTOR (1 downto 0);

begin

----  Component instantiations  ----

U1 : dataPath
  port map(
       ALU_mode => NET453,
       ALU_sel => BUS518,
       clear => reset,
       clk => clock,
       in_sel => NET350,
       outSel => NET462,
       output => output,
       raa => BUS476,
       rab => BUS491,
       rea => NET435,
       reb => NET444,
       selector_select => NET359,
       shifter_sel => BUS505,
       wa => BUS467,
       we => NET368,
       x => x,
       x_lt_y => NET275,
       x_neq_y => NET262,
       y => y
  );

U2 : FSM
  port map(
       Cntrl_word => BUS289,
       clock => clock,
       in_sel => NET350,
       reset => reset,
       start => start,
       x_lt_y => NET275,
       x_neq_y => NET262
  );

U3 : instDecoder
  port map(
       ALU_mode => NET453,
       ALU_sel => BUS518,
       cntrlWord => BUS289,
       outSel => NET462,
       raa => BUS476,
       rab => BUS491,
       rea => NET435,
       reb => NET444,
       selector_sel => NET359,
       shifter_sel => BUS505,
       wa => BUS467,
       we => NET368
  );


end GPP;
