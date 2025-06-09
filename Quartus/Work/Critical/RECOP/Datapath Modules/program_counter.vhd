library ieee;
use ieee.std_logic_1164.all;

entity program_counter is
  port (
    clk      : in std_logic;
    pc_in    : in std_logic_vector(15 downto 0)  := ((others => '0'));
    pc_reset : in std_logic                      := '0';
    pc_out   : out std_logic_vector(15 downto 0) := ((others => '0'))
  );
end program_counter;

architecture beh of program_counter is

begin

  p1 : process (clk)
  begin
    if (rising_edge(clk)) then
      if (pc_reset = '1') then
        pc_out <= (others => '0');
      else
        pc_out <= pc_in;
      end if;
    end if;
  end process; -- p1

end architecture; -- beh