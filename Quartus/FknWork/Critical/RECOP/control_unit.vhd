library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.recop_types.all;
use work.opcodes.all;
use work.various_constants.all;

entity control_unit is
  port (
    clk             : in std_logic;
    reset           : in std_logic;
    addressing_mode : in std_logic_vector(1 downto 0);
    opcode          : in std_logic_vector(5 downto 0);

    -- Instruction Register (IR)
    ir_reset : out std_logic := '0';
    ir_ld    : out std_logic := '0';

    rf_a_sel : out std_logic;
    rf_b_sel : out std_logic_vector(1 downto 0);
    reg_dst  : out std_logic;

    -- Register File write select
    wr_data_sel   : out std_logic_vector(1 downto 0); -- select data source for RF write
    rf_reset      : out std_logic;
    rf_wr         : out std_logic; -- write enable for destination register
    rf_a_re       : out std_logic;
    rf_b_re       : out std_logic;
    rf_alu_er_sel : out std_logic;

    -- ALU inputs / memory controls
    alu_rb_sel : out std_logic_vector(1 downto 0); -- select B input for ALU
    alu_ra_sel : out std_logic_vector(1 downto 0);
    mem_read   : out std_logic;
    mem_write  : out std_logic;

    -- ALU
    reset_alu  : out std_logic;
    alu_op     : out std_logic_vector(2 downto 0);
    clr_z_flag : out std_logic;

    -- Memory Address Register (MAR)
    mar_sel   : out std_logic_vector(1 downto 0);
    mar_ld    : out std_logic;
    mar_reset : out std_logic;

    -- Program Counter controls
    pc_sel : out std_logic_vector(1 downto 0);

    -- DPCR controls
    dpcr_ld    : out std_logic;
    dpcr_reset : out std_logic;
    dpcr_sel   : out std_logic;

    -- SIP
    sip_ld    : out std_logic := '0';
    sip_reset : out std_logic := '0';

    -- SOP
    sop_ld    : out std_logic := '0';
    sop_reset : out std_logic := '0';

    -- SVOP
    svop_ld    : out std_logic;
    svop_reset : out std_logic;

    -- ER
    er_clear : out std_logic;
    er_ld    : out std_logic;

    -- EOT
    eot_ld    : out std_logic;
    eot_clear : out std_logic;

    -- GOSH DARN IT
    pc_reset    : out std_logic := '0';
    address_sel : out std_logic;
    z_flag      : in std_logic;

    data_mem_wr_data_sel : out std_logic_vector(1 downto 0);

    pc_ld : out std_logic;

    state_out : out std_logic_vector(5 downto 0)
  );
end entity control_unit;

