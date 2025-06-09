library ieee;
use ieee.std_logic_1164.all;

entity er_register is
  port (
    clk       : in std_logic;
    er_ld     : in std_logic; -- Load signal
    er_set    : in std_logic;
    er_clear  : in std_logic;
    er_out    : out std_logic;
    er_out_16 : out std_logic_vector(15 downto 0)
  );
end entity er_register;

architecture rtl of er_register is
  signal er : std_logic := '1';
begin

  process (clk)
  begin
    if rising_edge(clk) then
      if er_clear = '1' then
        er <= '0';
      elsif er_ld = '1' then
        er <= er_set;
      end if;
    end if;
  end process;

  er_out    <= er;
  er_out_16 <= "000000000000000" & er;

end architecture rtl;
