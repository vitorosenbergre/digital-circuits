Library ieee;

Use ieee.std_logic_1164.all;

Entity cicuitoAtividade1 is port (


a, b, c, d: in std_logic;

s: out std_logic);

End cicuitoAtividade1;

Architecture arq of cicuitoAtividade1 is

Begin

S <= ((not A) and B and C) and not (A or D);

End arq;