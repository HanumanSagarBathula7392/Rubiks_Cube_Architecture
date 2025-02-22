library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CU is
generic(dw: integer:=2;
        ds: integer:=2;
        dos: integer:=3);
    Port ( A : in std_logic_vector(dw downto 0);
           B : in std_logic_vector(dw downto 0);
           S : in std_logic_vector(dos downto 0);
           CU_Out : out std_logic_vector(ds downto 0);
           Carry_Out: out std_logic);
end CU;

architecture str of CU is

signal CU_Res : std_logic_vector (ds downto 0);
signal tmp: std_logic_vector (dos downto 0);

begin
ALU_Proc: process(A,B,S)
begin
case S is
    when "0000" =>CU_Res<=(A)+(B); --Addition
    when "0001"=>CU_Res<=(A)-(B);--Subtraction
    when "0010"=>CU_Res<=std_logic_vector(to_unsigned(to_integer(unsigned(A)) * to_integer(unsigned(B)),3));--Multiplication
    when "0011"=>CU_Res<=to_stdlogicvector(to_bitvector(A) sll to_integer(unsigned(B)));--Logical Shift Left
    when "0100"=>CU_Res<=to_stdlogicvector(to_bitvector(A) srl to_integer(unsigned(B)));--Logical Shift Right
    when "0101"=>CU_Res<=to_stdlogicvector(to_bitvector(A) sla to_integer(signed(B)));--Arithmetic Shift Left
    when "0110"=>CU_Res<=to_stdlogicvector(to_bitvector(A) sra to_integer(signed(B)));--Arithmetic Shift Right
    when "0111"=>CU_Res<=to_stdlogicvector(to_bitvector(A) rol to_integer(unsigned(B)));--Rotate Shift Left
    when "1000"=>CU_Res<=to_stdlogicvector(to_bitvector(A) ror to_integer(unsigned(B)));--Rotate Shift Right
    when "1001"=>CU_Res<=(A nand B);--NAND
    when "1010"=>CU_Res<=(A nor B);--NOR
    when "1011"=>CU_Res<=(A xor B);--XOR
    when "1100"=>CU_Res<=(A xnor B);--XNOR
    when "1101"=>CU_Res<=A;--PASS Data A
    when "1110"=>CU_Res<=B;--PASS Data B
    when "1111"=>CU_Res<="000" ; --No operation
   
    when others =>CU_Res<=(others=>'0');

end case;
end process;
 CU_Out <= CU_Res;
 tmp <= ('0' & A) + ('0' & B);
 Carry_Out <= tmp(3);
end str;