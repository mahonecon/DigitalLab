library IEEE;

use IEEE.Std_logic_1164.all;

entity shifter_TB is  -- testbench entity has no ports

end shifter_TB; 

architecture BENCH of shifter_TB is      

--  Stimulus signals - to connect testbench to UUT input ports

signal in_left, in_right : std_logic;
signal s : std_logic_vector(2 downto 0);
signal a : std_logic_vector(7 downto 0);
 

--  Observed signals - to connect testbench to UUT output ports

signal output : std_logic_vector(7 downto 0);

begin

  process          

  begin

--  Signal assignment statements generating stimulus values

a <= "10000001";
in_left <= '0';
in_right <= '0';

s <= "100";		 --shift left
wait for 10ns;
s <= "110";		 --shift right
wait for 10ns; 
s <= "111";		 --rotate right
wait for 10ns;
s <= "101";		 --rotate left
wait for 10ns;


    wait; -- Ensures testbench terminates

  end process; 

 --  Unit under test port map

    UUT: entity work.shifter(behavior)

  port map (

    in_left  => in_left,

    in_right  => in_right,
	
	s => s,
	
	a => a,
	
	output => output

  );

end BENCH;