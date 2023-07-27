# Assignment 2 

## Purpose: 
- This SQL project was an individual endeavor aimed at scripting solutions to address 11 objectives.
- All bullet points will be answers to the question

## Notes: 
- Created in mySQL.

### Assignment Due Date: June 1st, 2023
### Mark Received: 100%

## Objectives: 

### 1. Make a database and name it ‘Assignment2’ and add the data from Customers.sql to your Database.

**Script:**
  - CREATE DATABASE Assignment2;
  - USE Assignment2; 
  - SELECT * FROM customers;

**Results:**
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/4e42894e-88c0-46a3-bed8-d326a58056fc">
<p/>

**Comments:** 
- Used commands “CREATE DATABASE” and “USE” first
- Copied over Customer.sql to mysql and ran the script
- Once the table was added I used the "SELECT * FROM” Command

### 2. Use a single line SQL command to return the structure of the table from Q1. In your report, tell me what command you would use to generate a list of all the tables in your database.

**Script:**
- DESCRIBE Customers;
- SHOW TABLES;

**Results:**
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/59fad9df-3c46-4e12-bf05-65bbe36201ce">
<p/>

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/884b71ac-37d5-45d9-b18a-a0ef0418258d">
<p/>

**Comments:** 
- I used the “SHOW TABLES” command because it displays a list of all the tables present in the currently selected database.

### 3. Add a column named bonus to your table. Place it after surname. Enable the users to store bonuses with values such as: 10,999.99 or 2.00 by choosing the proper data type for bonus. In your report, mention the data type you chose and another that you considered but chose not to use.

**Script:**
- ALTER TABLE Customers
- ADD bonus DECIMAL(10, 2) AFTER surname;

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/299247c6-9e85-4a96-bdcb-5ae8a877d212">
<p/>

**Comments:**
- DECIMAL data type is used with a precision of 10 and a scale of 2. This allows the 'bonus' column to store values up to 10 digits with 2 decimal places, accommodating the desired values like '10,999.99' or '2.00'.

### 4. Using a CASE command fill in the data for the bonus column. • Non-credit card holders will receive a bonus of zero (cctype: N/A). • Customers who hold a Visa or who live in New Brunswick the bonus will be $140 • All American Express holders will get $100 (cctype: Amex) • Customers who live in any province other than New Brunswick and have a MasterCard will get $70 as bonus. • Then, customers with any other credit cards will get $59.99 as bonus. In your report, explain the considerations that were made in constructing this statement.

**Script:**

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/61991857-7a21-4b7d-b11a-594bf7eaebd2">
<p/>

**Comments:**

### 5. Let’s decrease some of the bonuses. Please decrease the bonus by 20% for customers who are born in August or work for the company Freedom Map. Further, please only apply this decrease to the people who were getting a bonus of more than $140.

**Script:**

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/9cc3cd21-9142-4166-8eb4-77741f5a0e32">
<p/>

**Comments:**

### 6. We need to calculate the average dollar value of bonuses being given to customers in each province. • List each province and tabulate the average value of bonus dollars provided to customers in that province and name the new column as average_bonuses. • Sort the list alphabetically by province. In your report, explain the considerations that were made in constructing this statement.

**Script:**

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/3f8d3b5a-2732-411e-86aa-1400d7385a98">
<p/>

**Comments:**

### 7. Generate a list displaying only the five longest occupations in the customers table. In two columns display the occupation, and the character length of the occupation in a field called occupation_length. Please have the list sorted from longest to shortest. In your report, explain how you would return occupations 6 through 10 of this same list.

**Script:**

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/ff4cfc95-8bef-46ce-baee-5f1c8bfa1621">
<p/>

**Comments:**

### 8. Write a query to show customers’ full names, street address and city. • Please return their last name in all capital letters, followed by their first name. • Please call the name column full_name and include both their first and last name as shown. full_name, streetaddress, city RUFFNER, Rosa 3846 St. Paul Street, St Catharines

**Script:**

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/834d29f8-d21c-4536-812b-492d43fea5d4">
<p/>

**Comments:**

### 9. Write a query to show how many customers have each type of credit card. In your result set, sort this table alphabetically by credit card type and exclude users who do not have a credit card. I have provided an example table; these numbers are fictitious

**Script:**

**Results:** 
<p align="center">
<img width="600" src="(https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/929fffa7-37f9-438d-a650-4efdf7dd6c95">
<p/>

**Comments:**

### 10. Write a query to calculate the average age (in years, rounded down to the nearest integer) of all customers based on their birthdays, and group the results by cctype.

**Script:**

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/7718ea73-cb7d-4d8c-b45b-73d98d56e62b">
<p/>

**Comments:**

### 11. Write a query that will return the data required to build this pie graph. In your report include a pie graph that you construct using the result set (you can use the software of your choice to make the graph e.g., Excel).

**Script:**

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/bb3c4cd5-e67f-4a24-9135-795186177ae0">
<p/>

**Comments:**

**Pie Graoh From Excel:**
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/ca5c84fe-0419-4d99-ae25-fb3a246fa1a1">
<p/>

