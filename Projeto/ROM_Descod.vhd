----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:16:57 02/25/2024 
-- Design Name: 
-- Module Name:    ROM_Descod - Behavioral 
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

entity ROM_Descod is
	Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           WR : out  STD_LOGIC;
           ESCR_P : out  STD_LOGIC;
           SEL_Dados : out  STD_LOGIC_VECTOR (1 downto 0);
           ESCR_R : out  STD_LOGIC_VECTOR (1 downto 0);
           SEL_ALU : out  STD_LOGIC_VECTOR (3 downto 0);
           SEL_FLAG : out  STD_LOGIC_VECTOR (2 downto 0);
           SEL_PC : out  STD_LOGIC_VECTOR (2 downto 0));
end ROM_Descod;

architecture Behavioral of ROM_Descod is

begin
process(opcode)
	begin
		
		case opcode is
		--Periféricos
		-- LDP Ri
		-- STP Ri
			when "00000" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "01";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";	
			when "00001" => SEL_ALU <= "XXXX";  ESCR_P <= '1';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
		
		--Leitura e Escrita
		-- LD Ri, constante
		-- LD Ri, [constante]
		-- ST [constante], Ri
			when "00010" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "11";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
			when "00011" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "10";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
			when "00100" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '1';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
		
		--Lógica e Aritmética
		-- ADD Ri, Rj
		-- SUB Ri, Rj
		-- AND Ri, Rj
		-- NAND Ri, Rj
		-- OR Ri, Rj
		-- NOR Ri, Rj
		-- XOR Ri, Rj
		-- XNOR Ri, Rj
		-- CMP Ri, Rj
			when "00101" => SEL_ALU <= "0000";  ESCR_P <= '0';  SEL_Dados <= "00";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";  	SEL_FLAG <= "XXX";
			when "00110" => SEL_ALU <= "0001";  ESCR_P <= '0';  SEL_Dados <= "00";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";  	SEL_FLAG <= "XXX";
			when "00111" => SEL_ALU <= "0010";  ESCR_P <= '0';  SEL_Dados <= "00";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";  	SEL_FLAG <= "XXX";
			when "01000" => SEL_ALU <= "0011";  ESCR_P <= '0';  SEL_Dados <= "00";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";	SEL_FLAG <= "XXX";
			when "01001" => SEL_ALU <= "0100";  ESCR_P <= '0';  SEL_Dados <= "00";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
			when "01010" => SEL_ALU <= "0101";  ESCR_P <= '0';  SEL_Dados <= "00";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
			when "01011" => SEL_ALU <= "0110";  ESCR_P <= '0';  SEL_Dados <= "00";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
			when "01100" => SEL_ALU <= "0111";  ESCR_P <= '0';  SEL_Dados <= "00";  ESCR_R <= "01";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
			when "01101" => SEL_ALU <= "1000";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "10";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
		
		--Salto
		-- JL constante
		-- JLE constante
		-- JE constante
		-- JGE constante
		-- JG constante
		-- JMP constante
		-- JZ Ri, constante
		-- JN Ri, constante
		
			when "01110" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "010";   SEL_FLAG <= "000";
			when "01111" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "010";   SEL_FLAG <= "001";
			when "10000" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "010";   SEL_FLAG <= "010";
			when "10001" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "010";   SEL_FLAG <= "011";
			when "10010" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "010";   SEL_FLAG <= "100";
			when "10011" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "001";   SEL_FLAG <= "XXX";
			when "10100" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "100";   SEL_FLAG <= "XXX";
			when "10101" => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "011";   SEL_FLAG <= "XXX";
		
		--Outros
		-- NOP
			when others  => SEL_ALU <= "XXXX";  ESCR_P <= '0';  SEL_Dados <= "XX";  ESCR_R <= "00";  WR <= '0';  SEL_PC <= "000";   SEL_FLAG <= "XXX";
		
		end case;
	end process;


end Behavioral;
