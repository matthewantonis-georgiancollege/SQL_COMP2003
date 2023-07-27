# Assignment 1 

## Purpose: 
- This SQL project was a collaborative endeavor aimed at scripting solutions to address the following set of objectives.
- All bullet points will be answers to the question

### Objectives: 

1. Create a database for this assignment.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/eeb21937-0bfb-4f2f-bffa-677bc511f6bc">
<p/>
   
2. Instruct MySQL Server to use the database you just created.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/5ce4ebc3-91e3-4a74-b0c9-fd3df2736ebb">
<p/>

3. In a separate SQL tab, open the barrie_weather.sql file provided. Under question 3, copy its contents into your assignment1 script, then run the commands to create the table (also called barrie_weather, and will be used to answer following questions) and then populate it with data using the provided insert statements.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/feeca5b6-353f-4720-b27e-3b3644ce2b9f">
<p/>

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/79d6d54e-b9f8-47cf-bd41-f40dec9b3bca)">
<p/>

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/f4f2153b-9d74-409c-b524-0cd5c1682907">
<p/>

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/023da464-13ff-41aa-8a26-991a6393f667">
<p/>

4. Explain how the provided CREATE TABLE statement could be improved. Please focus on the data types and parameters for this discussion.

<p align="center">
<img width="600" src="https://github.com/matthewantonis-georgiancollege/SQL_COMP2003/assets/122380719/3ac5685a-c7f4-46fc-9650-0f28f507dd34">
<p/>

  - If we look at the insert statements we can see that the numeric and text values are rather low compared to the total byte size of int, double, and text.
  - The data types used in the create table statement can be converted into smaller data types in order to reduce memory use and improve performance. Since the create table statement only uses int, double, or text data types, we could instead replace them with tinyInt/smallInt, float, and varchar data types respectively.
  - For example, the text data type uses 65,535 bytes, but none of the text data columns ever use that many bytes. If we use varchar, then we can set the limit from anywhere between 0 to 65,535 bytes and improve the overall performance of our database.
  - Additionally, depending on how we want to use our data, we could change the data type values of our date and time related columns to the date, datetime, or timestamp data values in order to preserve more space. While this could make querying more difficult depending on how we intend to use the data, it could also preserve additional space by further lowering the used memory space and reducing the amount of columns in our table.



5. The provided INSERT statements in barrie_weather were generated automatically and load data very slowly because of the way that the script’s commands have been structured. What is it about the structure of this script that causes the script to run slowly? In the report only, explain how you could restructure the commands if you were tasked with inserting the same data into barrie_weather.
   
  - The cause of our insert statements running slowly is due to the repetitiveness of the way it is structured; it runs thousands of separate “insert into” statements as opposed to condensing them into one or fewer statements by using an extended insert statement. 
  - By using the “INSERT INTO table() VALUES ()” syntax, we can insert multiple rows of data under the same statement, which is less reading and execution for the program, in turn making our database run more smoothly.
  - Alternatively, we could keep our data on a separate .csv file and read the data from there if that approach is appropriate for the way we wish to use our data.

6.	Select all data for every hour of data where the temperature (temp) was greater than 26.5. Provide an additional comment in your SQL script that states the number of rows returned.



7.	Select the date_time, temp, pressure_kPA and wind_spd_kmh for every hour of data where the temperature was 24 or less and the air pressure (pressure_kPa) was greater than 96.83. Provide an additional comment in your SQL script that states the number of rows returned.



8.	Select the date and time (date_time), temperature (temp) and temperature flag (temp_flag) columns for every hour where temperature data has been marked as missing using an ‘M’ value in the temp_flag column. In the report, record the date and time. Hint: remember that single quotes are required for text values.


9.	Return the same results as in Question 8, except construct the query to return both ‘M’ and ‘Missing’ values.
Note: There are a number of ways of doing this, please use LIKE.


10.	Count (SELECT COUNT) the number of hours contained in this dataset, where the dew point temperature (dew_pt) is greater than one.


11.	Count the number of hours that the wind was blowing (wind_spd_kmh is greater than 0) and from a direction ranging between north and east (wind_dir_10d is between 0 and 9).


12.	In Barrie, what percent of the time are the conditions listed in Q11 true?

  - Given that the count we obtained in Q11 is 7585, we can run another query for the total count in barrie_weather in any condition, which returns 15336. We then calculate (7585/15336) * 100 and get 49.458%.
  - Thus, the conditions in Q11 are true approximately 49.5% of the time.


13.	Select all data for every hour of data where either the temperature (temp) is below freezing, or wind chill (wind_chill) was below zero. Additionally, the wind speed flag (wind_spd_flag) must indicate that there were no problems with the wind speed instrument (i.e. no M or Missing values present) BTW: an anemometer is an instrument that measures wind speed. 

14.	Fix the M vs Missing problem in the temperature flag field by using UPDATE to change any instances of Missing values to just plain M


15.	Use an update statement to change all ' ' values in the temp_flag column to NULL (no quotes, just the letters N-U-L-L) this will change. Hint: The values should end up looking like those in the humidex (hmdx) column. FYI: The best way to store null data is using the NULL value. Look to the humidex (hmdx) column for an example of this being implemented properly.



