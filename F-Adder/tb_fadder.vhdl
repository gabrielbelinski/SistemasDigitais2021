library ieee;
use ieee.std_logic_1164.all;

entity tb_fadder is

end entity;

architecture teste of tb_fadder is
	constant lat : time := 20 ns;
	component fadder is
		port(
		A, B, Cin : in std_logic;
		S, Cout : out std_logic
		);
	end component;
	
	signal sA, sB, sCin, sS, SCout : std_logic;
	
begin

	u_fadder0: fadder port map(sA, sB, sCin, sS, sCout);
	
	u_tb : process
	begin
	
	sA <= '0';
	sB <= '0';
	sCin <= '0';
	wait for lat;
	
	sA <= '0';
	sB <= '1';
	sCin <= '0';
	wait for lat;
	
	sA <= '1';
	sB <= '0';
	sCin <= '1';
	wait for lat;
	
	sA <= '1';
	sB <= '1';
	sCin <= '1';
	wait for lat;
	
	wait;
	end process;
	
	
end architecture;
		
