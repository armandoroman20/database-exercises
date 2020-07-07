use codeup_test_db;

--convert all select into delete


select 'albums released after 1991' as '1st select query';
-- select * from albums where release_date > 1991;
delete from albums where release_date > 1991;

select 'albums with disco genre' as '2nd select query';
-- select * from albums where genre = 'disco';
delete from albums where genre = 'disco';

select 'albums by Dire Straits' as '3rd select query';
-- select * from albums where artist = 'Dire Straits';
delete from albums where artist = 'Dire Straits';