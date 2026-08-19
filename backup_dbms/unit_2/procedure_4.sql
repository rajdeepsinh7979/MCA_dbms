/* Write a function that returns the age category of an employee.
Categories:
● Age < 18 → Minor
● 18–60 → Adult
● 60 → Senior */

create or replace function function_4(empid emp.eid%type)
RETURN varchar2
IS
	f_category varchar(10);
	f_age emp.age%type;
begin
	select age into f_age from emp where eid=empid;
	if f_age < 18 then
		f_category:='Minor';
		return f_category;
	elsif f_age >= 18 then
		if f_age <= 60 then
			f_category:='Adult';
			return f_category;
		end if;
	else
		f_category:='Senior ';
		return f_category;
	end if;
	
exception
	when no_data_found then
		return 'no data found.';
end;
/
