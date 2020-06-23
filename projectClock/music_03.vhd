library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity music_03 is
port (
	CLK: in std_logic;
	BEEP:out std_logic
);
end music_03;

architecture arch of music_03 is
signal PULSE: std_logic;
signal PITCH: integer range 0 to 11;
signal BEAT ,LEN: integer range 0 to 8;
signal COUNT: integer range 0 to 127;
signal FREQ: integer range 0 to 127;
signal INDEX: integer range 0 to 202;
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
		when 8 => --高1
		FREQ <= 32768/1043;
		when 9 =>  --低5
		FREQ <= 32768/392;
		when 10 => --低6
		FREQ <= 32768/440;
		when 11 => --低7
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
		if DIVIDER >= 4915 then
			DIVIDER <= 0;
			if LEN < BEAT then
				LEN <= LEN + 1;
			else
				LEN <= 0;
				INDEX <= INDEX +1;
				if INDEX > 202 then
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
						PITCH <= 1;
						BEAT <= 3;
					when 1 =>
						PITCH <= 0;
						BEAT <= 0;
					when 2 =>
						PITCH <= 1;
						BEAT <= 1;
					when 3 =>
						PITCH <= 0;
						BEAT <= 0;
					when 4 =>
						PITCH <= 1;
						BEAT <= 2;
					when 5 =>
						PITCH <= 0;
						BEAT <= 0;
					when 6 =>
						PITCH <= 1;
						BEAT <= 2;
					when 7 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 8 =>
						PITCH <= 11;
						BEAT <= 2;
					when 9 =>
						PITCH <= 0;
						BEAT <= 0;
					when 10 =>
						PITCH <= 1;
						BEAT <= 4;
					when 11 =>
						PITCH <= 0;
						BEAT <= 0;
					when 12 =>
						PITCH <= 0;
						BEAT <= 1;
					when 13 =>
						PITCH <= 0;
						BEAT <= 0;
					when 14 =>
						PITCH <= 1;
						BEAT <= 1;
					when 15 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 16 =>
						PITCH <= 11;
						BEAT <= 2;
					when 17 =>
						PITCH <= 0;
						BEAT <= 0;
					when 18 =>
						PITCH <= 1;
						BEAT <= 4;
					when 19 =>
						PITCH <= 0;
						BEAT <= 0;
					when 20 =>
						PITCH <= 0;
						BEAT <= 1;
					when 21 =>
						PITCH <= 0;
						BEAT <= 0;
					when 22 =>
						PITCH <= 2;
						BEAT <= 1;
					when 23 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 24 =>
						PITCH <= 3;
						BEAT <= 2;
					when 25 =>
						PITCH <= 0;
						BEAT <= 0;
					when 26 =>
						PITCH <= 2;
						BEAT <= 2;
					when 27 =>
						PITCH <= 0;
						BEAT <= 0;
					when 28 =>
						PITCH <= 2;
						BEAT <= 4;
					when 29 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 30 =>
						PITCH <= 1;
						BEAT <= 3;
					when 31 =>
						PITCH <= 0;
						BEAT <= 0;
					when 32 =>
						PITCH <= 1;
						BEAT <= 1;
					when 33 =>
						PITCH <= 0;
						BEAT <= 0;
					when 34 =>
						PITCH <= 1;
						BEAT <= 2;
					when 35 =>
						PITCH <= 0;
						BEAT <= 0;	
					when 36 =>
						PITCH <= 1;
						BEAT <= 2;
					when 37 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 38 =>
						PITCH <= 11;
						BEAT <= 2;
					when 39 =>
						PITCH <= 0;
						BEAT <= 0;
					when 40 =>
						PITCH <= 1;
						BEAT <= 4;
					when 41 =>
						PITCH <= 0;
						BEAT <= 0;
					when 42 =>
						PITCH <= 0;
						BEAT <= 1;
					when 43 =>
						PITCH <= 0;
						BEAT <= 0;
					when 44 =>
						PITCH <= 1;
						BEAT <= 1;
					when 45 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 46 =>
						PITCH <= 9;
						BEAT <= 8;
					when 47 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 48 =>
						PITCH <= 9;
						BEAT <= 6;
					when 49 =>
						PITCH <= 0;
						BEAT <= 0;
					when 50 =>
						PITCH <= 0;
						BEAT <= 2;
					when 51 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 52 =>
						PITCH <= 1;
						BEAT <= 3;
					when 53 =>
						PITCH <= 0;
						BEAT <= 0;
					when 54 =>
						PITCH <= 1;
						BEAT <= 1;
					when 55 =>
						PITCH <= 0;
						BEAT <= 0;
					when 56 =>
						PITCH <= 1;
						BEAT <= 3;
					when 57 =>
						PITCH <= 0;
						BEAT <= 0;
					when 58 =>
						PITCH <= 1;
						BEAT <= 1;
					when 59 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 60 =>
						PITCH <= 11;
						BEAT <= 2;
					when 61 =>
						PITCH <= 0;
						BEAT <= 0;
					when 62 =>
						PITCH <= 1;
						BEAT <= 4;
					when 63 =>
						PITCH <= 0;
						BEAT <= 0;
					when 64 =>
						PITCH <= 0;
						BEAT <= 1;
					when 65 =>
						PITCH <= 0;
						BEAT <= 0;
					when 66 =>
						PITCH <= 1;
						BEAT <= 1;
					when 67 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 68 =>
						PITCH <= 11;
						BEAT <= 2;
					when 69 =>
						PITCH <= 0;
						BEAT <= 0;
					when 70 =>
						PITCH <= 1;
						BEAT <= 4;
					when 71 =>
						PITCH <= 0;
						BEAT <= 0;
					when 72 =>
						PITCH <= 0;
						BEAT <= 1;
					when 73 =>
						PITCH <= 0;
						BEAT <= 0;
					when 74 =>
						PITCH <= 2;
						BEAT <= 1;
					when 75 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 76 =>
						PITCH <= 3;
						BEAT <= 2;
					when 77 =>
						PITCH <= 0;
						BEAT <= 0;
					when 78 =>
						PITCH <= 2;
						BEAT <= 2;
					when 79 =>
						PITCH <= 0;
						BEAT <= 0;
					when 80 =>
						PITCH <= 2;
						BEAT <= 4;
					when 81 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 82 =>
						PITCH <= 1;
						BEAT <= 3;
					when 83 =>
						PITCH <= 0;
						BEAT <= 0;
					when 84 =>
						PITCH <= 1;
						BEAT <= 1;
					when 85 =>
						PITCH <= 0;
						BEAT <= 0;
					when 86 =>
						PITCH <= 1;
						BEAT <= 1;
					when 87 =>
						PITCH <= 0;
						BEAT <= 0;
					when 88 =>
						PITCH <= 1;
						BEAT <= 2;
					when 89 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 90 =>
						PITCH <= 11;
						BEAT <= 2;
					when 91 =>
						PITCH <= 0;
						BEAT <= 0;
					when 92 =>
						PITCH <= 1;
						BEAT <= 4;
					when 93 =>
						PITCH <= 0;
						BEAT <= 0;
					when 94 =>
						PITCH <= 0;
						BEAT <= 1;
					when 95 =>
						PITCH <= 0;
						BEAT <= 0;
					when 96 =>
						PITCH <= 1;
						BEAT <= 1;
					when 97 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 98 =>
						PITCH <= 9;
						BEAT <= 8;
					when 99 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 100 =>
						PITCH <= 9;
						BEAT <= 6;
					when 101 =>
						PITCH <= 0;
						BEAT <= 0;
					when 102 =>
						PITCH <= 0;
						BEAT <= 2;
					when 103 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 104 =>
						PITCH <= 1;
						BEAT <= 8;
					when 105 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 106 =>
						PITCH <= 2;
						BEAT <= 6;
					when 107 =>
						PITCH <= 0;
						BEAT <= 0;
					when 108 =>
						PITCH <= 9;
						BEAT <= 1;
					when 109 =>
						PITCH <= 9;
						BEAT <= 1;
					when 110 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 111 =>
						PITCH <= 5;
						BEAT <= 3;
					when 112 =>
						PITCH <= 0;
						BEAT <= 0;
					when 113 =>
						PITCH <= 4;
						BEAT <= 1;
					when 114 =>
						PITCH <= 0;
						BEAT <= 0;
					when 115 =>
						PITCH <= 4;
						BEAT <= 1;
					when 116 =>
						PITCH <= 3;
						BEAT <= 1;
					when 117=>
						PITCH <= 0;
						BEAT <= 0;
					when 118 =>
						PITCH <= 3;
						BEAT <= 1;
					when 119 =>
						PITCH <= 2;
						BEAT <= 1;
						
					when 120 =>
						PITCH <= 2;
						BEAT <= 4;
					when 121 =>
						PITCH <= 0;
						BEAT <= 0;
					when 122 =>
						PITCH <= 3;
						BEAT <= 2;
					when 123 =>
						PITCH <= 0;
						BEAT <= 0;
					when 124 =>
						PITCH <= 4;
						BEAT <= 2;
					when 125 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 126 =>
						PITCH <= 3;
						BEAT <= 4;
					when 127 =>
						PITCH <= 0;
						BEAT <= 0;
					when 128 =>
						PITCH <= 2;
						BEAT <= 1;
					when 129 =>
						PITCH <= 0;
						BEAT <= 0;
					when 130 =>
						PITCH <= 1;
						BEAT <= 1;
					when 131 =>
						PITCH <= 0;
						BEAT <= 0;
					when 132 =>
						PITCH <= 1;
						BEAT <= 2;
					when 133 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 134 =>
						PITCH <= 11;
						BEAT <= 2;
					when 135 =>
						PITCH <= 1;
						BEAT <= 4;
					when 136 =>
						PITCH <= 0;
						BEAT <= 0;
					when 137 =>
						PITCH <= 0;
						BEAT <= 1;
					when 138 =>
						PITCH <= 1;
						BEAT <= 1;
					when 139 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 140 =>
						PITCH <= 10;
						BEAT <= 6;
					when 141 =>
						PITCH <= 10;
						BEAT <= 1;
					when 142 =>
						PITCH <= 0;
						BEAT <= 0;
					when 143 =>
						PITCH <= 10;
						BEAT <= 1;
					when 144 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 145 =>
						PITCH <= 9;
						BEAT <= 6;
					when 146 =>
						PITCH <= 0;
						BEAT <= 0;
					when 147 =>
						PITCH <= 0;
						BEAT <= 2;
					when 148 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 149 =>
						PITCH <= 1;
						BEAT <= 8;
					when 150 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 151 =>
						PITCH <= 1;
						BEAT <= 1;
					when 152 =>
						PITCH <= 0;
						BEAT <= 0;
					when 153 =>
						PITCH <= 2;
						BEAT <= 5;
					when 154 =>
						PITCH <= 0;
						BEAT <= 0;
					when 155 =>
						PITCH <= 9;
						BEAT <= 1;
					when 156 =>
						PITCH <= 9;
						BEAT <= 1;
					when 157 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 158 =>
						PITCH <= 5;
						BEAT <= 3;
					when 159 =>
						PITCH <= 0;
						BEAT <= 0;
					when 160 =>
						PITCH <= 4;
						BEAT <= 1;
					when 161 =>
						PITCH <= 0;
						BEAT <= 0;
					when 162 =>
						PITCH <= 4;
						BEAT <= 1;
					when 163 =>
						PITCH <= 3;
						BEAT <= 1;
					when 164 =>
						PITCH <= 0;
						BEAT <= 0;
					when 165 =>
						PITCH <= 3;
						BEAT <= 1;
					when 166 =>
						PITCH <= 0;
						BEAT <= 0;
					when 167 =>
						PITCH <= 2;
						BEAT <= 1;
						
					when 168 =>
						PITCH <= 2;
						BEAT <= 4;
					when 169 =>
						PITCH <= 0;
						BEAT <= 0;
					when 170 =>
						PITCH <= 3;
						BEAT <= 2;
					when 171 =>
						PITCH <= 0;
						BEAT <= 0;
					when 172 =>
						PITCH <= 4;
						BEAT <= 2;
					when 173 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 174 =>
						PITCH <= 3;
						BEAT <= 4;
					when 175 =>
						PITCH <= 0;
						BEAT <= 0;
					when 176 =>
						PITCH <= 2;
						BEAT <= 2;
					when 177 =>
						PITCH <= 0;
						BEAT <= 0;
					when 178 =>
						PITCH <= 1;
						BEAT <= 2;
					when 179 =>
						PITCH <= 0;
						BEAT <= 0;

					when 180 =>
						PITCH <= 11;
						BEAT <= 2;
					when 181 =>
						PITCH <= 1;
						BEAT <= 4;
					when 182 =>
						PITCH <= 0;
						BEAT <= 0;
					when 183 =>
						PITCH <= 0;
						BEAT <= 1;
					when 184 =>
						PITCH <= 11;
						BEAT <= 1;
					when 185 =>
						PITCH <= 0;
						BEAT <= 0;
					
					when 186 =>
						PITCH <= 11;
						BEAT <= 1;
					when 187 =>
						PITCH <= 0;
						BEAT <= 0;
					when 188 =>
						PITCH <= 1;
						BEAT <= 1;
					when 189 =>
						PITCH <= 1;
						BEAT <= 2;
					when 190 =>
						PITCH <= 0;
						BEAT <= 0;
					when 191 =>
						PITCH <= 1;
						BEAT <= 1;
					when 192 =>
						PITCH <= 0;
						BEAT <= 0;
					when 193 =>
						PITCH <= 3;
						BEAT <= 3;
					when 194 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 195 =>
						PITCH <= 3;
						BEAT <= 2;
					when 196 =>
						PITCH <= 0;
						BEAT <= 0;
					when 197 =>
						PITCH <= 2;
						BEAT <= 4;	
					when 198 =>
						PITCH <= 0;
						BEAT <= 0;
					when 199 =>
						PITCH <= 1;
						BEAT <= 2;
					when 200 =>
						PITCH <= 0;
						BEAT <= 0;
						
					when 201 =>
						PITCH <= 1;
						BEAT <= 8;
					when 202 =>
						PITCH <= 0;
						BEAT <= 0;
					when others =>
						PITCH <= 0;
						BEAT <= 0;			
					end case;	
	end process;
	with FREQ select
		BEEP <= '0' when 0,
		PULSE when others;
end arch;