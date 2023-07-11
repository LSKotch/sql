drop database if exists test;
create database if not exists test;
use test;
create table if not exists polzovat
(id int,
username varchar(30),
sept date );
insert into polzovat values
(1, 'п 1', '2022-08-09'),
(2, 'п 2', '2022-08-15'),
(3, 'п 3', '2022-08-17'),
(4, 'п 4', '2022-08-01'),
(5, 'п 5', '2022-08-25');
select * from polzovat;
create table if not exists serials
(id int,
username varchar(50),
rez varchar(40),
zanr varchar(20));
insert into serials values
(1, 'сериал 1', 'Djonie Depp', 'комедия'),
(2, 'сериал 2', 'Silvester Stalone', 'боевик'),
(3, 'сериал 3', 'Antonio Banderas', 'комедия');
insert into serials(username, rez) values
( 'сериал 4', 'Ann Heteye'),
('сериал 5', 'Kiany Rivz');
select * from serials;
create table if not exists otz
(id int,
username varchar(50),
rez varchar(40),
ot varchar(100));
insert into otz values
(1, 'сериал 1', 'Djonie Depp', 'say hello'),
(2, 'сериал 2', 'Silvester Stalone', 'бsay hello'),
(3, 'сериал 3', 'Antonio Banderas', 'say hello');
insert into otz(username, rez) values
( 'сериал 4', 'Ann Heteye'),
('сериал 5', 'Kiany Rivz');
select * from otz;
create table if not exists zanr
(id int,
username varchar(30));
insert into zanr values
(1, 'комедия'),
(2, 'приключенческий боевик'),
(3, 'исторический'),
(4, 'трагедия'),
(5, 'фэнтази');
select * from zanr;
update polzovat set username='пользователь' limit 100;
select * from polzovat;
update polzovat set username='lsk2023' where sept='2009-09-09' limit 5;
select * from polzovat;
delete from zanr where username='комедия' limit 5;
-- delete from zanr where id=5 limit 5;
select * from zanr;