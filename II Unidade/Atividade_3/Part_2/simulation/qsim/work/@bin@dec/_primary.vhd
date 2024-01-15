library verilog;
use verilog.vl_types.all;
entity BinDec is
    port(
        K               : in     vl_logic;
        Y               : in     vl_logic;
        Z               : in     vl_logic;
        W               : in     vl_logic;
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic
    );
end BinDec;
