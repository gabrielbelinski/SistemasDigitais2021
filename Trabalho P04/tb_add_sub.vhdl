library ieee;
use ieee.std_logic_1164.all;

entity tb_add_sub is
end entity;

architecture add_orsub of tb_add_sub is
constant lat : time := 112 ns;
component fulladder8bits is
port(
	X : in std_logic_vector(7 downto 0);
	Y : in std_logic_vector(7 downto 0);
	Cin_geral : in std_logic;
	Sfa : out std_logic_vector(7 downto 0);
	Cout_geral : out std_logic
	);
end component;
component inversor is
	port(
	Y : in std_logic_vector(7 downto 0);
	notY : out std_logic_vector(7 downto 0)
	);
end component;
component mux2x8 is
        port(
        X : in std_logic_vector(7 downto 0);
        Y : in std_logic_vector(7 downto 0);
        sel : in std_logic;
        Smux : out std_logic_vector(7 downto 0)
    );
end component;

	signal sX, sY, snotY, sSfa : std_logic_vector(7 downto 0);
	signal sSmux : std_logic_vector(7 downto 0);
	signal sCin_Geral, ssop, sCout_geral : std_logic;
	
begin

    u_inversor : inversor port map(sY, snotY);
    u_mux2x8 : mux2x8 port map(sY, snotY, ssop, sSmux);
    u_fulladder8bits : fulladder8bits port map(sSmux, sX, sCin_geral, sSfa, sCout_geral);
    sCin_geral <= ssop;
    
    
    u_test : process
    
    begin
    
        
        sX <= "00000000";
        sY <= "11111111";
        ssop <= '0';
        wait for lat;
        
        sX <= "00000000";
        sY <= "11111111";
        ssop <= '1';
        wait for lat;
        
        sX <= "11111111";
        sY <= "00000001";
        ssop <= '0';
        wait for lat;

        sX <= "11111111";
        sY <= "00000001";
        ssop <= '1';
        wait for lat;

	wait;
	
    end process;
    
end architecture;
	
