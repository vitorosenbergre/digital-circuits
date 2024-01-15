Library ieee;

Use ieee.std_logic_1164.all;

Entity FSM is port (

clk, M50, M100: in std_logic;

R, T: out std_logic);

End FSM;

Architecture ARQ of FSM is

Signal f0, f1, f2, f3: std_logic;

Begin

ff0: work.ffd port map (d=>f0, q=>f1, clk=>clk);

ff1: work.ffd port map (d=>f2, q=>f3, clk=>clk);

log: work.logica port map (D0=>f0, Q2=>f1, D1=>f2, Q1=>f3,

M100=>M100, M50=>M50, R=>R, T=>T);

end ARQ;