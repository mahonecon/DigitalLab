---------------------------------------------------
-- 8-bit Register
---------------------------------------------------
	
library ieee ;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

---------------------------------------------------

entity reg is

port(	I:	in std_logic_vector(7 downto 0);
	load, clock:	in std_logic;
	clear:	in std_logic;
	Q:	out std_logic_vector(7 downto 0)
);
end reg;

----------------------------------------------------

architecture behv of reg is

    signal Q_tmp: std_logic_vector(7 downto 0);

begin

    process(I, clear, load, clock)
    begin

	if clear = '1' then
            -- use 'range in signal assigment 
            Q_tmp <= (Q_tmp'range => '0'); 
	
	 elsif (rising_edge(clock)) and load = '1' then
	
	    
		Q_tmp <= I;
		    
	end if;

    end process;

    -- concurrent statement
    Q <= Q_tmp;

end behv;

---------------------------------------------------
