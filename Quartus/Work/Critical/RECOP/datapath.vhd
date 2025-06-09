library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity datapath is
  port (
    clk : in std_logic;

    pc_reset : in std_logic;
    pc_sel   : in std_logic_vector(1 downto 0);
    pc_ld    : in std_logic;

    dpcr_ld    : in std_logic;
    dpcr_reset : in std_logic;
    dpcr_sel   : in std_logic;

    ir_ld    : in std_logic;
    ir_reset : in std_logic;

    mem_write : in std_logic;
    mem_read  : in std_logic;

    mar_sel   : in std_logic_vector(1 downto 0);
    mar_ld    : in std_logic;
    mar_reset : in std_logic;

    rf_reset  : in std_logic;
    rf_write  : in std_logic;
    rf_a_read : in std_logic;
    rf_b_read : in std_logic;
    rf_a_sel  : in std_logic;
    rf_b_sel  : in std_logic_vector(1 downto 0);

    sop_reset : in std_logic;
    sop_ld    : in std_logic;

    sip_reset : in std_logic;
    sip_ld    : in std_logic;
    sip_in    : in std_logic_vector(15 downto 0);

    -- ALU
    alu_reset  : in std_logic;
    alu_op     : in std_logic_vector(2 downto 0);
    addr_sel   : in std_logic;
    alu_ra_sel : in std_logic_vector(1 downto 0);
    alu_rb_sel : in std_logic_vector(1 downto 0);

    clr_z_flag : in std_logic;

    wr_data_sel : in std_logic_vector(1 downto 0);

    data_mem_wr_data_sel : in std_logic_vector(1 downto 0);

    -- EOT
    eot_clear  : in std_logic;
    eot_ld     : in std_logic;
    alu_er_sel : in std_logic; -- Select between ALU or er for rf data write

    -- ER
    er_clear : in std_logic;
    er_ld    : in std_logic;

    pc_out        : out std_logic_vector(15 downto 0);
    dpcr_out      : out std_logic_vector(31 downto 0);
    inst_out      : out std_logic_vector(31 downto 0);
    addr_mode     : out std_logic_vector(1 downto 0);
    opcode        : out std_logic_vector(5 downto 0);
    sop_out       : out std_logic_vector(15 downto 0);
    z_flag        : out std_logic;
    read_data_out : out std_logic_vector(15 downto 0);

    -- SVOP
    svop_reset : in std_logic;
    svop_ld    : in std_logic;
    svop_out   : out std_logic_vector(15 downto 0)
  );
end entity datapath;

