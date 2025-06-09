library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity CORR_ASP is
  port (
    clock : in std_logic;
    send  : out tdma_min_port;
    recv  : in tdma_min_port
  );
end CORR_ASP;

architecture arch of CORR_ASP is
  signal correlation : signed(27 downto 0) := (others => '0');

  type state_t is (calc, send_low);
  signal state : state_t := calc;

  constant MAX_LAG : integer := 1024;

  signal corr_window_int : integer range 0 to MAX_LAG := 1024;

  -- Internal control signals
  signal enable      : std_logic                    := '1';
  signal reset       : std_logic                    := '0';
  signal dest        : std_logic_vector(3 downto 0) := x"4";
  signal passthrough : std_logic                    := '0';

  -- Circular buffer
  type array_type is array(0 to MAX_LAG) of signed(15 downto 0);
  signal signal_array : array_type                 := (others => (others => '0'));
  signal wr_index     : integer range 0 to MAX_LAG := 0;
begin

  send.addr <= x"0" & dest;

  -- | 31..28 | 27..24 | 23..20 | 19 | 18    | 17          | 16..7         |
  -- | type   | addr   |  dest  | en | reset | passthrough | CORRELATION   |
  config : process (clock)
  begin
    if rising_edge(clock) then
      if recv.data(31 downto 28) = "1011" then
        enable          <= recv.data(19);
        reset           <= recv.data(18);
        dest            <= recv.data(23 downto 20);
        passthrough     <= recv.data(17);
        corr_window_int <= to_integer(unsigned(recv.data(16 downto 7)));
      end if;
    end if;
  end process;

  corr : process (clock)
    variable sig         : signed(15 downto 0);
    variable delayed_sig : signed(15 downto 0);
    variable product     : signed(27 downto 0) := (others => '0');
    variable rd_index    : integer;
  begin
    if rising_edge(clock) then
      if reset = '1' then
        correlation  <= (others => '0');
        signal_array <= (others => (others => '0'));
        send.data    <= (others => '0');
        wr_index     <= 0;
      elsif enable = '1' then
            if passthrough = '1' then
              send.data <= recv.data;
            elsif recv.data(31 downto 28) = "1000" and recv.data(15 downto 0) /= x"0000" then
              sig := signed(recv.data(15 downto 0));
              rd_index    := (wr_index - corr_window_int + (corr_window_int + 1)) mod (corr_window_int + 1);
              delayed_sig := signal_array(rd_index);

              signal_array(wr_index) <= sig;
              wr_index               <= (wr_index + 1) mod (corr_window_int + 1);

              product := RESIZE(sig * delayed_sig, product'length);
              correlation <= product;
              send.data   <= x"8" & std_logic_vector(correlation(27 downto 0));
            end if;
      end if;
    end if;
  end process;

end architecture;