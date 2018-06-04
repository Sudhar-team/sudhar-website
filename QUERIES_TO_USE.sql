-- VIEW ALL DATA FROM STUDENT --

SELECT * FROM STUDENT;

-- VIEW ALL DATA FROM COLLEGE --

SELECT * FROM COLLEGE;

-- VIEW ALL DATA FROM COURSE --

SELECT * FROM COURSE;

-- INSERT COMMAND --

-- INSERT INTO STUDENT --

INSERT INTO STUDENT (FIRST_NAME,LAST_NAME,USERNAME,PASSWORD,EMAIL,PHONE_NUMBER,ENGINEERING_BRANCH,GENDER,STATE,CITY) VALUES('','','','','','','','','','');

-- INSERT INTO COLLEGE --

INSERT INTO COLLEGE (COLLEGE_NAME) VALUES('');

-- INSERT INTO COURSE --

INSERT INTO COURSE (COURSE_ID,COURSE_NAME,COURSE_BRANCH,COURSE_DESCRIPTION) VALUES('','','','');

-- INSERT INTO COLLEGE STUDENT --

INSERT INTO COLLEGE_STUDENT (STUDENT_ID,COLLEGE_ID) VALUES ((SELECT id FROM STUDENT WHERE USERNAME LIKE '') ,(SELECT id FROM COLLEGE WHERE COLLEGE_NAME LIKE ''));

-- INSERT INTO COURSE COLLEGE --

INSERT INTO COURSE_COLLEGE(COURSE_ID,COLLEGE_ID) VALUES ((SELECT id FROM COURSE WHERE COURSE_NAME LIKE ''),(SELECT id FROM COLLEGE WHERE COLLEGE_NAME LIKE '')); -- ADD THE VALUE IN VARIABLE --

-- INSERT INTO LIKES/COURSES OF A STUDENT --

INSERT INTO LIKES (USERNAME,COURSE_NAME) VALUES ((SELECT id FROM STUDENT WHERE USERNAME LIKE ''),(SELECT id FROM COURSE WHERE COURSE_NAME LIKE '')); -- ADD THE VALUE IN VARIABLE --

-- SHOW THE STUDENT WITH THE COLLEGE NAME --

SELECT  CONCAT(FIRST_NAME,' ',LAST_NAME) AS STUDENT,
		COLLEGE_NAME 
		FROM STUDENT 
		INNER JOIN COLLEGE_STUDENT 
		ON STUDENT.id = COLLEGE_STUDENT.STUDENT_ID 
		INNER JOIN COLLEGE 
		ON COLLEGE.id = COLLEGE_STUDENT.COLLEGE_ID;

-- COUNT THE NUMBER OF STUDENTS IN THE SAME COLLEGE --

SELECT COUNT(STUDENT_ID) FROM COLLEGE_STUDENT WHERE COLLEGE_ID LIKE (SELECT ID FROM COLLEGE WHERE COLLEGE_NAME LIKE '') ; 

-- COUNT THE STUDENTS IN ALL COLLEGES --

SELECT COUNT(STUDENT_ID) AS NO_OF_STUDENTS,COLLEGE_NAME FROM COLLEGE_STUDENT INNER JOIN COLLEGE WHERE COLLEGE.ID = COLLEGE_STUDENT.COLLEGE_ID GROUP BY COLLEGE_ID;