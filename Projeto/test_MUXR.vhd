--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:29:06 02/29/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_MUXR.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX_R
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
 
ENTITY test_MUXR IS
END test_MUXR;
 
ARCHITECTURE behavior OF test_MUXR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_R
    PORT(
         Constante : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         Dados_IN : IN  std_logic_vector(7 downto 0);
         Resultado : IN  std_logic_vector(7 downto 0);
         Dados_R : OUT  std_logic_vector(7 downto 0);
         SEL_Dados : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal Resultado : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_Dados : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Dados_R : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX_R PORT MAP (
          Constante => Constante,
          Dados_M => Dados_M,
          Dados_IN => Dados_IN,
          Resultado => Resultado,
          Dados_R => Dados_R,
          SEL_Dados => SEL_Dados
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
      
		Constante <= "11000000";
		Dados_M <= "10100000";
		Dados_IN <= "10010001";
		Resultado <= "10010000";
		SEL_Dados <= "00";
		wait for 100 ns;
		SEL_Dados <= "01";
		wait for 100 ns;
		SEL_Dados <= "10";
		wait for 100 ns;		
		SEL_Dados <= "11";
		wait for 100 ns;			


      -- insert stimulus here 

      wait;
   end process;

END;
