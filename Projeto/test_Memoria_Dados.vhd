--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:43:57 03/05/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_Memoria_Dados.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mem_Dados
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
 
ENTITY test_Memoria_Dados IS
END test_Memoria_Dados;
 
ARCHITECTURE behavior OF test_Memoria_Dados IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mem_Dados
    PORT(
         clk : IN  std_logic;
         Constante : IN  std_logic_vector(7 downto 0);
         WR : IN  std_logic;
         Dados_M : OUT  std_logic_vector(7 downto 0);
         Operando1 : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal WR : std_logic := '0';
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Dados_M : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mem_Dados PORT MAP (
          clk => clk,
          Constante => Constante,
          WR => WR,
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
      -- hold reset state for 100 ns.
		WR <= '1'; Operando1 <= "11111111"; Constante <= "00000000";  wait for clk_period*10;
		WR <= '1'; Operando1 <= "00000000"; Constante <= "11111111";  wait for clk_period*10;
		WR <= '0'; Operando1 <= "11111111"; Constante <= "00000000";  wait for clk_period*10;
		WR <= '0'; Operando1 <= "00100010"; Constante <= "11111111";  wait for clk_period*10;		
      -- insert stimulus here 

      wait;
   end process;

END;
