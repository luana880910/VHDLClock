library verilog;
use verilog.vl_types.all;
entity projectClock_vlg_check_tst is
    port(
        b_v             : in     vl_logic_vector(6 downto 0);
        COM             : in     vl_logic;
        ppop            : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic_vector(2 downto 0);
        testpin         : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end projectClock_vlg_check_tst;
