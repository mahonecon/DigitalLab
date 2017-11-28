library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity UpDownCntr is
port (enable, reset, clock, upDwn: in std_logic;
      cnt: out std_logic_vector(3 downto 0));
end entity UpDownCntr;

architecture behavior of UpDownCntr is
-- define enumerated states
type State_type is(S0, S1, S2);

--Your signal declarations

signal cnt_tmp : std_logic_vector(3 downto 0);


--DO NOT TOUCH THIS SECTION

-- declare state signal
signal currentState, nextState : State_type;

begin

-- Process 1 - State Register

process(reset, clock)
begin
-- asynchronous reset
if reset = '1' then
	currentState <= S0;
-- synchronous section
elsif rising_edge(clock) then
	currentState <= nextState;
end if;
end process;

-- Process 2 - Next state function

process(clock, currentstate, nextState)
begin
--END OF DO NOT TOUCH SECTION


case currentState is            -- describe transitions 
   when S0 =>                  -- and comb. outputs 
       cnt_tmp <= "0000"; 
       if enable = '0' then 
           nextState <= S0;   -- hold 
       else 
           nextState <= S1;   -- move to S1
       end if; 	  
	   
   when S1 => 
       if upDwn = '0' and enable = '1' then 
           nextState <= S1;   -- hold 	 
		   cnt_tmp <= cnt_tmp + 1; 
	   elsif enable = '0' then
		   nextState <= S0; -- return to S0
       else 
           nextState <= S2;   -- move to S2 
       end if; 	 
	   
   when S2 => 
       if upDwn = '1' and enable = '1' then 
           nextState <= S2;   -- hold
		   cnt_tmp <= cnt_tmp - 1;
       elsif enable = '0' then
		   nextState <= S0; -- return to S0
	   else 
           nextState <= S1;   -- move to S1
       end if; 
         
end case; 


end process;   

-- drive actual output outside of process
cnt <= cnt_tmp;

end architecture behavior;