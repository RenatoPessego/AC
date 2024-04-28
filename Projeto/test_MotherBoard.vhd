--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:00:35 03/05/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_MotherBoard.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MotherBoard
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
 
ENTITY test_MotherBoard IS
END test_MotherBoard;
 
ARCHITECTURE behavior OF test_MotherBoard IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MotherBoard
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MotherBoard PORT MAP (
          PIN => PIN,
          POUT => POUT,
          reset => reset,
          clk => clk
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
		reset <= '1'; wait for clk_period*2;
		reset <= '0'; PIN <= "00000000"; wait for clk_period*20; --0 (-1)
		reset <= '1'; wait for clk_period*2;
		PIN <= "00001111";wait for clk_period*2; reset <='0'; wait for clk_period*55; --15 (120)
		reset <= '1'; wait for clk_period*2;
		PIN <= "00100000";wait for clk_period*2; reset <='0'; wait for clk_period*55; --32 (17)
		reset <= '1'; wait for clk_period*2;
		PIN <= "00010010";wait for clk_period*2; reset <='0'; wait for clk_period*55; --18 (Overflow)
		reset <= '1'; wait for clk_period*2;
		PIN <= "11100000";wait for clk_period*2; reset <='0'; wait for clk_period*55; -- -32 (0)
		reset <= '1'; wait for clk_period*2;
		

   end process;

END;
