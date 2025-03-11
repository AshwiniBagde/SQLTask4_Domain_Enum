create table movies(
Movie_ID serial,
Title varchar,
Industry varchar,
Release_Year int
)

select * from movies

insert into movies (Title, Industry, Release_Year) values ('Bajarangi Bhaijan', 'Bollywood', 2015)
insert into movies (Title, Industry, Release_Year) values ('Inception', 'Hollywood', 2010)
insert into movies (Title, Industry, Release_Year) values ('Chhaava', 'Bollywood', 2025)

__Domain__

create domain movies_domain varchar(15)
check (value in ('Bollywood', 'Hollywood','Tollywood'))

alter table movies alter column Industry set data type movies_domain using industry :: movies_domain

__check__

insert into movies (Title, Industry, Release_Year) values ('Chhaava', 'AB', 2025)

__ERROR__

ERROR:  value for domain movies_domain violates check constraint "movies_domain_check" 

SQL state: 23514


