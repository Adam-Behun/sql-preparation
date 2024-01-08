USE tpch.tiny;
-- all customer rows which have nationkey = 10 or nationkey = 20
SELECT * FROM customer WHERE nationkey IN (10,20);

-- all customer rows which have do not have nationkey as 10 or 20
SELECT * FROM customer WHERE nationkey NOT IN (10,20);