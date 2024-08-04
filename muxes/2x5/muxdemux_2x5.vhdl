entity muxdemux_2x5 is
end entity;

architecture muxdemux of muxdemux_2x5 is
	component conversor is
	port(
		c2 : in bit_vector(3 downto 0);
		e : out bit_vector(3 downto 0);
		erro : out bit
	);
	end component;

component mux_2x5 is
	port(
		me : in bit_vector(4 downto 0);
		mc2 : in bit_vector(4 downto 0);
		sel : in bit;
		smux : out bit_vector(4 downto 0)
	    );
	end component;

component demux_2x5 is
	port(
		smux : in bit_vector(4 downto 0);
		sel : in bit;
		sdc2 : out bit_vector(4 downto 0);
		sde : out bit_vector(4 downto 0)		
	);
	end component;
	
	signal sc2 : bit_vector(3 downto 0);
	signal se : bit_vector(3 downto 0);
	signal serro : bit;
	signal sme : bit_vector(4 downto 0);
	signal smc2 : bit_vector(4 downto 0);
	signal ssmux : bit_vector(4 downto 0);
	signal ssdc2 : bit_vector(4 downto 0);
	signal ssde : bit_vector(4 downto 0);
	signal ssel : bit;
	signal sdc2erro : bit;
	signal sdeerro :bit;
	
	
	begin
	 u_conversor : conversor port map(sc2, se, serro);
	
	umuxtb : mux_2x5 port map(sme, smc2, ssel, ssmux);
	
	demuxtb : demux_2x5 port map(ssmux, ssel, ssdc2, ssde);
	
	sme(3 downto 0) <= se;
	sme(4) <= serro;
	smc2(3 downto 0) <= sc2;
	smc2(4) <= '0';
	sdc2erro <= ssdc2(4);
	ssdc2 <
	
	
	
	
	
	
	
	
	
	
	