architecture fsm of control_unit is
  -- Micro-state declarations
  type state_type is (
    INIT,
    FETCH1,
    FETCH2,
    DECODE,
    EXEC_LDR,
    EXEC_STR,
    EXEC_JMP,
    EXEC_PRESENT,
    EXEC_ANDR,
    EXEC_ORR,
    EXEC_ADDR,
    EXEC_SUBR,
    EXEC_SUBVR,
    EXEC_CLFZ,
    EXEC_CER,
    EXEC_CEOT,
    EXEC_SEOT,
    EXEC_NOOP,
    EXEC_SZ,
    EXEC_LER,
    EXEC_SSVOP,
    EXEC_SSOP,
    EXEC_LSIP,
    EXEC_DATACALL_REG,
    EXEC_DATACALL_IMM,
    EXEC_MAX,
    EXEC_STRPC,
    EXEC_SRES,

    MEM_ACCESS,
    WRITE_BACK
  );

  function state_to_std6(state : state_type) return std_logic_vector is
  begin
    case state is
      when INIT              => return "111111";
      when FETCH1            => return "000000";
      when FETCH2            => return "000001";
      when DECODE            => return "000010";
      when EXEC_LDR          => return "000011";
      when EXEC_STR          => return "000100";
      when EXEC_JMP          => return "000101";
      when EXEC_PRESENT      => return "000110";
      when EXEC_ANDR         => return "000111";
      when EXEC_ORR          => return "001000";
      when EXEC_ADDR         => return "001001";
      when EXEC_SUBR         => return "001010";
      when EXEC_SUBVR        => return "001011";
      when EXEC_CLFZ         => return "001100";
      when EXEC_CER          => return "001101";
      when EXEC_CEOT         => return "001110";
      when EXEC_SEOT         => return "001111";
      when EXEC_NOOP         => return "010000";
      when EXEC_SZ           => return "010001";
      when EXEC_LER          => return "010010";
      when EXEC_SSVOP        => return "010011";
      when EXEC_SSOP         => return "010100";
      when EXEC_LSIP         => return "010101";
      when EXEC_DATACALL_REG => return "010110";
      when EXEC_DATACALL_IMM => return "010111";
      when EXEC_MAX          => return "011000";
      when EXEC_STRPC        => return "011001";
      when EXEC_SRES         => return "011010";
      when MEM_ACCESS        => return "011011";
      when WRITE_BACK        => return "011100";
    end case;
  end function;

  signal state, next_state : state_type := INIT;

  -- Opcode constants
  constant OP_LDR          : std_logic_vector(5 downto 0) := "000000";
  constant OP_STR          : std_logic_vector(5 downto 0) := "000010";
  constant OP_JMP          : std_logic_vector(5 downto 0) := "011000";
  constant OP_PRESENT      : std_logic_vector(5 downto 0) := "011100";
  constant OP_ANDR         : std_logic_vector(5 downto 0) := "001000";
  constant OP_ORR          : std_logic_vector(5 downto 0) := "001100";
  constant OP_ADDR         : std_logic_vector(5 downto 0) := "111000";
  constant OP_SUBR         : std_logic_vector(5 downto 0) := "000100";
  constant OP_SUBVR        : std_logic_vector(5 downto 0) := "000011";
  constant OP_CLFZ         : std_logic_vector(5 downto 0) := "010000";
  constant OP_CER          : std_logic_vector(5 downto 0) := "111100";
  constant OP_CEOT         : std_logic_vector(5 downto 0) := "111110";
  constant OP_SEOT         : std_logic_vector(5 downto 0) := "111111";
  constant OP_NOOP         : std_logic_vector(5 downto 0) := "110100";
  constant OP_SZ           : std_logic_vector(5 downto 0) := "010100";
  constant OP_LER          : std_logic_vector(5 downto 0) := "110110";
  constant OP_SSVOP        : std_logic_vector(5 downto 0) := "111011";
  constant OP_SSOP         : std_logic_vector(5 downto 0) := "111010";
  constant OP_LSIP         : std_logic_vector(5 downto 0) := "110111";
  constant OP_DATACALL_REG : std_logic_vector(5 downto 0) := "101000";
  constant OP_DATACALL_IMM : std_logic_vector(5 downto 0) := "101001";
  constant OP_MAX          : std_logic_vector(5 downto 0) := "011110";
  constant OP_STRPC        : std_logic_vector(5 downto 0) := "011101";
  constant OP_SRES         : std_logic_vector(5 downto 0) := "101010";

