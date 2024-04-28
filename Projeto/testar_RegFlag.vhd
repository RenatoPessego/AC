--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:37:46 02/29/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/testar_RegFlag.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Reg_Flags
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
 
ENTITY testar_RegFlag IS
END testar_RegFlag;
 
ARCHITECTURE behavior OF testar_RegFlag IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Reg_Flags
    PORT(
         clk : IN  std_logic;
         E_FLAG : IN  std_logic_vector(4 downto 0);
         ESCR_R : IN  std_logic_vector(1 downto 0);
         SEL_FLAG : IN  std_logic_vector(2 downto 0);
         S_FLAG : OUT  std_logic);
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal E_FLAG : std_logic_vector(4 downto 0) := (others => '0');
   signal ESCR_R : std_logic_vector(1 downto 0) := (others => '0');
   signal SEL_FLAG : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal S_FLAG : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Reg_Flags PORT MAP (
          clk => clk,
          E_FLAG => E_FLAG,
          ESCR_R => ESCR_R,
          SEL_FLAG => SEL_FLAG,
          S_FLAG => S_FLAG);

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
   E_FLAG <= "10110";
   ESCR_R <= "10";
   SEL_FLAG <= "000";

		
      wait for 100 ns;	
   SEL_FLAG <= "001";
	
      wait for 100 ns;	
   SEL_FLAG <= "010";

      wait for 100 ns;	
   SEL_FLAG <= "011";

      wait for 100 ns;	
   SEL_FLAG <= "100";
	
      wait for 100 ns;	
   SEL_FLAG <= "111";


      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
