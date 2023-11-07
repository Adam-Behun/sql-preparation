/* https://www.hackerrank.com/challenges/the-pads/problem */

SELECT CONCAT(name,"(",LEFT(OCCUPATION,1),")") as Name 
FROM OCCUPATIONS 
UNION ALL 
SELECT CONCAT("There are a total of ",TEMP.OCCURENCE," ",TEMP.OCUP,"s.") as Name 
FROM (SELECT LOWER(occupation) AS ocup, COUNT(occupation) AS occurence 
      FROM OCCUPATIONS 
      GROUP BY occupation) 
      temp ORDER BY name