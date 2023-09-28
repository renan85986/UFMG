LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY fulladder_4bits_tb IS
END fulladder_4bits_tb ;
 
ARCHITECTURE behavior OF fulladder_4bits_tb  IS
 
component fulladder_4bits is
Port ( Cin : in STD_LOGIC;
x : in STD_LOGIC_VECTOR (3 downto 0);
y : in STD_LOGIC_VECTOR(3 downto 0);
s : out STD_LOGIC_VECTOR (3 downto 0);
Cout : out STD_LOGIC);
end component ;
 

signal x : std_logic_vector(3 downto 0) := (others => '0');--others define tudo o que não foi especificado como 0
signal y : std_logic_vector(3 downto 0) := (others => '0');
signal Cin : std_logic := '0';
 

signal s : std_logic_vector(3 downto 0);
signal Cout : std_logic ;
 
BEGIN
 

full_adder_4bits: fulladder_4bits PORT MAP (x => x,y => y,Cin => Cin,s => s,Cout => Cout);
 

x   <= "0000","0110" after 20 ns, "1111" after 40 ns, "0110" after 60 ns, "0110" after 80 ns, "1111" after 100 ns, "1111" after 120 ns;
y   <= "0000","1100" after 20 ns, "1100" after 40 ns, "0111" after 60 ns, "1110" after 80 ns, "1111" after 100 ns, "1111" after 120 ns;
 
END;
