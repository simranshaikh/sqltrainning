CREATE OR REPLACE PROCEDURE SHOW_RECORDS
(
          P_JOIN_DATE EMP.HIREDATE%TYPE
)
IS
        CURSOR C IS SELECT * FROM EMP WHERE 	HIREDATE>P_JOIN_DATE;
	V_C C%ROWTYPE;
BEGIN
	DBMS_OUTPUT.PUT_LINE('EMPNAME'||'   '||'JOB'||'  '||'SALARY '||'DEPARTMENT');
	FOR V_C IN C
	LOOP
	DBMS_OUTPUT.PUT_LINE(V_C.ENAME||'  '||V_C.JOB||'  '||V_C.SAL||'   '||V_C.DEPTNO);
	END LOOP;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
	DBMS_OUTPUT.PUT_LINE('NO EMPLOYEE FOUND');
END SHOW_RECORDS;
/