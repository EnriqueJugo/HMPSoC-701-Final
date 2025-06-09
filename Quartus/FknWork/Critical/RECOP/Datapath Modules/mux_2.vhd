library ieee;
use ieee.std_logic_1164.all;

entity mux_2 is
  port (
    sel    : in std_logic;
    data0x : in std_logic_vector(15 downto 0);
    data1x : in std_logic_vector(15 downto 0);
    result : out std_logic_vector(15 downto 0)
  );
end entity;

architecture rtl of mux_2 is
begin
  result <= data0x when sel = '0' else
    data1x;
end architecture;
