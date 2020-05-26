library ieee;
use ieee.std_logic_1164.all;

entity display is 
port(CLK: in std_logic;
	S:out std_logic_vector(2 downto 0));
end display;

architecture a of display is
signal temp: std_logic_vector(2 downto 0);
begin
	process(CLK)
	begin
		if CLK'event and CLK = '1' then
			case temp is
				when "000" =>
					temp <= "001";
				when "001" =>
					temp <= "010";
				when "010" =>
					temp <= "110";
				when "110" =>
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
					