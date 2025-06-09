library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stack_pointer is
  port (
    clk    : in std_logic;
    reset  : in std_logic;
    func   : in std_logic_vector(1 downto 0);
    sp_out : out std_logic_vector(15 downto 0) := x"FFFF"
  );
end entity stack_pointer;

architecture rtl of stack_pointer is
  signal sp_reg : unsigned(15 downto 0) := (others => '0');
begin
  process (clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        sp_reg <= x"FFFF";
      elsif func = "00" then -- Push
        sp_reg <= sp_reg - 1;
      elsif func = "01" then -- Pop
        sp_reg <= sp_reg + 1;
      end if;
    end if;
  end process;

  sp_out <= std_logic_vector(sp_reg);

end architecture;