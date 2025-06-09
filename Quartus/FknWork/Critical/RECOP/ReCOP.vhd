library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ReCOP_System is
  port (
    clk   : in std_logic;
    reset : in std_logic;
    SW    : in std_logic_vector(15 downto 0);
    LEDR  : out std_logic_vector(15 downto 0);

    -- DEBUG
    sop_output     : out std_logic_vector(15 downto 0);
    pc_ld_tb       : out std_logic;
    pc_out_tb      : out std_logic_vector(15 downto 0);
    pc_plus_one_tb : out std_logic_vector(15 downto 0);
    pc_sel_tb      : out std_logic_vector(1 downto 0);
    state_tb       : out std_logic_vector(5 downto 0);
    inst_tb        : out std_logic_vector(31 downto 0);
    ir_ld_tb       : out std_logic;
    opcode_tb      : out std_logic_vector(5 downto 0);
    ir_reset_tb    : out std_logic;
    rf_ra_tb       : out std_logic_vector(15 downto 0);
    rf_rb_tb       : out std_logic_vector(15 downto 0);
    rf_data_in_tb  : out std_logic_vector(15 downto 0);
    rf_data_sel_tb : out std_logic_vector(1 downto 0);
    sip_ld_tb      : out std_logic;
    sip_reset_tb   : out std_logic;
    sip_data_tb    : out std_logic_vector(15 downto 0);
    sop_ld_tb      : out std_logic;
    sop_reset_tb   : out std_logic;
    z_flag_out     : out std_logic
  );
end entity;

architecture arch of ReCOP_System is
begin

  ReCOP_TopLevel_inst : entity work.ReCOP_TopLevel
    port map
    (
      clk            => clk,
      reset          => reset,
      sip_input      => SW,
      sop_output     => sop_output,
--      pc_ld_tb       => pc_ld_tb,
--     pc_out_tb      => pc_out_tb,
--      pc_plus_one_tb => pc_plus_one_tb,
--      pc_sel_tb      => pc_sel_tb,
      state_tb       => state_tb,
--      inst_tb        => inst_tb,
--      ir_ld_tb       => ir_ld_tb,
--      opcode_tb      => opcode_tb,
--      ir_reset_tb    => ir_reset_tb,
  --    rf_ra_tb       => rf_ra_tb,
--      rf_rb_tb       => rf_rb_tb,
--      rf_data_in_tb  => rf_data_in_tb,
--      rf_data_sel_tb => rf_data_sel_tb,
--      sip_ld_tb      => sip_ld_tb,
--      sip_reset_tb   => sip_reset_tb,
--      sip_data_tb    => LEDR,
--      sop_ld_tb      => sop_ld_tb,
--      sop_reset_tb   => sop_reset_tb,
      z_flag_out     => z_flag_out
    );

end architecture;
