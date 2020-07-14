use codeup_test_db;


drop table if exists pets;

create table pets(
id int unsigned,
pet_name varchar(30) not null,
owner_name varchar(30),
age int
);

describe pets;

-- add a primary key

alter table pets modify column id int unsigned primary key auto_increment;

describe pets;

-- dropping a primary key
alter table pets
modify column id int,
drop primary key;

describe pets;

# alter table pets
# drop primary key;
#
# describe pets;

-- this is how to show table schema
show create table pets;

-- define the primary key on table creation statement
drop table pets;
create table pets(
    id int unsigned auto_increment primary key,
    pet_name varchar(30) not null,
    owner_name varchar(30),
    age int
);
describe pets;

-- define a primary key for multiple columns (only for demo - not in class)
drop table if exists pets;
create table pets(
    id int unsigned auto_increment,
    pet_name varchar(30) not null,
    owner_name varchar(30),
    age int,
    primary key (id, age)
);
describe pets;

-- add name index
alter table pets
add index `pet_name_key` (pet_name);

show index from pets;

-- drop name index
alter table pets
drop index pet_name_key;

show index from pets;

drop table if exists pets;
create table pets(
    id int unsigned auto_increment,
    pet_name varchar(30) not null,
    owner_name varchar(30),
    age int,
    primary key (id),
    unique unique_on_on (pet_name, owner_name)
);
describe pets;

-- test unique constraint
insert into pets (pet_name, owner_name, age)
values ('buddy', 'jack smith', 3);

insert into pets (pet_name, owner_name, age)
values ('buddy', 'fred', 2);

insert into pets (pet_name, owner_name, age)
values ('snickers', 'jack smith', 3);

insert into pets (pet_name, owner_name, age)
values ('bear', 'jack smith', 6);

delete from pets where pet_name = 'bear';

select * from pets;

-- foreign keys

drop table if exists owners;

create table owners (
    id int unsigned auto_increment primary key,
    name varchar(30) not null,
    address varchar(155) default 'undisclosed'
);
describe owners;

drop table if exists pets;
create table pets(
    id int unsigned auto_increment,
    pet_name varchar(30) not null,
    owner_id int unsigned,
    age int,
    primary key (id),
    foreign key (owner_id) references owners(id)
);
describe pets;

insert into pets (pet_name, owner_id, age)
values ('Puddle', null, 2);

select * from pets;

insert into owners (name, address)
values ('Triple H', '1234 king of the ring');

insert into owners (name, address)
values ('Muffin man', '1918 Drury Ln');

insert into owners (name)
values ('Tony Stark');

select * from owners;

insert into pets (pet_name, owner_id, age)
values ('jobba', 2, 5);

insert into pets (pet_name, owner_id, age)
values ('groot', 3, 5);

insert into pets (pet_name, owner_id, age)
values ('Drax', 1, 5);

select * from pets;

use employees;
show tables;
describe departments;
show index from departments;

describe dept_emp;
show index from dept_emp;

describe dept_manager;
show index from dept_manager;

describe employees;
show index from employees;

describe salaries;
show index from salaries;

describe titles;
show index from titles;

drop table if exists pets;
drop table if exists owners;

create table owners (
    id int unsigned auto_increment primary key,
    name varchar(30) not null,
    address varchar(155) default 'undisclosed'
);
describe owners;


create table pets(
    id int unsigned auto_increment,
    name varchar(30) not null,
    owner_id int unsigned,
    age int,
    primary key (id),
    foreign key (owner_id) references owners(id)
);
describe pets;

-- seed tables
insert  into owners (name, address)
values ('darth smith', '11388 death star rd');

insert  into owners (name, address)
values ('mike jones', '1234 bel-aire rd');

insert  into owners (name, address)
values ('tom hanks', '123 brookview');

insert  into owners (name, address)
values ('Vin diesel', '965 craigmont');

insert  into owners (name, address)
values ('The rock', '619 Boulder ave');

insert into pets (name, owner_id, age)
values('spot', 1, 4);

insert into pets (name, owner_id, age)
values('blue', 4, 4);

insert into pets (name, owner_id, age)
values('maroon', 3, 4);

insert into pets (name, owner_id, age)
values('orange', null, 6);




select * from pets;
select * from owners;


select pets.name, owners.address from pets
    inner join owners on pets.owner_id = owners.id;

select pets.name, owners.address from pets
    left join owners on pets.owner_id = owners.id;

select pets.name, owners.address from pets
    right join owners on pets.owner_id = owners.id;

use employees;

select concat(employees.first_name, ' ', employees.last_name) as 'Full Name', departments.dept_name as 'Department'
from employees
    join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where employees.emp_no = 10001;


create database join_test_db;
use join_test_db;

CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id)
values
('Brenna', 'brenna@example.com', null),
('Alicia', 'Alicia@example.com', 2),
('Lucy', 'Lucy@example.com', 2),
('Victoria', 'Victoria@example.com', 2);

select users.name, users.role_id from users
    inner join roles on users.role_id = roles.id;

select users.name, users.role_id from users
    left join roles on users.role_id = roles.id;

select users.name, users.role_id from users
    right join roles on users.role_id = roles.id;

create database adlist;
use adlist;

drop table if exists user_profile;
create table user_profile(
    id int UNSIGNED NOT NULL AUTO_INCREMENT primary key,
    first_name varchar(50) not null,
    last_name varchar (50) not null
);

drop table if exists users;
create table users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password varchar(50) not null,
    user_profile_id INT UNSIGNED not NULL,
    FOREIGN KEY (user_profile_id) references user_profile (id)
    );

drop table if exists ad_category;
create table ad_category (
    cat_id int UNSIGNED NOT NULL PRIMARY KEY,
    name varchar(50)
);

drop table if exists user_ads;
create table user_ads (
    user_profile_id INT UNSIGNED NOT NULL,
    cat_id INT UNSIGNED NOT NULL,
    foreign key (user_profile_id) references users (user_profile_id),
    foreign key (cat_id) references ad_category (cat_id)
);

drop table if exists ad;
create table ad (
    id INT UNSIGNED NOT NULL auto_increment primary key,
    subject varchar(50),
    date_created smallint unsigned,
    description varchar(50),
    cat_id INT UNSIGNED not NULL,
    foreign key(cat_id) references ad_category (cat_id)
);

insert into user_profile(id, first_name, last_name)
values (1, 'joe', 'smith'),
        (2, 'Bill', 'Miller');

