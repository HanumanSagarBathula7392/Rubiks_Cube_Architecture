----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2023 00:39:57
-- Design Name: 
-- Module Name: Rubic - Str
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Rubic is
generic(dw: integer:=2;
        ds: integer:=2;
        dcs: integer:=3;
        dms:integer:=1);
Port (
       A,B,C,D,E,F:IN std_logic_vector(dw downto 0);
       ss111,ss112,ss113,ss121,ss122,ss123,ss131,ss132,ss133:in std_logic_vector(dcs downto 0);
       ss211,ss212,ss213,ss221,ss222,ss223,ss231,ss232,ss233:in std_logic_vector(dcs downto 0);
       ss311,ss312,ss313,ss321,ss322,ss323,ss331,ss332,ss333:in std_logic_vector(dcs downto 0);
       ss411,ss412,ss413,ss421,ss422,ss423,ss431,ss432,ss433:in std_logic_vector(dcs downto 0);
       ss511,ss512,ss513,ss521,ss522,ss523,ss531,ss532,ss533:in std_logic_vector(dcs downto 0);
       ss611,ss612,ss613,ss621,ss622,ss623,ss631,ss632,ss633:in std_logic_vector(dcs downto 0);
       SM121,SM122,SM123,SM131,SM132,SM133:in std_logic_vector(dms downto 0);
       SM221,SM222,SM223,SM231,SM232,SM233:in std_logic_vector(dms downto 0);
       SM321,SM322,SM323,SM331,SM332,SM333:in std_logic_vector(dms downto 0);
       SM421,SM422,SM423,SM431,SM432,SM433:in std_logic_vector(dms downto 0);
       SM521,SM522,SM523,SM531,SM532,SM533:in std_logic_vector(dms downto 0);
       SM621,SM622,SM623,SM631,SM632,SM633:in std_logic_vector(dms downto 0);
       --CU_111,CU_112,CU_113,CU_121,CU_122,CU_123,CU_131,CU_132,CU_133:out std_logic_vector(dS downto 0);
       --CU_211,CU_212,CU_213,CU_221,CU_222,CU_223,CU_231,CU_232,CU_233:out std_logic_vector(dS downto 0);
       --CU_311,CU_312,CU_313,CU_321,CU_322,CU_323,CU_331,CU_332,CU_333:out std_logic_vector(dS downto 0);
       --CU_411,CU_412,CU_413,CU_421,CU_422,CU_423,CU_431,CU_432,CU_433:out std_logic_vector(dS downto 0);
       --CU_511,CU_512,CU_513,CU_521,CU_522,CU_523,CU_531,CU_532,CU_533:out std_logic_vector(dS downto 0);
       --CU_611,CU_612,CU_613,CU_621,CU_622,CU_623,CU_631,CU_632,CU_633:out std_logic_vector(dS downto 0)
       CU_631,CU_632,CU_633:out std_logic_vector(dS downto 0));
end Rubic;

architecture Str of Rubic is

SIGNAL sig111,sig112,sig113,sig121,sig122,sig123,SIG131,SIG132,SIG133,SIGM121,SIGM122,SIGM123,SIGM131,SIGM132,SIGM133: std_logic_vector(ds downto 0); 
SIGNAL sig211,sig212,sig213,sig221,sig222,sig223,SIG231,SIG232,SIG233,SIGM221,SIGM222,SIGM223,SIGM231,SIGM232,SIGM233: std_logic_vector(ds downto 0); 
SIGNAL sig311,sig312,sig313,sig321,sig322,sig323,SIG331,SIG332,SIG333,SIGM321,SIGM322,SIGM323,SIGM331,SIGM332,SIGM333: std_logic_vector(ds downto 0); 
SIGNAL sig411,sig412,sig413,sig421,sig422,sig423,SIG431,SIG432,SIG433,SIGM421,SIGM422,SIGM423,SIGM431,SIGM432,SIGM433: std_logic_vector(ds downto 0); 
SIGNAL sig511,sig512,sig513,sig521,sig522,sig523,SIG531,SIG532,SIG533,SIGM521,SIGM522,SIGM523,SIGM531,SIGM532,SIGM533: std_logic_vector(ds downto 0); 
SIGNAL sig611,sig612,sig613,sig621,sig622,sig623,SIG631,SIG632,SIG633,SIGM621,SIGM622,SIGM623,SIGM631,SIGM632,SIGM633: std_logic_vector(ds downto 0); 

begin

Face1: entity work.face
Port map(                                                                                                   
       A=>A,B=>B,C=>C,D=>D,E=>E,F=>F,
       M21=>SIG312,M23=>SIG412,M311=>SIG211,M312=>SIG313,M32=>SIG212,M331=>SIG213,M332=>SIG411,
       ss11=>ss111,ss12=>ss112,ss13=>ss113,
       ss21=>ss121,ss22=>ss122,ss23=>ss123,
       ss31=>ss131,ss32=>ss132,ss33=>ss133,
       SM21=>SM121,SM22=>SM122,SM23=>SM123,
       SM31=>SM131,SM32=>SM132,SM33=>SM133,
       CU_11=>sig111,CU_12=>sig112,CU_13=>sig113,
       CU_21=>sig121,CU_22=>sig122,CU_23=>sig123,
       CU_31=>sig131,CU_32=>sig132,CU_33=>sig133);

