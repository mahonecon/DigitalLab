-------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : UpDownFSM
-- Author      : Computer Science
-- Company     : Rowan University
--
-------------------------------------------------------------------------------
--
-- File        : c:\My_Designs\F2017_Mahoney\compile\UpDwnCounter.vhd
-- Generated   : Tue Nov 14 20:31:26 2017
-- From        : c:\My_Designs\F2017_Mahoney\src\UpDwnCounter.bde
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

entity UpDwnCounter is
  port(
       clock : in std_ulogic;
       enable : in STD_LOGIC;
       reset : in STD_LOGIC;
       upDwn : in STD_LOGIC;
       digits : out STD_LOGIC_VECTOR(3 downto 0);
       display : out STD_LOGIC_VECTOR(6 downto 0)
  );
end UpDwnCounter;

architecture UpDwnCounter of UpDwnCounter is

---- Component declarations -----

component clock_10hz
  port (
       clk_in : in STD_LOGIC;
       reset : in STD_LOGIC;
       clk_out : out STD_LOGIC
  );
end component;
component DISPMUX
  port (
       data : in STD_LOGIC_VECTOR(15 downto 0);
       mux_clk : in STD_LOGIC;
       rst : in STD_LOGIC;
       digits : out STD_LOGIC_VECTOR(3 downto 0);
       display : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;
component outMux
  port (
       I : in STD_LOGIC_VECTOR(3 downto 0);
       O : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component UpDownCntr
  port (
       clock : in STD_LOGIC;
       enable : in STD_LOGIC;
       reset : in STD_LOGIC;
       upDwn : in STD_LOGIC;
       cnt : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;
component BUFG
  port (
       I : in std_ulogic;
       O : out std_ulogic
  );
end component;

---- Signal declarations used on the diagram ----

signal NET355 : STD_LOGIC;
signal NET490 : STD_LOGIC;
signal BUS468 : STD_LOGIC_VECTOR (15 downto 0);
signal BUS644 : STD_LOGIC_VECTOR (3 downto 0);

begin

----  Component instantiations  ----

U1 : BUFG
  port map(
       I => clock,
       O => NET490
  );

U2 : clock_10hz
  port map(
       clk_in => NET490,
       clk_out => NET355,
       reset => reset
  );

U3 : UpDownCntr
  port map(
       clock => NET355,
       cnt => BUS644,
       enable => enable,
       reset => reset,
       upDwn => upDwn
  );

U4 : outMux
  port map(
       I => BUS644,
       O => BUS468
  );

U5 : DISPMUX
  port map(
       data => BUS468,
       digits => digits,
       display => display,
       mux_clk => NET490,
       rst => reset
  );


end UpDwnCounter;
