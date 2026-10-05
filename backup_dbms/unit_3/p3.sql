/* 18 Write a trigger to insert the values into the NEWEMP table when the 
records are inserted into the EMP table. */

create or replace trigger trig_insert
before insert on emp
for each row
DECLARE
	op_date varchar2(20);
	op_user varchar2(20);
begin
	select to_char(sysdate,'DD-MM-YYYY HH:MI:SS') into op_date from dual;
	select user into op_user from dual;
	insert into newemp values(:new.eid,:new.ename,:new.deptno,:new.deptname,:new.GENDER,:new.AGE,:new.basicsal,op_user,'INSERTED',op_date);
end;
/