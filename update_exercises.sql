use codeup_test_db;
/*Write SELECT statements to output each of the following with a caption:

All albums in your table.
All albums released before 1980
All albums by Michael Jackson
 */


select name as 'all albums in table'
from albums;
--Make all the albums 10 times more popular (sales * 10)
update albums set sales = sales * 10;

select name, release_date as 'albums before 1980'
from albums
where release_date < 1980;
--Move all the albums before 1980 back to the 1800s.
update albums set release_date = 1800 where release_date < 1980;

select name as 'all albums by Michael Jackson'
from albums where artist = 'Michael Jackson';
--Change 'Michael Jackson' to 'Peter Jackson'
update albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';
