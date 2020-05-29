library ieee;
use ieee.std_logic_1164.all;

entity counterSecond_1 is 
port(CLK,edit: in std_logic;
	S:out std_logic_vector(3 downto 0);
	carry: out std_logic;
	edit_input:in std_logic_vector(3 downto 0));
end counterSecond_1;

architecture a of counterSecond_1 is
signal temp: std_logic_vector(3 downto 0);
begin
	process(CLK,edit)
	begin
		if	edit = '1' then
			temp <= edit_input;
		else
			if CLK'event and CLK = '1' then
			case temp is
				when "0000" =>
					temp <= "0001";
					carry <= '0';
				when "0001" =>
					temp <= "0010";
					carry <= '0';
				when "0010" =>
					temp <= "0011";
					carry <= '0';
				when "0011" =>
					temp <= "0100";
					carry <= '0';
				when "0100" =>
					temp <= "0101";
					carry <= '0';
				when "0101" =>
					temp <= "0110";
					carry <= '0';
				when "0110" =>
					temp <= "0111";
					carry <= '0';
				when "0111" =>
					temp <= "1000";
					carry <= '0';
				when "1000" =>
					temp <= "1001";
					carry <= '0';
				when "1001" =>
					temp <= "0000";
					carry <= '1';
				when others =>
					temp <= "0000";
			end case;
			end if;
		end if;
	end process;
	S <= temp;
	end a;
					