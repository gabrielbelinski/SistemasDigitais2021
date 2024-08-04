library ieee;
use ieee.std_logic_1164.all;

entity inversor is
	port(
	Y : in std_logic_vector(7 downto 0);
	notY : out std_logic_vector(7 downto 0)
	);
end entity;

architecture inverte of inversor is

   constant latency : time := 4 ns;
   
begin

    notY <= not Y after latency;
    
end architecture;
