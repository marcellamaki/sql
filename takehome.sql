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


