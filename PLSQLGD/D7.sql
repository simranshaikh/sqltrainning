CREATE OR REPLACE PROCEDURE CREATE_AUTHOR_DETAILS
(
	P_ANM  SCHOLARS.PRI_AUTHR_NAME%TYPE,
	P_CNTRY SCHOLARS.COUNTRY%TYPE,
	P_EMAIL SCHOLARS.EMAIL_ID%TYPE
)
IS
      AID VARCHAR2(5);	
BEGIN
	SELECT CONCAT('A00',SUBSTR(MAX (PRI_AUTHR_ID),2,4)+1)  INTO AID FROM SCHOLARS;
 	INSERT INTO SCHOLARS
	values(AID,P_ANM,P_CNTRY,P_EMAIL);
	DBMS_OUTPUT.PUT_LINE('1 ROW INSERTED');
exception
	WHEN DUP_VAL_ON_INDEX THEN
	DBMS_OUTPUT.PUT_LINE('DUPLICATE VALUES NOT ALLOWED');

END;
/