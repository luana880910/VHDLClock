library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity five_sec is 
port(
	CLK: in STD_LOGIC;
	reset: in STD_LOGIC;
	STOP : out std_LOGIC
);
end five_sec;

architecture counter of five_sec is
signal temp : std_logic_vector(2 downto 0):="111";
begin
	process(CLK)
	begin
		if CLK'event and CLK = '1' then
			if reset ='1' then 
				temp <="000";
				STOP<='1';
			end if;
			--if temp = "101" then
			--	STOP <= '1';
			--else
			--	temp <= temp+1;
			--	STOP <= '0';
			--	temp = "111"=> temp<="111"
			--end if;
			case temp is
			when "000" => temp <= "001";STOP<='1';
			when "001" => temp <= "010";
			when "010" => temp <= "011";
			when "011" => temp <= "100";
			when "100" => temp <= "101";
			when "101" => temp <= "111";STOP<='0';
			when others => temp <= "111";
			end case;
		end if;
	end process;
end counter;	