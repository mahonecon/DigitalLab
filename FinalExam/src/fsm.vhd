library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity FSM is
port (
clock, reset, start: in std_logic;
x_neq_y, x_lt_y: in std_logic;
in_sel: out std_logic;
Cntrl_word : out std_logic_vector(19 downto 0)
);
end entity FSM;
architecture behv of FSM is
-- define enumerated states
type states is(S0, S1, S2, S3, S4, S5, S6, S7);
-- declare state signal
signal nState, cState : states;
begin
process(reset, clock)
begin
-- asynchronous reset
if reset = '1' then
cState <= S0;
-- synchronous section
elsif rising_edge(clock) then
cState <= nState;
end if;
end process;
process(start, x_neq_y, x_lt_y, cState)
begin
case cState is
when S0 =>
in_sel <= '0';
Cntrl_word <= "00000000000000000000"; -- Hold
if start = '1' then
nState <= S1; -- next state
else
nState <= S0;
end if;
when S1 =>
Cntrl_word <= "10011000000000000000"; -- store x in R1
nState <= S2;
when S2 =>
in_sel <= '1';
Cntrl_word <= "10101000000000000000"; -- store y in R2
nState <= S3;
when S3 =>
Cntrl_word <= "00000001101010000000"; -- Is x != y
if x_neq_y = '1' then
nState <= S4;
else
nState <= S7;
end if;
when S4 =>
Cntrl_word <= "00000001101010000000"; -- Is x < y
if x_lt_y = '1' then
nState <= S6;
else
nState <= S5;
end if;
when S5 =>
Cntrl_word <= "00011001101011100000"; -- x = x- y
nState <= S3; -- loop while x != y
when S6 => -- loop
Cntrl_word <= "00101010100111100000"; -- y = y - x
nState <= S3; -- loop while x != y
when S7 =>
Cntrl_word <= "00000001100000110001"; -- output x
nState <= S0;
end case;
end process;
end architecture behv;