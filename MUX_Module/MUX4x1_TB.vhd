library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.env.finish;

entity MUX4x1_TB is
--  Port ( );
end MUX4x1_TB;

architecture Behavioral of MUX4x1_TB is

constant dw: integer := 2;
signal I0,I1,I2,I3, Y: std_logic_vector(dw downto 0);
signal S : std_logic_vector(0 to 1);
begin
mux: entity work.mux_4_1(Structural)
    Generic map(dw => dw)
    Port map (I0 => I0,I1 => I1,I2 => I2,I3 => I3,
              S => S,  Y => Y );  
    
stim: process
        begin
            I0 <= "000"; I1 <= "001"; I2 <= "010"; I3 <= "011";
            S <= "00"; wait for 5 ns;
            S <= "01"; wait for 5 ns;
            S <= "10"; wait for 5 ns;
            S <= "11"; wait for 5 ns;
        finish;
    end process stim;    

end Behavioral;

