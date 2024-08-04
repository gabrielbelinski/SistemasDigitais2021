entity tb_demux is
end entity

	architecture tb_demux is 
	component tb_demux is
	port(
		c0 in bit_vector(4 downto 0);
		sel in bit;
		z1 out bit_vector(4 downto 0);
		z0 out bit_vector(4 downto 0)
		);
		
	end component;
	
	signal sc0, ssel, sz1, sz0;
	
begin
	u_demux : demux port map(sc0, ssel, sz1, sz0)
	u2_demux : process
	
	begin
	
	

		

