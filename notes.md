Change data types = cast
Handle NULLS = coalesce
printing = concat
inner join
left join
right join
full outer join
cross join
self join

stacking tables using
- union and union all
- except for the opposite

tables and views
- materialized views and precomputation any time changes in the source occurs

columns>>tables>>schemas>>catalogs("db")

String functions:
- length
- concat
- split
- substring
- trim

Date and time functions:
- depends on the db 

String and datetime conversions

Numeric functions
- round
- abs
- mathematical ops
- ceil/floor
- truncate


# Pivot tables
- data is collected in flat tables that have rows and columns and the aggregations/summarizations can be pivot tables

SELECT CASE
    WHEN
        THEN
    WHEN
        THEN
    ELSE
    END AS 'Something' --> the name must be there as the case statement is going to result in a new column and it needs a column name
FROM 'table_name'


CTE as common table expression or temporary result set is used with the WITH clause - we save the temp result in the common table expression and access it using the with clause. 