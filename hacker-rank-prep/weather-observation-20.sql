/* https://www.hackerrank.com/challenges/weather-observation-station-20/problem */

/* creates an index */
set @rowindex := -1;

/* outer query selects avg from the inner query*/
select round(avg(lat_n), 4) from

/* inner query orders the numbers*/
    (select @rowindex:=@rowindex+1 as rowindex, lat_n
        from station
        order by lat_n) as l
        where l.rowindex in (floor(@rowindex/2), ceil(@rowindex/2));