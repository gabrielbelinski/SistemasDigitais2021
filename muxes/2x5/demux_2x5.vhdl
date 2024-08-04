entity demux_2x5 is
	port(
		smux : in bit_vector(4 downto 0);
		sel : in bit;
		sdc2 : out bit_vector(4 downto 0);
		sde : out bit_vector(4 downto 0)		
	);
end entity;

architecture demux of demux_2x5 is
	begin
		sdc2 <= smux when sel = '0' else "00000";
		sde <= smux when sel = '0' else "00000";
	end architecture;


