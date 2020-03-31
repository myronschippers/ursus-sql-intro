# Introduction to SQL

- [Lesson Queries](/database.sql)

## SQL
Structured Query Language (SQL) is a standard computer language for relational database management and data manipulation. SQL is used to query, insert, update and modify data.


## Intro to Relational Databases
We will be using Postgres for our database and Postico for our client. Keep in mind you can use Postgres with Node.js, SQLite for mobile or MySQL for PHP. SQL is common across all of these different platforms.

Designed to be able to efficiently read and write large amounts of data when properly configured

  - Provides ACID guarantees:
  - Atomicity - each transaction is all or nothing
  - Consistency - each tx brings DB from valid state to a new valid state. All constraints still hold
  - Isolation - concurrent transactions should appear serial to the user, no in progress tx should know about data from another in progress tx
  - Durability - withstand crashes and power failures

## Intro to Postico

Postico Postgres Client

- Start your database

  `brew services list`

  `brew services start postgresql`

- Open Postico
- from command line you can create a database by running:

  ```
  createdb name_of_db
  ```

- Create your first table

```SQL
CREATE TABLE "songs" (
  "id" serial primary key,
  "rank" integer,
  "artist" varchar(80) not null,
  "track" varchar(120) not null,
  "published" date
);
  
CREATE TABLE name (
  column-name data-type constraints,
  ...
);  
```

![Tables in Database](images/tables-in-database.jpg)

- Some table data types discussed were ([data types](https://www.postgresql.org/docs/8.1/static/datatype.html))
  - `serial` auto increment
  - `integer` number
  - `varchar(##)` string with max characters ##
  - `date` date
- `cmd-r` to refresh, our table exists!

### Queries Covered

- `CREATE TABLE`
- `SELECT FROM`
- `INSERT INTO`
- `UPDATE FROM`
- `DELETE FROM`

### Changing Table Structure

There are a series of commands for "altering" table structures which are used for changing column names, types, adding or remove columns, etc.

[Postgres Alter Table docs with examples.](https://www.postgresql.org/docs/7.4/static/sql-altertable.html)


### Drop a table

Completely removes a table and all of its rows/data. **This is Permanent.**

```sql
DROP TABLE songs;
```