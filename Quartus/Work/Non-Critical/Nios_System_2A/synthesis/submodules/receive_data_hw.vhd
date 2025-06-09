library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TdmaMinTypes.all;

entity receive_data_hw is
  port (
    data_out : out STD_LOGIC_VECTOR(31 downto 0);
    data_in : in tdma_min_port
  );
end entity receive_data_hw;

architecture instruction of receive_data_hw is
begin
    data_out <= data_in.data;
end architecture;
