----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:40 03/05/2024 
-- Design Name: 
-- Module Name:    MotherBoard - Behavioral 
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


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MotherBoard is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end MotherBoard;

architecture Struct of MotherBoard is

Component Processador is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           WR : out  STD_LOGIC;
           SEL_R : in  STD_LOGIC_VECTOR (5 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
			  ConstanteCPU : out  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Mem_Dados is
    Port ( clk : in  STD_LOGIC;
           ConstanteCPU : in  STD_LOGIC_VECTOR (7 downto 0);
           WR : in  STD_LOGIC;
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0));
end Component;

Component Memoria_Instr is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           opcode : out  STD_LOGIC_VECTOR (4 downto 0);
           Constante : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : out  STD_LOGIC_VECTOR (5 downto 0));
end Component;

signal WR : STD_LOGIC;
signal SEL_R: STD_LOGIC_VECTOR (5 downto 0);
signal Endereco,Constante,Dados_M,Operando1: STD_LOGIC_VECTOR (7 downto 0);
signal opcode : STD_LOGIC_VECTOR(4 downto 0);
signal ConstanteCPU: STD_LOGIC_VECTOR (7 downto 0);

begin
	CPU : Processador port map(PIN,POUT,clk,reset,Endereco,opcode,WR,SEL_R,Constante,ConstanteCPU,Dados_M,Operando1);
	Memoria_Dados : Mem_Dados port map(clk,ConstanteCPU,WR,Dados_M,Operando1);
	Memoria_Instrucoes : Memoria_Instr port map(Endereco,opcode,Constante,SEL_R);

end Struct;

