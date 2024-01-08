USE tpch.tiny;
-- all customer rows that have nationkey = 20
SELECT * FROM customer WHERE nationkey = 20 LIMIT 10;
-- all customer rows that have nationkey = 20 and acctbal > 1000
SELECT * FROM customer
WHERE nationkey = 20 AND acctbal > 1000 LIMIT 10;
-- all customer rows that have nationkey = 20 or acctbal > 1000
SELECT * FROM customer
WHERE nationkey = 20 OR acctbal > 1000 LIMIT 10;
-- all customer rows that have (nationkey = 20 and acctbal > 1000) or rows that have nationkey = 11
SELECT * FROM customer
WHERE (nationkey = 20 AND acctbal > 1000)
OR nationkey = 11 LIMIT 10;