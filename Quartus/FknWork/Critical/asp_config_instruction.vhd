library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TdmaMinTypes.all;

entity asp_config_instruction is
  port (
    config_in  : in std_logic_vector(31 downto 0);
    config_out : out tdma_min_port
  );
end entity asp_config_instruction;

architecture behaviour of asp_config_instruction is
  component asp_config_hw is
    port (
      config_in  : in std_logic_vector(31 downto 0);
      config_out : out tdma_min_port
    );
  end component;

begin
  C1 : asp_config_hw
   port map(
      config_in => config_in,
      config_out => config_out
  );
end architecture;
