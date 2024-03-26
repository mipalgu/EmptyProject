----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/19/2024 12:56:01 PM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
port(
    sysclk: in std_logic;
    sw: in std_logic;
    led: out std_logic_vector(3 downto 0)
);
end top;

architecture Behavioral of top is

begin

process(sysclk)
begin
if rising_edge(sysclk) then
    if sw = '1' then
        led <= (others => '1');
    else
        led <= (others => '0');
    end if;
end if;
end process;

end Behavioral;
