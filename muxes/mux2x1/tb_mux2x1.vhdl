entity tb_mux2x1 is
end entity;

architecture tb of tb_mux2x1 is
	component mux2x1 is
	port(
	c0 : in bit;
	c1 : in bit;
	sel : in bit;
	z : out bit
	);
	end component;
	
	signal sc0, sc1, ssel, sz : bit;
	
	
begin
	-- instancia
	u_mux2x1 : mux2x1 port map(sc0, sc1, ssel, sz);
	
	u_tb : process
	begin
		-- sit 0 --> c0, c1, sel ...
		sc0 <= '0';
		sc1 <= '0';
		ssel <= '0';
		wait for 10 ns;
		
		sc0 <= '0';
		sc1 <= '0';
		ssel <= '1';
		wait for 10 ns;
		
		sc0 <= '0';
		sc1 <= '1';
		ssel <= '0';
		wait for 10 ns;
		
		sc0 <= '0';
		sc1 <= '1';
		ssel <= '1';
		wait for 10 ns;
		
		sc0 <= '1';
		sc1 <= '0';
		ssel <= '0';
		wait for 10 ns;
		
		sc0 <= '1';
		sc1 <= '0';
		ssel <= '1';
		wait for 10 ns;
		
		sc0 <= '1';
		sc1 <= '1';
		ssel <= '0';
		wait for 10 ns;
		
		sc0 <= '1';
		sc1 <= '1';
		ssel <= '1';
		wait for 10 ns;
		
		wait;
	end process;

end architecture;
