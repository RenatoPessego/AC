--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:17:17 03/05/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_CPU.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Processador
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_CPU IS
END test_CPU;
 
ARCHITECTURE behavior OF test_CPU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processador
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         Endereco : OUT  std_logic_vector(7 downto 0);
         opcode : IN  std_logic_vector(4 downto 0);
         WR : OUT  std_logic;
         SEL_R : IN  std_logic_vector(5 downto 0);
         Constante : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         Operando1 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal opcode : std_logic_vector(4 downto 0) := (others => '0');
   signal SEL_R : std_logic_vector(5 downto 0) := (others => '0');
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);
   signal Endereco : std_logic_vector(7 downto 0);
   signal WR : std_logic;
   signal Operando1 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processador PORT MAP (
          PIN => PIN,
          POUT => POUT,
          clk => clk,
          reset => reset,
          Endereco => Endereco,
          opcode => opcode,
          WR => WR,
          SEL_R => SEL_R,
          Constante => Constante,
          Dados_M => Dados_M,
          Operando1 => Operando1
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
     
    wait;
   end process;

END;
