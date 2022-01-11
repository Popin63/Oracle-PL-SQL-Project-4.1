SET SERVEROUTPUT ON;
SET VERIFY OFF;


DECLARE

	Snum int;
	
BEGIN
   
    DBMS_OUTPUT.PUT_LINE('Show Student Enrolled Course Information');
	Snum :=&Snum;
	CoursePackage.EnrolledCourse(Snum);
	
END;
/

commit;


