---------------------------------------------------------------------------
/*

Project Name: Epidemic Analytics - Evaluating COVID-19’s Global Footprint
Internship Organization: Mentorness
By: Arpita Deb
Dated: June,2024
About:  This file contains SQL codes for the 16 questions provided in the Problem Statement document as well as some additional queries to analyze and understand the effect of Corona Virus spread between January 2020 and June 2021. 

*/
----------------------------------------------------------------------------


--- Initiating the Database

USE [Global Corona Virus Dataset];

-- Adding a unique identifier 'Record ID' for each row in the database

ALTER TABLE 
	[dbo].[CoronaVirusData]
ADD 
	RecordID INT IDENTITY (1,1);




-- Data Analysis
-- I provided the SQL Codes here to find the answers of the 16 questions from the Problem Statement.
--------------------------------------------------------------------------------------------



-- Q1. Write a code to check NULL values.

SELECT 
	*
FROM 
	[dbo].[CoronaVirusData]
WHERE 
	[Province] IS NULL OR 
	[Country/Region] IS NULL OR 
	[Latitude] IS NULL OR 
	[Longitude] IS NULL OR 
	[Date] IS NULL OR 
	[Confirmed] IS NULL OR
	[Deaths] IS NULL OR
	[Recovered] IS NULL;


-- The code returned 0 rows. Thus there are no Null Values.


---------------------------------------------------------------------------------------------



--Q2. If NULL values are present, update them with zeros for all columns. 

-- There were no NULL Values.


----------------------------------------------------------------------------------------------



-- Q3. Check the total number of rows.

SELECT
	COUNT(RecordID) AS TotalRecords
FROM 
	[dbo].[CoronaVirusData];


-- Returns 78386 rows.


----------------------------------------------------------------------------------------------



-- Q4. What are the start_date and end_date in this dataset?

SELECT 
	MIN([Date]) AS Start_Date,
	MAX([Date]) AS End_Date
FROM 
	[dbo].[CoronaVirusData]


-- The start date is January 22,2020 and the end date is June 13, 2021.



----------------------------------------------------------------------------------------------


-- Q5. Find the number of months present in the dataset.

SELECT 
	COUNT(DISTINCT CONCAT(DATENAME(month,[Date]), '-', YEAR([Date]))) AS Number_Of_Months
FROM 
	[dbo].[CoronaVirusData];


/*

1. Since the months get repeated for each year, I used the year as a suffix to distinguish the months for different years.
2. For that I used CONCAT() function to join the Month name and Year as May-2021, June-2021 etc. 
3. The DISTINCT() Function gave me the unique values.
4. Finally I calculated the values by using COUNT() Function.

*/
----------------------------------------------------------------------------------------------



-- Q6. Find Monthly Average for Confirmed, Death, Recovered cases.

SELECT 
	MONTH(Date) AS Month_Num, 
	DATENAME(month, Date) AS Month,
	ROUND(AVG(Confirmed), 0) AS Avg_Confirmed_Cases,
	ROUND(AVG(Deaths), 0) AS Avg_Deaths_Cases,
	ROUND(AVG(Recovered), 0) AS Avg_Recovered_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	MONTH(Date),
	DATENAME(month, Date)
ORDER BY
	MONTH(Date) ASC,
	DATENAME(month,Date);

/*

1. In this query I extracted Month Number from Date column using MONTH() function.
2. Next I extracted Month Name from Date column using DATENAME() function.
3. Then took an average of Confirmed, Death and Recovered Cases grouped by Month Number and Month name columns.
4. Finally I sorted the date in acsending order of the Month Number to give us the Gregorian Months order.
5. I used ROUND() function to give us a rounded figure of the Average values since it represents a number of patient which cannot be a fraction.

*/

----------------------------------------------------------------------------------------------



-- Q7. Find the most frequent value for Confirmed, Deaths, Recovered cases for each month.


WITH MonthlyCases AS (
    SELECT 
	MONTH(Date) AS MonthNum, 
	DATENAME(month, Date) AS Month,
	[Confirmed], 
	[Deaths],
	[Recovered],
        	ROW_NUMBER() OVER (PARTITION BY MONTH(Date) ORDER BY COUNT(*) DESC) AS RowNum
    FROM 
	[dbo].[CoronaVirusData]
    GROUP BY 
	MONTH(Date),
	DATENAME(month, Date), 
	[Confirmed],
	[Deaths],
	[Recovered]
)
SELECT 
	Month,
	[Confirmed] AS Mode_Confirmed_Cases,
	[Deaths] AS Mode_Death_Cases,
	[Recovered] AS Mode_Recovered_Cases
