library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity fulladder_tb is
end fulladder_tb;

architecture teste of fulladder_tb is

   component fulladder is
	port ( Cin : in std_logic;
           x   : in std_logic;
           y   : in std_logic;
           s   : out std_logic;
           Cout : out std_logic
        );
end component;

signal Cin, x , y : std_logic;
signal s, Cout : std_logic := '0';
 
begin

full_adder : fulladder port map (Cin => Cin, x => x, y => y, s =>s, Cout => Cout);

Cin <= '0','0' after 5 ns, '0' after 10 ns, '0' after 15 ns, '1' after 20 ns, '1' after 25 ns, '1' after 30 ns, '1' after 35 ns, '1' after 40 ns;
x   <= '0','0' after 5 ns, '1' after 10 ns, '1' after 15 ns, '0' after 20 ns, '0' after 25 ns, '1' after 30 ns, '1' after 35 ns, '1' after 40 ns;
y   <= '0','1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns, '1' after 40 ns;
end teste;