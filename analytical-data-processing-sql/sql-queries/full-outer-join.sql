USE tpch.tiny;

SELECT
    o.orderkey,
    l.orderkey
FROM
    orders o
    FULL OUTER JOIN lineitem l ON o.orderkey = l.orderkey
    AND o.orderdate BETWEEN l.shipdate - INTERVAL '5' DAY
    AND l.shipdate + INTERVAL '5' DAY
LIMIT
    100;
SELECT
    COUNT(o.orderkey) AS order_rows_count,
    COUNT(l.orderkey) AS lineitem_rows_count
FROM
    orders o
    FULL OUTER JOIN lineitem l ON o.orderkey = l.orderkey
    AND o.orderdate BETWEEN l.shipdate - INTERVAL '5' DAY
    AND l.shipdate + INTERVAL '5' DAY;