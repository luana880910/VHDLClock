library ieee;
use ieee.std_logic_1164.all;

entity led_and is
port(ledin:in std_logic_vector(11 downto 0);
	andinput:in std_logic;
	led_and_out:out std_logic_vector(11 downto 0));
end led_and;

architecture a of led_and is
signal temp:std_logic_vector(11 downto 0):="000000000000";
begin
with andinput select
	temp <= "111111111111" when '1',
			  "000000000000" when '0';
led_and_out <= ledin and temp;

end a;