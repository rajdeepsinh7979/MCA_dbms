-- calling pl\sql file

set serveroutput on
set feedback off
set verify off

prompt 1. for finding employee gros salary
prompt 2. for finding employee category
accept ch prompt "enter your choice : "
declare 
	e_eid number(3);
	e_gsal number(10,2);
	e_category varchar2(50);
	c number(3);
begin
	e_eid:=&e_eid;
	c:=&ch;
	if c=1 then
		pkg_1.procedure_1(e_eid,e_gsal);
		dbms_output.put_line('============================================');
		dbms_output.put_line('gross salary of employee '|| e_eid || ' : ' ||e_gsal);
		dbms_output.put_line('============================================');
	else
		e_category:=pkg_1.function_1(e_eid);
		dbms_output.put_line('===================================================');
		dbms_output.put_line('category of employee '|| e_eid || ' : ' ||e_category);
		dbms_output.put_line('===================================================');
	end if;
end;
/

set serveroutput off
set feedback on
set verify on