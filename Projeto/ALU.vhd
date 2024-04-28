----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:55 02/25/2024 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use ieee.std_logic_signed.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (3 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0);
			  E_FLAG : out STD_LOGIC_VECTOR (4 downto 0));
			  
			  
end ALU;

architecture Behavioral of ALU is
begin
	process(Operando1, Operando2, SEL_ALU)
	
	begin
		case SEL_ALU is
			when "0000" => Resultado <= Operando1 + Operando2;E_FLAG<="XXXXX";
			when "0001" => Resultado <= Operando1 - Operando2;E_FLAG<="XXXXX";
			when "0010" => Resultado <= Operando1 and Operando2;E_FLAG<="XXXXX";
			when "0011" => Resultado <= Operando1 nand Operando2;E_FLAG<="XXXXX";
			when "0100" => Resultado <= Operando1 or Operando2;E_FLAG<="XXXXX";
			when "0101" => Resultado <= Operando1 nor Operando2;E_FLAG<="XXXXX";
			when "0110" => Resultado <= Operando1 xor Operando2;E_FLAG<="XXXXX";
			when "0111" => Resultado <= Operando1 xnor Operando2;E_FLAG<="XXXXX";
			when "1000" => 
					if Operando1 = Operando2 then	
						E_FLAG <= (1 => '1', 2 => '1', 3 => '1', others => '0');
					end if;
					if Operando1 < Operando2 then	
						E_FLAG <= (0 => '1', 1 => '1', others => '0');
					end if;
					if Operando1 > Operando2 then	
						E_FLAG <= (4 => '1', 3 => '1', others => '0');
					end if;
			when others => Resultado <= (others => 'X'); E_FLAG <= (others => 'X');--estado alta impedancia
		end case;
		
	end process;


end Behavioral;

