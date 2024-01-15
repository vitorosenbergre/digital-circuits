library verilog;
use verilog.vl_types.all;
entity BinDec_vlg_sample_tst is
    port(
        K               : in     vl_logic;
        W               : in     vl_logic;
        Y               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end BinDec_vlg_sample_tst;
