-- JaredCo Solution

-- This is the first query:

SELECT DISTINCT year from population_years;

-- What is the largest population size for Gabon in this dataset?

SELECT population
FROM population_years
WHERE country = 'Gabon'
ORDER BY population DESC
LIMIT 1;

-- What were the 10 lowest population countries in 2005?

select country, population
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

-- What are all the distinct countries with a population of over 100 million in the year 2010?

SELECT DISTINCT country
FROM population_years
WHERE population > 100
  AND year = 2010;

-- How many countries in this dataset have the word “Islands” in their name?

SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%islands%';

-- What is the difference in population between 2000 and 2010 in Indonesia?

SELECT population, year
FROM population_years
WHERE country = "Indonesia"
AND year = 2000 
OR country = "Indonesia" 
AND year = 2010;