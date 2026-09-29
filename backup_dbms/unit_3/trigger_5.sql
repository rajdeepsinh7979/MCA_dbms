/* 20. Write a trigger to restrict user form using the table on Sunday. */

create or replace trigger trig_restrict
before insert or update or delete on emp
for each row

begin
	
	if TRIM(to_char(sysdate,'HH'))<9 OR  TRIM(to_char(sysdate,'HH'))>17 OR TRIM(to_char(sysdate,'Day'))='Sunday' THEN

		if TRIM(to_char(sysdate,'HH'))<9 OR  TRIM(to_char(sysdate,'HH'))>17 THEN
			DBMS_OUTPUT.PUT_LINE('ERROR : YOU CAN NOT ACCESS TABLE BEFORE 11 AND AFTER 5.');
		END IF;
		IF TRIM(to_char(sysdate,'Day'))='Sunday' THEN
			DBMS_OUTPUT.PUT_LINE('ERROR : YOU CAN NOT ACCESS TABLE BEFORE SUNDAY.');
		END IF;
		RAISE_APPLICATION_ERROR(-20001,'ACCESS DENIED.');

	END IF;
END;
/