/* Write a function that returns the age category of an employee.
Categories:
● Age < 18 → Minor
● 18–60 → Adult
● 60 → Senior */

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

declare
	a_eid emp.age%type;
	a_category varchar(50);
begin
	a_eid:=&eid;
	a_category:=function_4(a_eid);
	dbms_output.put_line('*******************************************************');
	dbms_output.put_line('EMPLOYEE ID : '|| a_eid);
	DBMS_OUTPUT.PUT_LINE('EMPLOYEE AGE CATEGORY : ' ||a_category);
	dbms_output.put_line('*******************************************************');
end;
/

SET SERVEROUTPUT Off
SET FEEDBACK On
SET VERIFY On
