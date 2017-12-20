									  							 -------------------------------------------------
-- Instruction Decoder
-------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
-------------------------------------------------
entity instDecoder is
port(
cntrlWord: in std_logic_vector(19 downto 0);
selector_sel, we, rea, reb, ALU_mode, outSel : out std_logic;
wa, raa, rab, shifter_sel : out std_logic_vector(2 downto 0);
ALU_sel : out std_logic_vector(1 downto 0)
);
end instDecoder;
-------------------------------------------------
architecture behv1 of instDecoder is
begin
process(cntrlWord)
begin
selector_sel <= cntrlWord(19);
wa(2) <= cntrlWord(18);
wa(1) <= cntrlWord(17);
wa(0) <= cntrlWord(16);
raa(2) <= cntrlWord(14);
raa(1) <= cntrlWord(13);
raa(0) <= cntrlWord(12);
rab(2) <= cntrlWord(10);
rab(1) <= cntrlWord(9);
rab(0) <= cntrlWord(8);
we <= cntrlWord(15);
rea <= cntrlWord(11);
reb <= cntrlWord(7);
ALU_sel(1) <= cntrlWord(5);
ALU_sel(0) <= cntrlWord(4);
ALU_mode <= cntrlWord(6);
shifter_sel(2) <= cntrlWord(3);
shifter_sel(1) <= cntrlWord(2);
shifter_sel(0) <= cntrlWord(1);
outSel <= cntrlWord(0);
end process;
end behv1;

