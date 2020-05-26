library ieee;
use ieee.std_logic_1164.all;

entity vectorOR is 
port(SIGNALIN_0,SIGNALIN_1,SIGNALIN_2,SIGNALIN_3,SIGNALIN_4,SIGNALIN_5:in std_logic_vector(3 downto 0);
	SIGNALOUT:out std_logic_vector(3 downto 0));
end vectorOR;

architecture a of vectorOR is
begin
	SIGNALOUT <= SIGNALIN_0 OR SIGNALIN_1 OR SIGNALIN_2 OR SIGNALIN_3 OR SIGNALIN_4 or SIGNALIN_5;
end a;
					