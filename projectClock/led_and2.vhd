library ieee;
use ieee.std_logic_1164.all;

entity led_and2 is
port(
	edit1,edit2,edit3,edit4,edit5,edit6,editTime,editAlarm:in std_logic;
	led_and_out:out std_logic_vector(11 downto 0));
end led_and2;

architecture a of led_and2 is
signal temp:std_logic_vector(11 downto 0):="000000000000";
signal tempEdit:std_logic;
signal tempEdit1:std_logic;
signal tempEdit2:std_logic;
signal tempEdit3:std_logic;
signal tempEdit4:std_logic;
signal tempEdit5:std_logic;
signal tempEdit6:std_logic;
begin
tempEdit <= editTime OR editAlarm;
tempEdit1 <= tempEdit AND edit1;
tempEdit2 <= tempEdit AND edit2;
tempEdit3 <= tempEdit AND edit3;
tempEdit4 <= tempEdit AND edit4;
tempEdit5 <= tempEdit AND edit5;
tempEdit6 <= tempEdit AND edit6;
temp(11) <= tempEdit1;
temp(10) <= tempEdit2;
temp(8) <= tempEdit3;
temp(7) <= tempEdit4;
temp(5) <= tempEdit5;
temp(4) <= tempEdit6;
led_and_out <= temp;

end a;