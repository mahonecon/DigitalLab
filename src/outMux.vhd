library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity outMux is

    Port ( I : in std_logic_vector(3 downto 0);
		   O : out std_logic_vector(15 downto 0));

end outMux;

 

architecture behavior of outMux is
 
begin 

	O <= "000000000000" & I;   -- Concatenates I to the end of O's 16-bits, to make I 16-bit.

end behavior;

 