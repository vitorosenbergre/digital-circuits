library verilog;
use verilog.vl_types.all;
entity demux8x1_vlg_sample_tst is
    port(
        ent             : in     vl_logic;
        sel             : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end demux8x1_vlg_sample_tst;
