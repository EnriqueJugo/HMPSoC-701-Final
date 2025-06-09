library ieee;
use ieee.std_logic_1164.all;

entity mux_4 is
  port (
    data0x : in std_logic_vector(15 downto 0);
    data1x : in std_logic_vector(15 downto 0);
    data2x : in std_logic_vector(15 downto 0);
    data3x : in std_logic_vector(15 downto 0);
    sel    : in std_logic_vector(1 downto 0);
    result : out std_logic_vector(15 downto 0)
  );
end entity;

architecture rtl of mux_4 is
begin
  with sel select
    result <= data0x when "00",
    data1x when "01",
    data2x when "10",
    data3x when "11",
    (others => '0') when others;
end architecture;
