library IEEE;

use IEEE.Std_logic_1164.all;

entity ALU_TB is  -- testbench entity has no ports

end ALU_TB; 

architecture BENCH of ALU_TB is      

--  Stimulus signals - to connect testbench to UUT input ports

signal a : std_logic_vector(7 downto 0);
signal b : std_logic_vector(7 downto 0);
signal sel : std_logic_vector(1 downto 0);
signal m : std_logic;
 

--  Observed signals - to connect testbench to UUT output ports

signal output : std_logic_vector(7 downto 0);

begin

  process          

  begin 

--  Signal assignment statements generating stimulus values

a <= "00000011";
b <= "00000001";

m <= '0';
sel <= "00";  --!A
wait for 10ns;
sel <= "01";  --A & B
wait for 10ns;
sel <= "10";  --A xor B
wait for 10ns;		   
sel <= "11";  --A || B
wait for 10ns;
m <= '1';
sel <= "00";  --A - 1
wait for 10ns;
sel <= "01";  --A + B
wait for 10ns;
sel <= "10";  --A - B
wait for 10ns;
sel <= "11";  --A + 1
wait for 10ns;


    wait; -- Ensures testbench terminates

  end process; 

 --  Unit under test port map

    UUT: entity work.ALU(behavior)

  port map (

    a  => a,

    b  => b,
	
	m => m,
	
	sel => sel,
	
	output => output

  );

end BENCH;