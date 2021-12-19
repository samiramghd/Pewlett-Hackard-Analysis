# Pewlett-Hackard-Analysis
Analyzing  Pewlett-Hackard with SQL

### Overview of the analysis: Explain the purpose of this analysis.

After reviewing the employee files for Pewlett Hackard, we need to cerate an ERD by using Quick DBD to define primary, foreign keys and show the visual relationships between tables.
Then we use postgres and the pgAdmin interface to create our database and our tables. in this two Deliverable we need to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.


### Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

Using the ERD we created which we can see in this picture

![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/EmployeeDB.png)

Then we will be able to create each table for each CSV. in Deliverable 1 we've been asked to create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955.

![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/table1.PNG)

> and the results are shown in this picture

![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/re-titles.PNG)


Because some employees may have multiple titles in the database we need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee.

![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/table2.PNG)

> and the results are shown in this picture

![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/unique.PNG)


Then, use the COUNT() function to create a table that has the number of retirement-age employees by most recent job title.

![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/table3.PNG)

> and the results are shown in this picture

![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/retiring.PNG)

In Deliverable 2 we are asked to create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
which the query is shown in this picture.

![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/eligibility.PNG)

> and the results are shown in this picture

![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/del2.PNG)

### Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

* How many roles will need to be filled as the "silver tsunami" begins to make an impact?

> we're going to have 90,398 vacancies.

* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

> NO, we have 90,398 vacancies and 1549 employees for mentorship and by comparing these two numbers we relize there is a significant gap which is pretty big.

#### provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

1. we can count the mentors per title
 
![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/mentorpertitle.PNG)


![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/mentor.PNG)

2. we can write a query to show us the eligible and experienced mentors which hve been employed in 1985 which gives us 91 mentors.

 
![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/exp_mentor.PNG)


![name-of-you-image](https://github.com/samiramghd/Pewlett-Hackard-Analysis/blob/main/images/exp_mentor2.PNG)


