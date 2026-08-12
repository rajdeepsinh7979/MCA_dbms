/* Write a PL/SQL block which displays gross salary of employees as per 
user input EID. (Consider EMP table with EID, EName, Deptno, 
Deptname Gender, Age, BasicSal) with appropriate data types.) 
Gross_Salary: BASICSAL + (DA + HRA + Medical) – PF. Rules: 
HRA =15% of basic, DA = 50% of basic, Medical = Rs. 500, PF = 10% of basic. */

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
	employee emp%ROWTYPE;
	empid number(3):=&empid;

	bsal emp.basicsal%TYPE;
	fin number(10,2);
	hra number(7,2);
	da number(7,2);
	medical number(3):=500;
	pf number(7,2);
BEGIN
	select * into employee from emp where eid=empid; 
	bsal:=employee.BASICSAL;

	hra := (bsal*15)/100;
	da := (bsal*50)/100;
	pf := (bsal*10)/100;
	fin := (bsal+da+hra+medical)-pf;

	
	
	DBMS_OUTPUT.PUT_LINE('FINAL HRA IS '||HRA);
	DBMS_OUTPUT.PUT_LINE('FINAL DA IS '||DA);
	DBMS_OUTPUT.PUT_LINE('FINAL MADICAL IS '||medical);
	DBMS_OUTPUT.PUT_LINE('FINAL PF IS '||PF);
	DBMS_OUTPUT.PUT_LINE('  ');
	DBMS_OUTPUT.PUT_LINE('FINAL SALARY IS '||fin);

END;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON