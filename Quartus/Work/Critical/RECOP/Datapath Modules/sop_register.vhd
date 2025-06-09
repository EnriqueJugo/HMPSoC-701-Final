library ieee;
use ieee.std_logic_1164.all;

entity sop_register is
    port (
        clk        : in  std_logic;
        sop_reset  : in  std_logic;
        sop_ld     : in  std_logic;  -- Load enable (used by FSM when SSOP Rx is decoded)
        sop_in     : in  std_logic_vector(15 downto 0);
        sop_out    : out std_logic_vector(15 downto 0)
    );
end entity;

architecture rtl of sop_register is
    signal sop_reg : std_logic_vector(15 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if sop_reset = '1' then
                sop_reg <= (others => '0');
            elsif sop_ld = '1' then
                sop_reg <= sop_in;
            end if;
        end if;
    end process;

    sop_out <= sop_reg;
end architecture;
