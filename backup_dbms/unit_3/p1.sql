/* 16. Write a trigger to insert the existing values of the EMP table into 
NEWEMP table when the record is deleted from EMP table.  */

create or replace trigger trig_del
before delete on emp
for each row
DECLARE
	op_date varchar2(20);
	op_user varchar2(20);
begin
	select to_char(sysdate,'DD-MM-YYYY HH:MI:SS') into op_date from dual;
	select user into op_user from dual;
	insert into newemp values(:old.eid,:old.ename,:old.deptno,:old.deptname,:old.GENDER,:old.AGE,:old.basicsal,op_user,'DELETED',op_date);
end;
/

/* SQL> desc newemp;
 Name                                                                                                              Null?    Type
 ----------------------------------------------------------------------------------------------------------------- -------- ----------------------------------------------------------------------------
 EID                                                                                                                        NUMBER(3)
 ENAME                                                                                                                      VARCHAR2(50)
 DEPTNO                                                                                                                     NUMBER(2)
 DEPTNAME                                                                                                                   VARCHAR2(30)
 GENDER                                                                                                                     VARCHAR2(10)
 AGE                                                                                                                        NUMBER(3)
 BASICSAL                                                                                                                   NUMBER(7,2)
 OPE_USER                                                                                                                   VARCHAR2(20)
 OPERATION                                                                                                                  VARCHAR2(20)
 OPE_DATE                                                                                                                   VARCHAR2(20)   */