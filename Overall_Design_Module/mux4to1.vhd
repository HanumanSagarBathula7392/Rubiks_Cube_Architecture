library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_4_1 is
    generic (dw :integer:=2);
    Port ( I0,I1,I2,I3 : in STD_LOGIC_VECTOR (dw downto 0);
           S : in STD_LOGIC_VECTOR (0 to 1);
           Y : out STD_LOGIC_VECTOR (dw downto 0));
end MUX_4_1;

architecture Structural of MUX_4_1 is

begin
MUX_Proc : process (I0,I1,I2,I3,S)
    begin
    case S is
    
        when"00" =>Y<=I0;
        when"01" =>Y<=I1;
        when"10" =>Y<=I2;
        when"11" =>Y<=I3;
        when others =>Y<=(others => 'Z');
        
    end case;
    end process;


end Structural;
