library ieee;
use ieee.std_logic_1164.all;

entity musicselector is
port(vectorinput:in std_logic_vector(3 downto 0);
		edit,clk:in std_logic;
		music1: out std_logic;
		music2: out std_logic;
		music3: out std_logic;
		music4: out std_logic;
		music5: out std_logic;
		music6: out std_logic;
		music7: out std_logic;
		music8: out std_logic;
		music9: out std_logic
		);
end musicselector;

architecture a of musicselector is
signal temp :std_logic_vector(3 downto 0):="0000";
begin
	process(edit,clk)
	begin
		if clk'event and clk = '1' then
		if edit = '1' then
			temp <= vectorinput;
			case temp is
			when "0000" =>
				music1 <= '1';
				music2 <= '0';
				music3 <= '0';
				music4 <= '0';
				music5 <= '0';
				music6 <= '0';
				music7 <= '0';
				music8 <= '0';
				music9 <= '0';
			when "0001" =>
				music1 <= '0';
				music2 <= '1';
				music3 <= '0';
				music4 <= '0';
				music5 <= '0';
				music6 <= '0';
				music7 <= '0';
				music8 <= '0';
				music9 <= '0';
			when "0010" =>
				music1 <= '0';
				music2 <= '0';
				music3 <= '1';
				music4 <= '0';
				music5 <= '0';
				music6 <= '0';
				music7 <= '0';
				music8 <= '0';
				music9 <= '0';
			when "0011" =>
				music1 <= '0';
				music2 <= '0';
				music3 <= '0';
				music4 <= '1';
				music5 <= '0';
				music6 <= '0';
				music7 <= '0';
				music8 <= '0';
				music9 <= '0';
			when "0100" =>
				music1 <= '0';
				music2 <= '0';
				music3 <= '0';
				music4 <= '0';
				music5 <= '1';
				music6 <= '0';
				music7 <= '0';
				music8 <= '0';
				music9 <= '0';
			when "0101" =>
				music1 <= '0';
				music2 <= '0';
				music3 <= '0';
				music4 <= '0';
				music5 <= '0';
				music6 <= '1';
				music7 <= '0';
				music8 <= '0';
				music9 <= '0';
			when "0110" =>
				music1 <= '0';
				music2 <= '0';
				music3 <= '0';
				music4 <= '0';
				music5 <= '0';
				music6 <= '0';
				music7 <= '1';
				music8 <= '0';
				music9 <= '0';
			when "0111" =>
				music1 <= '0';
				music2 <= '0';
				music3 <= '0';
				music4 <= '0';
				music5 <= '0';
				music6 <= '0';
				music7 <= '0';
				music8 <= '1';
				music9 <= '0';
			when "1000" =>
				music1 <= '0';
				music2 <= '0';
				music3 <= '0';
				music4 <= '0';
				music5 <= '0';
				music6 <= '0';
				music7 <= '0';
				music8 <= '1';
				music9 <= '0';
			when others =>
				music1 <= '0';
				music2 <= '0';
				music3 <= '0';
				music4 <= '0';
				music5 <= '0';
				music6 <= '0';
				music7 <= '0';
				music8 <= '0';
				music9 <= '0';
			end case;
			end if;
		end if;
	end process;
end a;