-- CREATING TABLES
create table Person
(
  name varchar(20) NOT NULL PRIMARY KEY,
  age int,
  gender varchar(6)
);

create table Frequents
(
  name varchar(20),
  pizzeria varchar(30),
  PRIMARY KEY(name, pizzeria),
  FOREIGN KEY (name) REFERENCES Person(name)
);

create table Eats
(
  name varchar(20),
  pizza varchar(10),
  PRIMARY KEY(name, pizza),
  FOREIGN KEY (name) REFERENCES Person(name)
);

create table Serves
(
  pizzeria varchar(30), 
  pizza varchar(10), 
  price float,
  PRIMARY KEY(pizzeria, pizza)
);
-- DROPS
DROP TABLE Serves;
DROP TABLE Eats;
DROP TABLE Frequents;
DROP TABLE Person;

-- POPULATING THE TABLES

insert into Person values('Amy', 16, 'female');
insert into Person values('Ben', 21, 'male');
insert into Person values('Cal', 33, 'male');
insert into Person values('Dan', 13, 'male');
insert into Person values('Eli', 45, 'male');
insert into Person values('Fay', 21, 'female');
insert into Person values('Gus', 24, 'male');
insert into Person values('Hil', 30, 'female');
insert into Person values('Ian', 18, 'male');

insert into Frequents values('Amy', 'Pizza Hut');
insert into Frequents values('Ben', 'Pizza Hut');
insert into Frequents values('Ben', 'Chicago Pizza');
insert into Frequents values('Cal', 'Straw Hat');
insert into Frequents values('Cal', 'New York Pizza');
insert into Frequents values('Dan', 'Straw Hat');
insert into Frequents values('Dan', 'New York Pizza');
insert into Frequents values('Eli', 'Straw Hat');
insert into Frequents values('Eli', 'Chicago Pizza');
insert into Frequents values('Fay', 'Dominos');
insert into Frequents values('Fay', 'Little Caesars');
insert into Frequents values('Gus', 'Chicago Pizza');
insert into Frequents values('Gus', 'Pizza Hut');
insert into Frequents values('Hil', 'Dominos');
insert into Frequents values('Hil', 'Straw Hat');
insert into Frequents values('Hil', 'Pizza Hut');
insert into Frequents values('Ian', 'New York Pizza');
insert into Frequents values('Ian', 'Straw Hat');
insert into Frequents values('Ian', 'Dominos');

insert into Eats values('Amy', 'pepperoni');
insert into Eats values('Amy', 'mushroom');
insert into Eats values('Ben', 'pepperoni');
insert into Eats values('Ben', 'cheese');
insert into Eats values('Cal', 'supreme');
insert into Eats values('Dan', 'pepperoni');
insert into Eats values('Dan', 'cheese');
insert into Eats values('Dan', 'sausage');
insert into Eats values('Dan', 'supreme');
insert into Eats values('Dan', 'mushroom');
insert into Eats values('Eli', 'supreme');
insert into Eats values('Eli', 'cheese');
insert into Eats values('Fay', 'mushroom');
insert into Eats values('Gus', 'mushroom');
insert into Eats values('Gus', 'supreme');
insert into Eats values('Gus', 'cheese'); 
insert into Eats values('Hil', 'supreme');
insert into Eats values('Hil', 'cheese');
insert into Eats values('Ian', 'supreme');
insert into Eats values('Ian', 'pepperoni');

insert into Serves values('Pizza Hut', 'pepperoni', 12);
insert into Serves values('Pizza Hut', 'sausage', 12);
insert into Serves values('Pizza Hut', 'cheese', 9);
insert into Serves values('Pizza Hut', 'supreme', 12);
insert into Serves values('Little Caesars', 'pepperoni', 9.75);
insert into Serves values('Little Caesars', 'sausage', 9.5);
insert into Serves values('Little Caesars', 'cheese', 7);
insert into Serves values('Little Caesars', 'mushroom', 9.25);
insert into Serves values('Dominos', 'cheese', 9.75);
insert into Serves values('Dominos', 'mushroom', 11);
insert into Serves values('Straw Hat', 'pepperoni', 8);
insert into Serves values('Straw Hat', 'cheese', 9.25);
insert into Serves values('Straw Hat', 'sausage', 9.75);
insert into Serves values('New York Pizza', 'pepperoni', 8);
insert into Serves values('New York Pizza', 'cheese', 7);
insert into Serves values('New York Pizza', 'supreme', 8.5);
insert into Serves values('Chicago Pizza', 'cheese', 7.75);
insert into Serves values('Chicago Pizza', 'supreme', 8.5);

SET SERVEROUTPUT ON;
-- QUERIES USING PL/SQL

 DECLARE
  name_ VARCHAR2(20);
  age_ int;
  gender_ VARCHAR2(6);
  cursor c1 IS SELECT name from Person;
BEGIN
   OPEN c1;
    LOOP
      FETCH c1 INTO name_;
      EXIT WHEN c1%NOTFOUND;
      DBMS_OUTPUT.put_line(name_);
   END LOOP;
END;