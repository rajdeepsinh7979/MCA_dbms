/* 2. Write a program that prints value 1 to 100 number using LOOP 
Command.  */ 

SET SERVEROUTPUT ON FORMAT WRAPPED
SET FEEDBACK OFF
SET VERIFY OFF

declare
	i number(5):=1;
begin
	LOOP
		Exit when i>100;
		dbms_output.put(i || ' ');
		
		IF MOD(i, 10) = 0 THEN
			DBMS_OUTPUT.NEW_LINE;
		END IF;
		i:=i+1;
	END LOOP;
end;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON