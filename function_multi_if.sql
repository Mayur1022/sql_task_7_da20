
select * from student;

create or replace  function grade_check(marks int)
returns varchar as $$
begin
if marks >=95 then return 'A+';
elsif marks >=90 and marks < 95 then return 'A';
elsif marks >=80 and marks < 90 then return 'B';
elsif marks >=70 and marks < 80 then return 'C';
elsif marks >=60 and marks < 70 then return 'D';
else return 'E';
end if;
end;
$$ LANGUAGE plpgsql;

select * from student;

select student_id,full_name,marks,grade_check(marks) as grade from student;