architecture rtl of datapath is

  component adder_1
    generic (
      bit_width : integer
    );
    port (
      adder_in  : in std_logic_vector(15 downto 0);
      adder_out : out std_logic_vector(15 downto 0)
    );
  end component;

  component alu
    port (
      clk        : in std_logic;
      clr_z_flag : in std_logic;
      alu_reset  : in std_logic;
      alu_op     : in std_logic_vector(2 downto 0);
      ra         : in std_logic_vector(15 downto 0);
      rb         : in std_logic_vector(15 downto 0);
      z_flag     : out std_logic;
      alu_result : out std_logic_vector(15 downto 0)
    );
  end component;

  component dpcr_register
    port (
      clk        : in std_logic;
      dpcr_ld    : in std_logic;
      dpcr_reset : in std_logic;
      high_in    : in std_logic_vector(15 downto 0);
      low_in     : in std_logic_vector(15 downto 0);
      dpcr_out   : out std_logic_vector(31 downto 0)
    );
  end component;

  component mux_4
    port (
      data0x : in std_logic_vector(15 downto 0);
      data1x : in std_logic_vector(15 downto 0);
      data2x : in std_logic_vector(15 downto 0);
      data3x : in std_logic_vector(15 downto 0);
      sel    : in std_logic_vector(1 downto 0);
      result : out std_logic_vector(15 downto 0)
    );
  end component;

  component data_memory
    port (
      clock      : in std_logic;
      mem_write  : in std_logic;
      mem_read   : in std_logic;
      address    : in std_logic_vector(15 downto 0);
      write_data : in std_logic_vector(15 downto 0);
      read_data  : out std_logic_vector(15 downto 0)
    );
  end component;

  component prog_mem
    port (
      clock   : in std_logic;
      address : in std_logic_vector(15 downto 0);
      q       : out std_logic_vector(31 downto 0)
    );
  end component;

  component mux_2
    port (
      sel    : in std_logic;
      data0x : in std_logic_vector(15 downto 0);
      data1x : in std_logic_vector(15 downto 0);
      result : out std_logic_vector(15 downto 0)
    );
  end component;

  component register_file
    port (
      clk         : in std_logic;
      rf_reset    : in std_logic;
      rf_wr       : in std_logic;
      rf_a_re     : in std_logic;
      rf_b_re     : in std_logic;
      read_reg_a  : in std_logic_vector(3 downto 0);
      read_reg_b  : in std_logic_vector(3 downto 0);
      write_data  : in std_logic_vector(15 downto 0);
      write_reg   : in std_logic_vector(3 downto 0);
      read_data_a : out std_logic_vector(15 downto 0);
      read_data_b : out std_logic_vector(15 downto 0)
    );
  end component;

  component instruction_register
    port (
      clk       : in std_logic;
      reset     : in std_logic;
      ir_ld     : in std_logic;
      ir_data   : in std_logic_vector(31 downto 0);
      addr_mode : out std_logic_vector(1 downto 0);
      opcode    : out std_logic_vector(5 downto 0);
      s_operand : out std_logic_vector(15 downto 0);
      rx        : out std_logic_vector(3 downto 0);
      rz        : out std_logic_vector(3 downto 0)
    );
  end component;

  component memory_address_register
    generic (
      bit_width : integer
    );
    port (
      clk       : in std_logic;
      mar_ld    : in std_logic;
      mar_reset : in std_logic;
      mar_in    : in std_logic_vector(15 downto 0);
      mar_out   : out std_logic_vector(15 downto 0)
    );
  end component;

  component mux_3
    port (
      data0x : in std_logic_vector(15 downto 0);
      data1x : in std_logic_vector(15 downto 0);
      data2x : in std_logic_vector(15 downto 0);
      sel    : in std_logic_vector(1 downto 0);
      result : out std_logic_vector(15 downto 0)
    );
  end component;

  component mux_2_4bit
    port (
      sel    : in std_logic;
      data0x : in std_logic_vector(3 downto 0);
      data1x : in std_logic_vector(3 downto 0);
      result : out std_logic_vector(3 downto 0)
    );
  end component;

  component mux_3_4bit
    port (
      data0x : in std_logic_vector(3 downto 0);
      data1x : in std_logic_vector(3 downto 0);
      data2x : in std_logic_vector(3 downto 0);
      sel    : in std_logic_vector(1 downto 0);
      result : out std_logic_vector(3 downto 0)
    );
  end component;

  component program_counter
    port (
      clk      : in std_logic;
      pc_reset : in std_logic;
      pc_in    : in std_logic_vector(15 downto 0);
      pc_out   : out std_logic_vector(15 downto 0)
    );
  end component;

  component sip_register
    port (
      clk       : in std_logic;
      sip_reset : in std_logic;
      sip_ld    : in std_logic;
      sip_in    : in std_logic_vector(15 downto 0);
      sip_out   : out std_logic_vector(15 downto 0)
    );
  end component;

  component sop_register
    port (
      clk       : in std_logic;
      sop_reset : in std_logic;
      sop_ld    : in std_logic;
      sop_in    : in std_logic_vector(15 downto 0);
      sop_out   : out std_logic_vector(15 downto 0)
    );
  end component;

  component svop_register is
    port (
      clk        : in std_logic;
      svop_reset : in std_logic;
      svop_ld    : in std_logic; -- Load enable (used by FSM when SSOP Rx is decoded)
      svop_in    : in std_logic_vector(15 downto 0);
      svop_out   : out std_logic_vector(15 downto 0)
    );
  end component;

  component er_register is
    port (
      clk       : in std_logic;
      er_ld     : in std_logic; -- Load signal
      er_set    : in std_logic;
      er_clear  : in std_logic;
      er_out    : out std_logic;
      er_out_16 : out std_logic_vector(15 downto 0)
    );
  end component;

  component eot_register is
    port (
      clk       : in std_logic;
      eot_ld    : in std_logic; -- Load signal
      eot_set   : in std_logic;
      eot_clear : in std_logic;
      eot_out   : out std_logic
    );
  end component;

  -- Internal Signals
  signal s_pc_mux_out   : std_logic_vector(15 downto 0) := (others => '0');
  signal s_pc_out       : std_logic_vector(15 downto 0) := (others => '0');
  signal s_pc_plus_one  : std_logic_vector(15 downto 0) := (others => '0');
  signal s_data_mem_out : std_logic_vector(15 downto 0);
  signal s_operand      : std_logic_vector(15 downto 0);
  signal s_rx_out       : std_logic_vector(15 downto 0);

  signal s_instruction : std_logic_vector(31 downto 0);
  signal s_addr_mode   : std_logic_vector(1 downto 0);
  signal s_rx          : std_logic_vector(3 downto 0);
  signal s_rz          : std_logic_vector(3 downto 0);

  signal s_rx_integer : integer range 0 to 15;
  signal s_rz_integer : integer range 0 to 15;
  signal s_rf_data_in : std_logic_vector(15 downto 0);
  signal s_rf_ra_data : std_logic_vector(15 downto 0);
  signal s_rf_rb_data : std_logic_vector(15 downto 0);
  signal s_rz_mux_out : std_logic_vector(3 downto 0);
  signal s_rx_mux_out : std_logic_vector(3 downto 0);

  signal s_sip_data   : std_logic_vector(15 downto 0);
  signal s_alu_result : std_logic_vector(15 downto 0);

  -- ALU
  signal s_alu_ra : std_logic_vector(15 downto 0);
  signal s_alu_rb : std_logic_vector(15 downto 0);

  -- MAR
  signal s_mar_addr    : std_logic_vector(15 downto 0);
  signal s_mar_mux_out : std_logic_vector(15 downto 0);

  -- Data Memory
  signal s_data_mem_addr    : std_logic_vector(15 downto 0);
  signal s_data_mem_wr_data : std_logic_vector(15 downto 0);
  signal s_data_mem_re_data : std_logic_vector(15 downto 0);

  -- DPCR
  signal s_dpcr_mux_out : std_logic_vector(15 downto 0);

  -- ER
  signal s_er_16_out      : std_logic_vector(15 downto 0);
  signal s_alu_er_mux_out : std_logic_vector(15 downto 0);
