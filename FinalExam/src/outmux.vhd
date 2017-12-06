-------------------------------------------------
-- Multiplexor is a device to select different
-- inputs to outputs. 
-------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------

entity outBuf is
port(	I: 	in std_logic_vector(7 downto 0);
	Output:	out std_logic_vector(7 downto 0)
);
end outBuf;  

-------------------------------------------------
architecture behv1 of outBuf is
begin
	Output <= I;
end behv1;
-------------------------------------------------
