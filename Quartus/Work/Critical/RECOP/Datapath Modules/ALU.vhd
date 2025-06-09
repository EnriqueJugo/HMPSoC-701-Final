library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

use work.recop_types.all;
use work.opcodes.all;
use work.various_constants.all;

entity ALU is
  port (
    clk        : in std_logic;
    alu_reset  : in std_logic;
    clr_z_flag : in std_logic;
    alu_op     : in std_logic_vector(2 downto 0);
    ra         : in std_logic_vector(15 downto 0);
    rb         : in std_logic_vector(15 downto 0);

    alu_result : out std_logic_vector(15 downto 0);
    z_flag     : out std_logic
  );
end entity ALU;

architecture rtl of ALU is
  signal result     : std_logic_vector(15 downto 0);
  signal max_result : std_logic_vector(15 downto 0);
begin
  -- ALU : process (alu_op, ra, rb)
  -- begin
  --   case alu_op is
  --     when alu_add =>
  --       result <= ra + rb;
  --     when alu_sub =>
  --       result <= ra - rb;
  --     when alu_and =>
  --       result <= ra and rb;
  --     when alu_or =>
  --       result <= ra or rb;
  --     when alu_xor =>
  --       result <= ra xor rb;
  --     when alu_max =>
  --       if ra > rb then
  --         result <= ra;
  --       else
  --         result <= rb;
  --       end if;
  --     when others       =>
  --       result <= (others => '0');
  --   end case;

  --   alu_result <= result;
  -- end process;

  with alu_op select
    result <=
    ra + rb when alu_add,
    ra - rb when alu_sub,
    ra and rb when alu_and,
    ra or rb when alu_or,
    ra xor rb when alu_xor,
    (others => '0') when others;

  max_result <= ra when ra > rb else
    rb;

  alu_result <= max_result when alu_op = alu_max else
    result;

  z : process (clk, alu_reset)
  begin
    if alu_reset = '1' then
      z_flag <= '0';
    elsif rising_edge(clk) then
      if clr_z_flag = '1' then
        z_flag <= '0';
      else
        if result = x"0000" then
          z_flag <= '1';
        else
          z_flag <= '0';
        end if;
      end if;
    end if;
  end process;

end architecture;