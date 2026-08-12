/* Write a PL/SQL block which accepts measurement in feet and displays it 
in cm, inch and meter. */

SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

accept c prompt "enter your choice 1. convert fehrenheit to celsius 2. convert celsius to fehrenheit : "

declare
	choice number(5);
	Celsius number(10,2);
	Fehrenheit number(10,2);
begin
	choice:=&c;
	if choice=1 then
		fehrenheit:=&fehrenheit;
		celsius:=(fehrenheit-32)*5/9;
		dbms_output.put_line('celsius : '||celsius);
	elsif choice=2 then
		celsius:=&celsius;
		fehrenheit:=(celsius*(9/5))+32;
		dbms_output.put_line('fehrenheit : '||fehrenheit);
	else
		dbms_output.put_line('enter a valid choice');
	end if;
end;
/

SET SERVEROUTPUT OFF
SET FEEDBACK ON
SET VERIFY ON