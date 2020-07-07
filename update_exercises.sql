use codeup_test_db;
/*Write SELECT statements to output each of the following with a caption:

All albums in your table.
All albums released before 1980
All albums by Michael Jackson
 */

select 'all albums in table' as '1st select query';
select * from albums;
--Make all the albums 10 times more popular (sales * 10)
update albums set sales = sales * 10;

select 'all albums released before 1980' as '2nd select query';
select * from albums where release_date < 1980;
--Move all the albums before 1980 back to the 1800s.
update albums set release_date = 1800 where release_date < 1980;

select 'all albums by Michael Jackson' as '3rd select query';
select * from albums where artist = 'Michael Jackson';
--Change 'Michael Jackson' to 'Peter Jackson'
update albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';
