/* https://www.hackerrank.com/challenges/draw-the-triangle-1/problem */

/* initialize my own variable number to 21*/
SET @number = 21;

/* decrement number by 1 every loop */
SELECT REPEAT('* ', @number := @number -1)

/* contains metadata about the db */
FROM information_schema.tables;