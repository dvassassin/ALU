----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2017 08:24:14 PM
-- Design Name: 
-- Module Name: ALU16_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU16_TB is
--  Port ( );
end ALU16_TB;

architecture Behavioral of ALU16_TB is

component ALU16 is 
    Port (clk : in STD_LOGIC;
           opcode : in STD_LOGIC_VECTOR (3 downto 0);
           shift_rotate_operation : in STD_LOGIC_VECTOR (3 downto 0);
           oprand_a : in STD_LOGIC_VECTOR (15 downto 0);
           oprand_b : in STD_LOGIC_VECTOR (15 downto 0);
           result : out STD_LOGIC_VECTOR (15 downto 0);
           result_high : out std_logic_vector(15 downto 0); -- high 16 bits of multiplication
           zero,carry : out STD_LOGIC );
end component ALU16;

---------- inputs ----------
signal clk : std_logic := '0';
signal opcode : STD_LOGIC_VECTOR (3 downto 0) := ( others => '0');
signal shift_rotate_operation : STD_LOGIC_VECTOR (3 downto 0) := ( others => '0');
signal oprand_a : STD_LOGIC_VECTOR (15 downto 0) := ( others => '0');
signal oprand_b : STD_LOGIC_VECTOR (15 downto 0) := ( others => '0');

---------- outputs ----------
signal result : STD_LOGIC_VECTOR (15 downto 0);
signal result_high : STD_LOGIC_VECTOR (15 downto 0);
signal zero, carry : std_logic;

---------- clock period ----------
constant clk_period : time := 10 ns;

begin

-- clock_process
    clock_process : process
    begin 
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
    
-- port map
    uut: ALU16 port map (
            clk => clk,
            opcode => opcode,
            shift_rotate_operation => shift_rotate_operation,
            oprand_a => oprand_a,
            oprand_b => oprand_b,
            result => result,
            result_high => result_high,
            zero => zero,
            carry => carry
            );
    
    -- stimulate process
    stim_proc : process
    begin
        opcode <= "0001";
        shift_rotate_operation <= "0000";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
        
        wait for clk_period;
        
        opcode <= "0010";
        shift_rotate_operation <= "0000";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "0011";
        shift_rotate_operation <= "0000";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        opcode <= "0100";
        shift_rotate_operation <= "0011";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "0101";
        shift_rotate_operation <= "0011";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "0110";
        shift_rotate_operation <= "0011";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "0111";
        shift_rotate_operation <= "0011";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "1000";
        shift_rotate_operation <= "0011";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "1001";
        shift_rotate_operation <= "0011";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "1010";
        shift_rotate_operation <= "0011";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "1011";
        shift_rotate_operation <= "0000";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "1011";
        shift_rotate_operation <= "0000";
        oprand_a <= "1111111111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "1100";
        shift_rotate_operation <= "0000";
        oprand_a <= "0011001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "1100";
        shift_rotate_operation <= "0000";
        oprand_a <= "0000001111001101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "1100";
        shift_rotate_operation <= "0000";
        oprand_a <= "0001100111101101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
        opcode <= "1101";
        shift_rotate_operation <= "0000";
        oprand_a <= "1101100111101101";
        oprand_b <= "0001100111101101";
                
        wait for clk_period;
        
      --  wait;
        
        end process;

end Behavioral;
