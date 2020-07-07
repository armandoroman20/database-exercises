use codeup_test_db;

/* In select_exercises.sql write queries to find the following information.
Before each item, output a caption explaining the results:
 */

-- The name of all albums by Pink Floyd.

select 'All album names by Pink Floyd' as '1st select query';
select name from albums where artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released

select 'Sgt. Pepper''s Lonely Hearts Club Band release date' as '2nd select query';
select release_date from albums where name = 'Sgt. Peppers Lonely Hearts Club Band';

--The genre for Nevermind

select 'Gengre for Nirvana''s album Nevermind' as '3rd select query';
select genre from albums where name = 'Nevermind';

--Which albums were released in the 1990s

select 'all albums released in the 90''s' as '4th select query';
select * from albums where release_date between 1989 and 2000;

--Which albums had less than 20 million certified sales

select 'albums with less than 20 million sales' as '5th select query';
select * from albums where sales < 20;

--All the albums with a genre of "Rock".
--Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

select 'all albums with genre of rock' as '6th select query';
select * from albums where genre = 'rock';


