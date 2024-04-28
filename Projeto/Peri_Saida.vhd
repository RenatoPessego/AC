----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:43:23 02/25/2024 
-- Design Name: 
-- Module Name:    Peri_Saida - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Peri_Saida is
    Port ( clk : in  STD_LOGIC;
           ESCR_P : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Peri_Saida;

architecture Behavioral of Peri_Saida is

begin
	process(clk)
		begin
			if rising_edge(clk) and ESCR_P = '1' then
				POUT <= Operando1;
			end if;
			
	end process;


end Behavioral;

