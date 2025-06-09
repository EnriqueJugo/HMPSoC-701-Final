library ieee;
use ieee.std_logic_1164.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

entity ROM is
  port (
    address : in std_logic_vector(16 downto 0); -- 11-bit for 1600 entries
    clock   : in std_logic := '1';
    q       : out std_logic_vector(7 downto 0) -- 8-bit data
  );
end entity;

architecture SYN of ROM is
  signal sub_wire0 : std_logic_vector(7 downto 0);
begin
  q <= sub_wire0;

  altsyncram_component : altsyncram
  generic map(
    operation_mode         => "ROM",
    widthad_a              => 17, -- 2^17 = 4096 slots, we good
    numwords_a             => 65780, -- exactly your sample count
    width_a                => 8, -- 8-bit data
    init_file              => "signals.mif",
    outdata_reg_a          => "CLOCK0",
    intended_device_family => "Cyclone V",
    clock_enable_input_a   => "BYPASS",
    clock_enable_output_a  => "BYPASS",
    lpm_hint               => "ENABLE_RUNTIME_MOD=NO"
  )
  port map
  (
    address_a => address,
    clock0    => clock,
    q_a       => sub_wire0
  );
end architecture;
