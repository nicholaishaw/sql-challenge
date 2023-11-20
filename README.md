# Data Analysis Using SQL
At Pewlett Hackard (a fictional company), a research project was created to explore the historical employee data from the 1980s and 1990s using PostgreSQL. The project involved three primary phases: data modeling, data engineering, and data analysis. The data source for this project was comprised of six CSV files containing department numbers, employee information, salaries, titles, employee departments, and department managers (stored in starter-csv-files). A SQL database was created with six tables to accommodate the data source. After database creation, data were loaded into the SQL database for analysis. The project aimed to construct SQL database system, import the CSV files into the database, and extract valuable insights from the employee dataset.

## Data Modeling: 
Data modeling focused on designing an entity-relationship diagram (ERD) to conceptualize the database structure. It established relationships between the employee, salary, title, manager, and department tables to depict how different the entities were interconnected. The entity-relationship diagram is stored in the 'entity-relationship-diagram' folder.

## Data Engineering:
After data modeling, tables were created in a SQL database based on the ERD. This involved creating the table schemas, data types, and identifying the primary and foreign keys. The six CSV files containing employee data from the 1980s and 1990s were imported into the respective tables. Schemas for the data engineering are stored in the 'sql-schema' folder.

## Data Analysis (Executing Queries):
After table creation and data importing, SQL queries were crafted to extract meaningful insights from the organized database. Queries were designed to retrieve specific information, including employee names, salaries, frequency of names, first 200 employees hired, all employees in certain departments, list of department managers with their employee number, and other relevant analyses of the historical employee data. Syntax for the queries are stored in the 'data-analysis' folder. Outputs for all of these queries are contained in CSV files in the 'data-analysis-output' folder in the 'data-analysis' folder.





