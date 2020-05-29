library ieee;
use ieee.std_logic_1164.all;

entity digitRegister is
port(digit_in:in std_logic_vector(3 downto 0);
		digit_out:out std_logic_vector(3 downto 0));
end digitRegister;

architecture a of digitRegister is
signal temp:std_logic_vector(3 downto 0);
begin
	process(digit_in)
	begin
		case digit_in is
			when "0000" => temp <=temp;
			when others =>
				temp <= digit_in;
		end case;
	end process;
	digit_out <= temp;
end a;