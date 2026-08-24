create or replace package pkg_1 AS
	procedure procedure_1(e_eid in number,gsal out number);
	function function_1(e_eid in number) return varchar2;
end pkg_1;
/