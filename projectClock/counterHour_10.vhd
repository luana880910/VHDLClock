library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counterHour_10 is 
port(carry,edit: in std_logic;
	S:out std_logic_vector(3 downto 0);
	edit_input:in std_logic_vector(3 downto 0));

end counterHour_10;

architecture a of counterHour_10 is
signal temp: std_logic_vector(3 downto 0):="0000";
begin
	process(carry)
	begin
	if	edit = '1' then
		if edit_input = "0010" or edit_input = "0001" or edit_input = "0000" then
			temp <= edit_input;
		else
			temp <= "0001";
		end if;
	else
		if carry'event and carry = '1' then
			case temp is
				when "0000" =>
					temp <= "0001";
				when "0001" =>
					temp <= "0010";
				when "0010" =>
					temp <= "0000";
				when others =>
					temp <= "0000";
			end case;
		end if;
	end if;
	end process;
	S <= temp;
	end a;
					