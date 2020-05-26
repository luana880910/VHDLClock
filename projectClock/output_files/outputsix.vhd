library ieee;
use ieee.std_logic_1164.all;

entity outputsix is 
port(CLK: in std_logic;
	S:in std_logic_vector(2 downto 0);
	H10,H1,M10,M1,S10,S1: out std_logic);
end outputsix;

architecture a of outputsix is
begin
	process(CLK)
	begin
		if CLK'event and CLK = '1' then
			case S is
				when "000" =>
					H10 <= 1;
					H1  <= 0;
					M10 <= 0;
				when "001" =>
					H10 <= 1;
					H1  <= 0;
					M10 <= 0;
				when "010" =>
					H10 <= 1;
					H1  <= 0;
					M10 <= 0;
				when "110" =>
					H10 <= 1;
					H1  <= 0;
					M10 <= 0;
				when "100" =>
					H10 <= 1;
					H1  <= 0;
					M10 <= 0;
				when "101" =>
					H10 <= 1;
					H1  <= 0;
					M10 <= 0;
				when others =>
					H10 <= 1;
					H1  <= 0;
					M10 <= 0;
			end case;
		end if;
	end process;
	end a;
					