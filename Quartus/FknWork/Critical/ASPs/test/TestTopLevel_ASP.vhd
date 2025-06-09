library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity TestTopLevel_ASP is
    generic (
    ports : positive := 8
  );
end entity;

architecture rtl of TestToplevel_ASP is
  signal clock     : std_logic := '1';

  signal send_port        : tdma_min_ports(0 to ports - 1);
  signal recv_port        : tdma_min_ports(0 to ports - 1);

begin
  clock <= not clock after 20 ns;

  tdma_min : entity work.TdmaMin
    generic map(
      ports => ports
    )
    port map
    (
      clock => clock,
      sends => send_port,
      recvs => recv_port
    );
  sig_gen : entity work.Sig_Gen
    port map
    (
      clock => clock,
      send  => send_port(1),
      recv  => recv_port(1)
    );

  asp_avg : entity work.AVG_ASP
    port map
    (
      clock => clock,
      send  => send_port(2),
      recv  => recv_port(2)
    );

  asp_cor : entity work.CORR_ASP
    port map
    (
      clock => clock,
      send  => send_port(3),
      recv  => recv_port(3)
    );

  asp_pd : entity work.PD_ASP
    port map
    (
      clock => clock,
      send  => send_port(4),
      recv  => recv_port(4)
    );

  -- recop : entity work.ReCOP_TopLevel
  --   port map
  --   (
  --   clk           => clock,
  --   reset         => KEY(0),
  --   sip_input     => sip_input_RECOP,
  --   sop_output    => sop_output_RECOP,
  --   dpcr_out_TDMA => send_port(4),
  --   state_tb      => state_RECOP,
  --   z_flag_out    => zflag_RECOP
  --   );
end architecture;