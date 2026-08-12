/* 1. Write a program that prints value 1 to 100 numbers using FOR LOOP. */

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

begin
	for i in 1..100
	loop
		dbms_output.put_line(i);
	end loop;
	
end;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON