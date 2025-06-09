library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity PD_ASP is
  port (
    clock : in std_logic;
    send  : out tdma_min_port;
    recv  : in tdma_min_port
  );
end entity;

architecture peakdetection of PD_ASP is

  -- Config information
  signal dest  : std_logic_vector(3 downto 0) := x"5";
  signal pd_on : std_logic                    := '1';

  -- State to see if its positive slope or negative slope
  type detection_state is (idle, positive_slope, negative_slope);
  signal state      : detection_state := positive_slope;
  signal next_state : detection_state := idle;
  signal reset      : std_logic       := '0';

  -- Counter to count the number of samples
  signal counter          : std_logic_vector(15 downto 0) := (others => '0');
  signal correlation      : std_logic_vector(27 downto 0) := (others => '0');
  signal last_correlation : std_logic_vector(27 downto 0) := (others => '0');
  signal peak_detected    : std_logic                     := '0';

begin
  send.addr <= x"0" & dest;

  -- config : process (clock)
  -- begin
  --   if rising_edge(clock) then
  --     if recv.data(31 downto 28) = x"8" then
  --       correlation <= recv.data(27 downto 0);
  --     end if;
  --   end if;

-- end process;

pd_fsm : process (clock)
begin
  if rising_edge(clock) then
    if reset = '1' then
      state            <= idle;
      counter          <= (others => '0');
      last_correlation <= (others => '0');
      peak_detected    <= '0';
    else
      if recv.data(31 downto 28) = x"8" then
        correlation <= recv.data(27 downto 0);
        case state is
          when idle =>
            if correlation >= last_correlation then
              counter           <= std_logic_vector(unsigned(counter) + 1);
              next_state        <= positive_slope;
            elsif correlation <= last_correlation then
              next_state        <= negative_slope;
            end if;
          when positive_slope =>
            if correlation >= last_correlation then
              counter    <= std_logic_vector(unsigned(counter) + 1);
              next_state <= positive_slope;
            elsif correlation < last_correlation then
              peak_detected <= '1';
              send.data     <= x"8000" & counter;
              counter       <= (others => '0');
              next_state    <= negative_slope;
            end if;
          when negative_slope =>
            if correlation > last_correlation then
              next_state        <= positive_slope;
              counter           <= std_logic_vector(unsigned(counter) + 1);
            elsif correlation <= last_correlation then
              next_state        <= negative_slope;
              counter           <= std_logic_vector(unsigned(counter) + 1);
            end if;

          when others =>
            next_state <= idle;
        end case;
        state            <= next_state;
        last_correlation <= correlation;
      end if;
    end if;
    end if;
  end process;

end architecture;
