drop database if exists project1;
create database if not exists project1;
use project1;
create table if not exists magaz
(id int,
title varchar(30),
address varchar(100),
city varchar(20),
has varchar(20),
index(id, title));
insert into magaz values

(0, 'Пятёрочка', 'Каширское шоссе, 96к1', 'Москва', '8:00-23:00'),
(1, 'Перекрёсток', 'Ореховый бульвар, 12А', 'Москва', '10:00-22:00'),
(2, 'Пятёрочка', 'Невский проспект, 30', 'Санкт-Петербург', '8:00-22:00'),
(3, 'Азбука вкуса', 'НЕвский проспект, 1', 'Санкт-Петербург', '10:00-22:00');

select * from magaz;

update magaz set title='Пятёрочка 2' where title='Пятёрочка' limit 100;
update magaz set address='пр-т Большевиков, 33' where city='Санкт-Петербург' limit 200;
update magaz set title='Акциии и скидки на продукцию' where has='круглосуточно' limit 300;
update magaz set address='улица Юлиуса Фучика, 1' where has='круглосуточно' limit 200;
delete from magaz where id=2 limit 5;
select * from magaz;