library ieee;
use ieee.std_logic_1164.all;

entity register_saver is
port(x:in std_logic_vector(3 downto 0);
	  register_save:out std_logic
		);
end register_saver;

architecture a of register_saver is
begin
	register_save <= (x(3) or x(2)) or (x(1) or x(0));
end a;