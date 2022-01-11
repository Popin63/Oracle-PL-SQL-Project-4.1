SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE CoursePackage AS

	PROCEDURE EnrolledCourse(id IN NUMBER);
	
	FUNCTION material(id IN NUMBER)
	RETURN NUMBER;	
	
END CoursePackage;
/

CREATE OR REPLACE PACKAGE BODY CoursePackage AS
	PROCEDURE EnrolledCourse(id IN NUMBER)
    IS
	 
    BEGIN
	
	    IF id > 0 THEN
		
		    DBMS_OUTPUT.PUT_LINE('CourseId '   ||   ' MaterialId '   ||  ' BookName '  ||   '  AuthorName ');
		    FOR p IN ( select * from COURSE_MATERIAL where cid IN  (SELECT cid FROM ENROLLED_COURSE where snum = id ) )LOOP
                 DBMS_OUTPUT.PUT_LINE(p.cid || ' ' || p.materialid || '  ' || p.bookName || ' ' || p.authorName);
            END LOOP;
			 
	    END IF;
		
		EXCEPTION
			WHEN TOO_MANY_ROWS THEN
				DBMS_OUTPUT.PUT_LINE('Many rows detected');
	
			WHEN OTHERS THEN
				DBMS_OUTPUT.PUT_LINE('Other errors');
		
	
    END EnrolledCourse;
	
	FUNCTION material(id IN number)
    RETURN number
    IS

    BEGIN
	
       RETURN 1;
	   
	   EXCEPTION
			WHEN TOO_MANY_ROWS THEN
				DBMS_OUTPUT.PUT_LINE('Many rows detected');
	
			WHEN OTHERS THEN
				DBMS_OUTPUT.PUT_LINE('Other errors');
	
    END material;	
	
	
END CoursePackage;
/



commit;
