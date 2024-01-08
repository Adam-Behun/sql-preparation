# Analytical Data Processing in SQL

<p>
This directory is a collection of advanced SQL queries and data analysis techniques following the guidelines and exercises provided in
  <a href="https://josephmachado.gumroad.com/l/analyticalsql">Efficient Data Processing in SQL</a>.
</p>
Each file within this folder corresponds to a specific chapter and concept covered in the book, showcasing practical applications of SQL in data analysis.

<ul>
  <li><a href="#sql-joins-overview">SQL Joins Overview</a></li>
  <li><a href="#chapter-2-advanced-selections">Chapter 2: Advanced Selections</a></li>
  <li><a href="#chapter-3-aggregation-and-window-functions">Chapter 3: Aggregation and Window Functions</a></li>
  <li><a href="#chapter-4-data-storage-and-query-optimization">Chapter 4: Data Storage and Query Optimization</a></li>
  <li><a href="#chapter-5-advanced-window-functions">Chapter 5: Advanced Window Functions</a></li>
  <li><a href="#chapter-6-writing-maintainable-sql">Chapter 6: Writing Maintainable SQL</a></li>
</ul>

## Data Description

<p align="center">
  <img src="../visuals/tpch_erd.png" alt="TPC-H ERD" width="600" height="700"/>
</p>

## SQL Joins Overview

<p align="center">
  <img src="../visuals/sql-joins.jpg" alt="SQL Joins" width="600"/>
</p>

### Types of Joins

Each link leads to a SQL file within the `sql-queries` directory that demonstrates how to use that specific type of join.

- [INNER JOIN](./sql-queries/inner-join.sql)
- [LEFT JOIN](./sql-queries/left-join.sql)
- [RIGHT JOIN](./sql-queries/right-join.sql)
- [FULL OUTER JOIN](./sql-queries/full-outer-join.sql)
- [CROSS JOIN](./sql-queries/cross-join.sql)

## Chapter Descriptions

<h3 id="chapter-2-advanced-selections">Chapter 2: Advanced Selections</h3>

- Lab setup instructions to ensure a practical, hands-on approach, the chapter progresses to explain the data model used throughout the book. 
- SQL and OLAP basics, providing the reader with the knowledge required to perform sophisticated data manipulations and analysis.

<h3 id="#chapter-3-aggregation-and-window-functions">Chapter 3: Aggregation and Window Functions</h3>

- Data model in relation to the business context, focusing on the interpretation of facts and dimensions to structure analytical queries.
- Concept of data granularity and its modification through roll-up and group-by operations. 

<h3 id="#chapter-4-data-storage-and-query-optimization">Chapter 4: Data Storage and Query Optimization</h3>

- Strategies for storing large datasets efficiently in OLAP databases, which support the processing of data in parallel. 
- Techniques for reducing data movement during queries, such as understanding the impact of narrow and wide data transformations. 
- Comparing hash joins and broadcast joins, highlighting the performance and cost implications of each.

<h3 id="#chapter-5-advanced-window-functions">Chapter 5: Advanced Window Functions</h3>

- Window functions in SQL, defining a window as a set of rows grouped by common column values for performing calculations across rows without collapsing them.
- How to rank rows using window functions for sorting data while maintaining the original dataset's structure.

<h3 id="#chapter-6-writing-maintainable-sql">Chapter 6: Writing Maintainable SQL</h3>

- Using Common Table Expressions (CTEs) for better readability and maintainability.
- Best practices for common SQL data analysis tasks such as deduping, pivoting, and calculating period-over-period metrics.