--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:35:03 02/29/2024
-- Design Name:   
-- Module Name:   C:/Users/Renato/Documents/Projeto1AC/Banco_Reg_teste.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Banco_Reg
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
 
ENTITY test_Banco_Reg IS
END test_Banco_Reg;
 
ARCHITECTURE behavior OF test_Banco_Reg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Banco_Reg
    PORT(
         ESCR_R : IN  std_logic_vector(1 downto 0);
         clk : IN  std_logic;
         SEL_R : IN  std_logic_vector(5 downto 0);
         Dados_R : IN  std_logic_vector(7 downto 0);
         Operando1 : OUT  std_logic_vector(7 downto 0);
         Operando2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ESCR_R : std_logic_vector(1 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal SEL_R : std_logic_vector(5 downto 0) := (others => '0');
   signal Dados_R : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Operando1 : std_logic_vector(7 downto 0);
	signal Operando2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Banco_Reg PORT MAP (
          ESCR_R => ESCR_R,
          clk => clk,
          SEL_R => SEL_R,
          Dados_R => Dados_R,
          Operando1 => Operando1,
          Operando2 => Operando2
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
		ESCR_R <= "01";
		SEL_R <= "000000";
		Dados_R <= "11110011";
		wait for 20 ns;
        ESCR_R <= "01";  
        SEL_R <= "XXX011"; 
        Dados_R <= "10101010";  
        wait for 10 ns;

        SEL_R <= "000000";
        wait for 10 ns;
		  SEL_R <= "XXX011";
        wait for 10 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
