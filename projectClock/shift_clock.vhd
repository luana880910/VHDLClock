library ieee;
use ieee.std_logic_1164.all;

entity shift_clock is 
port(PULSE: in std_logic;
	S:out std_logic_vector(2 downto 0));
end shift_clock;

architecture a of shift_clock is
signal temp: std_logic_vector(2 downto 0):="000";
begin
	process(PULSE)
	begin
		if PULSE'event and PULSE = '1' then
			case temp is
				when "000" =>
					temp <= "001";
				when "001" =>
					temp <= "010";
				when "010" =>
					temp <= "011";
				when "011" =>
					temp <= "100";
				when "100" =>
					temp <= "101";
				when "101" =>
					temp <= "000";
				when others =>
					temp <= "000";
			end case;
		end if;
	end process;
	S <= temp;
end a;