/* create or replace package pkg_001 AS
	procedure procedure_month_cal(e_eid number);
	function function_leap_year(e_eid number) return varchar2;
end pkg_001;
/
*/

create or replace package body pkg_001 AS
	procedure procedure_month_cal(e_eid number)
	is	
		j_year number(10);
		c_yearr number(20);
		f_yearr number(20);
		f_year number(20);
		month number(10);
	begin
		select substr(joining_date, -4) into j_year FROM emp WHERE eid = e_eid;
		select to_char(sysdate,'yyyy') into c_yearr from dual;
		select to_number(to_char(sysdate, 'mm')) into month FROM DUAL;
		f_yearr:=c_yearr-j_year;
		f_year:=(f_yearr*12) +month ;
		dbms_output.put_line('Employee id : '||e_eid);
		dbms_output.put_line('Experience : '||f_year||' months');
	end procedure_month_cal;
	

	function function_leap_year(e_eid number) return varchar2
	is	
		j_year number(10);
		c_yearr number(20);
		f_yearr number(20);
		f_year number(20);
		month number(10);
	begin
		select substr(joining_date, -4) into j_year FROM emp WHERE eid = e_eid;
		IF (MOD(j_year, 4) = 0 AND MOD(j_year, 100) != 0) AND MOD(j_year, 400) = 0 THEN
			return 'Leap year';
		else
			return 'Non Leap year';
		end if;
	end function_leap_year;
	
end pkg_001;
/

