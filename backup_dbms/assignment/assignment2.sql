SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

declare
	v_rollno number(3);
	v_name varchar(10);
	v_sub1 number(5);
	v_sub2 number(5);
	v_sub3 number(5);
	v_sub4 number(5);
	v_sub5 number(5);
	v_total number(10);
	v_per number(5,2);
	v_grade varchar2(5);
begin
	v_rollno:=&v_rollno;
	select name,sub1,sub2,sub3,sub4,sub5 into v_name,v_sub1,v_sub2,v_sub3,v_sub4,v_sub5  from student where rollno=v_rollno;

	v_total:=v_sub1+v_sub2+v_sub3+v_sub4+v_sub5;

	v_per:=v_total/5;
	
	if(v_per>=0 and v_per<=35)then
		v_grade:='fail';
	elsif(v_per>35 and v_per<=45)then
		v_grade:='E';
	elsif(v_per>45 and v_per<=65)then
		v_grade:='D';
	elsif(v_per>65 and v_per<=75)then
		v_grade:='C';
	elsif(v_per>75 and v_per<=85)then
		v_grade:='B';
	elsif(v_per>85 and v_per<=100)then
		v_grade:='A';
	end if;
	if(v_grade='fail') then 
		dbms_output.put_line('you are fail');
	else
		dbms_output.put_line('pass');
		dbms_output.put_line('	');
		dbms_output.put_line('roll no is '||v_rollno);
		dbms_output.put_line('name is '||v_name);
		dbms_output.put_line('sub1 is '||v_sub1);
		dbms_output.put_line('sub2 is '||v_sub2);
		dbms_output.put_line('sub3 is '||v_sub3);
		dbms_output.put_line('sub4 is '||v_sub4);
		dbms_output.put_line('sub5 is '||v_sub5);
		dbms_output.put_line('	');
		dbms_output.put_line('========RESULT=======');
		dbms_output.put_line('total is '||v_total);
		dbms_output.put_line('per is '||v_per);
		dbms_output.put_line('grade is '||v_grade);
		dbms_output.put_line('=====================');
		dbms_output.put_line('	');
		dbms_output.put_line('=========================================');
		dbms_output.put_line('******record inserted successfully.******');
		dbms_output.put_line('=========================================');
	end if;
	update student set total=v_total,per=v_per,grade=v_grade where rollno=v_rollno;
	
end;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON