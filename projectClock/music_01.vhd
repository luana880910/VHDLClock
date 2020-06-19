library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity music_01 is
port (
	CLK: in std_logic;
	BEEP:out std_logic
);
end music_01;

architecture arch of music_01 is
signal PULSE: std_logic;
signal PITCH: integer range 0 to 11;
signal BEAT ,LEN: integer range 0 to 4;
signal COUNT: integer range 0 to 127;
signal FREQ: integer range 0 to 127;
signal INDEX: integer range 0 to 36;
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
		when 9 =>
		FREQ <= 32768/392;
		when 10 =>
		FREQ <= 32768/440;
		when 11 =>
		FREQ <= 32768/494;
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
		if DIVIDER >= 6553 then
			DIVIDER <= 0;
			if LEN < BEAT then
				LEN <= LEN + 1;
			else
				LEN <= 0;
				INDEX <= INDEX +1;
				if INDEX > 36 then
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
				PITCH <= 9;
				BEAT <= 1;
			when 2 =>
				PITCH <= 1;
				BEAT <= 3;
			when 3 =>
				PITCH <= 5;
				BEAT <= 3;
			when 4 =>
				PITCH <= 1;
				BEAT <= 1;
			when 5 =>
				PITCH <= 11;
				BEAT <= 3;
			when 6 =>
				PITCH <= 3;
				BEAT <= 1;
			when 7 =>
				PITCH <= 5;
				BEAT <= 2;			
			when 8 =>
				PITCH <= 0;
				BEAT <= 1;
			when 9 =>
				PITCH <= 5;
				BEAT <= 1;
			when 10 =>
				PITCH <= 6;
				BEAT <= 3;
			when 11 =>
				PITCH <= 7;
				BEAT <= 1;
			when 12 =>
				PITCH <= 8;
				BEAT <= 3;
			when 13 =>
				PITCH <= 6;
				BEAT <= 1;
			when 14 =>
				PITCH <= 6;
				BEAT <= 1;
			when 15 =>
				PITCH <= 5;
				BEAT <= 1;	
			when 16 =>
				PITCH <= 5;
				BEAT <= 4;
			when 17 =>
				PITCH <= 3;
				BEAT <= 1;
			when 18 =>
				PITCH <= 2;
				BEAT <= 1;
			when 19 =>
				PITCH <= 1;
				BEAT <= 3;
			when 20 =>
				PITCH <= 1;
				BEAT <= 1;
			when 21 =>
				PITCH <= 1;
				BEAT <= 2;
			when 22 =>
				PITCH <= 3;
				BEAT <= 1;
			when 23 =>
				PITCH <= 2;
				BEAT <= 1;	
			when 24 =>
				PITCH <= 1;
				BEAT <= 3;
			when 25 =>
				PITCH <= 1;
				BEAT <= 1;
			when 26 =>
				PITCH <= 1;
				BEAT <= 2;
			when 27 =>
				PITCH <= 2;
				BEAT <= 1;
			when 28 =>
				PITCH <= 3;
				BEAT <= 1;
			when 29 =>
				PITCH <= 2;
				BEAT <= 3;	
			when 30 =>
				PITCH <= 1;
				BEAT <= 1;
			when 31 =>
				PITCH <= 10;
				BEAT <= 2;
			when 32 =>
				PITCH <= 2;
				BEAT <= 1;
			when 33 =>
				PITCH <= 3;
				BEAT <= 1;
			when 34 =>
				PITCH <= 2;
				BEAT <= 2;
			when 35 =>
				PITCH <= 2;
				BEAT <= 2;	
			when 36 =>
				PITCH <= 2;
				BEAT <= 2;		
			when others =>
				PITCH <= 0;
				BEAT <= 0;			
		end case;
	end process;
	with FREQ select
		BEEP <= '0' when 0,
		PULSE when others;
end arch;