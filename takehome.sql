1. 
SELECT name, population FROM city ORDER BY population DESC LIMIT 1

2. 
SELECT SUM(population) FROM city

3. 
SELECT district FROM city GROUP BY district ORDER BY COUNT(district) DESC LIMIT 1

4. 
SELECT district FROM city GROUP BY district ORDER BY SUM(population) DESC LIMIT 1;

5. 
SELECT indepyear, COUNT(*) FROM country WHERE indepyear IS NOT NULL GROUP BY indepyear ORDER BY COUNT(*) DESC LIMIT 1

6. 
SELECT name FROM country ORDER BY population DESC LIMIT 1

7.
SELECT name, population FROM city WHERE countrycode = (SELECT countrycode FROM city GROUP BY countrycode ORDER BY SUM(population) DESC LIMIT 1) ORDER BY population DESC LIMIT 1

8. 
SELECT MAX(population), countrycode, name FROM city GROUP BY countrycode, name ORDER BY MAX(population) DESC

9. 
SELECT district FROM countrylanguage
LEFT JOIN city on countrylanguage.countrycode = city.countrycode WHERE language = 'English' AND IsOfficial ='T'  GROUP BY district ORDER BY SUM(population) DESC LIMIT 1

10. 
SELECT name FROM city LEFT JOIN countrylanguage on city.countrycode = countrylanguage.countrycode WHERE language = 'Spanish' AND IsOfficial ='T' ORDER BY population ASC LIMIT 1


11. 
SELECT region, SUM(population) FROM country GROUP BY region HAVING SUM(population) > 500000000

12. 
SELECT country.name FROM country
LEFT JOIN city on city.countrycode = country.code WHERE city.name IS NULL

13. 
SELECT name FROM country WHERE length(name) = (SELECT max(length(name)) FROM country);

14.
SELECT language, (percentage * country.population * .01) FROM country
LEFT JOIN countrylanguage on country.code = countrylanguage.countrycode WHERE code = (SELECT code FROM country WHERE name = 'Switzerland')

15. 
DELETE FROM city WHERE countrycode = (SELECT code FROM country WHERE name = 'Canada')

16. 
DELETE FROM countrylanguage
DELETE * FROM countrylanguage

17. 
ALTER TABLE city
ADD indepyear year;

UPDATE city 
SET indepyear = country.indepyear
FROM city INNER JOIN country on city.countrycode = country.code;
