----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:54:40 02/25/2024 
-- Design Name: 
-- Module Name:    Reg_Flags - Behavioral 
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
use IEEE.std_logic_signed.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg_Flags is
    Port ( clk : in  STD_LOGIC;
           E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0);
           S_FLAG  : out  STD_LOGIC);
end Reg_Flags;

architecture Behavioral of Reg_Flags is
begin
	process(clk, ESCR_R, E_FLAG, SEL_FLAG)
	variable mem : STD_LOGIC_VECTOR (4 downto 0);
		begin
			case SEL_FLAG is
				when "000" => S_FLAG <= mem(0);
				when "001" => S_FLAG <= mem(1);
				when "010" => S_FLAG <= mem(2);
				when "011" => S_FLAG <= mem(3);
				when "100" => S_FLAG <= mem(4);
				when others => S_FLAG <= 'X';
			end case;
			if ESCR_R(1) = '1' and rising_edge(clk) then
				mem := E_FLAG;
			end if;
	end process;


end Behavioral;