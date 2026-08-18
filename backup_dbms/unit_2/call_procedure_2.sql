set serveroutput on
set verify off
set feedback off

declare
	eid number(3);
	e_ename emp.ename%type;
	e_basicsal emp.basicsal%type;
	e_deptno emp.deptno%type;
begin
	EID:=&EID;
	procedure_2(eid,e_ename,e_basicsal,e_deptno);
	dbms_output.put_line(e_ename);
	dbms_output.put_line(e_basicsal);
	dbms_output.put_line(e_deptno);
end;
/