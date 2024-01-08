USE tpch.tiny;
-- Will show the first ten customer records with the lowest custkey
-- rows are ordered in ASC order by default
SELECT * FROM orders ORDER BY custkey LIMIT 10;
-- Will show the first ten customer's records with the highest custkey
SELECT * FROM orders ORDER BY custkey DESC LIMIT 10;