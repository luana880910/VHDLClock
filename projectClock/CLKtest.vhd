library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CLKtest is
port (
	CLK: in std_logic;
	CLKout: out std_logic
);
end CLKtest;

architecture arch of CLKtest is
signal CNT: std_logic_vector(4 downto 0);
signal CNTout: std_logic;
begin
	process(CLK)
	begin
		if CLK'event and CLK = '1' then
			if CNT > "01111" then
				CNTout <= '0';
			else
				CNTout <= '1';
			end if;
			CNT <= CNT+1;
		end if;
	end process;
	CLKout <= CNTout;
end arch;