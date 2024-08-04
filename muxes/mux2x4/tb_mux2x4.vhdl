entity tb_mux2x4 is
end entity;

architecture teste of tb_mux2x4 is

	component mux2x4 is
	port(
		c0 : in bit_vector(3 downto 0);
		c1 : in bit_vector(3 downto 0);
		sel : in bit;
		z : out bit_vector(3 downto 0)
	);
	end component;
	
	signal sc0, sc1 : bit_vector(3 downto 0);
	signal ssel : bit;
	signal sz : bit_vector(3 downto 0);

begin
	u_mux2x4 : mux2x4 port map(sc0, sc1, ssel, sz);
	
	u_teste : process
	begin
	sc0 <= "0011";
	sc1 <= "1100";
	ssel <= '0';
	wait for 10 ns;
	
	ssel <= '1';
	wait for 10 ns;
	
	sc1 <= sc0;
	sc0 <= "1100";
	ssel <= '0';
	wait for 10 ns;
	
	ssel <= '1';
	wait for 10 ns;
	
	
	wait;
	end process;

end architecture;

