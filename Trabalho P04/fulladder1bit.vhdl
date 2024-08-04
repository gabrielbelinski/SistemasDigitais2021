library ieee;
use ieee.std_logic_1164.all;

entity fulladder1bit is
	port(
	X : in std_logic;
	Y : in std_logic;
	Cin : in std_logic;
	S : out std_logic;
	Cout : out std_logic
	);
end entity;
	
architecture comuta of fulladder1bit is

	constant latency : time := 4 ns;
	
begin

	S <= (X xor Y) xor Cin after latency;
	Cout <= (X and Y) or (Cin and X) or (Cin and Y) after 3*latency;
	
end architecture;
