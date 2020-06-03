library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DOWNtest is
port (
	clk: in std_logic;
	NumIn: in std_logic_vector(3 downto 0);
	NumOut: out std_logic_vector(3 downto 0)
);
end DOWNtest;

architecture arch of DOWNtest is
begin
	with clk select
	NumOut <= NumIn when '1',
				 "0000" when others;
end arch;