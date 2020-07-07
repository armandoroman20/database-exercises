USE quotes_db;


/*********************** SELECT ***********************/

-- TODO TOGETHER: View the author last name and the quote from quotes. Before the output, add a caption explaining the results.

    select 'these are author last names' as 'first select query';

    select author_last_name, quote from quotes;
-- TODO TOGETHER: Select all information from the quotes table. Before the output, add a caption explaining the results.
-- Notice how the id has been auto-incrementing on each insert.

    select 'This is all the info from quotes table' as '2nd select query';
    select * from quotes;

/*********************** WHERE ***********************/

-- TODO TOGETHER: View quotes by Douglas Adams.

    select quote
    from quotes
    where author_last_name = 'adams';

--     OR

    select * from quotes where author_last_name = 'adams';

-- TODO TOGETHER: View quotes by Douglas Adams. Add a caption
    select quote as 'douglas adams quotes' from quotes where author_last_name = 'adams';

-- TODO TOGETHER: View quote with primary key (in this case id) of 5
    select * from quotes where id = 5;

-- TODO TOGETHER: Select all from quotes where quote contains(is like) "the"
    select * from quotes where quote like '%the%';




/*********************** UPDATE ***********************/
-- TODO TOGETHER: View all quotes
    select * from quotes

-- TODO TOGETHER: Update quote 4 to first name = Samuel and last name = Clemens

    select * from quotes where id = 4;
    select author_first_name, author_last_name from quotes where id = 4;


    update quotes set author_first_name = 'Samuel', author_last_name = 'Clemens' where id = 4;
/*********************** DELETE ***********************/

-- TODO TOGETHER: Delete quote with id 3. Then view the output.

    select * from quotes where id = 3;
    delete from quotes where id = 3;




/*********************** TRUNCATE ***********************/
-- TODO TOGETHER: Truncate quotes table.... there is no going back! Deletes all records.

