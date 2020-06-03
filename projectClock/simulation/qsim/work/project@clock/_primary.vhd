library verilog;
use verilog.vl_types.all;
entity projectClock is
    port(
        COM             : out    vl_logic;
        b_v             : out    vl_logic_vector(6 downto 0);
        clk             : in     vl_logic;
        ppop            : out    vl_logic_vector(3 downto 0);
        keypad_0        : in     vl_logic;
        keypad_1        : in     vl_logic;
        keypad_2        : in     vl_logic;
        S               : out    vl_logic_vector(2 downto 0);
        testpin         : out    vl_logic_vector(3 downto 0);
        edit_pin        : in     vl_logic
    );
end projectClock;
