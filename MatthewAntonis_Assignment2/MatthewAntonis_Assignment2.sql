/*
============================================
Author: Matthew Antonis     
Student Number: 200373088
Creation date: 14/06/2023
Description: Assignment 2 Script Commands
============================================
*/

-- Q1 --
CREATE DATABASE Assignment2; -- Create the database named Assignment2
USE Assignment2; -- Switch to the newly created database
SELECT * FROM Customers; -- Retrieve all records from the Customers table

-- Q2 --
DESCRIBE Customers; -- Return the structure of the 'Customers' table
SHOW TABLES; -- Generate a list of all tables in the database
-- This command displays a list of all the tables present in the currently selected database.

-- Q3 --
ALTER TABLE Customers
ADD COLUMN bonus DECIMAL(10, 2) AFTER surname; -- Add a column named 'bonus' to the table

-- Q4 --
--  INSERT INTO customers (bonus) VALUES ('');
UPDATE Customers -- Update the 'bonus' column based on different conditions using a CASE statement
SET bonus = 
    CASE
        WHEN cctype = 'N/A' THEN 0 -- Default is NULL So Update it so that it is 0
        WHEN cctype = 'Visa' OR province = 'NB' THEN 140 -- Customers with Visa or who live in New Brunswick receive a bonus of $140
        WHEN cctype = 'AmEx' THEN 100 -- All American Express holders receive a bonus of $100 (cctype: Amex)
        WHEN province <> 'NB' AND cctype = 'MasterCard' THEN 70 -- Customers who live in provinces other than New Brunswick and have a MasterCard receive a bonus of $70
        ELSE 59.99 -- Customers with any other credit cards receive a bonus of $59.99
    END;

-- Q5 --
UPDATE Customers
SET bonus = bonus * 0.8 -- Decrease bonus by 20%
    WHERE (MONTH(STR_TO_DATE(birthday, '%m/%d/%Y')) = 8 OR company = 'Freedom Map') AND bonus > 140; -- Checks if the birth month is August(8) and those who work for Freedom Map. Condition only applies bonus to those who made over 140

-- Q6 --
-- Calculate the average dollar value of bonuses given to customers in each province
SELECT province, AVG(bonus) AS average_bonuses
FROM Customers
	GROUP BY province
	ORDER BY province ASC;

-- Q7 --
-- Retrieve the five longest occupations from the Customers table
SELECT occupation, LENGTH(occupation) AS occupation_length
FROM Customers
	ORDER BY occupation_length DESC
	LIMIT 5;

-- Q8 -- 
-- Retrieve customers' full names, street addresses, and cities
SELECT CONCAT(UPPER(surname), ', ', givenname) AS full_name, streetaddress, city
FROM Customers;

-- Q9 -- 
-- Retrieve the count of customers for each credit card type, excluding 'N/A', and sort the results alphabetically
SELECT cctype, COUNT(*) AS customer_count
FROM Customers
	WHERE cctype <> 'N/A'
		GROUP BY cctype
		ORDER BY cctype ASC;

-- Q10 --
-- Calculate the average age (in years) per credit card type
SELECT cctype, FLOOR(AVG(DATEDIFF(CURDATE(), STR_TO_DATE(birthday, '%m/%d/%Y'))) / 365) AS average_age
FROM Customers
	GROUP BY cctype;

-- Q11 -- 
-- Retrieve the data required for the pie graph
SELECT cctype, COUNT(*) AS customer_count
FROM Customers
	WHERE cctype <> 'N/A'
		GROUP BY cctype;



