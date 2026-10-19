create or replace package pkg_001 AS
	procedure procedure_month_cal(e_eid number);
	function function_leap_year(e_eid number) return varchar2;
end pkg_001;
/