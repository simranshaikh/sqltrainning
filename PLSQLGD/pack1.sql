CREATE OR REPLACE PACKAGE SAMPLEPACK
AS 
PROCEDURE P1(P_N1 NUMBER,P_N2 OUT NUMBER);
FUNCTION P2(P_F1 NUMBER) RETURN NUMBER;

END SAMPLEPACK;


CREATE OR REPLACE PACKAGE BODY SAMPLEPACK
IS
PROCEDURE P1(P_N1 NUMBER,P_N2 OUT NUMBER)
IS
BEGIN
P_N2:=P_N1*5;
END P1;

FUNCTION P2(P_F1 NUMBER) RETURN NUMBER
IS 
V_N1 NUMBER;
BEGIN
V_N1:=P_F1*2;
RETURN V_N1;
END P2;
END SAMPLEPACK;
----------------------------------------------------------------
EXECUTION(PROCEDURE)
1) VARIABLE P_N2 NUMBER
 EXEC SAMPLEPACK.P1(5,:P_N2); 
---------------------------------------------------
2)EXECUTION(FUNCTION)
EXEC :N:=SAMPLEPACK.P2(5);
