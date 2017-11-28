library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UpDwnCntr_TB is  -- testbench entity has no ports

end UpDwnCntr_TB; 

architecture BENCH of UpDwnCntr_TB is      

--  Stimulus signals - to connect testbench to UUT input ports

signal clock : std_logic := '0';
signal reset, enable : std_logic;		  
signal upDwn : std_logic;

--  Observed signals - to connect testbench to UUT output ports

signal cnt : std_logic_vector(3 downto 0);

--  Number of cycles to run the TB clock, may need to adjust depending on your design
constant num_cycles : integer := 65;


begin
 
-- Clock generation process
  process
  begin
	  
	for i in 1 to num_cycles loop
      		clock <= not clock;
      		wait for 5 ns;
      		clock <= not clock;
      		wait for 5 ns;    -- clock period = 10 ns
	end loop;
	wait; -- Stop the clock

  end process;
  
-- TB Simulation process
  process          

  begin 

--  Signal assignment statements generating stimulus values

	enable <= '0';
	reset <= '1';
	upDwn <= '1';

	wait for 50ns;
	
	reset <= '0';
	
	wait for 50ns;
	
	enable <= '1';
	
	wait for 50ns;
	
	upDwn <= '0';
	
	wait for 50ns;
	
	upDwn <= '1';
	
	wait for 50ns;

    wait; -- Ensures testbench terminates

  end process; 

 --  Unit under test port map

    UUT: entity work.UpDwnCounter(UpDwnCounter)

  port map (

    reset  => reset,
	clock  => clock,
	enable => enable,
	upDwn => upDwn

  );

end BENCH;