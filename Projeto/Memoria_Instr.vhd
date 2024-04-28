----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:15:16 02/25/2024 
-- Design Name: 
-- Module Name:    Memoria_Instr - Behavioral 
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

entity Memoria_Instr is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           Constante : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : out  STD_LOGIC_VECTOR (5 downto 0));
end Memoria_Instr;

architecture Behavioral of Memoria_Instr is

begin
	process(Endereco)
		begin
			case Endereco is
				when "00000000" => Opcode <= "00000";SEl_R <= "XXX000";Constante <= "XXXXXXXX"; --LDP R0
				when "00000001" => Opcode <= "10100";SEl_R <= "XXX000";Constante <= "00011000";--JZ R0; 24
				when "00000010" => Opcode <= "00100";SEl_R <= "XXX000";Constante <= "00000101";--ST [5]; R0
				when "00000011" => Opcode <= "00010";SEl_R <= "XXX000";Constante <= "00000001";--LD R0; 1
				when "00000100" => Opcode <= "00010";SEl_R <= "XXX001";Constante <= "11111111";--LD R1; -1
				when "00000101" => Opcode <= "00010";SEl_R <= "XXX010";Constante <= "00010100";--LD R2; 20
				when "00000110" => Opcode <= "00010";SEl_R <= "XXX011";Constante <= "00000110";--LD R3; 6
				when "00000111" => Opcode <= "00011";SEl_R <= "XXX111";Constante <= "00000101";--LD R7; [5]
				when "00001000" => Opcode <= "01101";SEl_R <= "010111";Constante <= "XXXXXXXX";--CMP R7; R2
				when "00001001" => Opcode <= "10001";SEl_R <= "XXXXXX";Constante <= "00010011";--JGE 19
				when "00001010" => Opcode <= "01011";SEl_R <= "001010";Constante <= "XXXXXXXX";--XOR R2; R1
				when "00001011" => Opcode <= "00101";SEl_R <= "000010";Constante <= "XXXXXXXX";--ADD R2; R0
				when "00001100" => Opcode <= "01101";SEl_R <= "010111";Constante <= "XXXXXXXX";--CMP R7; R2
				when "00001101" => Opcode <= "01110";SEl_R <= "XXXXXX";Constante <= "00010110";--JL 22
				when "00001110" => Opcode <= "00011";SEl_R <= "XXX110";Constante <= "00000101";--LD R6; [5]
				when "00001111" => Opcode <= "00101";SEl_R <= "110111";Constante <= "XXXXXXXX";--ADD R7; R6
				when "00010000" => Opcode <= "00110";SEl_R <= "000011";Constante <= "XXXXXXXX";--SUB R3; R0
				when "00010001" => Opcode <= "10101";SEl_R <= "XXX011";Constante <= "00011001";--JN R3; 25
				when "00010010" => Opcode <= "10011";SEl_R <= "XXXXXX";Constante <= "00001111";--JMP 15
				when "00010011" => Opcode <= "00010";SEl_R <= "XXX100";Constante <= "11110001";--LD R4; -15
				when "00010100" => Opcode <= "00101";SEl_R <= "100111";Constante <= "XXXXXXXX";--ADD R7; R4
				when "00010101" => Opcode <= "10011";SEl_R <= "XXXXXX";Constante <= "00011001";--JMP 25
				when "00010110" => Opcode <= "00111";SEl_R <= "000111";Constante <= "XXXXXXXX";--AND R7; R0
				when "00010111" => Opcode <= "10011";SEl_R <= "XXXXXX";Constante <= "00011001";--JMP 25
				when "00011000" => Opcode <= "00010";SEl_R <= "XXX111";Constante <= "11111111";--LD R7; -1
				when "00011001" => Opcode <= "00001";SEl_R <= "XXX111";Constante <= "XXXXXXXX";--STP R7
				when "00011010" => Opcode <= "10011";SEl_R <= "XXXXXX";Constante <= "00011010";--JMP 26
				when others => Opcode <= "XXXXX";SEl_R <= "XXXXXX";Constante <= "XXXXXXXX";
			
		end case;

	end process;


end Behavioral;