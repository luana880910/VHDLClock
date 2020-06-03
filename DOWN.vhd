library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DOWN is
port (
	DOWN: in std_logic;
	NumIn: in std_logic_vector(3 downto 0);
	NumOut: out std_logic_vector(3 downto 0)
);
end DOWN;

architecture arch of DOWN is
signal CNT: std_logic_vector(3 downto 0);
begin
	process(DOWN,NumIn)
	begin
--	if DOWN'event and DOWN = '1' then
	if rising_edge(DOWN) then
		CNT <= NumIn;
		if NumIn = "0000" then
			CNT <= "1001";
		elsif NumIn = "0001" then
			CNT <= "1010";
		else
			CNT <= NumIn - '1';
		end if;
	end if;
	end process;
	NumOut <= CNT;
end arch;