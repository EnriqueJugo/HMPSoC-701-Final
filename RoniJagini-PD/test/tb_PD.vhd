library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.TdmaMinTypes.all;

entity PD_ASP_tb is
end entity;

architecture tb of PD_ASP_tb is

  -- DUT signals
  signal clock : std_logic := '0';
  signal send  : tdma_min_port;
  signal recv  : tdma_min_port;

  -- Helper signals
  signal finished : boolean := false;

begin

  -- Instantiate DUT
  uut: entity work.PD_ASP
    port map (
      clock => clock,
      send  => send,
      recv  => recv
    );

  -- Clock generation
  clock_process : process
  begin
    while not finished loop
      clock <= '0';
      wait for 5 ns;
      clock <= '1';
      wait for 5 ns;
    end loop;
    wait;
  end process;

  -- Stimulus process
  stim_proc: process
    -- Helper to set recv.data with header
    procedure set_recv(val : std_logic_vector(27 downto 0)) is
    begin
      recv.data <= x"8" & val;
      recv.addr <= (others => '0');
    end procedure;

    -- Helper to wait for a clock edge
    procedure wait_cycles(n : integer) is
    begin
      for i in 1 to n loop
        wait until rising_edge(clock);
      end loop;
    end procedure;

  begin
    -- Initialize
    recv.data <= (others => '0');
    recv.addr <= (others => '0');
    wait_cycles(2);

    -- Test 1: Positive slope (rising)
    set_recv(x"0000001"); wait_cycles(1);
    set_recv(x"0000002"); wait_cycles(1);
    set_recv(x"0000003"); wait_cycles(1);

    -- Test 2: Flat (no change)
    set_recv(x"0000003"); wait_cycles(1);
    set_recv(x"0000003"); wait_cycles(1);

    -- Test 3: Negative slope (falling)
    set_recv(x"0000002"); wait_cycles(1);
    set_recv(x"0000001"); wait_cycles(1);

    -- Test 4: Peak (rise then fall)
    set_recv(x"0000002"); wait_cycles(1);
    set_recv(x"0000004"); wait_cycles(1);
    set_recv(x"0000002"); wait_cycles(1);

    -- Test 5: Valley (fall then rise)
    set_recv(x"0000001"); wait_cycles(1);
    set_recv(x"0000000"); wait_cycles(1);
    set_recv(x"0000001"); wait_cycles(1);

    -- Test 6: Multiple peaks and valleys
    set_recv(x"0000003"); wait_cycles(1);
    set_recv(x"0000005"); wait_cycles(1); -- Peak
    set_recv(x"0000002"); wait_cycles(1); -- Valley
    set_recv(x"0000004"); wait_cycles(1); -- Peak
    set_recv(x"0000001"); wait_cycles(1); -- Valley

    -- Test 7: Edge cases (min/max values)
    set_recv(x"0000000"); wait_cycles(1); -- Min
    set_recv(x"FFFFFFF"); wait_cycles(1); -- Max 
    set_recv(x"0000000"); wait_cycles(1); -- Min

    -- Idle
    set_recv(x"0000000"); wait_cycles(2);

    -- Finish simulation
    finished <= true;
    wait;
  end process;

  -- Monitor process to print send output
  monitor_proc: process(clock)
  begin
    if rising_edge(clock) then
      report "Send.data: " & integer'image(to_integer(unsigned(send.data(15 downto 0))));
    end if;
  end process;

end architecture;