USE tpch.tiny;

SELECT
    n.name AS nation_name,
    r.name AS region_name
FROM
    nation n
    CROSS JOIN region r;