library ieee;
use ieee.std_logic_1164.all;

entity eot_register is
  port (
    clk       : in std_logic;
    eot_ld    : in std_logic; -- Load signal
    eot_set   : in std_logic;
    eot_clear : in std_logic;
    eot_out   : out std_logic
  );
end entity eot_register;

architecture rtl of eot_register is
  signal eot : std_logic;
begin

  process (clk)
  begin
    if rising_edge(clk) then
      if eot_clear = '1' then
        eot <= '0';
      elsif eot_ld = '1' then
        eot <= eot_set;
      end if;
    end if;
  end process;

  eot_out <= eot;

end architecture rtl;
