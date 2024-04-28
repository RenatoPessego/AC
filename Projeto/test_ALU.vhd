--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:07:20 02/29/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_ALU.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY test_ALU IS
END test_ALU;
 
ARCHITECTURE behavior OF test_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Operando1 : IN  std_logic_vector(7 downto 0);
         Operando2 : IN  std_logic_vector(7 downto 0);
         SEL_ALU : IN  std_logic_vector(3 downto 0);
         Resultado : OUT  std_logic_vector(7 downto 0);
         E_FLAG : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Operando2 : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_ALU : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Resultado : std_logic_vector(7 downto 0);
   signal E_FLAG : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Operando1 => Operando1,
          Operando2 => Operando2,
          SEL_ALU => SEL_ALU,
          Resultado => Resultado,
          E_FLAG => E_FLAG
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Operando1 <= "10000000";
    Operando2 <= "01000000";
    SEL_ALU <= "0000";
      wait for 100 ns;	
		Operando1 <= "11000000";
    Operando2 <= "10000100";
    SEL_ALU <= "0010";
      wait for 100 ns;	
		Operando1 <= "10010010";
    Operando2 <= "10010000";
    SEL_ALU <= "0010";
      wait for 100 ns;	
		Operando1 <= "10000000";
    Operando2 <= "10000000";
    SEL_ALU <= "1000";
      wait for 100 ns;	
		Operando1 <= "10000000";
    Operando2 <= "01000000";
    SEL_ALU <= "1000";
      wait for 100 ns;



      -- insert stimulus here 

      wait;
   end process;

END;
