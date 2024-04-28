--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:31:01 03/05/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_ROM.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM_Descod
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
 
ENTITY test_ROM IS
END test_ROM;
 
ARCHITECTURE behavior OF test_ROM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM_Descod
    PORT(
         opcode : IN  std_logic_vector(4 downto 0);
			SEL_ALU : OUT  std_logic_vector(3 downto 0);
			ESCR_P : OUT  std_logic;
			SEL_Dados : OUT  std_logic_vector(1 downto 0);
			ESCR_R : OUT  std_logic_vector(1 downto 0);
         WR : OUT  std_logic;
         SEL_PC : OUT  std_logic_vector(2 downto 0);
         SEL_FLAG : OUT  std_logic_vector(2 downto 0)
         
        );
    END COMPONENT;
    

   --Inputs
   signal opcode : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
	signal SEL_ALU : std_logic_vector(3 downto 0);
	signal ESCR_P : std_logic;
	signal SEL_Dados : std_logic_vector(1 downto 0);
	signal ESCR_R : std_logic_vector(1 downto 0);
   signal WR : std_logic;
   signal SEL_PC : std_logic_vector(2 downto 0);
   signal SEL_FLAG : std_logic_vector(2 downto 0);
   
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM_Descod PORT MAP (
          opcode => opcode,
			 SEL_ALU => SEL_ALU,
			 ESCR_P => ESCR_P,
			 SEL_Dados => SEL_Dados,
			 ESCR_R => ESCR_R,
          WR => WR,
          SEL_PC => SEL_PC,
          SEL_FLAG => SEL_FLAG
          
        );

   -- Clock process definitions
   

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		opcode <= "00000";
      wait for 100 ns;	
		opcode <= "00001";
      wait for 100 ns;	
		opcode <= "00010";
      wait for 100 ns;	
		opcode <= "01100";
      wait for 100 ns;	
		opcode <= "10011";
      wait for 100 ns;	
		

      -- insert stimulus here 

      wait;
   end process;

END;
