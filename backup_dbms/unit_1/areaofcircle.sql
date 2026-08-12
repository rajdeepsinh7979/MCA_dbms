-- write a script to findout area of a circle
SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

declare
	pi constant number(3,2) := 3.14;
	ans number(5,2);
	r number(5);
begin
	
	r:=&r;
	ans:= pi*POWER(r,2);
	dbms_output.put_line('Area of a circle is '||ans);
	dbms_output.put_line('	');
end;
/

SET SERVEROUTPUT ON
SET VERIFY ON
SET FEEDBACK ON