library ieee;
use ieee.std_logic_1164.all;

entity svop_register is
  port (
    clk        : in std_logic;
    svop_reset : in std_logic;
    svop_ld    : in std_logic; -- Load enable (used by FSM when SSOP Rx is decoded)
    svop_in    : in std_logic_vector(15 downto 0);
    svop_out   : out std_logic_vector(15 downto 0)
  );
end entity;

architecture rtl of svop_register is
  signal svop_reg : std_logic_vector(15 downto 0);
begin
  process (clk)
  begin
    if rising_edge(clk) then
      if svop_reset = '1' then
        svop_reg <= (others => '0');
      elsif svop_ld = '1' then
        svop_reg <= svop_in;
      end if;
    end if;
  end process;

  svop_out <= svop_reg;
end architecture;
