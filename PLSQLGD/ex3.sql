DECLARE
  	DUPLICATE_PRESIDENT EXCEPTION;
	CNT NUMBER;

BEGIN
	SELECT COUNT(*) INTO CNT FROM EMP WHERE 	JOB='PRESIDENT';
	DBMS_OUTPUT.PUT_LINE(CNT);
	IF CNT>1 THEN
	RAISE DUPLICATE_PRESIDENT;
	END IF;
EXCEPTION

	WHEN DUPLICATE_PRESIDENT THEN
	DBMS_OUTPUT.PUT_LINE('MORE THAN 1 PRESIDENT NOT ALLOWED');


END;
/