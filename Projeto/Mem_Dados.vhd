----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:22:30 02/25/2024 
-- Design Name: 
-- Module Name:    Mem_Dados - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mem_Dados is
    Port ( clk : in  STD_LOGIC;
           ConstanteCPU : in  STD_LOGIC_VECTOR (7 downto 0);
           WR : in  STD_LOGIC;
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0));
end Mem_Dados;

architecture Behavioral of Mem_Dados is
type mem is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
signal memoria : mem;
begin
process(clk)

		begin
		if rising_edge(clk) and WR = '1' then
			memoria(to_integer(unsigned(ConstanteCPU))) <= Operando1;
		end if;
		if WR = '0' then
			Dados_M <= memoria(to_integer(unsigned(ConstanteCPU)));
		end if;
				
	end process;

end Behavioral;