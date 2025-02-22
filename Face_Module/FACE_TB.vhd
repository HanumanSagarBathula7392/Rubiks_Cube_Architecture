library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
use std.env.finish;

entity FACE_TB is
--  Port( );
end FACE_TB;

architecture TB of FACE_TB is
constant dw : integer:=2;
constant dow : integer:=2;
constant dcs: integer:=3;
constant dms:integer:=1;
signal A,B,C,D,E,F:std_logic_vector(dw downto 0);
signal SS11,SS12,SS13,SS21,SS22,SS23,SS31,SS32,SS33: std_logic_vector(dcs downto 0);
signal SM21,SM22,SM23,SM31,SM32,SM33:std_logic_vector( dms downto 0);
signal CU_O1,CU_O2,CU_O3,CU_O4,CU_O5,CU_O6,CU_O7,CU_O8,CU_O9: std_logic_vector(dow downto 0);
begin

FTB:entity work.face
 generic map(dw=>dw,ds=>dow,dcs=>dcs,dms=>dms)
 PORT MAP (A=>A,B=>B,C=>C,D=>D,E=>E,F=>F,ss11=>SS11,ss12=>SS12,ss13=>SS13,ss21=>SS21,ss22=>SS22,sS23=>SS23,ss31=>SS31,ss32=>SS32,ss33=>SS33,
           SM21=>SM21,SM22=>SM22,SM23=>SM23,SM31=>SM31,SM32=>SM32,SM33=>SM33,
           CU_11=>CU_O1,CU_12=>CU_O2,CU_13=>CU_O3,CU_21=>CU_O4,CU_22=>CU_O5,CU_23=>CU_O6,CU_31=>CU_O7,CU_32=>CU_O8,CU_33=>CU_O9);
stim: process--Stimulus process
BEGIN
   -- Inputs for the Face Module 
   A<="110";B<="010";
   C<="110";D<="010";   
   E<="110";F<="010";
   
   --CU Selection lines
   SS11<="0010";ss12<="0000";ss13<="0111";
   ss21<="1001";ss22<="1010";ss23<="1011";
   ss31<="1100";ss32<="1000";ss33<="0011";
   
   --Mux selection lines
   sm21<="00";SM22<="00";SM23<="00";
   SM31<="00";SM32<="00";SM33<="00";
   
    WAIT FOR 100NS;
    FINISH;
END PROCESS STIM;
end TB;