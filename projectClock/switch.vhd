library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity switch is
port ( sw	: in std_logic;
		 inputA		: in std_logic_vector(3 downto 0);
		 inputB		: in std_logic_vector(3 downto 0);
		 output		: out std_logic_vector(3 downto 0));
end switch;

architecture a of switch is
begin
	process(sw)
	begin
	if sw='1' then
		output <= inputA;
	else output <= inputB;
	end if;
	end process;
end a;