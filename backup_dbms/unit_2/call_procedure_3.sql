 /* Write a calling pl/sql that accept employee ID and remove records from 
employee table. Also create a calling program to call procedure. */

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

declare
	empid emp.eid%type;
begin
	empid:=&empid;
	procedure_3(empid);
end;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON