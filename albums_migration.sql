USE codeup_test_db;

drop table if exists albums;

create table album (
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(50),
    release_date DATE,
    sales double,
    genre varchar(50),
    primary key (id)
)
