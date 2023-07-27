# Assignment 2 

## Purpose: 
- This SQL project was an individual endeavor aimed at scripting solutions to address 11 objectives.
- All bullet points will be answers to the question

## Notes: 
- Created in mySQL.

### Assignment Due Date: June 1st, 2023
### Mark Received: 100%

## Objectives: 

1. Make a database and name it ‘Assignment2’ and add the data from Customers.sql to your Database.

Script:
  - CREATE DATABASE Assignment2;
  - USE Assignment2; 
  - SELECT * FROM customers;

Results:
<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/4e42894e-88c0-46a3-bed8-d326a58056fc">
<p/>

Comments: 
- Used commands “CREATE DATABASE” and “USE” first
- Copied over Customer.sql to mysql and ran the script
- Once the table was added I used the "SELECT * FROM” Command

2. Use a single line SQL command to return the structure of the table from Q1. In your report, tell me what command you would use to generate a list of all the tables in your database.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/59fad9df-3c46-4e12-bf05-65bbe36201ce">
<p/>

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/68108610-e185-44d4-8e0a-b9bf2fcdd6d5">
<p/>

3. Add a column named bonus to your table. Place it after surname. Enable the users to store bonuses with values such as: 10,999.99 or 2.00 by choosing the proper data type for bonus. In your report, mention the data type you chose and another that you considered but chose not to use.

<p align="center">
<img width="600" src="">
<p/>

4. Using a CASE command fill in the data for the bonus column. • Non-credit card holders will receive a bonus of zero (cctype: N/A). • Customers who hold a Visa or who live in New Brunswick the bonus will be $140 • All American Express holders will get $100 (cctype: Amex) • Customers who live in any province other than New Brunswick and have a MasterCard will get $70 as bonus. • Then, customers with any other credit cards will get $59.99 as bonus. In your report, explain the considerations that were made in constructing this statement.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/f4e61551-ae35-44f0-bc90-dfa60768298b">
<p/>

<p align="center">
<img width="600" src="">
<p/>

<p align="center">
<img width="600" src="">
<p/>

<p align="center">
<img width="600" src="">
<p/>
