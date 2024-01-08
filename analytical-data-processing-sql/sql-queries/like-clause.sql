USE tpch.tiny;
-- all customer rows where the name has a 381 in it
SELECT * FROM customer WHERE name LIKE '%381%';
-- all customer rows where the name ends with a 381
SELECT * FROM customer WHERE name LIKE '%381';
-- all customer rows where the name starts with a 381
SELECT * FROM customer WHERE name LIKE '381%';
-- all customer rows where the name has a combination of any character and 9 and 1
SELECT * FROM customer WHERE name LIKE '%_91%';