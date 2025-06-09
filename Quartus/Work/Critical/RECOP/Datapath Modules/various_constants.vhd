-- Zoran Salcic

library ieee;
use ieee.std_logic_1164.all;
use work.recop_types.all;

package various_constants is
  -- ALU operation selection alu_sel
  constant alu_add  : bit_3 := "000";
  constant alu_sub  : bit_3 := "001";
  constant alu_and  : bit_3 := "010";
  constant alu_or   : bit_3 := "011";
  constant alu_idle : bit_3 := "100";
  constant alu_max  : bit_3 := "101";
  constant alu_xor  : bit_3 := "111";

  constant addr_mode_inherit   : bit_2 := "00";
  constant addr_mode_immediate : bit_2 := "01";
  constant addr_mode_direct    : bit_2 := "10";
  constant addr_mode_register  : bit_2 := "11";
end various_constants;
