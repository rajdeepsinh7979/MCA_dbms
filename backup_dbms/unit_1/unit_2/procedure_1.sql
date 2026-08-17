-- procedure to increase salary by given percentage 

create or replace procedure procedure_1(p_deptno in number,percentage in number)
IS
	cou number(10);
BEGIN
	update emp set basicsal=basicsal+((basicsal*percentage)/100) where deptno=p_deptno;
	Select count(*) into cou from emp where deptno=p_deptno;
	if cou >0 then
		dbms_output.put_line('salary updated for given dept no.');
	else
		dbms_output.put_line('salary not updated.');
	end if;
END;
/