Face2: entity work.face
Port map(                                                                                                   
       A=>sig131,B=>sig131,C=>sig132,D=>sig132,E=>sig133,F=>sig133,
       M21=>SIG323,M23=>SIG421,M311=>SIG333,M312=>SIG633,M32=>SIG632,M331=>SIG431,M332=>SIG631,
       ss11=>ss211,ss12=>ss212,ss13=>ss213,
       ss21=>ss221,ss22=>ss222,ss23=>ss223,
       ss31=>ss231,ss32=>ss232,ss33=>ss233,
       SM21=>SM221,SM22=>SM222,SM23=>SM223,
       SM31=>SM231,SM32=>SM232,SM33=>SM233,
       CU_11=>sig211,CU_12=>sig212,CU_13=>sig213,
       CU_21=>sig221,CU_22=>sig222,CU_23=>sig223,
       CU_31=>sig231,CU_32=>sig232,CU_33=>sig233);
Face3: entity work.face
Port map(                                                                                                   
       A=>sig111,B=>sig111,C=>sig121,D=>sig121,E=>sig131,F=>sig131,
       M21=>SIG523,M23=>SIG221,M311=>SIG533,M312=>SIG613,M32=>SIG623,M331=>SIG231,M332=>SIG633,
       ss11=>ss311,ss12=>ss312,ss13=>ss313,
       ss21=>ss321,ss22=>ss322,ss23=>ss323,
       ss31=>ss331,ss32=>ss332,ss33=>ss333,
       SM21=>SM321,SM22=>SM322,SM23=>SM323,
       SM31=>SM331,SM32=>SM332,SM33=>SM333,
       CU_11=>sig311,CU_12=>sig312,CU_13=>sig313,
       CU_21=>sig321,CU_22=>sig322,CU_23=>sig323,
       CU_31=>sig331,CU_32=>sig332,CU_33=>sig333);
Face4: entity work.face
Port map(                                                                                                   
       A=>sig133,B=>sig133,C=>sig123,D=>sig123,E=>sig113,F=>sig113,
       M21=>SIG223,M23=>SIG521,M311=>SIG233,M312=>SIG631,M32=>SIG621,M331=>SIG531,M332=>SIG611,
       ss11=>ss411,ss12=>ss412,ss13=>ss413,
       ss21=>ss421,ss22=>ss422,ss23=>ss423,
       ss31=>ss431,ss32=>ss432,ss33=>ss433,
       SM21=>SM421,SM22=>SM422,SM23=>SM423,
       SM31=>SM431,SM32=>SM432,SM33=>SM433,
       CU_11=>sig411,CU_12=>sig412,CU_13=>sig413,
       CU_21=>sig421,CU_22=>sig422,CU_23=>sig423,
       CU_31=>sig431,CU_32=>sig432,CU_33=>sig433);
Face5: entity work.face
Port map(                                                                                                   
        A=>sig113,B=>sig113,C=>sig112,D=>sig112,E=>sig111,F=>sig111,
       M21=>SIG423,M23=>SIG321,M311=>SIG433,M312=>SIG611,M32=>SIG612,M331=>SIG331,M332=>SIG613,
       ss11=>ss511,ss12=>ss512,ss13=>ss513,
       ss21=>ss521,ss22=>ss522,ss23=>ss523,
       ss31=>ss531,ss32=>ss532,ss33=>ss533,
       SM21=>SM521,SM22=>SM522,SM23=>SM523,
       SM31=>SM531,SM32=>SM532,SM33=>SM533,
       CU_11=>sig511,CU_12=>sig512,CU_13=>sig513,
       CU_21=>sig521,CU_22=>sig522,CU_23=>sig523,
       CU_31=>sig531,CU_32=>sig532,CU_33=>sig533);
Face6: entity work.face
Port map(                                                                                                   
       A=>sig531,B=>sig531,C=>sig532,D=>sig532,E=>sig533,F=>sig533,
       M21=>SIG432,M23=>SIG332,M311=>SIG233,M312=>SIG431,M32=>SIG232,M331=>SIG231,M332=>SIG333,
       ss11=>ss611,ss12=>ss612,ss13=>ss613,
       ss21=>ss621,ss22=>ss622,ss23=>ss623,
       ss31=>ss631,ss32=>ss632,ss33=>ss633,
       SM21=>SM621,SM22=>SM622,SM23=>SM623,
       SM31=>SM631,SM32=>SM632,SM33=>SM633,
       CU_11=>sig611,CU_12=>sig612,CU_13=>sig613,
       CU_21=>sig621,CU_22=>sig622,CU_23=>sig623,
       CU_31=>sig631,CU_32=>sig632,CU_33=>sig633);
       
CU_631<=sig631;CU_632<=sig632;CU_633<=sig633;
end Str;

