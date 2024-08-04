entity mux2x1 is

port(
c0 : in bit;
c1 : in bit;
sel : in bit;
z : out bit
);
end entity;

architecture comuta of mux2x1 is
signal s0, s1 : bit;


begin

z <= c0 when sel='0' else c1;

end architecture;


