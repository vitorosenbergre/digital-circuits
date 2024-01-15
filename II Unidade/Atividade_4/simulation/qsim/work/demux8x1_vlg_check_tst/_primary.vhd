library verilog;
use verilog.vl_types.all;
entity demux8x1_vlg_check_tst is
    port(
        sai             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end demux8x1_vlg_check_tst;
