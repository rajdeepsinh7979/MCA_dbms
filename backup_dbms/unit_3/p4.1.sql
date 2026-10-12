/* 
Write a trigger that restricts the entry of record if salary is greater than
Rs.50000.
*/

CREATE OR REPLACE TRIGGER trigger_4_1
AFTER INSERT OR UPDATE ON emp
FOR EACH ROW
when(NEW.basicsal > 50000)

BEGIN

	RAISE_APPLICATION_ERROR(-20120,'salary cannot be more than 50000.');
   
END;
/