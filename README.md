# Pewlett-Hackard-Analysis
## Overview of the Analysis
### Purpose
The purpose of this analysis was to assist Pewlett Hackard in preparing for what is being dubbed the "silver tsunami", a large incoming wave of retiring employees. To do this, multiple tables containing employee and department title data are examined using SQL to determine the number of employees reaching retiring age and their titles. In addition, since these numbers are quite large, the same data is analyzed to identify employees who may be eligible to participate in a mentorship program to train incoming employees. This task is presented as two deliverbles: 1) The number of retiring employees by title and 2) A list of employees eligible for the Mentorship Program. 

### Technology Used

![download](https://user-images.githubusercontent.com/98500639/185662999-a883e68c-46ea-4f54-97b1-212c7c24f39e.jpg)
![download](https://user-images.githubusercontent.com/98500639/185663046-ef0ccb07-57b3-4565-bbd8-8ca2b844aa05.png)
![Image Link](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOskvZrrcuJxEDn2OUzZ5XYS-g40i4XzHCoVczvK09-fHtIs_Uv9wIJFQThXKnVhk6&usqp=CAU)

#### Deliverable 1
For Deliverable 1, an Entity Relationship Diagram was created using a free online tool called Quick Database Diagrams (DBD). The ERD can be seen below.

![Image Link](https://github.com/JeremyKRay/Pewlett-Hackard-Analysis/blob/71e51fd28714d4b38ef1194a88ef13463d937097/EmployeeDB.png)

A table was created in pgAdmin using SQL and records of all of the employees and their titles that are reaching retirement age were inserted. This required a join of the Pewlett Hackard Employees table and the Pewlett Hackard Titles table. The resulting, Retirement_Titles table, can be viewed by clicking on the following link

[Retirement_Titles](Data/retirement_titles.csv). 

As you can see, there are several employees, each with a unique emp_no, that are duplicated because they have held more than one title since being hired. This skews our results as we are really only concerned about what the retiring employee's current title is. To determine this, a second table was created, unique_titles, that used the SQL Distinct ON and Order By functions to order the employees by their unique emp_no and their to_date. A to_date of '9999-01-01' means that the employee is still employed under that particular title and this is the record that is selected. The unique_titles table can be viewed by clicking the following link

[Unique_Titles](Data/unique_titles.csv). 

Finally, a count was done on this table clearly showing the number of employees retiring from their current position or title. This can be seen in the retiring_titles table by clicking the following link 

[Retiring_Titles](Data/retiring_titles.csv).

#### Deliverable 2

For Deliverable 2, a table was created by again joining the Employees table and the Titles table and also the Dept_Emp table. The same Distinct on and Order by functions were used but this time it was filtered by a latter birth_date. This produced a table of eligible mentors and their department title that have been with the company a significant amount of time but are not quite to retirement age. This table can be viewed by clicking the link 

[Mentorship_Eligibility](Data/mentorship_eligibility.csv).

## Results

### There are four major points to be gathered from the two deliverbles

* The "silver tsunami" is real and is coming. There are a total of **72,458** employees reaching retirement age for Pewlett Hackard.
  * Senior Engineers will be the hardest hit losing **25,916** employees to retirement, followed closely by Senior Staff losing **24,926** staff.
  * There are **411** Senior Engineers and **278** Senior Staff eligible for the Mentorship Program.
  * Managers seem to be in the best position to ride the "silver tsunami" wave as there are only **2** Managers close to retirement age. 
## Summary

To summarize, **72,458** total roles will need to be replaced following the "silver tsunami" of retirements and only **1,549** retirement-ready employees to mentor the next generation of Pewlett Hackard employees. Just looking at the two hardest hit departments, Senior Engineers and Senior Staff, there would be only 1 mentor for every **63** and **90** employees to train as replacements, respectively. This would be a daunting task and unfortunately, it appears as though Pewlett Hackard does not have enough qualified, retirement-ready employees in the departments to mentor the next generation of employees. The full SQL script can be viewed by clicking the following link 

[Pewlett_Hackard](Queries/Employee_Database_challenge.sql).
