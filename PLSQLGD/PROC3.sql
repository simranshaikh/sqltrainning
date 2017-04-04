CREATE OR REPLACE FUNCTION  USER_VALID_DEPTNO 
(
    P_DNO EMP.DEPTNO%TYPE

)RETURN BOOLEAN
IS
V_DNO NUMBER;
BEGIN
          SELECT DEPTNO INTO V_DNO FROM DEPT WHERE  DEPTNO=P_DNO;
       RETURN TRUE;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	DBMS_OUTPUT.PUT_LINE('NO DEPT FOUND');
	RETURN FALSE;

END;
/
---------------------------------------------------------------------------
CREATE OR REPLACE procedure show_strength
(
p_deptno in number
)
is
begin




end;
/
