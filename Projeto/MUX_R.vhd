----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:17 02/25/2024 
-- Design Name: 
-- Module Name:    MUX_R - Behavioral 
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

entity MUX_R is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL_Dados : in  STD_LOGIC_VECTOR (1 downto 0));
end MUX_R;

architecture Behavioral of MUX_R is

begin
	process(Dados_IN, Dados_M, Constante, SEL_Dados, Resultado)
		begin
			case SEL_Dados is
				when "00" => Dados_R <= Resultado;
				when "01" => Dados_R <= Dados_IN;
				when "10" => Dados_R <= Dados_M;
				when "11" => Dados_R <= Constante;
				when others => Dados_R <= (others => 'X');
			end case;
	end process;
end Behavioral;

