library ieee;
use ieee.std_logic_1164.all;

entity vectorAND is 
port(ANDINPUT: in std_logic;
	SIGNALIN:in std_logic_vector(3 downto 0);
	SIGNALOUT:out std_logic_vector(3 downto 0));
end vectorAND;

architecture a of vectorAND is
begin
	process(ANDINPUT)
	begin
		if ANDINPUT = '0' then
			SIGNALOUT <= (SIGNALIN and "0000");
		else
			SIGNALOUT <= (SIGNALIN and "1111");
		end if;
	end process;
end a;
					