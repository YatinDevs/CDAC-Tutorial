create database JSP;
use JSP;

create table product(
pid int,
pname varchar(30),
price int
);
select * from product;

create table content(
cid int,
cname varchar(30),
description varchar(30)
);
select * from content;


create table person(
name varchar(30),
age int,
nationality varchar(30)
);
select * from person;