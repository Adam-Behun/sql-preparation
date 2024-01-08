/* https://www.hackerrank.com/challenges/sql-projects/problem */

/* the two subqueries get pushed into this one and we select start_date and MIN(end_date)*/

/* print just these two columns */
SELECT start_date, MIN(end_date)
FROM 

    /* subquery start_date that does not match end_date to a tmp table a */
    (SELECT start_date FROM projects WHERE start_date NOT IN (SELECT end_date FROM projects)) a,

    /* subquery that creates a temp table b */
    (SELECT end_date FROM projects WHERE end_date NOT IN (SELECT start_date FROM projects)) b

/* part of the main query */
WHERE start_date < end_date
GROUP BY start_date
ORDER BY DATEDIFF(start_date, MIN(end_date)) DESC, start_date