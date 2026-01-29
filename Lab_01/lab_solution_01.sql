/**Create a table Student with following columns: 
 RollNo INT 
 Name VARCHAR(50) 
 Dept VARCHAR(20) 
 Age INT 
 Phone VARCHAR(15)**/

CREATE TABLE Student (
  RollNo INT , 
  Name VARCHAR(50),
  Dept VARCHAR(20),
  Age INT,
  Phone VARCHAR(15)
);

/**Create a table Course with columns: 
 CourseID INT 
 CourseName VARCHAR(50) 
 Credits INT**/

CREATE TABLE Course (
  CourseID INT ,
  CourseName VARCHAR(50),
  Credits INT
);

--Add a new column City in table Student
ALTER TABLE Student ADD City VARCHAR(20);

--Add a new column Semester in table Student
ALTER TABLE Student ADD Semester INT;

--Rename column Phone to MobileNo in table Student.
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;


--Delete (drop) the table Course                                  
DROP TABLE Course;


--Insert 5 student records into Student
INSERT INTO Student VALUES (101, 'sonu nigam', 'CSE', 20, '8757832966', 'samastipur', 5);

INSERT INTO Student VALUES (102, 'kumar shanu', 'CSE', 21,'9123456781', 'patna', 6);

INSERT INTO Student VALUES (103, 'piyush vidyarthi ', 'IT', 22, '6202415029', 'supaul', 5);

INSERT INTO Student VALUES (104, 'udit kumar pal', 'aiml', 22, '8797654892', 'vaishali', 6);

INSERT INTO Student VALUES (105, 'badal jha', 'CSE', 21, '9867549327', 'muzaffarpur', 7);


--Display all records from Student.
SELECT * FROM Student;

--Display only RollNo and Name from Student
SELECT RollNo , Name FROM Student;

--Display all students from department "CSE"                                                                                                              
SELECT * FROM Student WHERE Dept='CSE';

--Display all students whose age is greater than 20.                                                                           
SELECT * FROM Student WHERE Age > 20 ;

--Update the department of RollNo = 101 to "ECE".                              
UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

--Update the city of student "Rahul" to "Patna"
UPDATE Student SET City = 'madhepura' WHERE Name = 'piyush vidyarthi';

--Increase age of all students by 1 year
UPDATE Student SET Age=Age+1;

--Delete record of student whose RollNo = 105
DELETE FROM Student WHERE RollNo = 105;

--Delete all records from Student (table should remain)
DELETE FROM Student;