FROM 
	MonthlyCases
WHERE 
	RowNum = 1;

/*

In this query:
1. I created a Common Table Expression (CTE) called MonthlyCases that calculates the count of confirmed cases for each month.

2. The `ROW_NUMBER()` function assigns a row number to each record within each month, based on the descending order of the count of cases (confirmed, deaths, or recovered). 
This means that the highest count for each month will have a row number of 1.

3. The `WHERE RowNum = 1` condition filters the results to include only those rows where the row number is 1. 
In other words, it selects the records with the highest count for each month.

4. The resulting output includes the month, the mode of confirmed cases (`Mode_Confirmed_Cases`), the mode of death cases (`Mode_Death_Cases`), and the mode of recovered cases (`Mode_Recovered_Cases`).

*/


----------------------------------------------------------------------------------------------


-- Q8. Find the minimum values for Confirmed, Deaths, Recovered cases per Year.

SELECT 
	YEAR([Date]) AS Year, 
	MIN([Confirmed]) AS Min_Confirmed_Cases,
	MIN([Deaths]) AS Min_Death_Cases,
	MIN([Recovered]) AS Min_Recovered_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	YEAR([Date])
ORDER BY 
	YEAR([Date]) ASC;

/*

In this query:

1. I extracted the Year from Date column.
2. Calculated Minimum values for Confirmed, Death and Recovered Cases grouped by Year.
3. Finally sorted the result by Year in Ascending order.

*/

----------------------------------------------------------------------------------------------


-- Q9. Find the maximum values of Confirmed, Deaths, Recovered cases per year.

SELECT 
	YEAR([Date]) AS Year, 
	MAX([Confirmed]) AS Max_Confirmed_Cases,
	MAX([Deaths]) AS Max_Death_Cases,
	MAX([Recovered]) AS Max_Recovered_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	YEAR([Date])
ORDER BY 
	YEAR([Date]) ASC;

/*

In this query:

1. I extracted the Year from Date column.
2. Calculated Maximum values for Confirmed, Death and Recovered Cases grouped by Year.
3. Finally sorted the result by Year in Ascending order.

*/

----------------------------------------------------------------------------------------------



-- Q10. Find the total number of Confirmed, Deaths, Recovered cases for each month.

SELECT 
	MONTH([Date]) AS Month_Num,
	DATENAME(month, [Date]) AS Month,
	SUM([Confirmed]) AS Total_Confirmed_Cases,
	SUM([Deaths]) AS Total_Death_Cases,
	SUM([Recovered]) AS Total_Recovered_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	MONTH([Date]),
	DATENAME(month, [Date])
ORDER BY 
	MONTH([Date]) ASC,
	DATENAME(month, [Date]);
	

/*

In this query:

1. I extracted the Monthname and Month number from Date column.
2. Calculated the total values for Confirmed, Death and Recovered Cases grouped by Month number and Month.
3. Finally sorted the result by Month number and Month in Ascending order.

*/
----------------------------------------------------------------------------------------------



-- Q11. Check how corona virus spread out with respect to confirmed cases per Month (e.g., total confirmed cases, their Average, Variance & Standard Deviation).

WITH OrderedCases AS (
    SELECT 
	[Confirmed],
    	ROW_NUMBER() OVER (ORDER BY [Confirmed]) AS RowNum,
    	COUNT(*) OVER () AS TotalCount
    FROM 
	[dbo].[CoronaVirusData]
)
SELECT 
	MONTH([Date]) AS Month_Num,
   	DATENAME(month, [Date]) AS Month,
    	SUM([Confirmed]) AS Total_Confirmed_Cases,
    	ROUND(AVG([Confirmed]),0) AS Avg_Confirmed_Cases,
   	MIN([Confirmed]) AS Min_Confirmed_Cases,
    	(SELECT 
		[Confirmed] 
	FROM 
		OrderedCases 
	WHERE 
		RowNum = (TotalCount + 1) / 2) AS Median_Confirmed_Cases,
	MAX([Confirmed]) AS Max_Confirmed_Cases,
   	ROUND(VAR([Confirmed]),2) AS Variance,
    	ROUND(STDEV([Confirmed]),2) AS Standard_Deviation
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
    	MONTH([Date]),
	DATENAME(month, [Date])
