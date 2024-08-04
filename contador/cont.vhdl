library ieee;
use ieee.std_logic_1164.all;

entity contador is
    port(
    clock : in std_logic;
    reset : in std_logic;
    q, nq: out std_logic_vector(3 downto 0)
    );
end entity;

architecture cont of contador is
    component ffjk_process is
        port(
        j, k   : in std_logic;
        clk    : in std_logic;
        pr, cl : in std_logic;
        q, nq  : out std_logic
    );
    end component;

    signal sj, sk, sclk, spr, scl, sq, snq : std_logic_vector(3 downto 0);

    begin

      	q <= sq;
      	nq <= snq;

        ffjk_0 : ffjk_process port map (sj(0), sk(0), clock, '1', reset, sq(0), snq(0));
        ffjk_1 : ffjk_process port map (sj(1), sk(1), clock, '1', reset, sq(1), snq(1));
        ffjk_2 : ffjk_process port map (sj(2), sk(2), clock, reset, '1', sq(2), snq(2));
        ffjk_3 : ffjk_process port map (sj(3), sk(3), clock, '1', reset, sq(3), snq(3));

        sj(3) <= sq(1) and (sq(2) xor sq(0));
        sk(3) <= (sq(2) and sq(0) and snq(1)) or (snq(2) and snq(0));

        sj(2) <= (sq(1) and sq(0) and snq(3)) or (sq(3) and snq(0));
        sk(2) <= sq(3) and snq(1);

        sj(1) <= (snq(3) and sq(0)) or (sq(3) and sq(2) and snq(0));
        sk(1) <= (sq(3) xor sq(0)) or (sq(3) and snq(2));

        sj(0) <= (snq(3) and snq(0)) or sq(2);
        sk(0) <= sq(0) and (snq(3) or sq(2) or snq(1));

    end architecture;


