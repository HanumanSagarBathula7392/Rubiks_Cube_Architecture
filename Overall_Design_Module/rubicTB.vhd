----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2023 07:27:34
-- Design Name: 
-- Module Name: rubicTB - structural
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
use ieee.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all;
use std.env.finish;

entity rubicTB is
--  Port ( );
end rubicTB;

architecture structural of rubicTB is
constant dw: integer:=2;
constant ds: integer:=2;
constant dcs: integer:=3;
constant dms:integer:=1;

signal A,B,C,D,E,F:std_logic_vector(dw downto 0);
signal ss111,ss112,ss113,ss121,ss122,ss123,ss131,ss132,ss133:std_logic_vector(dcs downto 0);
signal ss211,ss212,ss213,ss221,ss222,ss223,ss231,ss232,ss233:std_logic_vector(dcs downto 0);
signal ss311,ss312,ss313,ss321,ss322,ss323,ss331,ss332,ss333:std_logic_vector(dcs downto 0);
signal ss411,ss412,ss413,ss421,ss422,ss423,ss431,ss432,ss433:std_logic_vector(dcs downto 0);
signal ss511,ss512,ss513,ss521,ss522,ss523,ss531,ss532,ss533:std_logic_vector(dcs downto 0);
signal ss611,ss612,ss613,ss621,ss622,ss623,ss631,ss632,ss633:std_logic_vector(dcs downto 0);
signal SM121,SM122,SM123,SM131,SM132,SM133:std_logic_vector(dms downto 0);
signal SM221,SM222,SM223,SM231,SM232,SM233:std_logic_vector(dms downto 0);
signal SM321,SM322,SM323,SM331,SM332,SM333:std_logic_vector(dms downto 0);
signal SM421,SM422,SM423,SM431,SM432,SM433:std_logic_vector(dms downto 0);
signal SM521,SM522,SM523,SM531,SM532,SM533:std_logic_vector(dms downto 0);
signal SM621,SM622,SM623,SM631,SM632,SM633:std_logic_vector(dms downto 0);
signal CU_631,CU_632,CU_633:std_logic_vector(dS downto 0);
begin

RTB: entity work.Rubic
generic map(dw=>dw,ds=>ds,dcs=>dcs,dms=>dms)
 port map(
       A=>A,B=>B,C=>C,D=>D,E=>E,F=>F,
       ss111=>SS111,ss112=>SS112,ss113=>SS113,ss121=>SS121,ss122=>SS122,ss123=>SS123,ss131=>SS131,ss132=>SS132,ss133=>SS133,
       ss211=>SS211,ss212=>SS212,ss213=>SS213,ss221=>SS221,ss222=>SS222,ss223=>SS223,ss231=>SS231,ss232=>SS232,ss233=>SS233,
       ss311=>SS311,ss312=>SS312,ss313=>SS313,ss321=>SS321,ss322=>SS322,ss323=>SS323,ss331=>SS331,ss332=>SS332,ss333=>SS333,
       ss411=>SS411,ss412=>SS412,ss413=>SS413,ss421=>SS421,ss422=>SS422,ss423=>SS423,ss431=>SS431,ss432=>SS432,ss433=>SS433,
       ss511=>SS511,ss512=>SS512,ss513=>SS513,ss521=>SS521,ss522=>SS522,ss523=>SS523,ss531=>SS531,ss532=>SS532,ss533=>SS533,
       ss611=>SS611,ss612=>SS612,ss613=>SS613,ss621=>SS621,ss622=>SS622,ss623=>SS623,ss631=>SS631,ss632=>SS632,ss633=>SS633,
       SM121=>SM121,SM122=>SM122,SM123=>SM123,SM131=>SM131,SM132=>SM132,SM133=>SM133,
       SM221=>SM221,SM222=>SM222,SM223=>SM223,SM231=>SM231,SM232=>SM232,SM233=>SM233,
       SM321=>SM321,SM322=>SM322,SM323=>SM323,SM331=>SM331,SM332=>SM332,SM333=>SM333,
       SM421=>SM421,SM422=>SM422,SM423=>SM423,SM431=>SM431,SM432=>SM432,SM433=>SM433,
       SM521=>SM521,SM522=>SM522,SM523=>SM523,SM531=>SM531,SM532=>SM532,SM533=>SM533,
       SM621=>SM621,SM622=>SM622,SM623=>SM623,SM631=>SM631,SM632=>SM632,SM633=>SM633,
       CU_631=>CU_631,CU_632=>CU_632,CU_633=>CU_633);

stim: process

BEGIN

       
A<="111";B<="101";C<="111";D<="101";E<="111";F<="101";
ss111<="0010";ss112<="0000";ss113<="0111";ss121<="0001";ss122<="1001";ss123<="1010";ss131<="1100";ss132<="1011";ss133<="1100";
ss211<="0010";ss212<="0000";ss213<="0111";ss221<="1100";ss222<="1001";ss223<="0101";ss231<="0110";ss232<="0100";ss233<="0011";
ss311<="0010";ss312<="0000";ss313<="0111";ss321<="1101";ss322<="1010";ss323<="1001";ss331<="1111";ss332<="1110";ss333<="1011";       
ss411<="0010";ss412<="0000";ss413<="0111";ss421<="0011";ss422<="1001";ss423<="0101";ss431<="0110";ss432<="0111";ss433<="1000";
ss511<="0010";ss512<="0000";ss513<="0111";ss521<="1010";ss522<="1100";ss523<="0000";ss531<="1010";ss532<="1101";ss533<="1001";
ss611<="0010";ss612<="0000";ss613<="0111";ss621<="1100";ss622<="1010";ss623<="1001";ss631<="1100";ss632<="1000";ss633<="0011";
SM121<="00";SM122<="00";SM123<="00";SM131<="00";SM132<="00";SM133<="00";
SM221<="00";SM222<="00";SM223<="00";SM231<="00";SM232<="00";SM233<="00";
SM321<="00";SM322<="00";SM323<="00";SM331<="00";SM332<="00";SM333<="00";
SM421<="00";SM422<="00";SM423<="00";SM431<="00";SM432<="00";SM433<="00";
SM521<="00";SM522<="00";SM523<="00";SM531<="00";SM532<="00";SM533<="00";
SM621<="00";SM622<="00";SM623<="00";SM631<="00";SM632<="00";SM633<="00";
       WAIT for 100ns;
       FINISH;
END PROCESS stim;
end structural;
