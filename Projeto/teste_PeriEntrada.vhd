--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:07:56 02/29/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/teste_PeriEntrada.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Peri_Entrada
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
 
ENTITY teste_PeriEntrada IS
END teste_PeriEntrada;
 
ARCHITECTURE behavior OF teste_PeriEntrada IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Peri_Entrada
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         ESCR_P : IN  std_logic;
         Dados_IN : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal ESCR_P : std_logic := '0';

 	--Outputs
   signal Dados_IN : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Peri_Entrada PORT MAP (
          PIN => PIN,
          ESCR_P => ESCR_P,
          Dados_IN => Dados_IN
        );

   -- Clock process definitions
  
   -- Stimulus process
   stim_proc: process
   begin		
	--ESCREVE QUANDO ESTA O ESCR_P A 0
		PIN <= "11111111";
		wait for 100 ns;
		PIN <= "11111111";
		wait for 100 ns;
		PIN <= "01111111";
		wait for 100 ns;
		PIN <= "01111111";
		wait for 100 ns;
		PIN <= "11111111";
		wait for 100 ns;
		PIN <= "01111100";
		wait for 100 ns;
      -- hold reset state for 100 ns.
      wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
