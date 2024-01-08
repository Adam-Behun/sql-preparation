http://localhost:9001/browser
http://localhost:8080/ui/

Ubuntu 22.04
remove all docker using docker rm -f $(docker ps -aq)
https://stackoverflow.com/questions/64307077/docker-compose-only-one-usage-of-each-socket-address-protocol-network-address
all ports were running on the default 
refer to images all the time - understand the business behind it and how to make the data useful

COLUMN > TABLE > SCHEMA > CATALOG



Refer to a column like this:
`database.schema.table.column`
OR LET trino know about your schema like this:
`USE tpch.tiny`

# STEP 1:
-- run "make trino" or
-- "docker container exec -it trino-coordinator trino"
-- to open trino cli
USE tpch.tiny;
SHOW tables;
SELECT * FROM orders LIMIT 5;
7
-- shows five rows, press q to quit the interactive results
↪ screen
exit -- quit the cli

Facts, Dimensions,  are the two types of tables in my data warehouse
Modify granularity of the data = rollup, group by

# Key questions to know about data and business Interview questions and first thing to learn on the job
1. What is the business process that generates the data
2. How is the data generated (App db, SFTP/Cloud store dumps, API pulls, manual uploads, other sources?)
3. How frequently is the data pipeline run? How long does a complete end-to-end pipeline run take?
4. Dose the run overwrite the data? Can I see data from previous point in time?
5. Data caveats? Seasonality, data skew, inablity to join, unvailability of data, issues with upstream data sources, late arrival or skipped data?
6. Who are the end-users of your data? How do they consume the data?

# Improve your query performance
Most OLAPs are distributed systems (nodes in cluster). Processing of the data happens in the node meaning no transmission over the network. Disadvantage is that we need to manage multiple nodes. Distributed data stores I worked with are GCS, S3, and HDFS. 

Ideas behind query optimization in distributed systems come down to these two:
- reduce the amount of data to be transferred between ndoes in the cluster
- reduce the amount of data to be processed by the OLAP engine

Data processing in a cluster:
- narrow transformation - no transfer of data between the nodes of the cluster. it is computed per row in the same cluster
- wide transformation - any operation that requires data from multiple rows, joining tables as the data needs to be moved to the same machine, the same node
    - data shuffling = transfer of data across the nodes of a cluster - OLAP DB uses a hash function with group by and join

Moving data between ndoes (wide transformations) are expensive.

# Fix this by applying filters before joins and only reading in the necesarry columns. 

There are two main types of joins. The OLAP DB determines whether to do a broadcast or a hash-join based on the size of the tables. 
- Hash join
    - Exchange data from both tables based on the join key across nodes in the cluster
    - Improve this technique using dynamic partitioning
- Broadcast join
    - This assumes that the joins are often between fact and dimension tables and that the dimension tables are significantly smaller than the fact tables

- You want to use broadcast join as much as possible. 

# To improve your query performance use EXPLAIN keyword
- Stage (unit of work done in parallel across nodes in the cluster)
- Task (each stage has one or more tasks executed within nodes)
- The OLAP engine determines running the tasks in parallel or sequentially

For more details, use EXPLAIN ANALYZE

## Typical tasks of an OLAP are
- Scan
- Filter
- Join
- Aggregate
- Exchange
- Statistics
- Project

## Reduce the amount of data to be transmitted using column-oriented formatting, partitioning, and bucketing
### Columnar encoding and performance improvements. 

Standard OLTP dbs (PostgreSQL, MySQL) store data in a row format which is less efficient than OLAP databases organized in columnar format. 
If it is row oriented, then we have to stream/read all columns into the memory; data compression is not as efficient either
Analytical queries often involve fwe columns out of many meaning that column oriented format is more efficient as it needs to process fewer columns during the analysis

Column pruning means reading only the columns that are needed for my query. Some OLAPS have their own versions of column-oriented formatting = Apache Parquet, Apache ORC.

#### Parquet columnar format
- RowGroups
- ColumnChunks
- FileMetaData

### Partitioning
HIVE style partitioning
Partition pruning = eleminate reading the not necesarry partitions
    Manually create a column during insert and create the partitions = the folders
    Partition by multiple columns
    Big Query has a limit of 4000 partitions per table to overcome the problem of high cardinality and over-partitioning
        New table formats like Apache Iceberg and Apache Hudi can avoid expensive reprocessing

### Bucketing (Clustering)
reducing the of data that needs to be scanned to process the analytical query

# Window Functions
Calculate aggregate metrics but keep all the rows, rank rows, and compare values across rowd with window functions.

window is a set of rows identified by values present in one or more columns. 

Window definition:
- Function 
    function to be applied to the rows in the window
- Partition by (optional)
    column(s) that are used to define the windows
    the entire table is considered as one window in absence of partition
- Order by (optional)
    specify the order of rows based on some columns within a window

## Calculate running metrics with window aggreagate functions

page 62