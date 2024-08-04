library ieee;
use ieee.std_logic_1164.all;

entity tb_cont is
    end entity;

    architecture test of tb_cont is

        constant CLK_PERIOD : time := 20 ns;

        component contador is
            port(
            clock : in std_logic;
            reset : in std_logic;
            q, nq: out std_logic_vector(3 downto 0)
            );
        end component;

        signal sclock, sreset : std_logic;
        signal sq, snq: std_logic_vector(3 downto 0);

    begin
    
    
    u_contador : contador port map(sclock, sreset, sq, snq);
    

    u_tbcont : process 
    begin

        sreset <= '0';
        wait for CLK_PERIOD;

        sreset <= '1';
        wait for CLK_PERIOD;

    end process;

    u_tbc : process
    begin
        sclock <= not(sclock);
        wait for CLK_PERIOD/2; 
    end process;
    end architecture;




        
        
