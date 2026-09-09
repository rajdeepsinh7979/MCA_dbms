-- by rajdeepsinh 92600584028
create or replace trigger trig_1
before
insert on sample_emp
for each row

declare
	e_eid sample_emp.eid%type;

begin
	SELECT SEQ_1.NEXTVAL INTO E_EID FROM DUAL;
	if E_EID< 10 then
		:new.eid:='E00'||E_eid;
	elsif E_EID< 100 then
		:new.eid:='E0'||E_eid;
	elsif E_EID< 1000 then
		:new.eid:='E'||E_eid;
	end if;
end;
/