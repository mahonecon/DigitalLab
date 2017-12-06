library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
 

entity reg_file is
    generic (dw    : natural := 8;
		     size  : natural := 8;
		     adrw  : natural := 3);
			 
    Port ( wa, raa, rab : in std_logic_vector(adrw-1 downto 0);
		   data : in std_logic_vector(dw-1 downto 0);
		   we, rea, reb, clk : in std_logic;
           busA, busB : out std_logic_vector(dw-1 downto 0));

end reg_file;



architecture behavioral of reg_file is

type registerFile is array(0 to size-1) of std_logic_vector(dw-1 downto 0);

signal registers : registerFile := (others=> (others=>'0'));

begin

regFile: process(clk)
    begin
        if we = '1' and rising_edge(clk) then 
            registers(to_integer(unsigned(wa))) <= data;
        end if;
		
    end process;
	
	busA <= registers(to_integer(unsigned(raa)));
	
	busB <= registers(to_integer(unsigned(rab)));
end behavioral;


