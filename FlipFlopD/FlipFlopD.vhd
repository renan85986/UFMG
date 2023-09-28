LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity FlipFlopD is
	port( clock: in std_logic;
		  D: in std_logic;
		  reset: in std_logic;
	      Q: inout std_logic :='0';
			Qi: inout std_logic :='0'
	    );
end FlipFlopD;

architecture RTL of FlipFlopD is
  signal d1,s,r : std_logic;
   
begin
		
		s <= D nand clock;
		d1 <= D nand D;
		r <= d1 nand clock;
		Q <= s nand Qi;
		Qi <= r nand Q;
		--Q <=(D nand clock) nand  Qi;
		
		--Qi <= (D nand D) nand clk nand q;
		
end RTL;