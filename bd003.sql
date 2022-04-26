create database sql_base;
show databases;
use sql_base;
create table base_empleados (Emp_id int primary Key, Emp_name varchar(25),
age int, Gender char(1), doj date, dept varchar(20), city varchar(15),salary float);
describe base_empleados;
insert into base_empleados values(101, "jimmy",35, "M","2005-05-30","sales","chicago",700000),
(102, "shane",30, "M","1999-06-25", "marketing", "seatle",55000),
(103,"mary",28, "F","2009-03-10","product", "boston",63000),
(104,"dwane",37, "M","2011-07-12", "tech","austin",570000),
(105,"sara",32, "F","2017-10-27", "sales","new york", 72000),
(106,"mmy", 35, "F","2014-12-20","it","seatle",80000),
(107,"jack", 40, "M","2012-07-14","finance","houston",100000),
(108,"angela",36, "F","2007-02-04","tech","new york",110000),
(109,"marcus",25, "M","2010-07-18","hr","boston", 90000),
(110, "david", 34, "M","2009-08-25","product","miami",75000);
select * from base_empleados;
select distinct city from base_empleados;
select distinct dept from base_empleados;
select avg(age)from base_empleados;
select dept, avg(age) from base_empleados group by dept;
select dept, round(avg(age),1) as average_age from base_empleados
group by dept;
select dept, sum(salary)as total_salary from base_empleados group by dept;
select count(Emp_id),city  from base_empleados group by city
order by count(Emp_id)desc;
select year(doj) as year, count(Emp_id) from base_empleados group by year(doj);
create table sales(product_id int, sell_price float, quantity int, state varchar(20));
insert into sales values
(121,320.0,3,"california"),
(121,320.0,6,"texas"),
(123,290.0,2,"california"),
(123,290.0,4,"texas"),
(121,320.0,2,"houston"),
(121,320.0,5,"auntin"),
(123,290.0,2,"chicago"),
(121,320.0,7,"chicago");
select *from sales
select product_id ,sum(sell_price * quantity) as revenue
from sales group by product_id;
create table c_product(product_id int,cost_price float);
insert into c_product values(121,270.0),(123,250.0);
select c.product_id ,sum((s.sell_price-c.cost_price)*(s.quantity)as profit
from sales as s inner join c.product_id as c 
where s.product_id = c.product_id
group by c.product_id;

select * from base_empleados;
select dept, avg(salary) as svg_salary
from base_empleados 
group by dept
having avg(salary) > 75000;

select city, sum(salary) as total_salary
from base_empleados
group by city
having sum(salary) > 200000;

select dept, count(*) as emp_count
from base_empleados
group by dept
having count(*) <2;

select city, count(*) as emp_count
from base_empleados
where city !="houston"
group by city
having count(*)<2;


select dept, count(*) as emp_count
from base_empleados
group by dept
having  avg(salary) >75000;








