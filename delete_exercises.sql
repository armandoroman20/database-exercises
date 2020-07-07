use codeup_test_db;

--convert all select into delete


select * as 'albums released after 1991';
--from albums where release_date > 1991;
delete from albums where release_date > 1991;

select * as 'albums with disco genre';
--from albums where genre = 'disco';
delete from albums where genre = 'disco';

select * as 'albums by Dire Straits';
--from albums where artist = 'Dire Straits';
delete from albums where artist = 'Dire Straits';