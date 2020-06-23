library ieee;
use ieee.std_logic_1164.all;

entity vectorOR2 is
port(ledin,ledin2:in std_logic_vector(11 downto 0);
	led_and_out:out std_logic_vector(11 downto 0));
end vectorOR2;

architecture a of vectorOR2 is
begin

led_and_out <= ledin OR ledin2;

end a;