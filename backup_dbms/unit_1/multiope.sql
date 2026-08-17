-- script that can do multiple operation

ACCEPT CHOICE PROMPT "Enter Your Choice : 1 . Area of circle ,2 . Area of rectangle ,3 . circumference of circle : "

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF


declare
	c number :=&CHOICE;
	radius number(5);
	len number(5);
	width number(5);
	ans number(6,2);
	pi constant number(5,2):=3.14;
begin
	if c=1 then
		radius:=&radius;
		ans:=pi*power(radius,2);
		dbms_output.put_line('area of circle is ' ||ans);
	elsif c=2 then
		len:=&len;
		width:=&width;
		ans:=len*width;
		dbms_output.put_line('area of rectangle is ' ||ans);
	elsif c=3 then
		radius:=&radius;
		ans:=2*(pi*radius);
		
		dbms_output.put_line('circumference of circle is' ||ans);
	else 
		dbms_output.put_line('enter a valid choice');
	end if;
end;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON