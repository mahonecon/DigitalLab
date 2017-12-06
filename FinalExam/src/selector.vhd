library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity selector is

    Port ( a,b : in std_logic_vector(7 downto 0);

           output : out std_logic_vector(7 downto 0);

           s : in std_logic);

end selector;

 

architecture behavioral of selector is

 
begin 


--process
process(s, a, b) --make sure your sensitivity list is complete

begin		
	
	
--asynchronous reset, has nothing to do with the clock changing
	if s = '1' then
		output <= b;
	else
		output <= a;
	end if;
	
end process;


end behavioral;

 