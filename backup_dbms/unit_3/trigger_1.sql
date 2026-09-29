/* Write a trigger to insert the existing values of the EMP table into 
NEWEMP table when the record is deleted from EMP table. */

create or replace trigger trig_1
before insert or update or delete on emp
for each row
DECLARE
	op_date varchar2(20);
	op_user varchar2(20);
begin
	select to_char(sysdate,'DD-MM-YYYY HH:MI:SS') into op_date from dual;
	select user into op_user from dual;
	if inserting then
		insert into newemp values(:new.eid,:new.ename,:new.deptno,:new.deptname,:new.GENDER,:new.AGE,:new.basicsal,op_user,'INSERTED',op_date);
	elsif updating then
		insert into newemp values(:old.eid,:old.ename,:old.deptno,:old.deptname,:old.GENDER,:old.AGE,:old.basicsal,op_user,'UPDATED',op_date);
	else
		insert into newemp values(:old.eid,:old.ename,:old.deptno,:old.deptname,:old.GENDER,:old.AGE,:old.basicsal,op_user,'DELETED',op_date);
	end if;
end;
/