--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:10:32 04/18/2016
-- Design Name:   
-- Module Name:   /home/yengomez/Documents/procesadorImmediatos/tb_memoriaInstrucciones.vhd
-- Project Name:  procesadorImmediatos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: memoriaInstrucciones
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
 
ENTITY tb_memoriaInstrucciones IS
END tb_memoriaInstrucciones;
 
ARCHITECTURE behavior OF tb_memoriaInstrucciones IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT memoriaInstrucciones
    PORT(
         direccion : IN  std_logic_vector(31 downto 0);
         instruccion : OUT  std_logic_vector(31 downto 0);
         reset : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal direccion : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal instruccion : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: memoriaInstrucciones PORT MAP (
          direccion => direccion,
          instruccion => instruccion,
          reset => reset
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
		reset <='1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		reset <='0';
		direccion <= x"00000001";

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
