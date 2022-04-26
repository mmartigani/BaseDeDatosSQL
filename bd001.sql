show databases;
use pacientes;
create table historia_clinica(Name varchar(25), Age int, Sex char(1),
realizo date, city varchar(15), result varchar(10));
insert into historia_clinica
values ("Susana" , 45 , "F","2022-04-01","Cordoba","Clase II"),
("Andrea",35,"F","2022-04-02","Cordoba","Clase II"), 
("Natalia",22,"F","2022-04-03","Cordoba"," Clase I"), 
("Gisela",18,"F", "2022-04-04","Cordoba","Clase II"),
("estefania",25,"F", "2022-04-05", "Buenos Aires","Clase I"),
("Cristina", 50,"F", "2022-04-07", "Catamarca","Clase I");
select * from historia_clinica;
select distinct  city from  historia_clinica;
select count(Name) from historia_clinica;
-- select sum(salary) from historia_clinica;
-- select avg(salary) from historia_clinica;
select Name, Age, City from historia_clinica;
select * from historia_clinica where Age >30;
select Name, sex, City from historia_clinica where sex ="F";
select * from historia_clinica where 
city="Cordoba" or city = "Catamarca";
select * from historia_clinica where 
city in("Cordoba" , "Buenos Aires");
select * from historia_clinica where 
realizo between "2022-04-01" and "2022-04-05";
select * from historia_clinica where 
age <30 and sex ="F";
select sex, sum(Age) as total_age from historia_clinica;
select * from historia_clinica order by age;
select * from historia_clinica order by age desc;
select (10+20) as addiction;
select (10-20) as substraction;
select length("Cordoba") as total_lenght;
select repeat('@', 7);
select upper("catamarca");
select lower("cordoba");
select curdate();
select day(curdate());
select now();
select upper("buenos aires") as upper_case;
select character_length("catamarca") as total_len;
select name, character_length(name) as total_len
from historia_clinica;
select concat("cordoba" " esta" " en Argentina");
select concat("cordoba" " esta" " en Argentina")as merged;
select reverse("cordoba");
select reverse(name) from historia_clinica;
select replace("el cafe tiene azucar","azucar", "cafeina" );
select length(("      cordoba        "));
select position("cafeina" in "el cafe tiene cafeina") as name;
select ascii('a');
select ascii('7');











