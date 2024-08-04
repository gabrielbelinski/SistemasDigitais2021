entity mux is
	port(
	c0 : in bit_vector(4 downto 0);
	c1 : in bit_vector(4 downto 0);
	sel_mux : in bit;
	z : out bit_vector(4 downto 0)
	);
end entity;

architecture comuta of mux is
begin
	z <= c0 when sel_mux '0' else c1;
	
end architecture;
	
