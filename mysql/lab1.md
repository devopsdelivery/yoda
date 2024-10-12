# mysql LAB1 - Exercises

Welcome to the mysql basics laboratory.


## Lab Exercise 1: MySQL Basics & Engine Exploration
### Objective: 
Install MySQL Community Edition, create a database, and explore different storage engines.
### Tasks:
- Using MySQL Workbench, create a database with a table containing employee information (ID, Name, Department, etc.).
- Insert sample data (3 rows of data )into the table.
- Export the data to a CSV file.
- Modify some data in the table.
- Re-import the CSV file.

## Lab Exercise 2: Backup & Restore, Schema & Logs

### Objective: 
Perform backup and restore operations, analyze database schemas, and work with log files.

### Tasks:
- Create a full backup of the database using mysqldump.
- Restore the backup to a new database (named newdb_2).
- Verify the data integrity in the restored database.
- Use SQL queries to analyze the database schema, including table sizes and storage engine information.
- Locate and examine the MySQL error log and general query log.
- Configure the slow query log and analyze its output.
## Lab Exercise 3: Configuration & Tablespaces
### Objective: Modify MySQL settings, work with tablespaces, and perform table maintenance.
### Tasks:
- Locate and examine the MySQL configuration file (my.ini).
- Change a configuration setting (e.g., max_connections).
Observe the effects of the change.
- Create a general tablespace and a table within it.
- Compare the general tablespace with file-per-table tablespaces.
- Execute `CHECK TABLE`, `OPTIMIZE TABLE`, and `ANALYZE TABLE` commands on different tables.
- Analyze the results and explain the purpose of each command.
## Lab Exercise 4: Monitoring & Process Management
### Objective: Monitor MySQL processes and terminate problematic processes.
### Tasks:
- Use MySQL Workbench to monitor active connections and running queries.
- Identify a long-running or resource-intensive query.
- Use the `KILL` command to terminate the process.
- Explain the potential risks and benefits of terminating processes.
- Set up and analyze Performance Schema metrics to gain insights into server performance.
