/* https://www.hackerrank.com/challenges/draw-the-triangle-2/problem */

/* create a variable number and initialize it to 0 */
SET @number = 0;

/* use select repeat function and increment the number by 1 */
SELECT REPEAT('* ', @number := @number + 1)

/* information_schema contains metadata about the database */
FROM information_schema.tables

/* only print to this point */
WHERE number < 20;