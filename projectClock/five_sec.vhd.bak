library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity five_sec is 
port(
	CLK: in STD_LOGIC;
	STOP : out std_LOGIC
);
end five_sec;

architecture counter of five_sec is
signal temp : std_logic_vector(2 downto 0);
begin
	process(CLK)
	begin
		if CLK'event and CLK = '1' then
			if temp = "101" then
				STOP <= '1';
			else
				temp <= temp+1;
				STOP <= '0';
			end if;
		end if;
	end process;
end counter;	