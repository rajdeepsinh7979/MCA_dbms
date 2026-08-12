/* Write a PL/SQL block that calculates the simple interest based on given 
principal amount, rate of interest and number of years. */

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

declare
	p number(5);
	r number(5);
	n number(3);
	si number(8,2);
	final_amo number(10,2);
begin
	p:=&p;
	r:=&r;
	n:=&n;
	si:=(p*r*n)/100;
	final_amo:=p+si;
	dbms_output.put_line('principle amount is ' ||p);
	dbms_output.put_line('rate of interest is '||r);
	dbms_output.put_line('number of years is ' ||n);
	dbms_output.put_line('simple interest is ' ||si);
	dbms_output.put_line('amount after simple interest is ' ||final_amo);
end;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON