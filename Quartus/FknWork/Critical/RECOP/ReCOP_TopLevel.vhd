library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TdmaMinTypes.all;

entity ReCOP_TopLevel is
  port (
    clk           : in std_logic;
    reset         : in std_logic;
    sip_input     : in std_logic_vector(15 downto 0); 
    sop_output    : out std_logic_vector(15 downto 0); 
    dpcr_out_TDMA : out tdma_min_port;
    state_tb      : out std_logic_vector(5 downto 0); -- For Debugging / Simulation Purposes Only
    z_flag_out    : out std_logic
  );
end entity;

architecture structural of ReCOP_TopLevel is

  -- Internal signal connections between control unit and datapath
  signal pc_sel, mar_sel      : std_logic_vector(1 downto 0);
  signal wr_data_sel          : std_logic_vector(1 downto 0);
  signal alu_op               : std_logic_vector(2 downto 0);
  signal rb_sel, rf_b_sel     : std_logic_vector(1 downto 0);
  signal rf_a_sel, reg_dst    : std_logic;
  signal rf_reset, rf_wr      : std_logic;
  signal rf_a_re, rf_b_re     : std_logic;
  signal ir_ld, ir_reset      : std_logic;
  signal mar_ld, mar_reset    : std_logic;
  signal mem_read, mem_write  : std_logic;
  signal pc_reset             : std_logic;
  signal clr_z_flag           : std_logic;
  signal reset_alu            : std_logic;
  signal address_sel          : std_logic;
  signal sop_reset, sop_ld    : std_logic;
  signal sip_reset, sip_ld    : std_logic;
  signal svop_reset, svop_ld  : std_logic;
  signal dpcr_ld, dpcr_reset  : std_logic;
  signal dpcr_sel             : std_logic;
  signal pc_ld                : std_logic;
  signal alu_ra_sel           : std_logic_vector(1 downto 0);
  signal alu_rb_sel           : std_logic_vector(1 downto 0);
  signal data_mem_wr_data_sel : std_logic_vector(1 downto 0);
  signal dpcr_out             : std_logic_vector(31 downto 0);

  signal er_ld, er_clear, eot_ld, eot_clear : std_logic;

  signal rf_alu_er_sel : std_logic;
  -- Instruction decoder outputs
  signal addressing_mode : std_logic_vector(1 downto 0);
  signal opcode          : std_logic_vector(5 downto 0);

  -- Feedback signal from datapath
  signal z_flag : std_logic;

begin

  dpcr_data : process (clk)
  begin
    dpcr_out_TDMA.data <= dpcr_out;
    case dpcr_out(31 downto 28) is
      when "1001" =>
        dpcr_out_TDMA.addr <= std_logic_vector(to_signed(1, tdma_min_addr'length));
      when "1010" =>
        dpcr_out_TDMA.addr <= std_logic_vector(to_signed(2, tdma_min_addr'length));
      when "1011" =>
        dpcr_out_TDMA.addr <= std_logic_vector(to_signed(3, tdma_min_addr'length));
      when "1100" =>
        dpcr_out_TDMA.addr <= std_logic_vector(to_signed(4, tdma_min_addr'length));
      when others =>
        --Do nothing otherwise
        --dpcr_out_TDMA.addr <= std_logic_vector(to_signed(0, tdma_min_addr'length));
    end case;
  end process;

  -- Instantiate the control unit
  control : entity work.control_unit
    port map
    (
      clk                  => clk,
      reset                => reset,
      addressing_mode      => addressing_mode,
      opcode               => opcode,
      ir_reset             => ir_reset,
      ir_ld                => ir_ld,
      rf_a_sel             => rf_a_sel,
      rf_b_sel             => rf_b_sel,
      reg_dst              => reg_dst,
      wr_data_sel          => wr_data_sel,
      rf_reset             => rf_reset,
      rf_wr                => rf_wr,
      rf_a_re              => rf_a_re,
      rf_b_re              => rf_b_re,
      mem_read             => mem_read,
      mem_write            => mem_write,
      reset_alu            => reset_alu,
      alu_op               => alu_op,
      clr_z_flag           => clr_z_flag,
      mar_sel              => mar_sel,
      mar_ld               => mar_ld,
      mar_reset            => mar_reset,
      pc_sel               => pc_sel,
      dpcr_ld              => dpcr_ld,
      dpcr_reset           => dpcr_reset,
      dpcr_sel             => dpcr_sel,
      sip_ld               => sip_ld,
      sip_reset            => sip_reset,
      sop_ld               => sop_ld,
      sop_reset            => sop_reset,
      pc_reset             => pc_reset,
      address_sel          => address_sel,
      z_flag               => z_flag,
      pc_ld                => pc_ld,
      alu_ra_sel           => alu_ra_sel,
      alu_rb_sel           => alu_rb_sel,
      data_mem_wr_data_sel => data_mem_wr_data_sel,
      svop_ld              => svop_ld,
      svop_reset           => svop_reset,
      er_ld                => er_ld,
      er_clear             => er_clear,
      eot_ld               => eot_ld,
      eot_clear            => eot_clear,
      rf_alu_er_sel        => rf_alu_er_sel,
      state_out            => state_tb -- For Debugging / Simulation Purposes Only
    );

  -- Instantiate the datapath
  datapath_inst : entity work.datapath
    port map
    (
      clk                  => clk,
      pc_reset             => pc_reset,
      pc_sel               => pc_sel,
      dpcr_ld              => dpcr_ld,
      dpcr_reset           => dpcr_reset,
      dpcr_sel             => dpcr_sel,
      ir_ld                => ir_ld,
      ir_reset             => ir_reset,
      mem_write            => mem_write,
      mem_read             => mem_read,
      mar_sel              => mar_sel,
      mar_ld               => mar_ld,
      mar_reset            => mar_reset,
      rf_reset             => rf_reset,
      rf_write             => rf_wr,
      rf_a_read            => rf_a_re,
      rf_b_read            => rf_b_re,
      rf_a_sel             => rf_a_sel,
      rf_b_sel             => rf_b_sel,
      sop_reset            => sop_reset,
      sop_ld               => sop_ld,
      sip_reset            => sip_reset,
      sip_ld               => sip_ld,
      sip_in               => sip_input,
      alu_reset            => reset_alu,
      alu_op               => alu_op,
      addr_sel             => address_sel,
      clr_z_flag           => clr_z_flag,
      wr_data_sel          => wr_data_sel,
      pc_out               => open,
      dpcr_out             => dpcr_out,
      inst_out             => open,
      addr_mode            => addressing_mode,
      opcode               => opcode,
      sop_out              => sop_output,
      z_flag               => z_flag,
      read_data_out        => open,
      pc_ld                => pc_ld,
      alu_ra_sel           => alu_ra_sel,
      alu_rb_sel           => alu_rb_sel,
      data_mem_wr_data_sel => data_mem_wr_data_sel,
      svop_ld              => svop_ld,
      svop_reset           => svop_reset,
      er_ld                => er_ld,
      er_clear             => er_clear,
      eot_ld               => eot_ld,
      eot_clear            => eot_clear,
      alu_er_sel           => rf_alu_er_sel
    );

  z_flag_out <= z_flag;

end architecture;
