--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:20:36 03/01/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_PC.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
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
 
ENTITY test_PC IS
END test_PC;
 
ARCHITECTURE behavior OF test_PC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ESCR_PC : IN  std_logic;
         Constante : IN  std_logic_vector(7 downto 0);
         Endereco : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal ESCR_PC : std_logic := '0';
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Endereco : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          clk => clk,
          reset => reset,
          ESCR_PC => ESCR_PC,
          Constante => Constante,
          Endereco => Endereco
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
         reset <= '0';
         ESCR_PC <= '0';
         Constante <= "00000000";
      wait for 100 ns;	
			reset <= '1';
         ESCR_PC <= '0';
         Constante <= "00000000";
      wait for 100 ns;	
		reset <= '0';
         ESCR_PC <= '0';
         Constante <= "01000000";
      wait for 100 ns;	
		reset <= '0';
         ESCR_PC <= '1';
         Constante <= "01000000";
      wait for 100 ns;	
		reset <= '0';
         ESCR_PC <= '0';
         Constante <= "11000000";
      wait for 100 ns;	
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
