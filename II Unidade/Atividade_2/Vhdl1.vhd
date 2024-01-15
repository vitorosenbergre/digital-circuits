
Library ieee;
Use ieee.std_logic_1164.all;

Entity VHDLeds is port(

X,Y,Z: in std_logic;
a, b, c, d, e, f, g: out std_logic);

End VHDLeds;

Architecture arq of VHDLeds is

Begin 
	a <= (X or Y or (not Z)) and ((not X) or Y or Z);
	b <= (Y or (not Z)) and ((not X) or (not Y) or Z);
	c <= (X or Y or (not Z)) and (X or (not Y) or Z);
	d <= (X or Y or (not Z)) and ((not X) or (not Y) or (not Z)) and ((not X) or Y or Z);
	e <= ((not Y) or (not Z)) and ((not X) or Y);
	f <= ((not Y) or (not Z)) and (X or (not Y));
	g <= (X or Y) and ((not X) or (not Y) or (not Z));
End arq;