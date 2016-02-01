<!-- 1. Select all data for all states -->
SELECT * FROM states;
<!-- 2. Select all data for all regions -->
ELECT * FROM regions;
<!-- 3. Select the state_name and population for all states -->
SELECT state_name, population FROM states;
<!-- 4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top -->
SELECT state_name, population FROM states
ORDER BY population DESC;
<!-- 5. Select the state_name for the states in region 7 -->
SELECT state_name FROM states WHERE region_id = 7;
<!-- 6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense -->
SELECT state_name, population_density
FROM states
WHERE population_density > 50
ORDER BY population_density;
<!-- 7. Select the state_name for states with a population between 1 million and 1.5 million people -->
SELECT state_name
FROM states
WHERE population BETWEEN 1000000 AND 1500000;
<!-- 8. Select the state_name and region_id for states ordered by region in ascending order -->
SELECT state_name, region_id FROM states
ORDER BY region_id ASC;
<!-- 9. Select the region_name for the regions with "Central" in the name -->
SELECT region_name
FROM regions
WHERE region_name LIKE '%central%';
<!-- 10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables) -->
SELECT regions.region_name, states.state_name
FROM regions
INNER JOIN states
ON regions.id=states.region_id;

<!-- My Schema -->
![my schema](https://github.com/TimBek2/phase-0/blob/master/week-8/database-intro/Screen%20Shot%202016-02-01%20at%202.52.44%20AM.png "My Schema")
<!-- Reflection -->
What are databases for?
Databases are for storing, accessing, and manipulating large quantities of data in a way that is less tedious.

What is a one-to-many relationship?
A one-to-many relationship is a relationship within two tables in a database where each single row in one table can be related to many (0, 1 or any other number) of rows in other tables - for example, one person can own many outfits, cars, phones, pets, etc.

What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is the main identifier for a given table. Primary keys do not HAVE to exist for every table, but it's best if every table has one, for indexing purposes and other reasons. A foreign key, on the other hand, is a field that references a primary key in another table in order to associate the two tables. You can determine which is which because one can have multiple of the other, but not vice versa - you can check by saying "A can have many of B, B can only have one A" and making sure that statement makes sense. EG - A state can have many cities within it, but each city can only be in one state. 

How can you select information out of a SQL database? What are some general guidelines for that?
To select information from a SQL database, you must use the SQL statements. General guidelines are that SQL is not case sensitive, but SQL statements should be in all caps. Also, the shell will not begin interpretting code until it receives a semicolon, so those must go when you want it to return something. Lastly, SQL can be written all on one line, but it is common to insert line breaks at the beginning of each new SQL statement, so that a uppercase word begins each line, and each line only represents one element of the query. 
