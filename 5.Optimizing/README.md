# Week 5: Optimizing

This folder contains my SQL solutions for Week 5 of **CS50’s Introduction to Databases with SQL**, focusing on **database optimization** techniques, indexing, query performance analysis, and transaction management.

## Key Skills Demonstrated

- Creating **indexes** with `CREATE INDEX` to speed up queries
- Using **EXPLAIN QUERY PLAN** to understand query execution
- Implementing **covering indexes**, partial indexes, and B-Trees for efficiency
- Maintaining database **performance** with `VACUUM`
- Handling **concurrency and transactions**, including `BEGIN TRANSACTION`, `COMMIT`, and `ROLLBACK`
- Ensuring **ACID compliance** (Atomicity, Consistency, Isolation, Durability)
- Avoiding **race conditions** and using locks for safe multi-user access

## Problem Sets

- **Snap App** – Optimized queries for a messaging app with expiring pictures:
  - Identify active users with an index on `last_login_date`
  - Check message expiration using primary key indexes
  - Rank “best friends” by message frequency using indexed `from_user_id`
  - Find the most popular user via indexed `to_user_id`
  - Determine mutual friends between two users using primary key indexes

- **Harvard Course Registration** – Created indexes for typical queries on course and student data:
  - Speed up lookups in `students`, `courses`, `enrollments`, `requirements`, and `satisfies` tables
  - Balance **query performance** with **disk space** by indexing only necessary columns

> [!NOTE]  
> Each `.sql` file contains statements to optimize the database or create indexes for specific queries. Use `EXPLAIN QUERY PLAN` to validate that your queries are taking advantage of indexes.