ORDER BY
	MONTH([Date]),
	DATENAME(month, [Date]);



/*
In this query:
1. I calculated the summary statistics for Confirmed Corona Cases. I calculated the total number of cases, average, minimum, median, maximum value, the variance and standard deviation.

2. To calculate the median value , I created a Common Table Expression (CTE) called OrderedCases.
-- The ROW_NUMBER() function assigns a row number to each record, ordered by the confirmed cases.
-- The COUNT(*) OVER () calculates the total count of records.
-- Finally, we select the median confirmed cases using a subquery.

*/

----------------------------------------------------------------------------------------------


-- Q12. Check how Corona Virus spread out with respect to Death case per Month (e.g., total confirmed cases, their Average, Variance & Standard Deviation).

WITH OrderedCases AS (
    SELECT 
	[Deaths],
    	ROW_NUMBER() OVER (ORDER BY [Deaths]) AS RowNum,
    	COUNT(*) OVER () AS TotalCount
    FROM 
	[dbo].[CoronaVirusData]
)
SELECT 
	MONTH([Date]) AS Month_Num,
    	DATENAME(month, [Date]) AS Month,
    	SUM([Deaths]) AS Total_Death_Cases,
    	ROUND(AVG([Deaths]),0) AS Avg_Death_Cases,
    	MIN([Deaths]) AS Min_Death_Cases,
    	(SELECT 
		[Deaths] 
	FROM 
		OrderedCases 
	WHERE 
		RowNum = (TotalCount + 1) / 2) AS Median_Death_Cases,
	MAX([Deaths]) AS Max_Death_Cases,
    	ROUND(VAR([Deaths]),2) AS Variance,
    	ROUND(STDEV([Deaths]),2) AS Standard_Deviation
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
    	MONTH([Date]),
	DATENAME(month, [Date])
ORDER BY
	MONTH([Date]),
	DATENAME(month, [Date]);


/*
In this query:
1. I calculated the summary statistics for Death Cases. I calculated the total number of cases, average, minimum, median, maximum value, the variance and standard deviation.

2. To calculate the median value , I created a Common Table Expression (CTE) called OrderedCases.
-- The ROW_NUMBER() function assigns a row number to each record, ordered by the death cases.
-- The COUNT(*) OVER () calculates the total count of records.
-- Finally, we select the median death cases using a subquery.

*/

----------------------------------------------------------------------------------------------



-- Q13. Check how corona virus spread out with respect to Recovered case per Month (e.g., total confirmed cases, their Average, Variance & Standard Deviation).

WITH OrderedCases AS (
    SELECT 
	[Recovered],
    	ROW_NUMBER() OVER (ORDER BY [Recovered]) AS RowNum,
    	COUNT(*) OVER () AS TotalCount
    FROM 
	[dbo].[CoronaVirusData]
)
SELECT 
	MONTH([Date]) AS Month_Num,
    	DATENAME(month, [Date]) AS Month,
   	SUM([Recovered]) AS Total_Recovered_Cases,
    	ROUND(AVG([Recovered]),0) AS Avg_Recovered_Cases,
    	MIN([Recovered]) AS Min_Recovered_Cases,
    	(SELECT 
		[Recovered] 
	FROM 
		OrderedCases 
	WHERE 
		RowNum = (TotalCount + 1) / 2) AS Median_Recovered_Cases,
	MAX([Recovered]) AS Max_Recovered_Cases,
    	ROUND(VAR([Recovered]),2) AS Variance,
    	ROUND(STDEV([Recovered]),2) AS Standard_Deviation
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
    	MONTH([Date]),
	DATENAME(month, [Date])
ORDER BY
	MONTH([Date]),
	DATENAME(month, [Date]);


/*
In this query:
1. I calculated the summary statistics for Recovered Cases. I calculated the total number of cases, average, minimum, median, maximum value, the variance and standard deviation.

2. To calculate the median value , I created a Common Table Expression (CTE) called OrderedCases.
-- The ROW_NUMBER() function assigns a row number to each record, ordered by the recovered cases.
-- The COUNT(*) OVER () calculates the total count of records.
-- Finally, we select the median recovered cases using a subquery.

*/

