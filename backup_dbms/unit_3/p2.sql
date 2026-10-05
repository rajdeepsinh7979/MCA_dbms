/*17  Write a trigger to insert the existing values of the EMP table into 
NEWEMP table when the record is updated in EMP table. */

create or replace trigger trig_update
before update on emp
for each row
DECLARE
	op_date varchar2(20);
	op_user varchar2(20);
begin
	select to_char(sysdate,'DD-MM-YYYY HH:MI:SS') into op_date from dual;
	select user into op_user from dual;
	insert into newemp values(:old.eid,:old.ename,:old.deptno,:old.deptname,:old.GENDER,:old.AGE,:old.basicsal,op_user,'UPDATED',op_date);
end;
/