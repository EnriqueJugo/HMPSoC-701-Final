library ieee;
use ieee.std_logic_1164.all;

entity mux_3_4bit is
  port (
    data0x : in std_logic_vector(3 downto 0);
    data1x : in std_logic_vector(3 downto 0);
    data2x : in std_logic_vector(3 downto 0);
    sel    : in std_logic_vector(1 downto 0);
    result : out std_logic_vector(3 downto 0)
  );
end entity;

architecture rtl of mux_3_4bit is
begin
  with sel select
    result <= data0x when "00",
              data1x when "01",
              data2x when "10",
              (others => '0') when others;
end architecture;
