One to One
<!--  -->
![One to One](https://github.com/TimBek2/phase-0/blob/master/week-8/imgs/One-to-One.png "One to One Schema")
This is a one-to-one relationship because each of the rows in both tables can only be associated with one row in the other table - you can't have multiple drivers licenses, and each license only points to one person. However, you don't want to have all of the license data in the regular person table, so you create another one for license information. 

Many to Many
<!--  -->
![Many to Many](https://github.com/TimBek2/phase-0/blob/master/week-8/imgs/Many%20to%20Many.png "Many to Many Schema")


Reflection

What is a one-to-one database?
A one to one database is a database in which two tables have a relationship wherein at most one row from each table can be associated with a row from the other table, like a pair. Examples include drivers licenses/passports or other singular identifiers. 

When would you use a one-to-one database? (Think generally, not in terms of the example you created).
I generally think I'll use a one-to-one database if I've got one table that's quite general, and I need to provide more data that I think would clutter the original table (for example, the in the loan example from the video - I've got a table of information on people, but then a whole new table just of data related to loans, but each one still only associated with one person)

What is a many-to-many database?
A many-to-many database is a database in which table rows from both tables can be associated with multiple rows from the other table, via a join table containing ids for the original two tables. For example, a musician can make many songs, but each song is not necessarily associated with only one artist - it could have been created by multiple performers, so one artist points to many songs while one song points to many artists. 

When would you use a many-to-many database? (Think generally, not in terms of the example you created).
I think a many-to-many databases become more useful when you start keeping track of more complicated databases with many moving parts more than just comparing two tables. 

What is confusing about database schemas? What makes sense?
Many to Many databases are still a complicated concept for me at least when thinking about how they'll be used, although I think I understand it conceptually. The other two relationships are quite clear in application and what they're used for. 
