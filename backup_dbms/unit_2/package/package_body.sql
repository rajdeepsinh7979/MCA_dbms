-- body block

create or replace package body pkg_1 AS
	procedure procedure_1(e_eid in number,gsal out number)
	is
		
	begin
		select basicsal*12 into gsal from emp where eid=e_eid;
	end procedure_1;
		
	function function_1(e_eid in number)
	return varchar2
	is
		category varchar2(50);
		gsal number; 
	
	begin
		select basicsal*12 into gsal from emp where eid=e_eid;
		if gsal > 500000 then
			category:='high income employee';
		else
			category:='normal income employee';
		end if;
		return category;
	end function_1;
end pkg_1;
/