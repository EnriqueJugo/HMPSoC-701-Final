library ieee;
use ieee.std_logic_1164.all;

entity memory_address_register is
    generic (bit_width : integer := 16);
    port (
        clk       : in std_logic;
        mar_in    : in std_logic_vector(bit_width - 1 downto 0);
        mar_ld    : in std_logic;
        mar_reset : in std_logic;
        mar_out    : out std_logic_vector(bit_width - 1 downto 0)
    );
end memory_address_register;

architecture beh of memory_address_register is

begin

    p1 : process (clk)
	 
	 begin
        if(rising_edge(clk)) then
            if(mar_reset = '1') then
                mar_out <= (others => '0');
            elsif(mar_ld = '1') then
                mar_out <= mar_in;
            end if;
        end if;
    end process;
end architecture; -- beh