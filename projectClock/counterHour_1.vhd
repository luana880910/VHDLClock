library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counterHour_1 is 
port(carry,edit: in std_logic;
	S:out std_logic_vector(3 downto 0);
	carry_out:out std_logic;
	edit_in:in std_logic_vector(3 downto 0));

end counterHour_1;

architecture a of counterHour_1 is
signal temp: std_logic_vector(3 downto 0);
signal K: std_logic_vector(1 downto 0);
begin
	process(carry)
	begin
	if	edit = '1' then
			temp <= edit_in;
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
					if K = "10" then
						temp <= "0000";
						carry_out <= '1';
					else
						temp <= "0100";
						carry_out <= '0';
					end if;
				when "0100" =>
					temp <= "0101";
					carry_out <= '0';
				when "0101" =>
					temp <= "0110";
					carry_out <= '0';
				when "0110" =>
					temp <= "0111";
					carry_out <= '0';
				when "0111" =>
					temp <= "1000";
					carry_out <= '0';
				when "1000" =>
					temp <= "1001";
					carry_out <= '0';
				when "1001" =>
					temp <= "0000";
					carry_out <= '1';
					K <= K + 1;
				when others =>
					temp <= "0000";
			end case;
		end if;
	end if;
	end process;
	S <= temp;
	end a;
					