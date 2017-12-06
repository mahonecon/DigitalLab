---------------------------------------------------
-- this simple comparator has two 8-bit inputs & 
-- three 1-bit outputs
---------------------------------------------------
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
---------------------------------------------------

entity CompLT is

port(A, B:	in std_logic_vector(7 downto 0);
	result:		out std_logic

);
end CompLT;

---------------------------------------------------

architecture behv of CompLT is

begin 
    
    process(A)
    begin
		
        if (A > B) then 
	    result <= '1';
		else
			result <= '0';

	end if;
    end process;

end behv;

---------------------------------------------------
