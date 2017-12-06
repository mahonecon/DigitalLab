-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : FinalExam
-- Author      : Computer Science
-- Company     : Rowan University
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\F2017_Mahoney\FinalExam\compile\dataPath.vhd
-- Generated   : Tue Dec  5 19:10:11 2017
-- From        : c:\My_Designs\F2017_Mahoney\FinalExam\src\dataPath.bde
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


-- other libraries declarations
library SHIFTER;

entity dataPath is
  port(
       ALU_mode : in STD_LOGIC;
       clear : in STD_LOGIC;
       clk : in STD_LOGIC;
       in_sel : in STD_LOGIC;
       outSel : in STD_LOGIC;
       rea : in STD_LOGIC;
       reb : in STD_LOGIC;
       selector_sel : in STD_LOGIC;
       we : in STD_LOGIC;
       ALU_sel : in STD_LOGIC_VECTOR(1 downto 0);
       raa : in STD_LOGIC_VECTOR(2 downto 0);
       rab : in STD_LOGIC_VECTOR(2 downto 0);
       shifter_sel : in STD_LOGIC_VECTOR(2 downto 0);
       wa : in STD_LOGIC_VECTOR(2 downto 0);
       x : in STD_LOGIC_VECTOR(7 downto 0);
       y : in STD_LOGIC_VECTOR(7 downto 0);
       x_lt_y : out STD_LOGIC;
       x_neq_y : out STD_LOGIC;
       output : out STD_LOGIC_VECTOR(7 downto 0)
  );
end dataPath;

architecture dataPath of dataPath is

---- Component declarations -----

component ALU
  port (
       a : in STD_LOGIC_VECTOR(7 downto 0);
       b : in STD_LOGIC_VECTOR(7 downto 0);
       m : in STD_LOGIC;
       sel : in STD_LOGIC_VECTOR(1 downto 0);
       output : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component Comparator
  port (
       A : in STD_LOGIC_VECTOR(7 downto 0);
       B : in STD_LOGIC_VECTOR(7 downto 0);
       result : out STD_LOGIC
  );
end component;
component CompLT
  port (
       A : in STD_LOGIC_VECTOR(7 downto 0);
       B : in STD_LOGIC_VECTOR(7 downto 0);
       result : out STD_LOGIC
  );
end component;
component inMux
  port (
       I0 : in STD_LOGIC_VECTOR(7 downto 0);
       I1 : in STD_LOGIC_VECTOR(7 downto 0);
       s : in STD_LOGIC;
       output : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component reg
  port (
       I : in STD_LOGIC_VECTOR(7 downto 0);
       clear : in STD_LOGIC;
       clock : in STD_LOGIC;
       load : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component reg_file
  generic(
       adrw : NATURAL := 3;
       dw : NATURAL := 8;
       size : NATURAL := 8
  );
  port (
       clk : in STD_LOGIC;
       data : in STD_LOGIC_VECTOR(dw-1 downto 0);
       raa : in STD_LOGIC_VECTOR(adrw-1 downto 0);
       rab : in STD_LOGIC_VECTOR(adrw-1 downto 0);
       rea : in STD_LOGIC;
       reb : in STD_LOGIC;
       wa : in STD_LOGIC_VECTOR(adrw-1 downto 0);
       we : in STD_LOGIC;
       busA : out STD_LOGIC_VECTOR(dw-1 downto 0);
       busB : out STD_LOGIC_VECTOR(dw-1 downto 0)
  );
end component;
component selector
  port (
       a : in STD_LOGIC_VECTOR(7 downto 0);
       b : in STD_LOGIC_VECTOR(7 downto 0);
       s : in STD_LOGIC;
       output : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component triBuf
  port (
       a : in STD_LOGIC_VECTOR(7 downto 0);
       s : in STD_LOGIC;
       output : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component shifter
  port (
       a : in STD_LOGIC_VECTOR(7 downto 0);
       in_left : in STD_LOGIC;
       in_right : in STD_LOGIC;
       s : in STD_LOGIC_VECTOR(2 downto 0);
       output : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;

----     Constants     -----
constant GND_CONSTANT   : STD_LOGIC := '0';

---- Signal declarations used on the diagram ----

signal GND : STD_LOGIC;
signal BUS129 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS352 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS364 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS487 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS509 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS673 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS93 : STD_LOGIC_VECTOR (7 downto 0);

begin

----  Component instantiations  ----

U1 : inMux
  port map(
       I0 => x,
       I1 => y,
       output => BUS93,
       s => in_sel
  );

U2 : selector
  port map(
       a => BUS509,
       b => BUS93,
       output => BUS129,
       s => selector_sel
  );

U3 : reg_file
  port map(
       busA => BUS352( 7 downto 0 ),
       busB => BUS364( 7 downto 0 ),
       clk => clk,
       data => BUS129( 7 downto 0 ),
       raa => raa( 2 downto 0 ),
       rab => rab( 2 downto 0 ),
       rea => rea,
       reb => reb,
       wa => wa( 2 downto 0 ),
       we => we
  );

U4 : CompLT
  port map(
       A => BUS352,
       B => BUS364,
       result => x_lt_y
  );

U5 : Comparator
  port map(
       A => BUS352,
       B => BUS364,
       result => x_neq_y
  );

U6 : ALU
  port map(
       a => BUS352,
       b => BUS364,
       m => ALU_mode,
       output => BUS487,
       sel => ALU_sel
  );

U7 : shifter
  port map(
       a => BUS487,
       in_left => GND,
       in_right => GND,
       output => BUS509,
       s => shifter_sel
  );

U8 : triBuf
  port map(
       a => BUS509,
       output => BUS673,
       s => outSel
  );

U9 : reg
  port map(
       I => BUS673,
       Q => output,
       clear => clear,
       clock => clk,
       load => outSel
  );


---- Power , ground assignment ----

GND <= GND_CONSTANT;

end dataPath;
