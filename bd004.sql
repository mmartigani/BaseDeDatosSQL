create database sql_joins;
show databases;
use sql_joins;
create table cricket(cricket_id int auto_increment, name varchar(30),
primary Key (cricket_id));
create table football(football_id int auto_increment, name varchar(30),
primary Key (football_id));

insert into cricket (name)
values('stuart'),('michael'),('john'),('hayden'),('fleming');
select * from cricket;

insert into football (name)
values('stuart'),('john'),('hayden'),('langer'),('astle');
select * from football;

select * from cricket  as c inner join
football as f on c.name=f.name;

select c.cricket_id , c.name, f.football_id , f.name
from cricket as c inner join football as f on c.name=f.name;

show tables;