begin
  -- State register
  process (clk, reset)
  begin
    if reset = '1' then
      state <= INIT;
    elsif rising_edge(clk) then
      state <= next_state;
    end if;
  end process;

  state_out <= state_to_std6(state);

  -- FSM next-state and outputs
  process (state)
  begin
    mar_reset     <= '0';
    ir_reset      <= '0';
    rf_reset      <= '0';
    rf_a_re       <= '0';
    rf_b_re       <= '0';
    rf_alu_er_sel <= '0';
    reset_alu     <= '0';
    dpcr_reset    <= '0';
    dpcr_sel      <= '0';
    sip_reset     <= '0';
    sop_reset     <= '0';
    svop_reset    <= '0';
    pc_ld         <= '0';
    address_sel   <= '0';

    if state = INIT then
      -- default all controls off
      mar_sel     <= (others => '0');
      mar_ld      <= '0';
      mar_reset   <= '0';
      ir_reset    <= '0';
      ir_ld       <= '0';
      wr_data_sel <= "00";
      rf_reset    <= '0';
      rf_wr       <= '0';
      alu_rb_sel  <= (others => '0');
      address_sel <= '0';
      mem_read    <= '0';
      mem_write   <= '0';
      reset_alu   <= '0';
      alu_op      <= (others => '0');
      clr_z_flag  <= '0';
      pc_sel      <= (others => '0');
      next_state  <= FETCH1;
      next_state  <= FETCH1;
    elsif state = FETCH1 then
      -- T0: MAR ← PC ; PC ← PC+1
      pc_ld      <= '1';
      mar_sel    <= "00"; -- PC
      pc_sel     <= "10"; -- PC+1
      mar_ld     <= '1';
      rf_wr      <= '0';
      sop_ld     <= '0';
      svop_ld    <= '0';
      clr_z_flag <= '0';
      mem_write  <= '0';
      mem_read   <= '0';
      dpcr_ld    <= '0';
      sip_ld     <= '0';
      er_clear   <= '0';
      er_ld      <= '0';
      eot_ld     <= '0';
      eot_clear  <= '0';
      ir_ld      <= '0';
      next_state <= FETCH2;

    elsif state = FETCH2 then
      pc_ld <= '0';
      -- T1: IR ← ProgMem[MAR]
      mar_ld <= '0';
      -- mem_read   <= '1';
      ir_ld      <= '1';
      next_state <= DECODE;

    elsif state = DECODE then
      -- T2: decode opcode
      if state = EXEC_DATACALL_REG then
      rf_a_re    <= '1';
      rf_b_re    <= '1';
      dpcr_sel   <= '0';
      dpcr_ld    <= '1';
      next_state <= FETCH1;

      elsif state = EXEC_DATACALL_IMM then
        rf_a_re    <= '1';
        rf_b_re    <= '1';
        dpcr_sel   <= '1';
        dpcr_ld    <= '1';
        next_state <= FETCH1;
      elsif opcode = OP_LDR then
        case addressing_mode is
          when addr_mode_immediate => -- Immediate
            wr_data_sel <= "00";
          when addr_mode_direct => -- Direct
            mar_sel     <= "01";
            mar_ld      <= '1';
            mem_read    <= '1';
            wr_data_sel <= "01";
          when addr_mode_register => -- Register
            mar_sel     <= "00";
            mar_ld      <= '1';
            mem_read    <= '1';
            wr_data_sel <= "01";
          when others =>
            null;
        end case;
        next_state <= EXEC_LDR;
      elsif opcode = OP_STR then
        rf_a_re <= '1';
        rf_b_re <= '1';
        case addressing_mode is
          when addr_mode_immediate =>
            alu_ra_sel           <= "01";
            alu_rb_sel           <= "01";
            data_mem_wr_data_sel <= "01";
          when addr_mode_register =>
            alu_ra_sel           <= "00";
            alu_rb_sel           <= "00";
            data_mem_wr_data_sel <= "00";
          when addr_mode_direct =>
            alu_ra_sel           <= "01"; -- Flip Rz and Rx
            alu_rb_sel           <= "01";
            data_mem_wr_data_sel <= "00";
          when others =>
            null;
        end case;
        next_state <= EXEC_STR;
      elsif opcode = OP_JMP then
        next_state <= EXEC_JMP;
      elsif opcode = OP_PRESENT then
        -- Rb is from zero register
        rf_a_re    <= '0';
        rf_b_re    <= '1';
        alu_ra_sel <= "00";
        alu_rb_sel <= "00";
        next_state <= EXEC_PRESENT;
      elsif opcode = OP_ANDR then
        rf_a_re    <= '1';
        rf_b_re    <= '1';
        next_state <= EXEC_ANDR;
      elsif opcode = OP_ORR then
        rf_a_re    <= '1';
        rf_b_re    <= '1';
        next_state <= EXEC_ORR;
      elsif opcode = OP_MAX then
        rf_a_re    <= '1';
        rf_b_re    <= '1';
        next_state <= EXEC_MAX;
      elsif opcode = OP_ADDR then
        rf_a_re    <= '1';
        rf_b_re    <= '1';
        next_state <= EXEC_ADDR;
      elsif opcode = OP_SUBR then
        rf_a_re    <= '1';
        rf_b_re    <= '1';
        next_state <= EXEC_SUBR;
      elsif opcode = OP_SUBVR then
        rf_a_re    <= '1';
        rf_b_re    <= '1';
        next_state <= EXEC_SUBVR;
      elsif opcode = OP_CLFZ then
        next_state <= EXEC_CLFZ;
      elsif opcode = OP_NOOP then
        next_state <= EXEC_NOOP;
      elsif opcode = OP_SZ then
        next_state <= EXEC_SZ;

        -- TODO: DO LER Register
      elsif opcode = OP_LER then
        next_state <= EXEC_LER;

        -- TODO: Do SVOP Register
      elsif opcode = OP_SSVOP then
        rf_a_re    <= '1';
        rf_b_re    <= '0';
        next_state <= EXEC_SSVOP;
      elsif opcode = OP_SSOP then
        rf_a_re    <= '1';
        rf_b_re    <= '0';
        next_state <= EXEC_SSOP;
      elsif opcode = OP_LSIP then
        wr_data_sel <= "11";
        next_state  <= EXEC_LSIP;
      elsif opcode = OP_DATACALL_REG then
        dpcr_sel   <= '0';
        next_state <= EXEC_DATACALL_REG;
      elsif opcode = OP_DATACALL_IMM then
        dpcr_sel   <= '1';
        next_state <= EXEC_DATACALL_IMM;
      elsif opcode = OP_STRPC then
        data_mem_wr_data_sel <= "10";
        next_state           <= EXEC_STRPC;
      elsif opcode = OP_SRES then
        next_state <= EXEC_SRES;
      elsif opcode = OP_CER then
        next_state <= EXEC_CER;
      elsif opcode = OP_CEOT then
        next_state <= EXEC_CEOT;
      elsif opcode = OP_SEOT then
        next_state <= EXEC_SEOT;
      else
        next_state <= FETCH1;
      end if;

    elsif state = EXEC_LDR then
      next_state <= MEM_ACCESS;

    elsif state = EXEC_STR then
      alu_op <= alu_add;
      case addressing_mode is
        when addr_mode_direct => -- Direct
          mar_sel     <= "01";
          mar_ld      <= '1';
          address_sel <= '1';
        when addr_mode_register => -- Register
          address_sel <= '0';
          mar_sel     <= "00";
          mar_ld      <= '1';
        when addr_mode_immediate =>
          address_sel <= '0';
          mar_sel     <= "00";
          mar_ld      <= '1';
        when others =>
          null;
      end case;

      next_state <= MEM_ACCESS;

    elsif state = EXEC_JMP then
      -- T3: PC ← target
      pc_sel     <= "01";
      next_state <= FETCH1;

    elsif state = EXEC_PRESENT then
      -- T3: TEST PRESENT Rz, Rx
      alu_op <= alu_add;
      if z_flag = '1' then
        pc_sel     <= "01";
        clr_z_flag <= '1';
      end if;
      next_state <= FETCH1;

    elsif state = EXEC_ANDR then
      case addressing_mode is
        when addr_mode_immediate =>
          alu_ra_sel <= "01";
          alu_rb_sel <= "10";
        when addr_mode_register =>
          alu_ra_sel <= "00";
          alu_rb_sel <= "00";
        when others =>
          null;
      end case;
      alu_op     <= alu_and;
      next_state <= WRITE_BACK;

    elsif state = EXEC_ORR then
      case addressing_mode is
        when addr_mode_immediate =>
          alu_ra_sel <= "01";
          alu_rb_sel <= "10";
        when addr_mode_register =>
          alu_ra_sel <= "00";
          alu_rb_sel <= "00";
        when others =>
          null;
      end case;
      alu_op     <= alu_or;
      next_state <= WRITE_BACK;

    elsif state = EXEC_MAX then
      case addressing_mode is
        when addr_mode_immediate =>
          alu_ra_sel <= "01";
          alu_rb_sel <= "10";
        when addr_mode_register =>
          alu_ra_sel <= "00";
          alu_rb_sel <= "00";
        when others =>
          null;
      end case;
      alu_op     <= alu_max;
      next_state <= WRITE_BACK;

    elsif state = EXEC_ADDR then
      -- T3: Rz ← Rz + (#imm/Rx)
      if addressing_mode = addr_mode_immediate then
        alu_ra_sel <= "01";
        alu_rb_sel <= "10";
      elsif addressing_mode = addr_mode_register then
        alu_ra_sel <= "00";
        alu_rb_sel <= "00";
      end if;
      alu_op     <= alu_add;
      next_state <= WRITE_BACK;

    elsif state = EXEC_SUBR then
      -- Subtract immediate without writing to register
      case addressing_mode is
        when addr_mode_immediate =>
          alu_ra_sel <= "01";
          alu_rb_sel <= "10";
        when others =>
          null;
      end case;
      alu_op     <= alu_sub;
      next_state <= FETCH1;

    elsif state = EXEC_SUBVR then
      -- T3: Rz ← Rz - #imm
      case addressing_mode is
        when addr_mode_immediate =>
          alu_ra_sel <= "01";
          alu_rb_sel <= "10";
        when addr_mode_register =>
          alu_ra_sel <= "00";
          alu_rb_sel <= "00";
        when others =>
          null;
      end case;
      alu_op     <= alu_sub;
      next_state <= WRITE_BACK;

    elsif state = EXEC_CLFZ then
      -- T3: clear Z flag
      clr_z_flag <= '1';
      next_state <= FETCH1;

    elsif state = EXEC_NOOP then
      -- NOP
      next_state <= FETCH1;

    elsif state = EXEC_SZ then
      -- Set Z-flag based on immediate
      if z_flag = '1' then
        pc_sel     <= "01";
        clr_z_flag <= '1';
      end if;
      next_state <= FETCH1;

    elsif state = EXEC_SSOP then
      sop_ld     <= '1';
      next_state <= FETCH1;

    elsif state = EXEC_SSVOP then
      svop_ld    <= '1';
      next_state <= FETCH1;

    elsif state = EXEC_LSIP then
      sip_ld     <= '1';
      next_state <= WRITE_BACK;
    elsif state = EXEC_STRPC then
      case addressing_mode is
        when addr_mode_direct => -- Direct
          mar_sel     <= "01";
          mar_ld      <= '1';
          address_sel <= '1';
        when others =>
          null;
      end case;
      next_state <= MEM_ACCESS;

    elsif state = EXEC_SRES then
      -- System Reset
      mar_reset <= '1';
      --ir_reset   <= '1';
      rf_reset   <= '1';
      reset_alu  <= '1';
      next_state <= FETCH1;

    elsif state = EXEC_LER then
      next_state <= WRITE_BACK;

    elsif state = EXEC_CER then
      er_clear   <= '1';
      next_state <= FETCH1;

    elsif state = EXEC_CEOT then
      eot_clear  <= '1';
      next_state <= FETCH1;

    elsif state = EXEC_SEOT then
      eot_ld     <= '1';
      next_state <= FETCH1;

    elsif state = MEM_ACCESS then
      case opcode is
        when OP_LDR =>
          mem_read   <= '1';
          mem_write  <= '0';
          next_state <= WRITE_BACK;

        when OP_STR | OP_STRPC =>
          mem_write  <= '1';
          mem_read   <= '0';
          next_state <= FETCH1;

        when others =>
          null;
      end case;
      --next_state <= FETCH1;

    elsif state = WRITE_BACK then
      case opcode is
          -- Loads
        when OP_LSIP =>
          wr_data_sel <= "11";
          sip_ld      <= '0';
        when OP_LDR =>
          case addressing_mode is
            when addr_mode_immediate =>
              wr_data_sel <= "00"; -- immediate
            when addr_mode_direct | addr_mode_register =>
              wr_data_sel <= "01"; -- memory
            when others =>
              null;
          end case;
          -- ALU operations (write ALU result)
        when OP_ANDR | OP_ORR | OP_ADDR | OP_SUBR | OP_SUBVR | OP_MAX =>
          wr_data_sel   <= "10"; -- ALU / ER
          rf_alu_er_sel <= '0';
          -- Other special cases
        when OP_LER =>
          wr_data_sel   <= "10"; -- ALU / ER
          rf_alu_er_sel <= '1';
        when others =>
          wr_data_sel <= "00"; -- default safe
      end case;

      rf_wr      <= '1';
      rf_a_re    <= '0';
      rf_b_re    <= '0';
      clr_z_flag <= '1';
      next_state <= FETCH1;
    else
      next_state <= FETCH1;
    end if;
  end process;
end architecture fsm;
