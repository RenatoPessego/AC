----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:34 02/25/2024 
-- Design Name: 
-- Module Name:    Banco_Reg - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Banco_Reg is
    Port ( ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           SEL_R : in  STD_LOGIC_VECTOR (5 downto 0);
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end Banco_Reg;

architecture Behavioral of Banco_Reg is

	signal R0 : STD_LOGIC_VECTOR (7 downto 0);
	signal R1 : std_logic_vector (7 downto 0);
	signal R2 : std_logic_vector (7 downto 0);
	signal R3 : std_logic_vector (7 downto 0);
	signal R4 : std_logic_vector (7 downto 0);
	signal R5 : std_logic_vector (7 downto 0);
	signal R6 : std_logic_vector (7 downto 0);
	signal R7 : std_logic_vector (7 downto 0);

begin
	process(clk)
	begin
	case SEL_R(2 downto 0) is
		when "000" => Operando1 <= R0;
		when "001" => Operando1 <= R1;
		when "010" => Operando1 <= R2;
		when "011" => Operando1 <= R3;
		when "100" => Operando1 <= R4;
		when "101" => Operando1 <= R5;
		when "110" => Operando1 <= R6;
		when "111" => Operando1 <= R7;
		when others => null;
	end case;
		case SEL_R(5 downto 3) is
		when "000" => Operando2 <= R0;
		when "001" => Operando2 <= R1;
		when "010" => Operando2 <= R2;
		when "011" => Operando2 <= R3;
		when "100" => Operando2 <= R4;
		when "101" => Operando2 <= R5;
		when "110" => Operando2 <= R6;
		when "111" => Operando2 <= R7;
		when others => null;
	end case;
	if rising_edge(clk) then
				if ESCR_R(0)='1' then
					case SEL_R(2 downto 0) is
						when "000" => R0 <= Dados_R;
						when "001" => R1 <= Dados_R;
						when "010" => R2 <= Dados_R;
						when "011" => R3 <= Dados_R;
						when "100" => R4 <= Dados_R;
						when "101" => R5 <= Dados_R;
						when "110" => R6 <= Dados_R;
						when "111" => R7 <= Dados_R;
						when others => null;
					end case;
				end if;
	end if;

end process;

end Behavioral;

