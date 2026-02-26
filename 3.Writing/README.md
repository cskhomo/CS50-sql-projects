# Week 3: Writing

This folder contains my SQL solutions for Week 3 of CS50’s Introduction to Databases with SQL, focusing on **CRUD** operations, importing from CSV files, managing logs with triggers, and ensuring data consistency during modifications.

## Key Skills Demonstrated

* Writing **INSERT**, **UPDATE**, and **DELETE** statements for **CRUD** operations
* Importing CSV data into SQLite using **.import** and temporary tables
* Cleaning datasets: converting empty strings to **NULL**, rounding numeric values, filtering unwanted rows
* Updating related tables while simulating or preserving audit trails
* Using **subqueries**, **ORDER BY**, and row re-numbering for controlled data transformation
* Manipulating user logs and passwords (with hashing considerations) in a security-themed scenario
* Dropping temporary structures after final data transfer

## Problem Sets

* Password Hack – Performed controlled updates and deletions in a live SQLite database, demonstrating careful modification of sensitive user data and audit logs
* Meteorite Data – Imported and cleaned a CSV dataset of historical meteorite landings, transforming raw data into a normalized SQLite table suitable for analysis

> [!NOTE]
> The `.sql` files each contain a statements that solves a specific problem.
