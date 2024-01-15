Library ieee;
Use ieee.std_logic_1164.all;

Entity BinDec is port(
	K,Y,Z,W: in std_logic;
	a,b,c,d,e,f,g: out std_logic);

End BinDec;

Architecture arq of BinDec is 
Begin
	
	a <= (Z OR (NOT W)) when (K = '0' AND Y= '0') else
		  (Z OR W)		  when (K = '0' AND Y= '1') else
		   '1';
			
	b <= '1' 			  when (K = '0' AND Y= '0') else
		  NOT(Z XOR W)	  when (K = '0' AND Y= '1') else
		  '1';
	
	c <= (NOT Z OR W) when (K = '0' AND Y= '0') else
		  '1'			 	when (K = '0' AND Y= '1') else
		  '1';
	
	d <= (Z OR (NOT W)) when (K = '0' AND Y= '0') else
		  (Z XOR W) 	  when (K = '0' AND Y= '1') else
		  '1';
	
	e <= (NOT W) 		  when (K = '0' AND Y= '0') else
		  (Z AND (NOT W))when (K = '0' AND Y= '1') else
		  (NOT(Y OR Z OR W));
	
	f <= (Z NOR W) 	  when (K = '0' AND Y= '0') else
		  (Z NAND W)  	  when (K = '0' AND Y= '1') else
		  '1';
		
	g <= Z				  when (K = '0' AND Y= '0') else
		  (Z NAND W)	  when (K = '0' AND Y= '1') else
		  '1';

End arq;
	