library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity UP is
port (
	UP: in std_logic;
	NumIn: in std_logic_vector(3 downto 0);
	NumOut: out std_logic_vector(3 downto 0)
);
end UP;

architecture arch of UP is
signal CNT: std_logic_vector(3 downto 0);
begin
	process(UP,NumIn)
	begin
--	if UP'event and UP = '1' then
	if rising_edge(UP) then
		CNT <= NumIn;
		if NumIn = "1001" then
			CNT <= "1010";
		else
			CNT <= NumIn + '1';
		end if;
	end if;
	end process;
	NumOut <= CNT;
end arch;