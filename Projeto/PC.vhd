----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:00:09 02/25/2024 
-- Design Name: 
-- Module Name:    PC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_signed.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ESCR_PC : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
end PC;

architecture Behavioral of PC is
signal contador : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin

  process(clk)
  begin
    if rising_edge(clk) then
			if reset = '1' then
				contador <= (others => '0');
			else 
				if ESCR_PC = '0' then
					contador <= contador + "00000001";
				else
					contador <= Constante;
				end if;
			end if;
		end if;
		
	end process;
Endereco <= contador;
end Behavioral;

