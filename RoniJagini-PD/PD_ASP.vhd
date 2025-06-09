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

  -- Destination address and enable flag for peak detection
  signal dest  : std_logic_vector(3 downto 0) := x"5";
  signal pd_on : std_logic                    := '1';

  -- FSM states for tracking correlation slope
  type detection_state is (idle, positive_slope, negative_slope);
  signal state      : detection_state := positive_slope;
  signal next_state : detection_state := idle;
  signal reset      : std_logic       := '0';

  signal counter          : std_logic_vector(15 downto 0) := (others => '0'); 
  signal correlation      : std_logic_vector(27 downto 0) := (others => '0'); 
  signal last_correlation : std_logic_vector(27 downto 0) := (others => '0'); 
  signal peak_detected    : std_logic                     := '0';            

begin
  send.addr <= x"0" & dest;

  pd_fsm : process (clock)
  begin
    if rising_edge(clock) then
      if reset = '1' then
        -- Reset all internal states and signals
        state            <= idle;
        counter          <= (others => '0');
        last_correlation <= (others => '0');
        peak_detected    <= '0';
      else
        if recv.data(31 downto 28) = x"8" then
          correlation <= recv.data(27 downto 0);

          case state is
            when idle =>
              -- Start tracking slope direction
              if correlation >= last_correlation then
                counter    <= std_logic_vector(unsigned(counter) + 1);
                next_state <= positive_slope;
              elsif correlation <= last_correlation then
                next_state <= negative_slope;
              end if;

            when positive_slope =>
              -- Continue rising trend or detect local maximum
              if correlation >= last_correlation then
                counter    <= std_logic_vector(unsigned(counter) + 1);
                next_state <= positive_slope;
              elsif correlation < last_correlation then
                -- Peak detected within sample limit
                peak_detected <= '1';
                send.data     <= x"8000" & counter; -- Send peak info
                counter       <= (others => '0');
                next_state    <= negative_slope;
              end if;

            when negative_slope =>
              -- Track falling trend or detect start of new rise
              if correlation > last_correlation then
                next_state <= positive_slope;
                counter    <= std_logic_vector(unsigned(counter) + 1);
              else
                next_state <= negative_slope;
                counter    <= std_logic_vector(unsigned(counter) + 1);
              end if;

            when others =>
              next_state <= idle;
          end case;

          -- Update FSM state and previous value
          state            <= next_state;
          last_correlation <= correlation;
        end if;
      end if;
    end if;
  end process;

end architecture;
