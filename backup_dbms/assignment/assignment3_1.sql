/* Write a PL/SQL program to generate the multiplication table of a
user-entered number using:
 FOR LOOP
 WHILE LOOP */

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

declare
	n1 number(3);
begin
	n1:=&n1;
	for i in 1..10
	loop
		dbms_output.put_line(n1 || ' * ' || i || '='|| n1*i);
	end loop;
	
end;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON
