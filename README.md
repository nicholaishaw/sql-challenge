# Data Analysis Using SQL
At Pewlett Hackard (a fictional company), a research project was created to explore the historical employee data from the 1980s and 1990s using PostgreSQL. The project involved three primary phases: data modeling, data engineering, and data analysis. The data source for this project was comprised of six CSV files containing department numbers, employee information, salaries, titles, employee departments, and department managers (stored in 'starter-csv-files'). A SQL database was created with six tables to accommodate the data source. After database creation, data were loaded into the SQL database for analysis. The project aimed to construct SQL database system, import the CSV files into the database, and extract valuable insights from the employee dataset.

## Data Modeling: 
Data modeling focused on designing an entity-relationship diagram (ERD) using Quick DBD Diagrams (www.quickdatabasediagrams.com) to conceptualize the database structure. It established relationships between the employee, salary, title, manager, and department tables to depict how different the entities were interconnected. The entity-relationship diagram is stored in the 'entity-relationship-diagram' folder.

![image](https://github.com/nicholaishaw/sql-challenge/assets/135463220/b09e3011-c7b1-4faa-84e8-36ee54d1461d)
**Figure 1.** Entity-relationship diagram illustrating the relationships between SQL tables.

## Data Engineering:
After data modeling, tables were created in a SQL database based on the ERD. This involved creating the table schemas, data types, and identifying the primary and foreign keys. The six CSV files containing employee data from the 1980s and 1990s were imported into the respective tables. The schema for the table creations are stored in the 'sql-schema' folder.

![image](https://github.com/nicholaishaw/sql-challenge/assets/135463220/ec66bfd7-dae1-4e76-b55c-cfa500bda323) ![image](https://github.com/nicholaishaw/sql-challenge/assets/135463220/d448da92-4a83-4b48-be3b-98cc3fc7cd35)



## Data Analysis (Executing Queries):
After table creation and data importing, SQL queries were crafted to extract meaningful insights from the organized database. Listed below are the insights that needed to be retrieved from the SQL database:

* Retrieve the employee number, last name, first name, gender, and salary of each employee.
* Retrieve the first name, last name, and hire date for the employees who were hired in 1986.
* Retrieve the manager of each department along with their department number, department name, employee number, last name, and first name.
* Retrieve the department number for each employee along with that employee’s employee number, last name, first name, and department name.
* Retrieve first name, last name, and gender of each employee whose first name is Hercules and whose last name begins with the letter B.
* Retrieve each employee in the Sales department, including their employee number, last name, and first name.
* Retrieve each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
* Retrieve the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Syntax for the SQL queries are located in the data-analysis folder. Outputs of these queries are contained in CSV files in the 'data-analysis-output' folder in the 'data-analysis' folder.





