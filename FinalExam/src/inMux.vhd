library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity inMux is

    Port ( I0,I1 : in std_logic_vector(7 downto 0);

           output : out std_logic_vector(7 downto 0);

           s : in std_logic);

end inMux;

 

architecture behavioral of inMux is

 
begin 


--process
process(s, I0, I1) --make sure your sensitivity list is complete

begin		
	
	
--asynchronous reset, has nothing to do with the clock changing
	if s = '1' then
		output <= I1;
	else
		output <= I0;
	end if;
	
end process;


end behavioral;

 