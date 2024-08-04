library ieee;
use ieee.std_logic_1164.all;

entity fulladder8bits is
	port(
	X : in std_logic_vector(7 downto 0);
	Y : in std_logic_vector(7 downto 0);
	Cin_geral : in std_logic;
	Sfa : out std_logic_vector(7 downto 0);
	Cout_geral : out std_logic
	);
end entity;

architecture comuta of fulladder8bits is

component fulladder1bit is
	port(
	X : in std_logic;
	Y : in std_logic;
	Cin : in std_logic;
	S : out std_logic;
	Cout : out std_logic
	);
end component;

signal Cout : std_logic_vector(7 downto 0);

begin

	u_fadder0 : fulladder1bit port map(X(0), Y(0), Cin_geral, Sfa(0), Cout(0));
	u_fadder1 : fulladder1bit port map(X(1), Y(1), Cout(0), Sfa(1), Cout(1));
	u_fadder2 : fulladder1bit port map(X(2), Y(2), Cout(1), Sfa(2), Cout(2));
	u_fadder3 : fulladder1bit port map(X(3), Y(3), Cout(2), Sfa(3), Cout(3));
	u_fadder4 : fulladder1bit port map(X(4), Y(4), Cout(3), Sfa(4), Cout(4));
	u_fadder5 : fulladder1bit port map(X(5), Y(5), Cout(4), Sfa(5), Cout(5));
	u_fadder6 : fulladder1bit port map(X(6), Y(6), Cout(5), Sfa(6), Cout(6));
	u_fadder7 : fulladder1bit port map(X(7), Y(7), Cout(6), Sfa(7), Cout_geral);
	
end architecture;
