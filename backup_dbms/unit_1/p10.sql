/* Write a PL/SQL block to calculate the square and cube of the given
number. */


SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
	n1 number(3);	
	squ number(6);
	que number(6);
BEGIN
	n1:=&n1;
	squ:=n1*n1;
	que:=power(n1,3);
	dbms_output.put_line(squ);
	dbms_output.put_line(que);
END;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON
