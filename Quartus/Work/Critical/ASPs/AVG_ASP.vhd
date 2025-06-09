library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity AVG_ASP is
  port (
    clock : in std_logic;
    send  : out tdma_min_port;
    recv  : in tdma_min_port
  );
end entity;

architecture sim of AVG_ASP is
  signal avg_mode : std_logic_vector(1 downto 0) := "00"; -- "00"=simple moving average, "01" = RMS averaging, "10" = EMA
  signal avg      : signed(15 downto 0);
  signal dest     : std_logic_vector(3 downto 0) := x"3";

  -- Averaging Window size (of 8)
  type data_array_8 is array (0 to 7) of signed (15 downto 0);
  signal idx_8  : integer range 0 to 7 := 0;
  signal data_8 : data_array_8         := (others => (others => '0'));
begin
  send.addr <= x"0" & dest;
  process (clock)

    variable average     : signed(15 downto 0) := (others => '0');
    variable sum_squares : signed(31 downto 0) := (others => '0');

  begin
    if (rising_edge(clock)) then
      if (recv.data(31 downto 28) = b"1001") then -- Reconfigure Module
        dest     <= recv.data(27 downto 24);
        avg_mode <= recv.data(23 downto 22);

      elsif (recv.data(31 downto 28) = x"8") then
        case avg_mode is
          when "00" => -- Simple Moving Average
            for i in 0 to 7 loop
              average := average + resize(data_8(i), average'length);
            end loop;
            --average := (others => '0');
            average := average srl 3;

          when "01" => -- RMS Average
            for i in 0 to 7 loop
              sum_squares := sum_squares + resize(data_8(i) * data_8(i), 32);
            end loop;
            -- Approximate sqrt by shifting (not accurate, for illustration)
            average := resize(sum_squares srl 6, 16); -- sqrt(sum/8) ≈ sum_squares >> 6

          when "10" => -- Exponential Moving Average (alpha = 1/8)
            average := avg + ((signed(recv.data(15 downto 0)) - avg) srl 3);

          when others        =>
            average := (others => '0');
        end case;
        avg           <= average;
        data_8(idx_8) <= signed(recv.data(15 downto 0));
        idx_8         <= (idx_8 + 1) mod 8;
        send.data     <= x"8000" & std_logic_vector(average(15 downto 0));
      end if;
    end if;
  end process;

end architecture;
