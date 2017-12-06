library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity triBuf is

    Port ( a : in std_logic_vector(7 downto 0);

           output : out std_logic_vector(7 downto 0);

           s : in std_logic);

end triBuf;

 

architecture behavioral of triBuf is

 
begin 


--process
process(s,a) --make sure your sensitivity list is complete

begin		
	
	
--asynchronous reset, has nothing to do with the clock changing
	if s = '1' then
		output <= a;
	else
		output <= "ZZZZZZZZ";
	end if;
	
end process;


end behavioral;

 