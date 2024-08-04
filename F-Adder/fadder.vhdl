library ieee;
use ieee.std_logic_1164.all;

entity fadder is
	port(
		A, B, Cin : in std_logic;
		S, Cout : out std_logic
		);
	end entity;

architecture sum of fadder is
	constant lat : time := 4 ns;

	begin

	S <= (A xor B) xor Cin after 2 * lat;
	Cout <= (A and Cin) or (B and Cin) or (A and B) after 2 * lat;

end architecture;
