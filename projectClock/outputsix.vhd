library ieee;
use ieee.std_logic_1164.all;

entity outputsix is 
port(CLK: in std_logic;
	SIN:in std_logic_vector(2 downto 0);
	H10,H1,M10,M1,S10,S1: out std_logic);
end outputsix;

architecture a of outputsix is
begin
	process(CLK)
	begin
		
			case SIN is
				when "000" =>
					H10 <= '1';
					H1  <= '0';
					M10 <= '0';
					M1  <= '0';
					S10 <= '0';
					S1  <= '0';
				when "100" =>
					H10 <= '0';
					H1  <= '1';
					M10 <= '0';
					M1  <= '0';
					S10 <= '0';
					S1  <= '0';
				when "010" =>
					H10 <= '0';
					H1  <= '0';
					M10 <= '1';
					M1  <= '0';
					S10 <= '0';
					S1  <= '0';
				when "110" =>
					H10 <= '0';
					H1  <= '0';
					M10 <= '0';
					M1  <= '1';
					S10 <= '0';
					S1  <= '0';
				when "001" =>
					H10 <= '0';
					H1  <= '0';
					M10 <= '0';
					M1  <= '0';
					S10 <= '1';
					S1  <= '0';
				when "101" =>
					H10 <= '0';
					H1  <= '0';
					M10 <= '0';
					M1  <= '0';
					S10 <= '0';
					S1  <= '1';
				when others =>
					H10 <= '0';
					H1  <= '0';
					M10 <= '0';
					M1  <= '0';
					S10 <= '0';
					S1  <= '0';
			end case;
		
	end process;
	end a;
					