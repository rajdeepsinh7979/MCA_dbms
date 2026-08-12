/* ACCEPT PRONAME,PRICE,QUANTITY,DISCOUNT
 FROM USER AND CALCULATE FINAL AMOUNT */


SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

ACCEPT PN PROMPT "ENTER THE PRODUCT NAME : "
ACCEPT PR PROMPT "ENTER THE PRODUCT PRICE : "
ACCEPT QTY PROMPT "ENTER THE PRODUCT QUANTITY : "
ACCEPT DIS PROMPT "ENTER THE DISCOUNT : "

declare
	pname varchar2(10);
	price number(7,2);
	quantity number(5);
	discount number(5);
	total number(7,2);
	final number(7,2);
begin	
	pname:='&PN';
	price:=&PR;
	quantity:=&QTY;
	discount:=&DIS;

	total:=price*quantity;
	final:=total-(total*discount/100);
	dbms_output.put_line('	');
	dbms_output.put_line('============================');
	dbms_output.put_line('	');
	dbms_output.put_line('total price is '||total);
	dbms_output.put_line('discount is '||(total*discount/100));
	dbms_output.put_line('final price is '||final);
	dbms_output.put_line('	');
	dbms_output.put_line('============================');
	dbms_output.put_line('	');
end;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON