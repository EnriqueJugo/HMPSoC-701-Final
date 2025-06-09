library ieee;
use ieee.std_logic_1164.all;

entity dpcr_register is
  port (
    clk        : in std_logic;
    dpcr_ld    : in std_logic; -- Load signal
    dpcr_reset : in std_logic; -- Reset signal
    high_in    : in std_logic_vector(15 downto 0); -- Rx
    low_in     : in std_logic_vector(15 downto 0); -- R7 or Operand
    dpcr_out   : out std_logic_vector(31 downto 0)
  );
end entity dpcr_register;

architecture rtl of dpcr_register is
  signal dpcr_reg : std_logic_vector(31 downto 0);
begin

  process (clk)
  begin
    if rising_edge(clk) then
      if dpcr_reset = '1' then
        dpcr_reg <= (others => '0');
      elsif dpcr_ld = '1' then
        dpcr_reg <= high_in & low_in;
      end if;
    end if;
  end process;

  dpcr_out <= dpcr_reg;

end architecture rtl;
