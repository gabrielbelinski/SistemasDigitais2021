entity demux is
	port(
	c0 : in bit_vector(4 downto 0);
	sel_demux : in bit;
	z1 : out bit_vector(4 downto 0);
	z0 : out bit_vector(4 downto 0)
	);
end entity;

architecture comuta of demux is
begin
	z0 <= c0 when sel_demux '0' else "00000"; 
	z1 <= c0 when sel_demux '1' else "00000"; 
	
end architecture;
	
