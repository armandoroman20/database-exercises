use codeup_test_db;

/* In select_exercises.sql write queries to find the following information.
Before each item, output a caption explaining the results:
 */

-- The name of all albums by Pink Floyd.

select name as 'All album names by Pink Floyd'
from albums where artist = 'Pink Floyd';

-- The year Sgt. Pepper's Lonely Hearts Club Band was released

select release_date as 'Sgt. Pepper''s Lonely Hearts Club Band release date'
from albums where name = 'Sgt. Peppers Lonely Hearts Club Band';

--The genre for Nevermind

select genre as 'Gengre for Nirvana''s album Nevermind'
from albums where name = 'Nevermind';

--Which albums were released in the 1990s

select name as 'all albums released in the 90''s'
from albums where release_date between 1989 and 2000;

--Which albums had less than 20 million certified sales

select name  as 'albums with less than 20 million sales'
from albums where sales < 20;

--All the albums with a genre of "Rock".
--Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

select name, genre as 'all albums with genre of rock'
from albums where genre like '%rock%';
from albums where genre = 'rock';



