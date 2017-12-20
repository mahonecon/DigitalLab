library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

 

entity MUXDISP is

    Port (

            mux_clk : in std_logic;            -- Multiplexing clock for display

            rst     : in std_logic;     -- Reset pin

            data    : in std_logic_vector(15 downto 0); -- four 4 bit digits.
			
			display : out std_logic_vector(6 downto 0); -- Segment output

    digits  : out std_logic_vector(7 downto 0)); -- digit selectors

end MUXDISP;

 

architecture behavioral of MUXDISP is

 

component hex_display

  port (

      data : in STD_LOGIC_VECTOR(3 downto 0);

      segs : out STD_LOGIC_VECTOR(6 downto 0)

  );  

 

end component;

 

     signal cur_digit : std_logic_vector (1 downto 0);

    signal digit_data : std_logic_vector (3 downto 0);

 

 

begin

     -- Map a HEX display decoder connected to the digit_data pins

    -- and driving the segment output on the chip.

 

            u1: hex_display PORT MAP(data => digit_data, segs => display);

 

    -- Generate what appears to be the continuous display of 4 digits

    -- by lighting each digit up in sequence. If you can get all 4

    -- digits on at least once every 100 milleseconds, then they will

    -- look continuous.

    gen_display: process (rst, mux_clk) is

            variable d_clk : unsigned(13 downto 0) := "00000000000000" ;

    begin

            if (rst = '1') then

                cur_digit <= "00";

                d_clk := "00000000000000";

            elsif mux_clk'event and mux_clk = '1' then

               

                if (d_clk = 0) then

                        -- select the next digit to display       

                                                           

                        cur_digit <= cur_digit + 1;

                end if;

                d_clk := d_clk + 1; -- now keep counting up

            end if;

    end process;

 

    -- This statement muxes out the data pins to the hex decoder

    -- based on the cur_digit value. Digit 0 is the MSD and

    -- digit 7 is the LSD.

    digit_data <= data(3 downto 0) when cur_digit = "00" else

                          data(7 downto 4) when cur_digit = "01" else

                          data(11 downto 8) when cur_digit = "10" else

                          data(15 downto  12);

 

    -- This statement drives the "digit enabled" line based on

    -- the current digit. Now it looks like its backwards but

    -- it isn't, since the digits are 7 downto 0, digits<0> is

    -- on the right hand side, so cur_digit = "000" enables

    -- digits "00000001" etc.

    digits <= "11111110" when cur_digit = "00" else

                  "11111101" when cur_digit = "01" else

                  "11111011" when cur_digit = "10" else             

                  "11110111" ;

end behavioral;

