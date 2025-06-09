library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.various_constants.all;

entity register_file is
  port (
    clk         : in std_logic;
    rf_reset    : in std_logic;
    rf_wr       : in std_logic;
    rf_a_re     : in std_logic;
    rf_b_re     : in std_logic;
    read_reg_a  : in integer range 0 to 15;
    read_reg_b  : in integer range 0 to 15;
    write_reg   : in std_logic_vector(3 downto 0); -- Only 4 bits needed for 16 registers
    write_data  : in std_logic_vector(15 downto 0);
    read_data_a : out std_logic_vector(15 downto 0);
    read_data_b : out std_logic_vector(15 downto 0)
  );
end entity register_file;

architecture rtl of register_file is
  type reg_array is array (0 to 15) of std_logic_vector(15 downto 0);
  signal regs : reg_array := (others => (others => '0'));
begin

  -- Write and reset process
  process (clk, rf_reset)
  begin
    if rf_reset = '1' then
      regs <= (others => (others => '0'));
    elsif rising_edge(clk) then
      regs(0) <= (others => '0'); -- R0 is hardwired to 0
      if rf_wr = '1' then
        if (write_reg /= "0000") then
          regs(to_integer(unsigned(write_reg))) <= write_data;
        end if;
      end if;
    end if;
  end process;

  -- Read ports (conditionally driven based on enable signals)
  read_data_a <= regs(read_reg_a);
  read_data_b <= regs(read_reg_b);

end architecture;
