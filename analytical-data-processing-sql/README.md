# Analytical Data Processing in SQL

<p>
This directory is a collection of advanced SQL queries and data analysis techniques following the guidelines and exercises provided in
  <a href="https://josephmachado.gumroad.com/l/analyticalsql">Efficient Data Processing in SQL</a>.
</p>
Each file within this folder corresponds to a specific chapter and concept covered in the book, showcasing practical applications of SQL in data analysis.

<ul>
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

## SQL Queries Folder

Explore the SQL queries derived from the book exercises in the [sql-queries](./sql-queries) directory.

## Chapter Descriptions

<h3 id="chapter-2-advanced-selections">Chapter 2: Advanced Selections</h3>

- Lab setup instructions to ensure a practical, hands-on approach, the chapter progresses to explain the data model used throughout the book. 
- SQL and OLAP basics, providing the reader with the knowledge required to perform sophisticated data manipulations and analysis.

<h3 id="#chapter-3-aggregation-and-window-functions">Aggregation and Window Functions</h3>

- This chapter emphasizes the importance of a solid comprehension of the data model in relation to the business context, focusing on the interpretation of facts and dimensions to structure analytical queries effectively.
- It discusses the concept of data granularity and its modification through roll-up and group-by operations, which are fundamental for analytical data processing and for crafting queries that provide meaningful business insights.
- It also delves into the significance of understanding the data's origin and the processes that generate it, thus empowering the analyst to answer critical business questions with precision.

<h3 id="#chapter-4-data-storage-and-query-optimization">Data Storage and Query Optimization</h3>

- The chapter introduces strategies for storing large datasets efficiently in OLAP databases, which support the processing of data in parallel, thereby saving time and resources during data querying.
- It covers techniques for reducing data movement during queries, such as understanding the impact of narrow and wide data transformations, and elaborates on the cost benefits of these methods.
- A comparison of hash joins and broadcast joins is provided, highlighting the performance and cost implications of each, guiding the reader towards more efficient query designs.
- The chapter closes with methods for reducing the volume of data processed through column-oriented formatting, partitioning, and bucketing, aiming to optimize query execution for better performance.

<h3 id="#chapter-5-advanced-window-functions">Advanced Window Functions</h3>

- Introduces window functions in SQL, defining a window as a set of rows grouped by common column values for performing calculations across rows without collapsing them.
- Explains how to define a window for aggregate functions, specifying partitioning and ordering to perform complex analytical tasks like running totals or moving averages.
- Demonstrates how to rank rows using window functions for sorting data while maintaining the original dataset's structure.
- Discusses the comparison of column values within the same dataset using window functions, which is essential for spotting trends and patterns.
- Details the application of functions within a window frame defined by rows, range, or groups, essential for nuanced data analysis tasks.
- Advises on using the query execution plan to make informed decisions about when to use window functions for optimal query performance.

<h3 id="#chapter-6-writing-maintainable-sql">Writing Maintainable SQL</h3>

- Emphasizes the importance of writing clear SQL queries using Common Table Expressions (CTEs) for better readability and maintainability.
- Provides templates and best practices for common SQL data analysis tasks such as deduping, pivoting, and calculating period-over-period metrics.
- Highlights strategies for optimizing data processing by combining multiple aggregation functions in a single query to reduce complexity and improve performance.