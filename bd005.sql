create table student_1(
student_id int,
name varchar(20),
major varchar (20),
primary key (student_id));

describe student_1;
drop table student
alter table student_1 add gpa decimal(3,2);
describe student_1;
alter table student_1 drop column gpa;
describe student_1;


insert into student_1 values 
(1, 'jack','biology');
select * from student_1;
insert into student_1 values 
(2, 'kate', 'sociology'),
(3,'claire','tech');
insert into student_1(student_id, name)values(4, 'johantan');
insert into student_1 values(5,'marco','tech');
insert into student_1 values(6,'marcela','it');

update student_1
set major = 'bio'
where major = 'biology';

update student_1
set name='tom',major ='undecided'
where student_id=1;

delete from student_1
where student_id =6;




 