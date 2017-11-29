library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity shifter is

    Port ( in_right, in_left : in std_logic;
		   s : in std_logic_vector(2 downto 0); --function select
           a : in std_logic_vector(7 downto 0);	-- data in
		   output : out std_logic_vector(7 downto 0) ); --data out

end shifter;

 

architecture behavior of shifter is
 
begin 


--process
process(s,a) --make sure your sensitivity list is complete

begin		
	case s is
		when "000" => output <= a;									--load
		when "001" => output <= a;						  			--load
		when "100" => output <= a(6 downto 0) & in_left;	  	--shift left
		when "101" => output <= a(6 downto 0) & a(7);	--shift circular left
		when "110" => output <= in_right & a(7 downto 1);	  	--shift right
		when "111" => output <= a(0) & a(7 downto 1);	--shift circular right
		when others => null;
	end case;
end process;


end behavior;