----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:48:45 03/05/2024 
-- Design Name: 
-- Module Name:    Processador - Struct 
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

entity Processador is
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
end Processador;

architecture Struct of Processador is

	Component Peri_Entrada is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0));
	end Component;
	
	Component Peri_Saida is
    Port ( clk : in  STD_LOGIC;
           ESCR_P : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
	end Component;
	
	Component ALU is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (3 downto 0);
           Resultado : out  STD_LOGIC_VECTOR (7 downto 0);
			  E_FLAG : out STD_LOGIC_VECTOR (4 downto 0));  
	end Component;
	
	Component Reg_Flags is
    Port ( clk : in  STD_LOGIC;
           E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0);
           S_FLAG  : out  STD_LOGIC);
	end Component;
	
	Component Porta_NOR is
	Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           saida_nor : out  STD_LOGIC);
	end Component;
	
	Component Mux_PC is
    Port ( S_FLAG : in  STD_LOGIC;
           Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC;
			  zero : in  STD_LOGIC;
           um : in  STD_LOGIC;
			  saida_nor: in STD_LOGIC);
	end Component;
	
	Component Banco_Reg is
    Port ( ESCR_R : in  STD_LOGIC_VECTOR (1 downto 0);
           clk : in  STD_LOGIC;
           SEL_R : in  STD_LOGIC_VECTOR (5 downto 0);
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0);
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
	end Component;
	
	Component MUX_R is
    Port ( Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL_Dados : in  STD_LOGIC_VECTOR (1 downto 0));
	end Component;
	
	Component PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ESCR_PC : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0));
	end Component;
	
	Component ROM_Descod is
	Port ( opcode : in  STD_LOGIC_VECTOR (4 downto 0);
           WR : out  STD_LOGIC;
           ESCR_P : out  STD_LOGIC;
           SEL_Dados : out  STD_LOGIC_VECTOR (1 downto 0);
           ESCR_R : out  STD_LOGIC_VECTOR (1 downto 0);
           SEL_ALU : out  STD_LOGIC_VECTOR (3 downto 0);
           SEL_FLAG : out  STD_LOGIC_VECTOR (2 downto 0);
           SEL_PC : out  STD_LOGIC_VECTOR (2 downto 0));
	end Component;
	
	signal ESCR_P,S_FLAG,ESCR_PC,saida_nor : STD_LOGIC;
	signal Dados_IN,Resultado : STD_LOGIC_VECTOR (7 downto 0);
	signal SOperando1,Operando2,Dados_R : STD_LOGIC_VECTOR (7 downto 0);
	signal SEL_ALU : STD_LOGIC_VECTOR (3 downto 0);
	signal ESCR_R,SEL_Dados : STD_LOGIC_VECTOR (1 downto 0);
	signal E_FLAG : STD_LOGIC_VECTOR (4 downto 0);
	signal SEL_FLAG,SEL_PC: STD_LOGIC_VECTOR (2 downto 0);
	
begin
	ConstanteCPU <= Constante;
	PerifericoEntrada: Peri_Entrada port map (PIN, ESCR_P, Dados_IN);
	PerifericoSaida: Peri_Saida port map (clk, ESCR_P, SOperando1,POUT);
	ALU_op: ALU port map (SOperando1, Operando2, SEL_ALU,Resultado,E_FLAG);
	Registo_Flags: Reg_Flags port map (clk, E_FLAG, ESCR_R,SEL_FLAG,S_FLAG);
	PortaNor: Porta_NOR port map (SOperando1,saida_nor);
	MUXPC: Mux_PC port map (S_FLAG, SOperando1, SEL_PC,ESCR_PC,'0','1',saida_nor);
	Banco_Registos: Banco_Reg port map (ESCR_R, clk, SEL_R,Dados_R,SOperando1,Operando2);
	MUXR: MUX_R port map (Constante, Dados_M, Dados_IN,Resultado,Dados_R,SEL_Dados);
	ProgCounter: PC port map (clk, reset, ESCR_PC,Constante,Endereco);
	ROMDescodificacao: ROM_Descod port map (opcode, WR, ESCR_P,SEL_Dados,ESCR_R,SEL_ALU,SEL_FLAG,SEL_PC);
	
	Operando1 <= SOperando1;
	

end Struct;

