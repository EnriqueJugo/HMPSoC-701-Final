-- Top level
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TdmaMinTypes.all;

entity HMPSoC is
  port (
    CLOCK_50                           : in std_logic;
    KEY                                : in std_logic_vector(3 downto 0);
    SW                                 : in std_logic_vector(9 downto 0);
    DRAM_DQ                            : inout std_logic_vector(15 downto 0);
    DRAM_ADDR                          : out std_logic_vector(12 downto 0);
    DRAM_BA                            : out std_logic_vector(1 downto 0);
    DRAM_CAS_N, DRAM_RAS_N, DRAM_CLK   : out std_logic;
    DRAM_CKE, DRAM_CS_N, DRAM_WE_N     : out std_logic;
    DRAM_UDQM, DRAM_LDQM               : out std_logic;
    LEDR                               : out std_logic_vector(9 downto 0);
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(7 downto 0)
  );
end entity HMPSoC;
architecture Structure of HMPSoC is
  component Nios_System_2A is
    port (
      button_pio_external_connection_export : in std_logic_vector(3 downto 0) := (others => '0'); -- button_pio_external_connection.export
      clocks_ref_clk_clk                    : in std_logic                    := '0'; --                 clocks_ref_clk.clk
      clocks_ref_reset_reset                : in std_logic                    := '0'; --               clocks_ref_reset.reset
      clocks_sdram_clk_clk                  : out std_logic; --               clocks_sdram_clk.clk
      hex_pio_0_external_connection_export  : out std_logic_vector(7 downto 0); --  hex_pio_0_external_connection.export
      hex_pio_1_external_connection_export  : out std_logic_vector(7 downto 0); --  hex_pio_1_external_connection.export
      hex_pio_2_external_connection_export  : out std_logic_vector(7 downto 0); --  hex_pio_2_external_connection.export
      hex_pio_3_external_connection_export  : out std_logic_vector(7 downto 0); --  hex_pio_3_external_connection.export
      hex_pio_4_external_connection_export  : out std_logic_vector(7 downto 0); --  hex_pio_4_external_connection.export
      hex_pio_5_external_connection_export  : out std_logic_vector(7 downto 0); --  hex_pio_5_external_connection.export
      led_pio_external_connection_export    : out std_logic_vector(9 downto 0); --    led_pio_external_connection.export
      sdram_wire_addr                       : out std_logic_vector(12 downto 0); --                     sdram_wire.addr
      sdram_wire_ba                         : out std_logic_vector(1 downto 0); --                               .ba
      sdram_wire_cas_n                      : out std_logic; --                               .cas_n
      sdram_wire_cke                        : out std_logic; --                               .cke
      sdram_wire_cs_n                       : out std_logic; --                               .cs_n
      sdram_wire_dq                         : inout std_logic_vector(15 downto 0) := (others => '0'); --                               .dq
      sdram_wire_dqm                        : out std_logic_vector(1 downto 0); --                               .dqm
      sdram_wire_ras_n                      : out std_logic; --                               .ras_n
      sdram_wire_we_n                       : out std_logic; --                               .we_n
      sw_pio_external_connection_export     : in std_logic_vector(9 downto 0) := (others => '0') --     sw_pio_external_connection.export
    );
  end component Nios_System_2A;
  component TdmaMin is
    generic (
      ports : positive
    );
    port (
      clock : in std_logic;
      sends : in tdma_min_ports(0 to ports - 1);
      recvs : out tdma_min_ports(0 to ports - 1)
    );
  end component;

  component Sig_Gen is
    port (
      clock : in std_logic;
      send  : out tdma_min_port;
      recv  : in tdma_min_port
    );
  end component;

  component AVG_ASP is
    port (
      clock : in std_logic;
      send  : out tdma_min_port;
      recv  : in tdma_min_port
    );
  end component;

  component CORR_ASP is
    port (
      clock : in std_logic;
      send  : out tdma_min_port;
      recv  : in tdma_min_port
    );
  end component;

  component PD_ASP is
    port (
      clock : in std_logic;
      send  : out tdma_min_port;
      recv  : in tdma_min_port
    );
  end component;

  -- Constants and signals here
  constant NUM_PORTS : positive := 8;
  signal send_port   : tdma_min_ports(0 to NUM_PORTS - 1);
  signal recv_port   : tdma_min_ports(0 to NUM_PORTS - 1);

begin
  u0 : component Nios_System_2A
    port map
    (
      led_pio_external_connection_export    => LEDR, -- led_pio_external_connection.export
      button_pio_external_connection_export => KEY, -- button_pio_external_connection_export
      sdram_wire_addr                       => DRAM_ADDR, -- sdram_wire.addr
      sdram_wire_ba                         => DRAM_BA, -- .ba
      sdram_wire_cas_n                      => DRAM_CAS_N, -- .cas_n
      sdram_wire_cke                        => DRAM_CKE, -- .ckel
      sdram_wire_cs_n                       => DRAM_CS_N, -- .cs_n
      sdram_wire_dq                         => DRAM_DQ, -- .dq
      sdram_wire_dqm(1)                     => DRAM_UDQM, -- .dqm
      sdram_wire_dqm(0)                     => DRAM_LDQM, --
      sdram_wire_ras_n                      => DRAM_RAS_N, -- .ras_n
      sdram_wire_we_n                       => DRAM_WE_N, -- .we_n
      clocks_sdram_clk_clk                  => DRAM_CLK, -- clocks_sdram_clk.clk
      clocks_ref_clk_clk                    => CLOCK_50, -- clocks_ref_clk.clk
      clocks_ref_reset_reset                => not KEY(0), -- clocks_ref_reset.reset
      hex_pio_0_external_connection_export  => HEX0,
      hex_pio_1_external_connection_export  => HEX1,
      hex_pio_2_external_connection_export  => HEX2,
      hex_pio_3_external_connection_export  => HEX3,
      hex_pio_4_external_connection_export  => HEX4,
      hex_pio_5_external_connection_export  => HEX5,
      sw_pio_external_connection_export     => SW
    );

    tdma_min : TdmaMin
      generic map(
        ports => NUM_PORTS
      )
      port map
      (
        clock => CLOCK_50,
        sends => send_port,
        recvs => recv_port
      );

    signal_gen : Sig_Gen
      port map
      (
        clock => CLOCK_50,
        send  => send_port(1),
        recv  => recv_port(1)
      );

    asp_avg : AVG_ASP
      port map
      (
        clock => CLOCK_50,
        send  => send_port(2),
        recv  => recv_port(2)
      );

    asp_cor : CORR_ASP
      port map
      (
        clock => CLOCK_50,
        send  => send_port(3),
        recv  => recv_port(3)
      );

    asp_pd : PD_ASP
      port map
      (
        clock => CLOCK_50,
        send  => send_port(4),
        recv  => recv_port(4)
      );

            end architecture;