entity mux_2x5 is
	port(
		me : in bit_vector(4 downto 0);
		mc2 : in bit_vector(4 downto 0);
		sel : in bit;
		smux : out bit_vector(4 downto 0)
	    );
end entity;

architecture mux of mux_2x5 is
begin
	smux <= me when sel = '0' else mc2;
end architecture;
		
