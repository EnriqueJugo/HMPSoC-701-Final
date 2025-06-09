library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TdmaMinTypes.all;

entity Sig_Gen is
  port (
    clock : in std_logic;
    send  : out tdma_min_port;
    recv  : in tdma_min_port
  );
end entity;

architecture beh of Sig_Gen is
  signal rom_idx : unsigned(16 downto 0) := (others => '0');
  signal rom_lim : unsigned(16 downto 0);
  signal dest    : std_logic_vector(3 downto 0);
  -- Bank offset into the single ROM
  signal rom_offset : unsigned(16 downto 0);
  -- Physical address into the 3840-word ROM
  signal phys_addr  : unsigned(16 downto 0);
  signal rom_sample : std_logic_vector(7 downto 0);
  signal source     : std_logic_vector(1 downto 0) := "11"; -- "00"=original, "01"=sin50, "10"=sin25, "11"=HELLO

begin

  send.addr <= x"0" & dest; -- Port 2

  rom_lim <= to_unsigned(900, rom_lim'length) when source = "00" or source = "01" else
    to_unsigned(1800, rom_lim'length) when source = "10" else
    to_unsigned(58100, rom_lim'length);

  rom_offset <= to_unsigned(0, rom_offset'length) when source = "00" else
    to_unsigned(900, rom_offset'length) when source = "01" else
    to_unsigned(1800, rom_offset'length) when source = "01" else
    to_unsigned(3600, rom_offset'length);
  phys_addr <= rom_offset + resize(rom_idx, phys_addr'length);

  ROM_inst : entity work.ROM
    port map
    (
      clock   => clock,
      address => std_logic_vector(phys_addr),
      q       => rom_sample
    );

  config : process (clock)
  begin
    if recv.data(31 downto 28) = "1001" then
      dest   <= recv.data(27 downto 24);
      source <= recv.data(22 downto 21);
    end if;
  end process;

  addr_rom : process (clock)
    variable next_i : integer;
  begin
    if rising_edge(clock) then
      rom_idx <= (others => '0');
      next_i := to_integer(rom_idx) + 1;
      if next_i = to_integer(rom_lim) then
        rom_idx <= (others => '0');
      else
        rom_idx <= to_unsigned(next_i, rom_idx'length);
      end if;
    end if;
  end process;
  send.data <= x"800000" & rom_sample;

end architecture;
