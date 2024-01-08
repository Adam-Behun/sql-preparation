/* https://www.hackerrank.com/challenges/symmetric-pairs/problem */

SELECT F1.X, F1.Y
FROM functions F1

/* pairs are symmetric if X1 = Y2 and X2 = Y1 */
JOIN functions F2 ON F1.X = F2.Y AND F1.Y = F2.X
GROUP BY F1.X, F1.Y

/* must have more than 1 result and X1 < Y1 */
HAVING COUNT(*) > 1 OR F1.X < F1.Y
ORDER BY F1.X;