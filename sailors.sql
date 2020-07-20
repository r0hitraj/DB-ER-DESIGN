CREATE DATABASE sailorsdb;
USE sailorsdb; /* the following objects will be created in sailorsdb */
drop table if exists Sailors;
create table Sailors (
 sid integer primary key,
 name varchar(32) not null,
 rating integer,
 age integer
);
drop table if exists Boats;
create table Boats (
 bid integer primary key,
 name varchar(32) not null,
 color varchar(16)
);
drop table if exists Reserves;
create table Reserves ( sid integer,
 bid integer,
 day date,
 primary key (sid, bid, day),
 foreign key (sid) references Sailors(sid),
 foreign key (bid) references Boats(bid)
);