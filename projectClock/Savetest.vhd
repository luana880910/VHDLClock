library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Savetest is
port (
	clk: in std_logic;
	NumIn: in std_logic_vector(3 downto 0);
	NumOut: out std_logic_vector(3 downto 0)
);
end Savetest;

architecture arch of Savetest is
signal CNT: std_logic_vector(3 downto 0);
begin
	process(clk,NumIn)
	begin
		if clk'event and clk = '1' then
			if NumIn = "0000" then
				CNT <= CNT;
			elsif NumIn = "1010" then
				CNT <= "0000";
			else
				CNT <= NumIn;
			end if;
		end if;
	end process;
	NumOut <= CNT;
end arch;