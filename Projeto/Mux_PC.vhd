----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:39 02/25/2024 
-- Design Name: 
-- Module Name:    Mux_PC - Behavioral 
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

entity Mux_PC is
    Port ( S_FLAG : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC;
			  zero : in  STD_LOGIC;
           um : in  STD_LOGIC;
			  saida_nor: in STD_LOGIC);
end Mux_PC;

architecture Behavioral of Mux_PC is

begin
	process(SEL_PC,S_FLAG,Operando1)
		begin
			case SEL_PC is
				when "000" => ESCR_PC <= zero;
				when "001" => ESCR_PC <= um;
				when "010" => ESCR_PC <= S_FLAG;
				when "011" => ESCR_PC <= Operando1(7);
				when "100" => ESCR_PC <= saida_nor;
				when others => ESCR_PC <= 'X';
			end case;
	end process;
end Behavioral;

