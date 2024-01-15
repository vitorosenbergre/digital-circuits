Library ieee;

Use ieee.std_logic_1164.all;

Entity logica is port (

Q1, Q2, M50, M100: in std_logic;

D1, D0, R, T: out std_logic);

End logica;

Architecture ARQ of logica is

Begin

R <= Q1;

T <= Q1 and Q2;

D1 <= (M100) when (Q1='0' and Q2='0' ) else

(M100 or M50) when (Q1='0' and Q2='1' ) else

'0';

D0 <= (M50) when (Q1='0' and Q2='0') else

(not M50) when (Q1='0' and Q2='1') else

'0';

end ARQ;