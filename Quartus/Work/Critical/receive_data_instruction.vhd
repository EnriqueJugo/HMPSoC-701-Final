library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TdmaMinTypes.all;

entity receive_data_instruction is
  port (
    data_out : out std_logic_vector(31 downto 0);
    data_in  : in tdma_min_port
  );
end entity receive_data_instruction;

architecture behaviour of receive_data_instruction is
  component receive_data_hw is
    port (
      data_out : out std_logic_vector(31 downto 0);
      data_in  : in tdma_min_port
    );
  end component;

begin
  C1 : receive_data_hw
  port map
  (
    data_out => data_out,
    data_in  => data_in
  );
end architecture;
