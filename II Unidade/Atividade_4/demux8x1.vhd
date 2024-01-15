Library ieee;

Use ieee.std_logic_1164.all;

Entity demux8x1 is port (

ent: in std_logic;

sel: in std_logic_vector (2 downto 0);

sai: out std_logic_vector (7 downto 0));

End demux8x1;

Architecture arq of demux8x1 is

Begin

sai(0) <= ent when sel="000" else '0';

sai(1) <= ent when sel="001" else '0';

sai(2) <= ent when sel="010" else '0';

sai(3) <= ent when sel="011" else '0';

sai(4) <= ent when sel="100" else '0';

sai(5) <= ent when sel="101" else '0';

sai(6) <= ent when sel="110" else '0';

sai(7) <= ent when sel="111" else '0';

End arq;