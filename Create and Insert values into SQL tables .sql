/* creating fav movie table */

create table fav_movie(friend varchar(30), movie varchar(20));
insert into fav_movie(friend, movie) 
values ("Rachel DeSantos", "Avengers"),
("Sujin Lee" ,"Despicable Me"),
("Najil Okoro","Frozen");
select * from fav_movie;

create table purchase 
(friend varchar(20),tickets int);

insert into purchase
(friend,tickets) values ('Rachel DeSantos', 3),
('Sujin Lee', 2),
('Najil Okor', 2),
('John Anderson', 1);
select * from purchase;
drop table tickets;