begin

  program_counter_inst : entity work.program_counter
    port map
    (
      clk      => pc_ld,
      pc_in    => s_pc_mux_out,
      pc_reset => pc_reset,
      pc_out   => s_pc_out
    );

  adder_1_inst : entity work.adder_1
    generic map(
      bit_width => 16
    )
    port map
    (
      adder_in  => s_pc_out,
      adder_out => s_pc_plus_one
    );

  mux_4_inst : entity work.mux_4
    port map
    (
      data0x => s_rx_out,
      data1x => s_operand,
      data2x => s_pc_plus_one,
      data3x => s_data_mem_re_data,
      sel    => pc_sel,
      result => s_pc_mux_out
    );

  prog_mem_inst : entity work.prog_mem
    port map
    (
      address => s_pc_out,
      clock   => clk,
      q       => s_instruction
    );

  inst_out  <= s_instruction;
  addr_mode <= s_addr_mode;

  instruction_register_inst : entity work.instruction_register
    port map
    (
      clk       => clk,
      reset     => ir_reset,
      ir_ld     => ir_ld,
      ir_data   => s_instruction,
      addr_mode => s_addr_mode,
      opcode    => opcode,
      operand   => s_operand,
      rx        => s_rx,
      rz        => s_rz
    );

  s_rz_integer <= to_integer(unsigned(s_rz));
  s_rx_integer <= to_integer(unsigned(s_rx));

  --   mux_3_4bit_inst : entity work.mux_3_4bit
  --     port map
  --     (
  --       data0x => "0111",
  --       data1x => s_rz,
  --       data2x => s_rx,
  --       sel    => rf_b_sel,
  --       result => s_rx_mux_out
  --     );

  reg_file_data_in : entity work.mux_4
    port map
    (
      data0x => s_operand,
      data1x => s_data_mem_re_data,
      data2x => s_alu_er_mux_out,
      data3x => s_sip_data,
      sel    => wr_data_sel,
      result => s_rf_data_in
    );

  mux_2_inst : entity work.mux_2
    port map
    (
      sel    => alu_er_sel,
      data0x => s_alu_result,
      data1x => s_er_16_out,
      result => s_alu_er_mux_out
    );

  register_file_inst : entity work.register_file
    port map
    (
      clk         => clk,
      rf_reset    => rf_reset,
      rf_wr       => rf_write,
      rf_a_re     => rf_a_read,
      rf_b_re     => rf_b_read,
      read_reg_a  => s_rz_integer,
      read_reg_b  => s_rx_integer,
      write_reg   => s_rz,
      write_data  => s_rf_data_in,
      read_data_a => s_rf_ra_data,
      read_data_b => s_rf_rb_data
    );

  mux_rb : entity work.mux_3
    port map
    (
      data0x => s_rf_rb_data,
      data1x => s_rf_ra_data,
      data2x => s_operand,
      sel    => alu_rb_sel,
      result => s_alu_rb
    );

  mux_ra : entity work.mux_3
    port map
    (
      data0x => s_rf_ra_data,
      data1x => s_rf_rb_data,
      data2x => s_operand,
      sel    => alu_ra_sel,
      result => s_alu_ra
    );
  ALU_inst : entity work.ALU
    port map
    (
      clk        => clk,
      alu_reset  => alu_reset,
      clr_z_flag => clr_z_flag,
      alu_op     => alu_op,
      ra         => s_alu_ra,
      rb         => s_alu_rb,
      alu_result => s_alu_result,
      z_flag     => z_flag
    );

  SOP_Register_ins : entity work.sop_register
    port map
    (
      clk       => clk,
      sop_reset => sop_reset,
      sop_ld    => sop_ld,
      sop_in    => s_rf_rb_data,
      sop_out   => sop_out
    );

  mar_mux_3_inst : entity work.mux_3
    port map
    (
      data0x => s_rf_ra_data,
      data1x => s_operand,
      data2x => s_pc_mux_out,
      sel    => mar_sel,
      result => s_mar_mux_out
    );

  memory_address_register_inst : entity work.memory_address_register
    generic map(
      bit_width => 16
    )
    port map
    (
      clk       => clk,
      mar_ld    => mar_ld,
      mar_reset => mar_reset,
      mar_in    => s_mar_mux_out,
      mar_out   => s_mar_addr
    );

  data_mem_addr_sel_inst : entity work.mux_2
    port map
    (
      sel    => addr_sel,
      data0x => s_alu_result,
      data1x => s_mar_addr,
      result => s_data_mem_addr
    );

  mux_3_inst : entity work.mux_3
    port map
    (
      data0x => s_rf_ra_data,
      data1x => s_operand,
      data2x => s_pc_out,
      sel    => data_mem_wr_data_sel,
      result => s_data_mem_wr_data
    );

  data_memory_inst : entity work.data_memory
    port map
    (
      clock      => clk,
      mem_write  => mem_write,
      mem_read   => mem_read,
      address    => s_mar_addr,
      write_data => s_data_mem_wr_data,
      read_data  => s_data_mem_re_data
    );

  -- Rz will be Register 7 which will be generated by the assembler
  dpcr_mux : entity work.mux_2
    port map
    (
      sel    => dpcr_sel,
      data0x => s_rf_ra_data,
      data1x => s_operand,
      result => s_dpcr_mux_out
    );

  dpcr_register_inst : entity work.dpcr_register
    port map
    (
      clk        => clk,
      dpcr_ld    => dpcr_ld,
      dpcr_reset => dpcr_reset,
      high_in    => s_rf_rb_data,
      low_in     => s_dpcr_mux_out,
      dpcr_out   => dpcr_out
    );

  sip_register_inst : entity work.sip_register
    port map
    (
      clk       => clk,
      sip_reset => sip_reset,
      sip_ld    => sip_ld,
      sip_in    => sip_in,
      sip_out   => s_sip_data
    );

  svop_register_inst : entity work.svop_register
    port map
    (
      clk        => clk,
      svop_reset => svop_reset,
      svop_ld    => svop_ld,
      svop_in    => s_rf_rb_data,
      svop_out   => svop_out
    );

  eot_register_inst : entity work.eot_register
    port map
    (
      clk       => clk,
      eot_ld    => eot_ld,
      eot_set   => '1',
      eot_clear => eot_clear,
      eot_out   => open
    );

  er_register_inst : entity work.er_register
    port map
    (
      clk       => clk,
      er_ld     => er_ld,
      er_set    => '1',
      er_clear  => er_clear,
      er_out    => open,
      er_out_16 => s_er_16_out
    );

end rtl;