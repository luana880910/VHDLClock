library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ORtest is
port (
	DOWNIn: in std_logic_vector(3 downto 0);
	UPIn: in std_logic_vector(3 downto 0);
	NumOut: out std_logic_vector(3 downto 0)
);
end ORtest;

architecture arch of ORtest is
signal CNT: std_logic_vector(3 downto 0):= "0000";
begin
	NumOut <= DOWNIn or UPIn;
end arch;