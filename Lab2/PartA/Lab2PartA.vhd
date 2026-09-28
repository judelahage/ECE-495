library IEEE;
use IEEE.std_logic_1164.all;

entity Lab2PartA is
	port (
		j: in std_logic_vector(7 downto 0);
		k: in std_logic_vector(7 downto 0);
		sel: in std_logic;
		m: out std_logic_vector(7 downto 0)
	);
end Lab2PartA;

architecture muxlogic of Lab2PartA is

begin

m <= j when sel ='0' else k;

end muxlogic;
