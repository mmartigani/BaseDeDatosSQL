select * from student_1;

select name  from student_1;
SELECT student_1.name , student_1.major 
from student_1
order by name;

SELECT student_1.name , student_1.major 
from student_1
order by name desc;

SELECT *
from student_1
order by student_id asc;

SELECT *
from student_1
order by major, student_id desc;

select * from student_1 limit 2;

select * from student_1 order by student_id desc limit 3;

select * from student_1 where major='tech';
select *from student_1 where major='tech' or name ='KATE';
SELECT * FROM student_1 WHERE MAJOR='BIOLOGY' OR NAME ='KATE';

SELECT * FROM student_1 WHERE student_id <3;
SELECT * FROM student_1 WHERE NAME IN ('tom','kate','marco');

select * from student_1 where major in ('biology','tech') and student_id >2;


