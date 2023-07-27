# Assignment 1 

## Purpose: 
- This SQL project was a collaborative endeavor aimed at scripting solutions to address 15 set of objectives.
- All bullet points will be answers to the question

## Notes: 
- Created in mySQL.

### Assignment Due Date: June 1st, 2023
### Mark Received: 100%

## Objectives: 

1. Create a database for this assignment.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/92a9eddc-9610-4fec-9cac-5ac383179aae">
<p/>

2. Instruct MySQL Server to use the database you just created.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/bd845c97-f025-4c38-9b17-fb8194d67d16">
<p/>

3. In a separate SQL tab, open the barrie_weather.sql file provided. Under question 3, copy its contents into your assignment1 script, then run the commands to create the table (also called barrie_weather, and will be used to answer following questions) and then populate it with data using the provided insert statements.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/ea6f061d-2e94-4667-a6f1-8f70a714d6d9">
<p/>

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/41f418bc-a95f-4143-8fb9-bc5729865006">
<p/>

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/b7c9a1d7-59e1-4c5e-a6da-a46f829a84b3">
<p/>

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/caa4dddb-5c77-4671-b322-92744cc89bec">
<p/>
  
4. Explain how the provided CREATE TABLE statement could be improved. Please focus on the data types and parameters for this discussion.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/fee53f61-a01d-4827-b9fe-354781ead010">
<p/>

  - If we look at the insert statements, we can see that the numeric and text values are lower than the total byte size of int, double, and text.
  - The data types used in the create table statement can be converted into smaller ones to reduce memory use and improve performance. Since the create table statement only uses int, double, or text data types, we could instead replace them with tinyInt/smallInt, float, and varchar data types, respectively.
  - For example, the text data type uses 65,535 bytes, but none of the text data columns ever use that many bytes. If we use varchar, then we can set the limit from anywhere between 0 to 65,535 bytes and improve the overall performance of our database.
  - Additionally, depending on how we want to use our data, we could change the data type values of our date and time related columns to the date, datetime, or timestamp data values to preserve more space. While this could make querying more difficult depending on how we intend to use the data, it could also preserve additional space by further lowering the used memory space and reducing the number of columns in our table.

5. The provided INSERT statements in barrie_weather were generated automatically and load data very slowly because of the way that the script’s commands have been structured. What is it about the structure of this script that causes the script to run slowly? In the report only, explain how you could restructure the commands if you were tasked with inserting the same data into barrie_weather.
   
  - The cause of our insert statements running slowly is due to the repetitiveness of how it is structured; it runs thousands of separate “insert into” statements instead of condensing them into one or fewer statements by using an extended insert statement. 
  - By using the “INSERT INTO table() VALUES ()” syntax, we can insert multiple rows of data under the same statement, which is less reading and execution for the program, in turn making our database run more smoothly.
  - Alternatively, we could keep our data on a separate .csv file and read the data from there if that approach is appropriate for how we wish to use our data.

6.	Select all data for every hour of data where the temperature (temp) was greater than 26.5. Provide an additional comment in your SQL script that states the number of rows returned.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/61aa9f1d-8d35-414e-a3b6-c4916611208e">
<p/>

7.	Select the date_time, temp, pressure_kPA and wind_spd_kmh for every hour of data where the temperature was 24 or less and the air pressure (pressure_kPa) was greater than 96.83. Provide an additional comment in your SQL script that states the number of rows returned.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/45689daa-bea4-4fe2-a2cb-4a71347394ce">
<p/>
  
8.	Select the date and time (date_time), temperature (temp) and temperature flag (temp_flag) columns for every hour where temperature data has been marked as missing using an ‘M’ value in the temp_flag column. In the report, record the date and time. Hint: remember that single quotes are required for text values.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/ff8e5af9-4698-454a-a98e-04d76a5be096">
<p/>
   
9.	Return the same results as in Question 8, except construct the query to return both ‘M’ and ‘Missing’ values.
Note: There are a number of ways of doing this, please use LIKE.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/866caa42-394a-416c-8ee1-ba6f7ec2f271">
<p/>

10. Count (SELECT COUNT) the number of hours contained in this dataset, where the dew point temperature (dew_pt) is greater than one.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/d3beb1aa-1af4-450a-95d4-e536e6296317">
<p/>

11. Count the number of hours that the wind was blowing (wind_spd_kmh is greater than 0) and from a direction ranging between north and east (wind_dir_10d is between 0 and 9).

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/4414c2f1-7897-4222-99a3-4b0c5aafc41d">
<p/>

12. In Barrie, what percent of the time are the conditions listed in Q11 true?

  - Given that the count we obtained in Q11 is 7585, we can run another query for the total count in barrie_weather in any condition, which returns 15336. We then calculate (7585/15336) * 100 and get 49.458%.
  - Thus, the conditions in Q11 are true approximately 49.5% of the time.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/c2ae3208-35a5-42e6-8b4a-9067e119e99f">
<p/>

13. Select all data for every hour of data where either the temperature (temp) is below freezing, or wind chill (wind_chill) was below zero. Additionally, the wind speed flag (wind_spd_flag) must indicate that there were no problems with the wind speed instrument (i.e. no M or Missing values present) BTW: an anemometer is an instrument that measures wind speed. 

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/420cdf10-b6fc-45e9-a735-234db7411e26">
<p/>

14. Fix the M vs Missing problem in the temperature flag field by using UPDATE to change any instances of Missing values to just plain M

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/51324b69-09bb-44c4-9d73-01779aceee03">
<p/>

15. Use an update statement to change all ' ' values in the temp_flag column to NULL (no quotes, just the letters N-U-L-L) this will change. Hint: The values should end up looking like those in the humidex (hmdx) column. FYI: The best way to store null data is using the NULL value. Look to the humidex (hmdx) column for an example of this being implemented properly.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/cbb42e81-fe30-47b1-b6bf-eecb929cef61">
<p/>
