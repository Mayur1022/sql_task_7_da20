--1.ENUM TYPE-by Create 

create type	gender_type as enum('Male','Female','Other');

create type grade_type as enum('A','B','C','D')

create table student_data(
student_id serial primary key,
full_name varchar(50),
gender gender_type not null,
grade grade_type,
admission_date date);

select * from student_data;

insert into student_data(full_name,gender,grade,admission_date)  values
('Rohit Sharma','Male','A','2025-08-04'),
('Virat Kohli','Male','B','2024-09-23'),
('Smriti Mandhana','Female','D','2023-08-12'),
('Kiran Mehta', 'Other', 'B', '2023-07-07'),
('Pooja Bansal', 'Female', 'C', '2023-07-18');

select * from student_data
-----------------------------------------------------------------------------
--2.ENUM TYPE- by Alter

select * from patient;

create type blood_group as enum('A','A+','A-','B','B+','B-','O','O+','O-');

alter table patient add column blood_group_type blood_group;

create type status as enum('admitted', 'discharged', 'under_observation');

alter table patient add column status_type status ;

insert into patient values('11','Rohit Chahal','Nagpur','B+','discharged');

select * from patient;
-----------------------------------------------------------------------




