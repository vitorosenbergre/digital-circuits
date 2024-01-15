Library ieee;
Use ieee.std_logic_1164.all;

Entity ffd is port (
	d, clk: in std_logic;
	q: out std_logic);
End ffd;

Architecture ARQ of ffd is
	signal sQatual, sProxQ: std_logic;
begin
	q <= sQAtual;
	Process (clk)
	Begin
	If (clk’event and clk=’1’) then
	sQatual <= sProxQ;
	else
	sQatual <= sQatual;
	end if;
end process;

	sProxQ <= d;
end ARQ;