
set serveroutput on
set feedback off
set verify off

prompt =========================================================================
prompt 1. for finding month of experience of employee from their joining date.
prompt 2. for finding employees joining year is leap year or not.
prompt =========================================================================
accept ch prompt "enter your choice : "

declare
	v varchar2(20);
	c number(3);
	e_eid number(3);
begin
	
	c:=&ch;
	e_eid:=&employee_id;
	if c=1 then
		dbms_output.put_line('===============================');
		dbms_output.put_line('	');
		pkg_001.procedure_month_cal(e_eid);
		dbms_output.put_line('	');
		dbms_output.put_line('===============================');
	else
		dbms_output.put_line('=========================================');
		dbms_output.put_line('	');
		v:=pkg_001.function_leap_year(e_eid);
		dbms_output.put_line('Employee id : '||e_eid);
		dbms_output.put_line('Employee is joined in '||v);
		dbms_output.put_line('	');
		dbms_output.put_line('=========================================');
	end if;
end;
/


set serveroutput off
set feedback on
set verify on