library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TdmaMinTypes.all;

entity asp_config_hw is
  port (
    config_in : in STD_LOGIC_VECTOR(31 downto 0);
    config_out : out tdma_min_port
  );
end entity asp_config_hw;

architecture instruction of asp_config_hw is
begin
  with config_in(31 downto 28) select
    config_out.addr <= x"01" when "1001",
                       x"02" when "1010",
                       x"03" when "1011",
                       x"04" when "1100",
                       x"00" when others;

  with config_in(31 downto 28) select
    config_out.data <= config_in         when "1001" | "1010" | "1011" | "1100",
                       (others => '0') when others;
end architecture;
