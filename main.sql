
-- the largest population size of Gabon
-- in the dataset
SELECT *
FROM population_years
WHERE country = "Gabon"
ORDER BY population DESC
LIMIT 1;

-- 10 lowest population countruies in 2005
SELECT *
FROM population_years
WHERE year = 2005
ORDER BY population ASC
LIMIT 10;

-- all the distinct countries with a population -- of over 100 million in the year 2010
SELECT *
FROM population_years
WHERE year = 2010
AND population > 100;

-- countries that have the word "Islands"
-- in their name
SELECT DISTINCT country
FROM population_years
WHERE country LIKE '%Islands%';

-- the difference in population between 2000 
-- and 2010 in Indonesia
SELECT MAX(population) - MIN(population)
AS "Difference"
FROM population_years
WHERE country = "Indonesia"
AND (year = 2000 OR year = 2010);
