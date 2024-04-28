--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:20:01 02/29/2024
-- Design Name:   
-- Module Name:   C:/Users/paulo/Desktop/AC/XLINX/Projeto1AC/test_PeriSaida.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Peri_Saida
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
 
ENTITY test_PeriSaida IS
END test_PeriSaida;
 
ARCHITECTURE behavior OF test_PeriSaida IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Peri_Saida
    PORT(
         clk : IN  std_logic;
         ESCR_P : IN  std_logic;
         Operando1 : IN  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal ESCR_P : std_logic := '0';
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Peri_Saida PORT MAP (
          clk => clk,
          ESCR_P => ESCR_P,
          Operando1 => Operando1,
          POUT => POUT
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
	--passar valores quando escr_p esta a 1 para o POUT do respetivo Operando1
			ESCR_P <= '0';
         Operando1 <= "10000000";
			wait for clk_period*20;
			ESCR_P <= '1';
         Operando1 <= "00001000";
			wait for clk_period*20;
			ESCR_P <= '1';
         Operando1 <= "10000000";
			wait for 100 ns;
      -- hold reset state for 100 ns.
      

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
