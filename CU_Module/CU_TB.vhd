library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.env.finish;

entity CU_TB is
--  Port ( );
end CU_TB;

architecture Behavioral of CU_TB is
constant dw: integer := 2; 
constant ds: integer := 2;
constant dos: integer := 3;
signal A, B,CU_Out :STD_LOGIC_VECTOR(dw downto 0);
signal Carry_Out: std_logic;
signal S:STD_LOGIC_VECTOR(dos downto 0) ;


begin

CU_INST: entity work.CU (str)
Generic map(dw => dw,dos=>dos,ds=>ds)
port map(
A => A, B => B, CU_Out=> CU_Out, S => S, Carry_Out => Carry_Out);
stim: process
begin
A <= "010"; 
B <= "001"; 
S<="0000";
wait for 25ns;
S<="0001"; 
wait for 25ns;
S<="0010"; 
wait for 25ns;
S<="0011";
wait for 25ns;
S<="0100"; 
wait for 25ns;
S<="0101"; 
wait for 25ns;
S<="0110";
wait for 25ns;
S<="0111";
wait for 25ns;
S<="1000";
wait for 25ns;
S<="1001";
wait for 25ns;
S<="1010"; 
wait for 25ns;
S<="1011"; 
wait for 25ns;
S<="1100";
wait for 25ns;
S<="1101";
wait for 25ns;
S<="1110"; 
wait for 25ns;
S<="1111"; 
wait for 25ns;
finish;
end process;
end Behavioral;


