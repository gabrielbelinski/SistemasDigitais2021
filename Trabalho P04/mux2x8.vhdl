library ieee;
use ieee.std_logic_1164.all;

entity mux2x8 is
    port(
        X : in std_logic_vector(7 downto 0);
        Y : in std_logic_vector(7 downto 0);
        sel : in std_logic;
        Smux : out std_logic_vector(7 downto 0)
    );
end entity;

architecture comuta of mux2x8 is

    constant latency : time := 4 ns;
    
begin

    Smux <= X when sel = '0' else Y after latency;

end architecture;
