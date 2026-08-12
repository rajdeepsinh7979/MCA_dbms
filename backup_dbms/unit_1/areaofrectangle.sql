-- write a script to findout area of a rectangle

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

declare
	length number(5);
	width number(5);
	area number(5,2);
begin
	
	length:=&length;
	width:=&width;
	area:=length*width;
	dbms_output.put_line('	');
	dbms_output.put_line('Area of a rectangle is '||area);
	dbms_output.put_line('	');
end;
/

SET SERVEROUTPUT ON
SET VERIFY ON
SET FEEDBACK ON