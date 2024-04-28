--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:51:40 03/05/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_Memoria_Instr.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memoria_Instr
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
 
ENTITY test_Memoria_Instr IS
END test_Memoria_Instr;
 
ARCHITECTURE behavior OF test_Memoria_Instr IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memoria_Instr
    PORT(
         Endereco : IN  std_logic_vector(7 downto 0);
         opcode : OUT  std_logic_vector(4 downto 0);
         Constante : OUT  std_logic_vector(7 downto 0);
         SEL_R : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Endereco : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal opcode : std_logic_vector(4 downto 0);
   signal Constante : std_logic_vector(7 downto 0);
   signal SEL_R : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_Instr PORT MAP (
          Endereco => Endereco,
          opcode => opcode,
          Constante => Constante,
          SEL_R => SEL_R
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      
		Endereco <= "00000000"; wait for 100 ns;
		Endereco <= "00000001"; wait for 100 ns;
		Endereco <= "00000010"; wait for 100 ns;
		Endereco <= "00000011"; wait for 100 ns;
		Endereco <= "00000100"; wait for 100 ns;
		Endereco <= "00000101"; wait for 100 ns;
		Endereco <= "00000110"; wait for 100 ns;
		Endereco <= "00000111"; wait for 100 ns;
		Endereco <= "00001000"; wait for 100 ns;
		Endereco <= "00001001"; wait for 100 ns;
		Endereco <= "00001111"; wait for 100 ns;
		

      -- insert stimulus here 

      wait;
   end process;

END;
