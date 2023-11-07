/* https://www.hackerrank.com/challenges/the-pads/problem */

select concat(name,"(",left(occupation,1),")") as name 
from OCCUPATIONS 
union all 
select concat("There are a total of ",temp.occurence," ",temp.ocup,"s.") as name 
from (select lower(occupation) as ocup, count(occupation) as occurence 
      from OCCUPATIONS 
      group by occupation) 
      temp order by name