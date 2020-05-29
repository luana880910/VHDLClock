library ieee;
use ieee.std_logic_1164.all;

entity keypadDecoder is
port(de_in : in std_logic_vector(2 downto 0);
		keypad_0,keypad_1,keypad_2,clk:in std_logic;
		number_out:out std_logic_vector(3 downto 0));
end keypadDecoder;

architecture a of keypadDecoder is
signal number_out_temp: std_logic_vector(3 downto 0):= "0000";
begin
	process(de_in)
	begin
		case de_in is
			when "000" =>
				if keypad_0 = '0' then number_out_temp <= "0001";
				elsif keypad_1 = '0' then number_out_temp <= "0010";
				elsif keypad_2 = '0' then number_out_temp <= "0011";
				else number_out_temp <= "0000";
				end if;
			when "100" =>
				if keypad_0 = '0' then number_out_temp <= "0100";
				elsif keypad_1 = '0' then number_out_temp <= "0101";
				elsif keypad_2 = '0' then number_out_temp <= "0110";
				else number_out_temp <= "0000";
				end if;
			when "010" =>
				if keypad_0 = '0' then number_out_temp <= "0111";
				elsif keypad_1 = '0' then number_out_temp <= "1000";
				elsif keypad_2 = '0' then number_out_temp <= "1001";
				else number_out_temp <= "0000";
				end if;
			when "110" =>
				if keypad_0 = '0' then number_out_temp <= "1010";
				elsif keypad_1 = '0' then number_out_temp <= "1111";
				elsif keypad_2 = '0' then number_out_temp <= "1011";
				else number_out_temp <= "0000";
				end if;
			when others =>
					number_out_temp <= "0000"; 
		end case;
	end process;
	number_out <= number_out_temp;
end a;