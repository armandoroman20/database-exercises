USE codeup_test_db;

drop table if exists albums;

create table if not exists albums (
    id INT UNSIGNED not null AUTO_INCREMENT,
    artist VARCHAR(100),
    name VARCHAR(180),
    release_date smallint unsigned,
    sales double,
    genre varchar(100),
    primary key (id)
)

/* this will be used to run it --> mysql -u codeup_test_user -p < albums_migration.sql;
    recall password is password
 */
