CREATE OR REPLACE PROCEDURE ADD_EMPLOYEE
(
     P_JOB EMP.JOB%TYPE,
    P_MGR EMP.MGR%TYPE,
    P_HDATE EMP.HIREDATE%TYPE,
    SALARY EMP.SAL%TYPE,
    COMMSN EMP.COMM%TYPE
)
IS
CURSOR A IS SELECT * FROM EMP ;
CURSOR D IS SELECT DEPTNO FROM DEPT;
BEGIN







END ADD_EMPLOYEE;

