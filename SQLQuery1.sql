-- Create a table students with student_id, first_name, last_name, and dob (date of birth).

CREATE TABLE STUDENTS1 (
    Student_id INT ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    DOB VARCHAR(10),
    
);
insert into STUDENTS1 values (104, 'Clement','Pyaa','04-07-94');
insert into STUDENTS1 values (103, 'James','Pyaa','08-06-90');
insert into STUDENTS1 values (101, 'Water','Ken','25-12-98');
insert into STUDENTS1 values (102, 'Mo','Love','03-09-88');
insert into STUDENTS1 values (102, 'Mo','Love','03-09-88','Ottawa', 'Physics', 'B+', 'Indian');
insert into STUDENTS1 values (101, 'Water','Ken','25-12-98','Woodstock', 'Physics', 'A', 'Jamaica');
insert into STUDENTS1 values (105, 'Charles','Love','09-10-97','Edward Island', 'Chemistry', 'C', 'China');
INSERT INTO STUDENTS1 (S_ID, first_name, last_name, DOB, Course, Grade, Country)  values (106, 'Ben','Love','09-10-97', 'Chemistry', 'C', 'China'),(107, 'Ada','Obi','04-11-90', 'Maths', 'A', 'Nigeria'),(106, 'Cynthia','Morgan','15-12-05', 'Yoruba', 'C', 'Ghana'
INSERT INTO STUDENTS1 (S_ID, first_name, last_name, Course, Grade, Country, AGE)  values (107, 'Jada','Pinket', 'Chemistry', 'A', 'USA', 19),(108, 'Tunde','Ednut','Maths', 'A', 'Austria', 20),(109, 'Peter','Okoye','Chemistry', 'A', 'Ghana', 22);



SELECT * FROM STUDENTS1 ORDER BY first_name;

SELECT DOB, first_name, last_name from STUDENTS1 WHERE Student_id = 004;

-- Used for adding new column to table.
alter table STUDENTS1 add Grade varchar(20), Country varchar(20);

-- Used to update new column with values.
update STUDENTS1 set City = 'Toronto', Course = 'Biology', Grade = 'A', Country = 'Canada' where Student_id = 004;
update STUDENTS1 set City = 'Nunavut', Course = 'Dramatic Art', Grade = 'A', Country = 'Nigeria' where Student_id = 003;

Select first_name,DOB from STUDENTS1 where Student_id = 002;

select * from STUDENTS1 order by Student_id desc;

select * from STUDENTS1 order by City desc;

select first_name, DOB, City from STUDENTS1 order by City;

alter table STUDENTS1
drop column City;

select * from STUDENTS1;

-- Delete statement from table
delete from STUDENTS1 where Grade = 'C';

-- Distinct Command to sharmonize duplicate values
select distinct Grade from STUDENTS1;

-- Rename a column
EXEC sp_rename 'STUDENTS1.student_id','S_ID','COLUMN';

select first_name as F_NAME, * from STUDENTS1;

SELECT last_name ,DOB FROM STUDENTS1 WHERE NOT Country = 'Indian' Order BY last_name desc;

Alter Table STUDENTS1 DROP COLUMN DOB

alter table STUDENTS1 ADD AGE INT;

SELECT * FROM STUDENTS1
UPDATE STUDENTS1 SET AGE = 18 WHERE S_ID = 4;

-- To select the number of record to return use
SELECT TOP 3 * FROM STUDENTS1 ORDER BY S_ID DESC;

SELECT COUNT(first_name) as Total_TakingCourse, Course from STUDENTS1 GROUP BY Course HAVING COUNT(first_name) >1 order by count(first_name);

