-- not based on real tables
SELECT
a.*
FROM
table_a a -- LEFT table a
JOIN table_b b -- RIGHT table b
ON a.id = b.id