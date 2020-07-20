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

insert into Sailors (sid, name, rating, age) values (22, 'Dustin',
7, 45);
insert into Sailors (sid, name, rating, age) values (29, 'Brutus',
1, 33);
insert into Sailors (sid, name, rating, age) values (31, 'Lubber',
8, 55.5);
insert into Sailors (sid, name, rating, age) values (32, 'Andy',
8, 25.5);
insert into Sailors (sid, name, rating, age) values (58, 'Rusty',
10, 35);
insert into Sailors (sid, name, rating, age) values (64,
'Horatio', 7, 35);
insert into Sailors (sid, name, rating, age) values (71, 'Zorba',
10, 16);
insert into Sailors (sid, name, rating, age) values (85, 'Art', 3,
25.5);
insert into Sailors (sid, name, rating, age) values (95, 'Bob', 3,
63.5);
insert into Boats (bid, name, color) values (101, 'Interlake',
'blue');
insert into Boats (bid, name, color) values (102, 'Interlake',
'red');
insert into Boats (bid, name, color) values (103, 'Clipper',
'green');
insert into Boats (bid, name, color) values (104, 'Marine',
'red');
insert into Reserves (sid, bid, day) values (22, 101, '2017-10-
10');
insert into Reserves (sid, bid, day) values (22, 102, '2017-10-
10');
insert into Reserves (sid, bid, day) values (22, 103, '2017-07-
10');
insert into Reserves (sid, bid, day) values (22, 102, '2017-09-
11');
insert into Reserves (sid, bid, day) values (22, 104, '2017-11-
07');
insert into Reserves (sid, bid, day) values (31, 102, '2017-11-
07');
insert into Reserves (sid, bid, day) values (31, 103, '2017-08-
07');
insert into Reserves (sid, bid, day) values (64, 101, '2017-09-
19');
insert into Reserves (sid, bid, day) values (64, 102, '2017-09-
29');