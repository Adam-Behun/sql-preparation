/* https://www.hackerrank.com/challenges/print-prime-numbers/problem */

/* first CTE generates numbers 2-999 */
WITH

/* recursive is a keyword, numbers is a name, n is the column generated */
RECURSIVE numbers(n) AS (
    SELECT 2
    UNION ALL
    SELECT n + 1
    FROM Numbers
    WHERE n < 1000
)
SELECT GROUP_CONCAT(n separator '&')
FROM (
    SELECT numbers.n /* numbers is CTE and n is the column containing the numbers 2-999 */
    FROM numbers

    /* factors as alias for numbers table */
    /* join tables where the numbers divide with no remainder */
    JOIN numbers factors ON numbers.n % factors.n = 0

    /* include only those that have count > 1*/
    GROUP BY numbers.n
    HAVING COUNT(factors.n) = 1
    ORDER BY numbers.n
) primes