----------------------------------------------------------------------------------------------


-- Q14. Find the Country having the highest number of the Confirmed case.

SELECT 
	TOP 1 [Country/Region], 
	SUM([Confirmed]) AS Confirmed_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	[Country/Region]
ORDER BY 
	SUM([Confirmed]) DESC;


----------------------------------------------------------------------------------------------


-- Q15. Find the Country having the lowest number of the Death case.

SELECT 
	TOP 1 [Country/Region], 
	SUM([Deaths]) AS Death_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	[Country/Region]
ORDER BY 
	SUM([Deaths]) ASC;


----------------------------------------------------------------------------------------------



-- Q16. Find top 5 countries with highest recovered case.

SELECT 
	TOP 5 [Country/Region], 
	SUM([Recovered]) AS Recovered_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	[Country/Region]
ORDER BY 
	SUM([Recovered]) DESC;

---------------------------------------------------------------------------------------------


-- Additional Queries




-- Counting the number of countries present in the dataset.
SELECT 
	COUNT (DISTINCT [Country/Region]) AS Number_of_Countries
FROM 
	[dbo].[CoronaVirusData]




-- Total number of confirmed, death and recovered cases.
SELECT 
	SUM([Confirmed]) AS Total_Confirmed_Cases,
	SUM([Deaths]) AS Total_Death_Cases,
	SUM([Recovered]) AS Total_Recovered_Cases
FROM 
	[dbo].[CoronaVirusData]




-- Ratio of Death-to-Confirmed and Recovered-to-Confirmed corona cases 
SELECT 
	ROUND(SUM([Deaths])/SUM([Confirmed]),4) AS Death_to_Confirmed_Ratio,
	ROUND(SUM([Recovered])/SUM([Confirmed]),4) AS Recovered_to_Confirmed_Ratio
FROM
	[dbo].[CoronaVirusData]
HAVING
	SUM([Confirmed]) != 0;




-- Top 5 countries with highest Death-to-Confirmed corona cases ratio

SELECT 
	TOP 5 [Country/Region], 
	ROUND(SUM([Deaths])/SUM([Confirmed]),2) AS Death_to_Confirmed_Ratio
FROM
	[dbo].[CoronaVirusData]
GROUP BY
	[Country/Region]
HAVING 
	SUM([Confirmed]) != 0
ORDER BY
	SUM([Deaths])/SUM([Confirmed]) DESC;




-- Top 5 countries with highest Recovered-to-Confirmed corona cases

SELECT 
	TOP 5 [Country/Region], 
	ROUND(SUM([Recovered])/SUM([Confirmed]),2) AS Recovered_to_Confirmed_Ratio
FROM
	[dbo].[CoronaVirusData]
GROUP BY
	[Country/Region]
HAVING 
	SUM([Confirmed]) != 0
ORDER BY
	SUM([Recovered])/SUM([Confirmed]) DESC;




-- Top 10 countries with lowest Confirmed cases

SELECT 
	TOP 10 [Country/Region], 
	SUM([Confirmed]) AS Confirmed_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	[Country/Region]
ORDER BY 
	SUM([Confirmed]) ASC;



-- Top 10 countries with Highest Confirmed cases

SELECT 
	TOP 10 [Country/Region], 
	SUM([Confirmed]) AS Confirmed_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	[Country/Region]
ORDER BY 
	SUM([Confirmed]) DESC;



-- Top 10 countries with lowest death cases
SELECT 
	TOP 10 [Country/Region], 
	SUM([Deaths]) AS Death_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	[Country/Region]
ORDER BY 
	SUM([Deaths]) ASC;



-- Top 10 countries with highest death cases

SELECT 
	TOP 10 [Country/Region], 
	SUM([Deaths]) AS Death_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	[Country/Region]
ORDER BY 
	SUM([Deaths]) DESC;



	
-- 10 countries with lowest recovery cases

SELECT 
	TOP 10 [Country/Region], 
	SUM([Recovered]) AS Recovered_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	[Country/Region]
ORDER BY 
	SUM([Recovered]) ASC;




-- Top 10 countries with highest recovery cases

SELECT 
	TOP 10 [Country/Region], 
	SUM([Recovered]) AS Recovered_Cases
FROM 
	[dbo].[CoronaVirusData]
GROUP BY 
	[Country/Region]
ORDER BY 
	SUM([Recovered]) DESC;