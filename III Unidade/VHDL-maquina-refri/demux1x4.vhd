Library ieee;

Use ieee.std_logic_1164.all;

Entity demux1x4 is port (

ent: in std_logic;

sel: in std_logic_vector (1 downto 0);

sai: out std_logic_vector (3 downto 0));

End demux1x4;

Architecture arq of demux1x4 is

Begin

sai(0) <= ent when sel=“00” else ‘0’;

sai(1) <= ent when sel=“01” else ‘0’;

sai(2) <= ent when sel=“10” else ‘0’;

sai(3) <= ent when sel=“11” else ‘0’;

End arq;