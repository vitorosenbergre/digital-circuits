Library ieee;
Use ieee.std_logic_1164.all;

Entity prova is port(
	A,B,C,D: in std_logic;
	S: out std_logic);

End prova;

Architecture arq of prova is 
Begin
	S <= (NOT C OR D) 	when (A = '0' AND B= '0') else
		  (NOT C AND D)	when (A = '0' AND B= '1') else
		  (NOT C)	   	when (A = '1' AND B= '0') else
		  (C OR D)			when (A = '1' AND B= '1');
End arq;
	