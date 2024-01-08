# Analytical Data Processing in SQL

<p>
This directory is a collection of advanced SQL queries and data analysis techniques following the guidelines and exercises provided in
  <a href="https://josephmachado.gumroad.com/l/analyticalsql">Efficient Data Processing in SQL</a>.
</p>
Each file within this folder corresponds to a specific chapter and concept covered in the book, showcasing practical applications of SQL in data analysis.

## Table of Contents

- [Analytical Data Processing in SQL](#analytical-data-processing-in-sql)
  - [Table of Contents](#table-of-contents)
  - [Data Description](#data-description)
  - [SQL Queries Folder](#sql-queries-folder)
  - [Chapter Descriptions](#chapter-descriptions)
    - [Chapter 2: Advanced Selections](#chapter-2-advanced-selections)
    - [Chapter 3: Aggregation and Window Functions](#chapter-3-aggregation-and-window-functions)
    - [Chapter 4: Chapter 4: Data Storage and Query Optimization](#chapter-4-chapter-4-data-storage-and-query-optimization)
    - [Chapter 5: Advanced Window Functions](#chapter-5-advanced-window-functions)
    - [Chapter 6: Writing Maintainable SQL](#chapter-6-writing-maintainable-sql)

## Data Description

<p align="center">
  <img src="../visuals/tpch_erd.png" alt="TPC-H ERD" width="600" height="600"/>
</p>

## SQL Queries Folder

Explore the SQL queries derived from the book exercises in the [sql-queries](./sql-queries) directory.

## Chapter Descriptions

### Chapter 2: Advanced Selections

- Lab setup instructions to ensure a practical, hands-on approach, the chapter progresses to explain the data model used throughout the book. 
- SQL and OLAP basics, providing the reader with the knowledge required to perform sophisticated data manipulations and analysis.

### Chapter 3: Aggregation and Window Functions

- This chapter emphasizes the importance of a solid comprehension of the data model in relation to the business context, focusing on the interpretation of facts and dimensions to structure analytical queries effectively.
- It discusses the concept of data granularity and its modification through roll-up and group-by operations, which are fundamental for analytical data processing and for crafting queries that provide meaningful business insights.
- It also delves into the significance of understanding the data's origin and the processes that generate it, thus empowering the analyst to answer critical business questions with precision.

### Chapter 4: Chapter 4: Data Storage and Query Optimization

- The chapter introduces strategies for storing large datasets efficiently in OLAP databases, which support the processing of data in parallel, thereby saving time and resources during data querying.
- It covers techniques for reducing data movement during queries, such as understanding the impact of narrow and wide data transformations, and elaborates on the cost benefits of these methods.
- A comparison of hash joins and broadcast joins is provided, highlighting the performance and cost implications of each, guiding the reader towards more efficient query designs.
- The chapter closes with methods for reducing the volume of data processed through column-oriented formatting, partitioning, and bucketing, aiming to optimize query execution for better performance.

### Chapter 5: Advanced Window Functions

- Introduces window functions in SQL, defining a window as a set of rows grouped by common column values for performing calculations across rows without collapsing them.
- Explains how to define a window for aggregate functions, specifying partitioning and ordering to perform complex analytical tasks like running totals or moving averages.
- Demonstrates how to rank rows using window functions for sorting data while maintaining the original dataset's structure.
- Discusses the comparison of column values within the same dataset using window functions, which is essential for spotting trends and patterns.
- Details the application of functions within a window frame defined by rows, range, or groups, essential for nuanced data analysis tasks.
- Advises on using the query execution plan to make informed decisions about when to use window functions for optimal query performance.

### Chapter 6: Writing Maintainable SQL

- Emphasizes the importance of writing clear SQL queries using Common Table Expressions (CTEs) for better readability and maintainability.
- Provides templates and best practices for common SQL data analysis tasks such as deduping, pivoting, and calculating period-over-period metrics.
- Highlights strategies for optimizing data processing by combining multiple aggregation functions in a single query to reduce complexity and improve performance.