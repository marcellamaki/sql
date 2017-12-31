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

