/* Write a procedure that accept employee ID and remove records from 
employee table. Also create a calling program to call procedure. */

create or replace procedure procedure_3(empid emp.eid%type)
AS
	cou number(3);
begin
	select count(*) into cou from emp where eid=empid;
	IF COU > 0 THEN
		delete from emp where eid=empid;
		dbms_output.put_line('*******************************************************');
		dbms_output.put_line('	record deleted successfully.');
		dbms_output.put_line('*******************************************************');
	else
		dbms_output.put_line('*******************************************************');
		dbms_output.put_line('	record not found for given empoyee id.	');
		dbms_output.put_line('*******************************************************');
	end if;
end;
/
