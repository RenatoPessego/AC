--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:33:38 03/01/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_MUXPC.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_PC
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
 
ENTITY test_MUXPC IS
END test_MUXPC;
 
ARCHITECTURE behavior OF test_MUXPC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_PC
    PORT(
         S_FLAG : IN  std_logic;
         Operando1 : IN  std_logic_vector(7 downto 0);
         SEL_PC : IN  std_logic_vector(2 downto 0);
         ESCR_PC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S_FLAG : std_logic := '0';
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_PC : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal ESCR_PC : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_PC PORT MAP (
          S_FLAG => S_FLAG,
          Operando1 => Operando1,
          SEL_PC => SEL_PC,
          ESCR_PC => ESCR_PC
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
	 S_FLAG <= '0';
    Operando1 <= "00000000";
    SEL_PC <= "000";
    wait for 100 ns;	
	 S_FLAG <= '0';
    Operando1 <= "00000000";
    SEL_PC <= "001";
    wait for 100 ns;
	 	 S_FLAG <= '0';
    Operando1 <= "00000000";
    SEL_PC <= "000";
    wait for 100 ns;	
	 	 S_FLAG <= '1';
    Operando1 <= "00000000";
    SEL_PC <= "010";
    wait for 100 ns;	
	S_FLAG <= '1';
    Operando1 <= "00000001";
    SEL_PC <= "011";
    wait for 100 ns;	
	 S_FLAG <= '1';
    Operando1 <= "00000000";
    SEL_PC <= "011";
    wait for 100 ns;	
	 S_FLAG <= '1';
    Operando1 <= "00000010";
    SEL_PC <= "011";
    wait for 100 ns;	
	 S_FLAG <= '1';
    Operando1 <= "10000010";
    SEL_PC <= "011";
    wait for 100 ns;



      -- insert stimulus here 

      wait;
   end process;

END;
