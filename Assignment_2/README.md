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
- UPDATE Customers SET bonus =
  - CASE
    - WHEN cctype = 'N/A' THEN 0
    - WHEN cctype = 'Visa' OR province = 'NB' THEN 140
    - WHEN cctype = 'AmEx' THEN 100
    - WHEN province <> 'NB' AND cctype = 'MasterCard' THEN 70 ELSE 59.99 
  - END;

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/61991857-7a21-4b7d-b11a-594bf7eaebd2">
<p/>

**Comments:**
- Considerations in constructing this statement:
  - Condition Order: The conditions are evaluated in the order they appear. It is important to consider the order of conditions to ensure that the most specific conditions are checked first. In this case, we check for 'N/A' cctype before checking for specific card types to cover non-credit card holders.
  - Multiple Conditions: The CASE statement allows us to specify multiple conditions and assign different values based on each condition. Here, we consider various combinations of cctype and province to determine the bonus.
  - Default Value: The final ELSE statement acts as a default value for customers who do not meet any of the specified conditions. In this case, they receive a bonus of $59.99.
  - Data Integrity: It is important to ensure that the data in the 'cctype' and 'province' columns are accurate and consistent. The conditions in the CASE statement rely on the correctness of these values to determine the appropriate bonus.

### 5. Let’s decrease some of the bonuses. Please decrease the bonus by 20% for customers who are born in August or work for the company Freedom Map. Further, please only apply this decrease to the people who were getting a bonus of more than $140.

**Script:**
- UPDATE Customers
- SET bonus = bonus * 0.8
  - WHERE (MONTH(STR_TO_DATE(birthday, '%m/%d/%Y')) = 8 OR company = 'Freedom Map') AND bonus > 140;

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/9cc3cd21-9142-4166-8eb4-77741f5a0e32">
<p/>

**Comments:**
- Converted from the 'birthday' string using STR_TO_DATE

### 6. We need to calculate the average dollar value of bonuses being given to customers in each province. • List each province and tabulate the average value of bonus dollars provided to customers in that province and name the new column as average_bonuses. • Sort the list alphabetically by province. In your report, explain the considerations that were made in constructing this statement.

**Script:**
- SELECT province, AVG(bonus) AS average_bonuses
- FROM Customers
  - GROUP BY province
  - ORDER BY province ASC;

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/3f8d3b5a-2732-411e-86aa-1400d7385a98">
<p/>

**Comments:**
- Considerations in constructing this statement:
  - Column selection: The SELECT clause specifies the 'province' column for identification and the 'bonus' column for calculating the average bonus value.
  - Aggregation: The AVG() function is applied to the 'bonus' column to aggregate and calculate the average bonus within each province.
  - Grouping: The GROUP BY clause groups the data by the 'province' column, enabling the calculation of average bonus per province.
  - Column renaming: The AS keyword renames the calculated average bonus column as 'average_bonuses' for better readability.
  - Sorting: The ORDER BY clause sorts the result set in ascending order based on the 'province' column.

### 7. Generate a list displaying only the five longest occupations in the customers table. In two columns display the occupation, and the character length of the occupation in a field called occupation_length. Please have the list sorted from longest to shortest. In your report, explain how you would return occupations 6 through 10 of this same list.

**Script:**
- SELECT occupation, LENGTH(occupation) AS occupation_length
- FROM Customers
  - ORDER BY occupation_length DESC
  - LIMIT 5;

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/ff4cfc95-8bef-46ce-baee-5f1c8bfa1621">
<p/>

**Comments:**
- Change/Add “LIMIT 5 OFFSET 5;”
- The OFFSET 5 clause skips the first five rows, allowing you to retrieve the occupations from the 6th row onward, giving you occupations 6 through 10 of the list.

### 8. Write a query to show customers’ full names, street address and city. • Please return their last name in all capital letters, followed by their first name. • Please call the name column full_name and include both their first and last name as shown. full_name, streetaddress, city RUFFNER, Rosa 3846 St. Paul Street, St Catharines

**Script:**
- SELECT CONCAT(UPPER(surname), ', ', givenname) AS full_name, streetaddress, city
- FROM Customers

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/834d29f8-d21c-4536-812b-492d43fea5d4">
<p/>

**Comments:**
- The CONCAT function is used to combine the last name, first name, and a comma separator. The UPPER function is applied to the last name to convert it to all capital letters.

### 9. Write a query to show how many customers have each type of credit card. In your result set, sort this table alphabetically by credit card type and exclude users who do not have a credit card. I have provided an example table; these numbers are fictitious

**Script:**
- SELECT cctype, COUNT(*) AS customer_count
- FROM Customers
  - WHERE cctype <> 'N/A'
    - GROUP BY cctype
    - ORDER BY cctype ASC;

**Results:** 
<p align="center">
<img width="600" src="(https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/929fffa7-37f9-438d-a650-4efdf7dd6c95">
<p/>

### 10. Write a query to calculate the average age (in years, rounded down to the nearest integer) of all customers based on their birthdays, and group the results by cctype.

**Script:**
- SELECT cctype, FLOOR(AVG(DATEDIFF(CURDATE(), STR_TO_DATE(birthday, '%m/%d/%Y'))) / 365) AS average_age
- FROM Customers
  - GROUP BY cctype;

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/7718ea73-cb7d-4d8c-b45b-73d98d56e62b">
<p/>

**Comments:**
- The STR_TO_DATE function is used to convert the 'birthday' string into a date format that MySQL can understand. The format '%m/%d/%Y' specifies the month/day/year format.
- The DATEDIFF function calculates the difference in days between the current date (CURDATE()) and the converted 'birthday' date.
- The AVG function calculates the average age (in days) within each group of 'cctype'.
- The FLOOR function is used to round down the average age in days to the nearest integer when divided by 365, providing the average age in years.
- The GROUP BY clause groups the data by 'cctype' to calculate the average age per credit card type.

### 11. Write a query that will return the data required to build this pie graph. In your report include a pie graph that you construct using the result set (you can use the software of your choice to make the graph e.g., Excel).

**Script:**
- SELECT cctype, COUNT(*) AS customer_count
- FROM Customers
  - WHERE cctype <> 'N/A'
    - GROUP BY cctype;

**Results:** 
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/bb3c4cd5-e67f-4a24-9135-795186177ae0">
<p/>

**Comments:**
- This query calculates the count of customers for each credit card type (excluding those with 'N/A' as the credit card type) and groups the results by 'cctype'.
- The result set includes two columns: 'cctype' representing the credit card type and 'customer_count' representing the count of customers for each credit card type.

**Pie Graoh From Excel:**
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/ca5c84fe-0419-4d99-ae25-fb3a246fa1a1">
<p/>

