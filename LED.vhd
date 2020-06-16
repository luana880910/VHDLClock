library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity LED is
port ( clk	: in std_logic;
		 com	: out std_logic;
		 x		: out std_logic_vector(11 downto 0));
end LED;

architecture a of LED is
signal op : std_logic_vector(11 downto 0);
signal j : std_logic := '0';
begin
	process(clk)
	begin
		if clk'event and clk='1' then
			case op is 
				when "000000000000" =>
					op <= "100100100101";
					j <= '0';
				when "100100100101" =>
					op <= "010100111001";
				when "010100111001" =>
					op <= "101101010101";
				when "101101010101" =>
					op <= "100010111001";
				when "100010111001" =>
					op <= "101000101001";
				when "101000101001" =>
					op <= "010011110111";
				when "010011110111" =>
					op <= "101101110101";
				when "101101110101" =>
					op <= "101011011101";
				when "101011011101" =>
					op <= "110101011110";
				when "110101011110" =>
					op <= "101101001001";
				when "101101001001" =>
					op <= "100101000010";
				when "100101000010" =>
					if j='0' then
						op <= "000001100000";
					else
						op <= "000000000000";
					end if;
				when "000001100000" =>
					if j='0' then
						op <= "000011110000";
					else
						op <= "000000000000";
					end if;
				when "000011110000" =>
					if j='0' then
						op <= "000111111000";
					else
						op <= "000001100000";
					end if;
				when "000111111000" =>
					if j='0' then
						op <= "001111111100";
					else
						op <= "000011110000";
					end if;
				when "001111111100" =>
					if j='0' then
						op <= "011111111110";
					else
						op <= "000111111000";
					end if;
				when "011111111110" =>
					if j='0' then
						op <= "111111111111";
					else
						op <= "001111111100";
					end if;
				when "111111111111" =>
						op <= "011111111110";
						j <= '1';
				when others =>
					op <= "000000000000";
			end case;
		end if;
	end process;
	x <= op;
	com <= '1';
end a;