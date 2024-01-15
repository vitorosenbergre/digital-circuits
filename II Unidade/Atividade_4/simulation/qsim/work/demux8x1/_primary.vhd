library verilog;
use verilog.vl_types.all;
entity demux8x1 is
    port(
        ent             : in     vl_logic;
        sel             : in     vl_logic_vector(2 downto 0);
        sai             : out    vl_logic_vector(7 downto 0)
    );
end demux8x1;
