-- procedure to fetch data for founded based on provided eid


create or replace procedure procedure_2(e_id in number, e_ename out emp.ename%type,e_basicsal out emp.basicsal%type,e_deptno out emp.deptno%type)
IS

begin
	select ename,basicsal,deptno into e_ename,e_basicsal,e_deptno from emp where eid=e_id;
end;
/