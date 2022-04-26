show databases;
create database empleados;
use empleados;
create table employees(id varchar(20),age int,fecha date, sex char(1),
city varchar(15), dept varchar(15), salary float);
select*from employees;
insert into employees values("101",35,"2005-05-30","M","chicago","Sales",70000),
("102",30,"1999-05-25","M","seatle","marketing",55000),
("103",28,"2009-03-10","F","boston","product",62000),
("104",37,"2011-07-12","M","austin","tech",57000),
("105",33,"2017-10-27","F","new york","Sales",72000),
("106",35,"2014-12-20","F","houston","finance",80000),
("107",40,"2012-07-14","M","chicago","Sales",100000),
("108",34,"2013-0-21","F","chicago","hr",90000),
("109",25,"2011-02-27","M","chicago","Sales",65000),
("110",28,"2018-05-30","M","chicago","Sales",77000);
select dept, avg(salary) as average_salary from employees group by dept;

