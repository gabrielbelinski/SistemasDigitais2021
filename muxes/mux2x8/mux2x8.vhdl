entity mux2x4 is
	port(
	c0 : in bit_vector(7 downto 0);
	c1 : in bit_vector(7 downto 0);
	sel: in bit
	z : out bit_vector(7 downto 0)
	);
end entity;

architecture comuta of mux2x8 is
begin
	z <= c0 when sel='0' else c1;

end architecture;
