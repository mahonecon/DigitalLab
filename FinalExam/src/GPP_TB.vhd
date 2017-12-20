library IEEE;

use IEEE.Std_logic_1164.all;

entity GPP_TB is  -- testbench entity has no ports

end GPP_TB; 

architecture BENCH of GPP_TB is      

--  Stimulus signals - to connect testbench to UUT input ports
signal clk : std_logic := '0';
signal x,y : std_logic_vector(7 downto 0);
signal start, reset :  STD_LOGIC;

--  Observed signals - to connect testbench to UUT output ports

signal output : std_logic_vector(7 downto 0);

--	Number of cycles to run the TB clock
constant num_cycles : integer := 70;


begin
 
-- Clock generation process
  process
  begin
	  
	for i in 1 to num_cycles loop
      		clk <= not clk;
      		wait for 5 ns;
      		clk <= not clk;
      		wait for 5 ns;    -- clock period = 10 ns
	end loop;
	wait; -- Stop the clock

  end process;
  
-- TB Simulation process
  process          

  begin 

--  Signal assignment statements generating stimulus values

	x <= "00001111";
	y <= "00011000";
	reset <= '1';
	start <= '1';
	wait for 10ns;

	reset <= '0';

	wait for 500ns;

    wait; -- Ensures testbench terminates

  end process; 

 --  Unit under test port map

UUT: entity work.GPP(GPP)

  port map (
  x  => x,	
  y => y,
  clock => clk,
  start => start,
  output => output,
  reset => reset);

end BENCH;