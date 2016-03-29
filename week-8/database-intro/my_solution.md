1.SELECT * FROM states;

2.SELECT * FROM regions;

3.SELECT state_name, population FROM states;

4.SELECT state_name, population
  FROM states
  ORDER BY population DESC;

5.SELECT state_name
  FROM states
  WHERE region_id = 7;

6.SELECT state_name, population_density
  FROM states
  WHERE population_density > 50
  ORDER BY population_density ASC;

7.SELECT state_name
  FROM states
  WHERE population
  BETWEEN 1000000 AND 1500000;

8.SELECT state_name, region_id
  FROM states
  ORDER BY region_id ASC;

9.SELECT region_name
  FROM regions
  WHERE region_name LIKE "%central";

10.SELECT regions.region_name, states.state_name
   FROM regions
   JOIN states ON regions.id = states.region_id
   ORDER BY regions.id ASC;

![Image of schema]
(schema.png)

Reflection:
What are databases for?

Databases are for organizing collections of information so data can be easily retrieved and modified.

What is a one-to-many relationship?

A one to many relationship is one where something falls under the umbrella of another thing. For example, a state falls under the umbrella of a region: a region has many states, but a state can only have one associated region.

What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a unique identifier in a relational database. A foreign key is a field in one table that uniquely identifies a row in another table. A foreign key points to the primary key. You can determine which is which by looking at the table that contains the foreign key; the foreign key is unique and cannot be repeated in the collection.

How can you select information out of a SQL database? What are some general guidelines for that?

To select information out of a database, use SELECT. The following format should be followed:

SELECT column
FROM table;

You can also sort/group things using commands like
WHERE
GROUP BY
ORDER BY
