--DOMAIN

--domain-1
create domain age_positive as int check(value between 1 and 120);

--domain-2
create domain gender as varchar(20) check (value in('Male','Female','Other'));

--domain using create

create table patient_data (
patient_id serial primary key,
full_name varchar(50),
city varchar(50),
gender_type gender,
age age_positive
);

select * from patient_data;

insert into patient_data (full_name, city, gender_type, age) values
('Mayur Kadamdhad', 'Nagpur', 'Male', 24),
('Sneha Patil', 'Pune', 'Female', 28),
('Rohit Sharma', 'Mumbai', 'Male', 35),
('Kiran Mehta', 'Delhi', 'Other', 19),
('Aarti Verma', 'Bhopal', 'Female', 45);
----------------------------------------------------------
--domain using alter command

--domain-3
create domain payment as varchar(50) check (value in('Paid','Unpaid','Unknown'));

alter table patient_data add column payment_status payment default 'Unknown';

select * from patient_data;

update patient_data set payment_status='Paid' where patient_id in (1,3,5);
-------------------------------------------------------------------------------
