# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

gregs-mbp:~ gregknudsen$ sqlite3 dummy.db
-- Loading resources from /Users/gregknudsen/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
   
## Release 1: Insert Data 
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-26 01:41:17  2014-04-26 01:41:17

## Release 2: Multi-line commands
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite> SELECT email FROM users
   ...> ;
email                
---------------------
kimmy@devbootcamp.com

## Release 3: Add a column


## Release 4: Change a value
<!-- paste your terminal output here -->

## Release 5: Reflect
<!-- Add your reflection here -->
Just not enough time to complete this challenge.
