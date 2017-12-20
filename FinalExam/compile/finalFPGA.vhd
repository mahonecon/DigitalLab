-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : FinalExam
-- Author      : Computer Science
-- Company     : Rowan University
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\F2017_Mahoney\FinalExam\compile\finalFPGA.vhd
-- Generated   : Tue Dec 19 19:25:15 2017
-- From        : c:\My_Designs\F2017_Mahoney\FinalExam\src\finalFPGA.bde
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
-- synthesis translate_off 
library ARTIX7;
library IEEE;
use IEEE.vital_timing.all;
-- synthesis translate_on 

entity finalFPGA is
  port(
       clock : in std_ulogic;
       reset : in STD_LOGIC;
       start : in STD_LOGIC;
       x : in STD_LOGIC_VECTOR(7 downto 0);
       y : in STD_LOGIC_VECTOR(7 downto 0);
       digits : out STD_LOGIC_VECTOR(7 downto 0);
       display : out STD_LOGIC_VECTOR(6 downto 0)
  );
end finalFPGA;

architecture finalFPGA of finalFPGA is

---- Component declarations -----

component GPP
  port (
       clock : in STD_LOGIC;
       reset : in STD_LOGIC;
       start : in STD_LOGIC;
       x : in STD_LOGIC_VECTOR(7 downto 0);
       y : in STD_LOGIC_VECTOR(7 downto 0);
       output : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component MUXDISP
  port (
       data : in STD_LOGIC_VECTOR(15 downto 0);
       mux_clk : in STD_LOGIC;
       rst : in STD_LOGIC;
       digits : out STD_LOGIC_VECTOR(7 downto 0);
       display : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;
component outMux
  port (
       I : in STD_LOGIC_VECTOR(7 downto 0);
       O : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component BUFG
  port (
       I : in std_ulogic;
       O : out std_ulogic
  );
end component;

---- Signal declarations used on the diagram ----

signal NET174 : STD_LOGIC;
signal BUS113 : STD_LOGIC_VECTOR (7 downto 0);
signal BUS192 : STD_LOGIC_VECTOR (15 downto 0);

begin

----  Component instantiations  ----

U1 : GPP
  port map(
       clock => NET174,
       output => BUS113,
       reset => reset,
       start => start,
       x => x,
       y => y
  );

U2 : outMux
  port map(
       I => BUS113,
       O => BUS192
  );

U3 : BUFG
  port map(
       I => clock,
       O => NET174
  );

U4 : MUXDISP
  port map(
       data => BUS192,
       digits => digits,
       display => display,
       mux_clk => NET174,
       rst => reset
  );


end finalFPGA;
