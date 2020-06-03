library ieee;
use ieee.std_logic_1164.all;

entity demultiplexer3to6 is
port(x:in std_logic_vector(2 downto 0);
	  y0,y1,y2,y3,y4,y5:out std_logic
		);
end demultiplexer3to6;
architecture a of demultiplexer3to6 is
begin
process(x)
begin
	case x is
	when "000"=>
		y0 <= '1';
		y1	<= '0';
		y2	<= '0';
		y3	<= '0';
		y4	<= '0';
		y5	<= '0';
	when "001"=>
		y0 <= '0';
		y1	<= '1';
		y2	<= '0';
		y3	<= '0';
		y4	<= '0';
		y5	<= '0';
	when "010"=>
		y0 <= '0';
		y1	<= '0';
		y2	<= '1';
		y3	<= '0';
		y4	<= '0';
		y5	<= '0';
	when "011"=>
		y0 <= '0';
		y1	<= '0';
		y2	<= '0';
		y3	<= '1';
		y4	<= '0';
		y5	<= '0';
	when "100"=>
		y0 <= '0';
		y1	<= '0';
		y2	<= '0';
		y3	<= '0';
		y4	<= '1';
		y5	<= '0';
	when "101" =>
		y0 <= '0';
		y1	<= '0';
		y2	<= '0';
		y3	<= '0';
		y4	<= '0';
		y5	<= '1';
	when others =>
		y0 <= '0';
		y1	<= '0';
		y2	<= '0';
		y3	<= '0';
		y4	<= '0';
		y5	<= '0';
	end case;
	end process;
end a;