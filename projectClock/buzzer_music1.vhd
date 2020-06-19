library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity buzzer_music1 is
port (
	CLK: in std_logic;
	BEEP:out std_logic
);
end buzzer_music1;

architecture arch of buzzer_music1 is
signal PULSE: std_logic;
signal PITCH: integer range 0 to 8;
signal BEAT ,LEN: integer range 0 to 8;
signal COUNT: integer range 0 to 127;
signal FREQ: integer range 0 to 127;
signal INDEX: integer range 0 to 79;
signal DIVIDER: integer range 0 to 16384;
begin
	process(CLK)
	begin
		case PITCH is
		when 1 =>
		FREQ <= 32768/523;
		when 2 =>
		FREQ <= 32768/587;
		when 3 =>
		FREQ <= 32768/659;
		when 4 =>
		FREQ <= 32768/698;
		when 5 =>
		FREQ <= 32768/784;
		when 6 =>
		FREQ <= 32768/880;
		when 7 =>
		FREQ <= 32768/988;
		when 8 =>
		FREQ <= 32768/1043;
		when others =>
		FREQ <= 0;
	end case;
	if CLK'event and CLK = '1' then
		if FREQ = 0 then
			COUNT <= 0;
		else
			COUNT <= COUNT+1;
				if COUNT = FREQ/2 then
					PULSE <= not PULSE;
					COUNT <= 0;
				end if;
		end if;
		if DIVIDER >= 4915 then
			DIVIDER <= 0;
			if LEN < BEAT then
				LEN <= LEN + 1;
			else
				LEN <= 0;
				INDEX <= INDEX +1;
				if INDEX > 63 then
					INDEX <= 0;
				end if;
			end if;
		else
			DIVIDER <= DIVIDER + 1 ;
		end if;
	end if;
	end process;
	
	process(CLK)
	begin
		case INDEX is
			when 0 =>
				PITCH <= 0;
				BEAT <= 1;
			when 1 =>
				PITCH <= 0;
				BEAT <= 0;
			when 2 =>
				PITCH <= 5;
				BEAT <= 1;
			when 3 =>
				PITCH <= 0;
				BEAT <= 0;
			when 4 =>
				PITCH <= 4;
				BEAT <= 1;
			when 5 =>
				PITCH <= 0;
				BEAT <= 0;
			when 6 =>
				PITCH <= 3;
				BEAT <= 1;
			when 7 =>
				PITCH <= 3;
				BEAT <= 2;
			when 8 =>
				PITCH <= 0;
				BEAT <= 0;
			when 9 =>
				PITCH <= 4;
				BEAT <= 1;
			when 10 =>
				PITCH <= 0;
				BEAT <= 0;
			when 11 =>
				PITCH <= 3;
				BEAT <= 1;
			when 12 =>
				PITCH <= 3;
				BEAT <= 1;
			when 13 =>
				PITCH <= 0;
				BEAT <= 0;
			when 14 =>
				PITCH <= 2;
				BEAT <= 1;
			when 15 =>
				PITCH <= 2;
				BEAT <= 2;
			when 16 =>
				PITCH <= 0;
				BEAT <= 0;
			when 17 =>
				PITCH <= 1;
				BEAT <= 2;
			when 18 =>
				PITCH <= 0;
				BEAT <= 0;
			when 19 =>
				PITCH <= 2;
				BEAT <= 1;
			when 20 =>
				PITCH <= 0;
				BEAT <= 0;
			when 21 =>
				PITCH <= 3;
				BEAT <= 1;
			when 22 =>
				PITCH <= 3;
				BEAT <= 1;
			when 23 =>
				PITCH <= 0;
				BEAT <= 0;
			when 24 =>
				PITCH <= 1;
				BEAT <= 1;
			when 25 =>
				PITCH <= 1;
				BEAT <= 2;
			when 26 =>
				PITCH <= 0;
				BEAT <= 0;
			when 27 =>
				PITCH <= 6;
				BEAT <= 2;
			when 28 =>
				PITCH <= 0;
				BEAT <= 0;
			when 29 =>
				PITCH <= 1;
				BEAT <= 1;
			when 30 =>
				PITCH <= 0;
				BEAT <= 0;
			when 31 =>
				PITCH <= 5;
				BEAT <= 1;
			when 32 =>
				PITCH <= 5;
				BEAT <= 1;
			when 33 =>
				PITCH <= 0;
				BEAT <= 0;
			when 34 =>
				PITCH <= 1;
				BEAT <= 1;
			when 35 =>
				PITCH <= 0;
				BEAT <= 0;
			when 36 =>
				PITCH <= 3;
				BEAT <= 1;
			when 37 =>
				PITCH <= 0;
				BEAT <= 0;
			when 38 =>
				PITCH <= 3;
				BEAT <= 1;
			when 39 =>
				PITCH <= 3;
				BEAT <= 4;
			when 40 =>
				PITCH <= 0;
				BEAT <= 0;
			when 41 =>
				PITCH <= 0;
				BEAT <= 1;
			when 42 =>
				PITCH <= 0;
				BEAT <= 0;
			when 43 =>
				PITCH <= 5;
				BEAT <= 1;
			when 44 =>
				PITCH <= 0;
				BEAT <= 0;
			when 45 =>
				PITCH <= 4;
				BEAT <= 1;
			when 46 =>
				PITCH <= 0;
				BEAT <= 0;
			when 47 =>
				PITCH <= 3;
				BEAT <= 1;
			when 48 =>
				PITCH <= 3;
				BEAT <= 2;
			when 49 =>
				PITCH <= 0;
				BEAT <= 0;
			when 50 =>
				PITCH <= 4;
				BEAT <= 1;
			when 51 =>
				PITCH <= 0;
				BEAT <= 0;
			when 52 =>
				PITCH <= 3;
				BEAT <= 1;
			when 53 =>
				PITCH <= 3;
				BEAT <= 1;
			when 54 =>
				PITCH <= 0;
				BEAT <= 0;
			when 55 =>
				PITCH <= 2;
				BEAT <= 1;
			when 56 =>
				PITCH <= 2;
				BEAT <= 2;
			when 57 =>
				PITCH <= 0;
				BEAT <= 0;
			when 58 =>
				PITCH <= 1;
				BEAT <= 2;
			when 59 =>
				PITCH <= 0;
				BEAT <= 0;
			when 60 =>
				PITCH <= 2;
				BEAT <= 1;
			when 61 =>
				PITCH <= 0;
				BEAT <= 0;
			when 62 =>
				PITCH <= 3;
				BEAT <= 1;
			when 63 =>
				PITCH <= 3;
				BEAT <= 1;
			when 64 =>
				PITCH <= 0;
				BEAT <= 0;
			when 65 =>
				PITCH <= 6;
				BEAT <= 1;
			when 66 =>
				PITCH <= 6;
				BEAT <= 2;
			when 67 =>
				PITCH <= 0;
				BEAT <= 0;
			when 68 =>
				PITCH <= 5;
				BEAT <= 2;
			when 69 =>
				PITCH <= 0;
				BEAT <= 0;
			when 70 =>
				PITCH <= 7;
				BEAT <= 1;
			when 71 =>
				PITCH <= 0;
				BEAT <= 0;
			when 72 =>
				PITCH <= 1;
				BEAT <= 1;
			when 73 =>
				PITCH <= 1;
				BEAT <= 1;
			when 74 =>
				PITCH <= 0;
				BEAT <= 0;
			when 75 =>
				PITCH <= 2;
				BEAT <= 1;
			when 76 =>
				PITCH <= 2;
				BEAT <= 1;
			when 77 =>
				PITCH <= 0;
				BEAT <= 0;
			when 78 =>
				PITCH <= 1;
				BEAT <= 1;
			when 79 =>
				PITCH <= 1;
				BEAT <= 6;
			when others =>
				PITCH <= 0;
				BEAT <= 0;			
		end case;
	end process;
	with FREQ select
		BEEP <= '0' when 0,
		PULSE when others;
end arch;