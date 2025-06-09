library ieee;
use ieee.std_logic_1164.all;

entity register_general is
    generic (bit_width : integer := 16);
    port (
        clk       : in std_logic;
        reg_in    : in std_logic_vector(bit_width - 1 downto 0);
        reg_ld    : in std_logic;
        reg_reset : in std_logic;
        reg_out    : out std_logic_vector(bit_width - 1 downto 0)
    );
end register_general;

architecture beh of register_general is

begin

    p1 : process (clk)
	 
	 begin
        if(rising_edge(clk)) then
            if(reg_reset = '1') then
                reg_out <= (others => '0');
            elsif(reg_ld = '1') then
                reg_out <= reg_in;
            end if;
        end if;
    end process;
end architecture; -- beh