library ieee;
use ieee.std_logic_1164.all;

entity vector_gnd is 
port(S:out std_logic_vector(3 downto 0));
end vector_gnd;

architecture a of vector_gnd is
begin
S <= "0000";
end a;