/* Write a PL/SQL block to accept an employee's Basic Salary and
calculate:
 HRA = 20%
 DA = 45%
 TA = 8%
 PF = 12%
 Net Salary
Display all salary components */

SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
    bsal NUMBER(5);
    HRA NUMBER(5);
    TA NUMBER(5);
    DA NUMBER(5);
    PF NUMBER(5);
    FIN NUMBER(7,2);
BEGIN
    bsal:=&bsal;
    HRA:= bsal*20/100;
    TA:= bsal*8/100;
    DA:= bsal*45/100;
    PF:=bsal*12/100;

    fin := (bsal+HRA+TA+DA)-PF;

    
    DBMS_OUTPUT.PUT_LINE('FINAL HRA IS '||HRA);
    DBMS_OUTPUT.PUT_LINE('FINAL TA IS '||TA);
    DBMS_OUTPUT.PUT_LINE('FINAL DA IS '||DA);
    DBMS_OUTPUT.PUT_LINE('FINAL PF IS '||PF);
    DBMS_OUTPUT.PUT_LINE('  ');
    DBMS_OUTPUT.PUT_LINE('FINAL SALARY IS '||fin);
END;
/

SET SERVEROUTPUT OFF
SET VERIFY ON
SET FEEDBACK ON