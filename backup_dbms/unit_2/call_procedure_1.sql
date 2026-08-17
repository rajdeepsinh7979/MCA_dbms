-- calling block for increase salary of employee by deptno


set serveroutput on
set feedback off
set verify off

declare
	deptno emp.deptno%type;
	per number(3);
begin
	deptno:=&deptno;
	per:=&per;
	procedure_1(deptno,per);
end;
/

set serveroutput off
set feedback on
set verify on
