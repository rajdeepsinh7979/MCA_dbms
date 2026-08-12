/* Write a PL/SQL block to calculate the total, percentage and grade of 
student based on his/her Rollno from RESULT table. (Create RESULT 
table with Rollno, Name, Sub1, Sub2, Sub3, Sub4, Sub5, Total, Per, 
Grade attributes with appropriate data type).
 */

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

declare
	rollno number(3);
	name varchar(10);
	sub1 number(5);
	sub2 number(5);
	sub3 number(5);
	sub4 number(5);
	sub5 number(5);
	total number(10);
	per number(5,2);
	grade varchar2(5);
begin
	rollno:=&rollno;
	name:='&name';
	sub1:=&sub1;
	sub2:=&sub2;
	sub3:=&sub3;
	sub4:=&sub4;
	sub5:=&sub5;

	total:=sub1+sub2+sub3+sub4+sub5;

	per:=total/5;

	if(per>=0 and per<=35)then
		grade:='fail';
	elsif(per>35 and per<=45)then
		grade:='E';
	elsif(per>45 and per<=65)then
		grade:='D';
	elsif(per>65 and per<=75)then
		grade:='C';
	elsif(per>75 and per<=85)then
		grade:='B';
	elsif(per>85 and per<=100)then
		grade:='A';
	end if;

	dbms_output.put_line('	');
	dbms_output.put_line('roll no is '||rollno);
	dbms_output.put_line('name is '||name);
	dbms_output.put_line('sub1 is '||sub1);
	dbms_output.put_line('sub2 is '||sub2);
	dbms_output.put_line('sub3 is '||sub3);
	dbms_output.put_line('sub4 is '||sub4);
	dbms_output.put_line('sub5 is '||sub5);
	dbms_output.put_line('	');
	dbms_output.put_line('========RESULT=======');
	dbms_output.put_line('total is '||total);
	dbms_output.put_line('per is '||per);
	dbms_output.put_line('grade is '||grade);
	dbms_output.put_line('=====================');
	dbms_output.put_line('	');
	dbms_output.put_line('=========================================');
	dbms_output.put_line('******record inserted successfully.******');
	dbms_output.put_line('=========================================');
	insert into result values(rollno,name,sub1,sub2,sub3,sub4,sub5,total,per,grade);

end;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON