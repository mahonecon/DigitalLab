								library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity hex_display is
    Port ( data : in std_logic_vector(3 downto 0);
           segs : out std_logic_vector(6 downto 0));
end hex_display;
 
architecture behavioral_hexDisp of hex_display is
 
begin
    segs <= "1000000" when data = "0000" else
                "1111001" when data = "0001" else
                "0100100" when data = "0010" else
                "0110000" when data = "0011" else
                "0011001" when data = "0100" else
                "0010010" when data = "0101" else
                "0000010" when data = "0110" else
                "1111000" when data = "0111" else
                "0000000" when data = "1000" else
                "0011000" when data = "1001" else
                "0001000" when data = "1010" else
                "0000011" when data = "1011" else
                "1000110" when data = "1100" else
                "0100001" when data = "1101" else
                "0000110" when data = "1110" else
                "0001110";
end behavioral_hexDisp;