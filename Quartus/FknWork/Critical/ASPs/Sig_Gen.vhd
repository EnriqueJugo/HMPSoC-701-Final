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
  -- Bank offset into the single ROM
  signal rom_offset : unsigned(16 downto 0);
  -- Physical address into the 3840-word ROM
  signal phys_addr  : unsigned(16 downto 0);
  signal rom_sample : std_logic_vector(7 downto 0);
  signal sel        : std_logic_vector(1 downto 0) := "10"; -- "00"=original, "01"=sin50, "10"=sin25, "11"=HELLO

begin
  ------------------------------------------------------------------------
  -- Port mapping for TDMA send address
  ------------------------------------------------------------------------
  send.addr <= std_logic_vector(to_unsigned(2, tdma_min_addr'length)); -- Port 1

  rom_lim <= to_unsigned(960, rom_lim'length) when sel = "00" or sel = "01" else
    to_unsigned(1920, rom_lim'length) when sel = "10" else
    to_unsigned(61940, rom_lim'length);

  rom_offset <= to_unsigned(0, rom_offset'length) when sel = "00" else
    to_unsigned(960, rom_offset'length) when sel = "01" else
    to_unsigned(1920, rom_offset'length) when sel = "01" else
    to_unsigned(3840, rom_offset'length);

  ------------------------------------------------------------------------
  -- Combine offset + local index → physical ROM address
  ------------------------------------------------------------------------
  phys_addr <= rom_offset + resize(rom_idx, phys_addr'length);

  ------------------------------------------------------------------------
  -- Single ROM instantiated with the combined MIF (3840 words)
  ------------------------------------------------------------------------
  ROM_inst : entity work.ROM
    port map
    (
      clock   => clock,
      address => std_logic_vector(phys_addr),
      q       => rom_sample
    );

  ------------------------------------------------------------------------
  -- Index counter: on every clock, wrap at rom_lim
  ------------------------------------------------------------------------
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

  ------------------------------------------------------------------------
  -- Output the 8-bit sample (+ control bits) onto the TDMA port
  ------------------------------------------------------------------------
  send.data <= x"800000" & rom_sample;

end architecture;
