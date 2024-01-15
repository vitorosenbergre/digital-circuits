Library ieee;

Use ieee.std_logic_1164.all;

Entity FSM is port (

entrada, clk: in std_logic;

saida: out std_logic);

End FSM;

Architecture ARQ of FSM is

Signal fio0, fio1, fio2, fio3, fio4, fio5: std_logic;

Begin

ff0: work.ffd port map (d=>fio2, q=>fio5, clk=>clk);

ff1: work.ffd port map (d=>fio1, q=>fio4, clk=>clk);

ff2: work.ffd port map (d=>fio0, q=>fio3, clk=>clk);

log: work.logica port map (D0=>fio2, D1=>fio1, D2=>fio0, entrada=>entrada, Q0=>fio5, Q1=>fio4, Q2=>fio3,

saida=>saida);

end ARQ;