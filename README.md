# Data Analysis Using SQL
At Pewlett Hackard (a fictional company), we were tasked with a research project to explore the historical employee data from the 1980s and 1990s using PostgreSQL. The project involved three primary phases: data modeling, data engineering, and data analysis. The data source for this project was comprised of six csv files containing department numbers, employee information, salaries, titles, employee departments, and department managers (stored in 'starter-csv-files'). We created a SQL database with six tables to accommodate the data source. After database creation, data were loaded into the SQL database for analysis. The project aimed to construct SQL database, build a schema for the tables, load the CSV files into the database, design a relationship diagram to visualize the relationships between tables, and extract valuable insights from the employee dataset using SQL queries.

## Data Modeling: 
Data modeling focused on designing an entity-relationship diagram (ERD) using Quick DBD Diagrams (www.quickdatabasediagrams.com) to conceptualize the database structure. We made a diagram to establish the relationships between the employee, salary, title, manager, and department tables and depict how different the entities were interconnected.

![image](https://github.com/nicholaishaw/sql-challenge/assets/135463220/b09e3011-c7b1-4faa-84e8-36ee54d1461d)
**Figure 1.** *Entity-relationship diagram illustrating the relationships between SQL tables.*

## Data Engineering:
After data modeling, we created the SQL database. This process involved identifying tthe data types of each column as well as the primary and foreign keys, designing the schema, and loading the csv files into their respective tables. An excerpt of the database schema is shown below in figure 2. The full schema is stored in the 'sql-schema' folder.

![image](https://github.com/nicholaishaw/sql-challenge/assets/135463220/9deec272-4811-471f-b5d5-5ff2c2227fec)

**Figure 2.** *Overview of the schema of the database. Primary key and foreign key declarations are included at the end of the schema file but are not included in this image due to size constraints.*

## Data Analysis (Executing Queries):
After table creation and data importing, we crafted SQL queries to extract meaningful insights from the organized database. Listed below are the insights that we retrieved from the SQL database:

* Retrieve the employee number, last name, first name, gender, and salary of each employee.
* Retrieve the first name, last name, and hire date for the employees who were hired in 1986.
* Retrieve the manager of each department along with their department number, department name, employee number, last name, and first name.
* Retrieve the department number for each employee along with that employee’s employee number, last name, first name, and department name.
* Retrieve first name, last name, and gender of each employee whose first name is Hercules and whose last name begins with the letter B.
* Retrieve each employee in the Sales department, including their employee number, last name, and first name.
* Retrieve each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
* Retrieve the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Syntax for the SQL queries are located in the 'data-analysis' folder in the main branch of this repository. Outputs of these queries are contained in CSV files in the 'data-analysis-output' folder in the 'data-analysis' folder.

![image](https://github.com/nicholaishaw/sql-challenge/assets/135463220/b551fb7b-310a-4364-aef1-17f47bd0fd86)

**Figure 3.** *A sample SQL query retrieving employee information of those in the Sales and Development departments. The rest of the queries are located in the 'data-analysis-queries' file in the 'data-analysis' folder*
