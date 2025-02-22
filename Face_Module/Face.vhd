----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.03.2023 21:27:41
-- Design Name: 
-- Module Name: Face - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity Face is
generic(dw: integer:=2;
        ds: integer:=2;
        dcs: integer:=3;
        dms:integer:=1);

Port (
       A,B,C,D,E,F:IN std_logic_vector(dw downto 0);
       M21,M23,M311,M312,M32,M331,M332:IN std_logic_vector(dw downto 0):="000";
       ss11,ss12,ss13,ss21,ss22,ss23,ss31,ss32,ss33:in std_logic_vector(dcs downto 0);
       SM21,SM22,SM23,SM31,SM32,SM33:in std_logic_vector(dms downto 0);
       CU_11,CU_12,CU_13,CU_21,CU_22,CU_23,CU_31,CU_32,CU_33:out std_logic_vector(dS downto 0));
end Face;

architecture structural of Face is
signal sig11,sig12,sig13,sig21,sig22,sig23,SIG31,SIG32,SIG33,SIGM21,SIGM22,SIGM23,SIGM31,SIGM32,SIGM33: std_logic_vector(ds downto 0);

begin
CU11: entity work.CU
  PORT MAP(
           A=>A,
           B=>B,
           S=>ss11,
           CU_OUT=>sig11
           );
CU12:entity work.CU
    PORT MAP(
           A=>C,
           B=>D,
           S=>Ss12,
           CU_OUT=>SIG12
           );
CU13:entity work.CU
PORT MAP(
           A=>E,
           B=>F,
           S=>Ss13,
           CU_OUT=>SIG13
           );
MUX21:entity work.MUX_4_1
PORT MAP(
           I0=>sig11,
           I1=>SIG22,
           I2=>SIG31,
           I3=>M21,
           s=>SM21,
           Y=>SIGM21);
CU21:entity work.CU
PORT MAP(
           A=>SIGM21,
           B=>SIGM21,
           s=>ss21,
           CU_OUT=>SIG21
           );
MUX22:entity work.MUX_4_1
PORT MAP(
           I0=>sig12,
           I1=>SIG21,
           I2=>SIG23,
           I3=>SIG32,
           s=>SM22,
           Y=>SIGM22);
CU22:entity work.CU
PORT MAP(
           A=>SIGM22,
           B=>SIGM22,
           s=>ss22,
           CU_OUT=>SIG22
           );
MUX23:entity work.MUX_4_1
PORT MAP(
           I0=>sig13,
           I1=>SIG22,
           I2=>SIG33,
           I3=>M23,
           s=>SM23,
           Y=>SIGM23);
CU23:entity work.CU
PORT MAP(
           A=>SIGM23,
           B=>SIGM23,
           s=>ss23,
           CU_OUT=>SIG23
           );
MUX31:entity work.MUX_4_1
PORT MAP(
           I0=>sig21,
           I1=>SIG32,
           I2=>M311,
           I3=>M312,
           s=>SM31,
           Y=>SIGM31);
CU31:entity work.CU
PORT MAP(
           A=>SIGM31,
           B=>SIGM31,
           s=>ss31,
           CU_OUT=>SIG31
           );
MUX32:entity work.MUX_4_1
PORT MAP(
           I0=>sig22,
           I1=>SIG31,
           I2=>SIG33,
           I3=>M32,
           s=>SM32,
           Y=>SIGM32);
CU32:entity work.CU
PORT MAP(
           A=>SIGM32,
           B=>SIGM32,
           s=>ss32,
           CU_OUT=>SIG32
           );
MUX33:entity work.MUX_4_1
PORT MAP(
           I0=>sig23,
           I1=>SIG32,
           I2=>M331,
           I3=>M332,
           s=>SM33,
           Y=>SIGM33);
CU33:entity work.CU
PORT MAP(
           A=>SIGM33,
           B=>SIGM33,
           s=>ss33,
           CU_OUT=>SIG33
           );
CU_11<=SIG11;
CU_12<=SIG12;
CU_13<=SIG13;
CU_21<=SIG21;
CU_22<=SIG22;
CU_23<=SIG23;
CU_31<=SIG31;
CU_32<=SIG32;
CU_33<=SIG33;
end structural;
