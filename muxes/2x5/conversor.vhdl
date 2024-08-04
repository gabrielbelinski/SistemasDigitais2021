entity conversor is
port(
		c2 : in bit_vector(3 downto 0);
		e : out bit_vector(3 downto 0);
		erro : out bit
	);
end entity;

architecture comuta of conversor is

begin 
	e(3) <= (not c2(3)) and (c2(2) or c2(1) or c2(0));
	e(2) <= (not c2(2) and not c2(1) and not c2(0)) or (c2(2) and c2(0)) or (c2(2) and c2(1));
	e(1) <= (c2(1) and c2(0)) or (not c2(1) and not c2(0));
	e(0) <= not c2(0);
	erro <= c2(3) and not c2(2) and not c2(1) and not c2(0);
	
end architecture;
