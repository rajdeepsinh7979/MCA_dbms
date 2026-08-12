-- Write a PL/SQL block to delete the record of employee for given EID.


SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
	eeid emp.eid%type;
	e_eid emp.eid%type;
	e_ename emp.ename%type;
	e_grant varchar(3);
	co number(3);
BEGIN
	eeid:=&employeeID;
	
	select count(*) into co from emp where eid=eeid;
	if co=0 then
		dbms_output.put_line('=======================');
		dbms_output.put_line('record not found for given eid.');
		dbms_output.put_line('=======================');
	else
		select eid,ename into e_eid,e_ename from emp where eid=eeid;
		delete from emp where eid=eeid;
		dbms_output.put_line('	');
		dbms_output.put_line('****** deleted record *******');
		dbms_output.put_line('eid : ' ||e_eid ||'	'|| 'ename : ' ||e_ename);
		dbms_output.put_line('	');
		dbms_output.put_line('===========================');
		dbms_output.put_line('record deleted successfully.');
		dbms_output.put_line('===========================');
	end if;
	
END;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON

select * from emp;
