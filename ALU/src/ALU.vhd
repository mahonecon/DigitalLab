library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity ALU is

    Port ( a, b : in std_logic_vector(7 downto 0);
		   m : in std_logic;
		   sel : in std_logic_vector(1 downto 0);
           output : out std_logic_vector(7 downto 0) );

end ALU;

 

architecture behavior of ALU is

 
begin 

	

--process
process(sel, m, a, b) --make sure your sensitivity list is complete

variable temp : std_logic_vector(2 downto 0); 

begin		
	temp := m & sel;
	
	case temp is
		when  "000" => output <= not a;   -- !A
		when  "001" => output <= a and b; -- A & B
		when  "010" => output <= a xor b; -- A xor B
		when  "011" => output <= a or b;  -- A || B 
		when  "100" => output <= a - 1;   -- A - 1 
		when  "101" => output <= a + b;   -- A + B
		when  "110" => output <= a - b;   -- A - B
		when  "111" => output <= a + 1;   -- A + 1
		when others => NULL;
	end case;
	
end process;


end behavior;