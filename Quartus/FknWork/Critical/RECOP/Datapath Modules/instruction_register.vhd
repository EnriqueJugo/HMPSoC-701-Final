library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_register is
  port (
    clk       : in std_logic := '0';
    reset     : in std_logic := '0';
    ir_ld     : in std_logic := '0';
    ir_data   : in std_logic_vector(31 downto 0);
    addr_mode : out std_logic_vector(1 downto 0)  := (others => '0');
    opcode    : out std_logic_vector(5 downto 0)  := (others => '0');
    operand   : out std_logic_vector(15 downto 0) := (others => '0');
    rz        : out std_logic_vector(3 downto 0)  := (others => '0');
    rx        : out std_logic_vector(3 downto 0)  := (others => '0')
  );
end entity instruction_register;

architecture rtl of instruction_register is
  component register_general is
    generic (bit_width : integer := 32);
    port (
      clk       : in std_logic;
      reg_in    : in std_logic_vector(bit_width - 1 downto 0);
      reg_ld    : in std_logic;
      reg_reset : in std_logic;
      reg_out   : out std_logic_vector(bit_width - 1 downto 0)
    );
  end component;

  signal ir_out : std_logic_vector(31 downto 0) := (others => '0');
begin

  -- Create instance of register to store the data coming in --
  ir_reg : entity work.register_general
    generic map(
      bit_width => 32
    )
    port map
    (
      clk       => clk,
      reg_reset => reset,
      reg_in    => ir_data,
      reg_ld    => ir_ld,
      reg_out   => ir_out
    );

  -- Format the instructions --
  addr_mode <= ir_out(31 downto 30);
  opcode    <= ir_out(29 downto 24);
  rz        <= ir_out(23 downto 20);
  rx        <= ir_out(19 downto 16);
  operand   <= ir_out(15 downto 0);

end architecture;