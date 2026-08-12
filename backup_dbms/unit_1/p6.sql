/* Write a PL/SQL block which accepts measurement in feet and displays it 
in cm, inch and meter. */

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

declare
	feet number(5);
	cm number(10,2);
	inch number(10,2);
	meter number(10,4);
begin
	feet:=&feet;
	
	cm:=feet*30.48;
	inch:=feet*12;
	meter:=feet*0.3048;

	dbms_output.put_line('inputted feet is ' ||feet);
	dbms_output.put_line('cm : '||cm);
	dbms_output.put_line('inch : ' ||inch);
	dbms_output.put_line('meter : ' ||meter);
end;
/
SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON