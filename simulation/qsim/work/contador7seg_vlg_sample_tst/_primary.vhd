library verilog;
use verilog.vl_types.all;
entity contador7seg_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        F               : in     vl_logic_vector(6 downto 0);
        Q               : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        updown          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contador7seg_vlg_sample_tst;
