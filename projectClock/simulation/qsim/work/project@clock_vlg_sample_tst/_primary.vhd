library verilog;
use verilog.vl_types.all;
entity projectClock_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        edit_pin        : in     vl_logic;
        keypad_0        : in     vl_logic;
        keypad_1        : in     vl_logic;
        keypad_2        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end projectClock_vlg_sample_tst;
