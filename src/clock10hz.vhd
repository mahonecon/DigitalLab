-- 10HZ CLOCK GENERATOR                                   
-- This is a simple "clock generation" circuit for the Xilinx FPGA series
-- chips.
 
library IEEE;
 
use IEEE.STD_LOGIC_1164.ALL;
 
use IEEE.NUMERIC_STD.ALL;
 
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
 
-- Standard clock with a reset pin
--                      clk_in               This is the source clock, on the ATRIX 7 board its 100Mhz
--                      clk_out            This is the "generated" clock, in this case a fixed 10hz signal
--                      reset                This stops the clock, forces its output "high"
--
 
entity clock_10hz is
 
    Port ( reset : in std_logic;
           clk_in : in std_logic;
           clk_out : out std_logic);
end clock_10hz;
 
 
-- Generate a 10Hz clock derived from a 100Mhz clock. This is done by dividing
 
-- 100Mhz by 10,000,000 and flipping a bit each time it reaches that value.
 
architecture behavioral of clock_10hz is
 
 
 
    -- Signal declarations, one counter and one "bit" register.
    -- Counter is 28 bits so that it can count to 9,999,999.
 
    signal clk_cnt : unsigned(27 downto 0);
    signal clk_bit : std_logic;
 
begin
 
    gen_clock: process (clk_in, reset) is
 
    begin
 
            -- Asynchronous RESET forces clock state to 0
 
            if (reset = '1') then
 
                clk_cnt <= "0000000000000000000000000000";
 
                clk_bit <= '0';
 
            elsif rising_edge(clk_in) then
 
                -- Divisor is 10E6 (100Mhz -> 10Hz) using 9,999,999 because
 
                -- at the "next" state we want it to reset to zero.
 
                if (clk_cnt = 9999999) then
 
                        clk_cnt <= "0000000000000000000000000000";
 
                        clk_bit <= not clk_bit;
 
                else
 
                        clk_cnt <= clk_cnt + 1;
 
                end if;
 
            end if;
 
    end process;
 
 
 
    -- concurrent assignment to connect CLK to clk_out, this acts as a wire
 
    -- to bond the clk_out signal to the clk pin.
 
    clk_out <= clk_bit;
 
 
 
end behavioral;