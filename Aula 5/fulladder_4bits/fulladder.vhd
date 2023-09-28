LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity fulladder is
    port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
end fulladder;
architecture comportamental OF fulladder is
begin
 --codigo modificado para comportamental (sequencial)
 process(Cin, x, y)
 begin
    if(cin='0' and x='0' and y='0')then
     s<='0';
     Cout<='0';
    elsif( cin='0' and x='0' and y='1')then
     s<='1';
     Cout<='0';
    elsif( cin='0' and x='1' and y='0')then
     s<='1';
     Cout<='0';
    elsif( cin='0' and x='1' and y='1')then
     s<='0';
     Cout<='1';
    elsif( cin='1' and x='0' and y='0')then
     s<='1';
     Cout<='0';
    elsif( cin='1' and x='0' and y='1')then
     s<='0';
     Cout<='1';
    elsif( cin='1' and x='1' and y='0')then
     s<='0';
     Cout<='1';
    else
     s<='1';
     Cout<='1';
   end if;
  end process;



   --codigo dado na guia (dataflow/concorrente)
    --s <= x XOR y XOR Cin;
    --Cout <= (x AND y) OR (Cin AND x) OR (Cin AND y);
end comportamental ;