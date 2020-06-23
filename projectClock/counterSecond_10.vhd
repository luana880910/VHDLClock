library ieee;
use ieee.std_logic_1164.all;

entity counterSecond_10 is 
port(carry,edit: in std_logic;
	S:out std_logic_vector(3 downto 0);
	carry_out:out std_logic;
	edit_input:in std_logic_vector(3 downto 0));

end counterSecond_10;

architecture a of counterSecond_10 is
signal temp: std_logic_vector(3 downto 0):="0000";
begin
	process(carry,edit)
	begin
		if	edit = '1' then
			if edit_input = "0101" or edit_input = "0100" or edit_input = "0011" or edit_input = "0010" or edit_input = "0001" or edit_input = "0000" then
				temp <= edit_input;
			else
				temp <= "0101";
			end if;
		else
			if carry'event and carry = '1' then
			case temp is
				when "0000" =>
					temp <= "0001";
					carry_out <= '0';
				when "0001" =>
					temp <= "0010";
					carry_out <= '0';
				when "0010" =>
					temp <= "0011";
					carry_out <= '0';
				when "0011" =>
					temp <= "0100";
					carry_out <= '0';
				when "0100" =>
					temp <= "0101";
					carry_out <= '0';
				when "0101" =>
					temp <= "0000";
					carry_out <= '1';
				when others =>
					temp <= "0000";
				end case;
			end if;
		end if;
	end process;
	S <= temp;
	end a;
					