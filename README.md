# Corona Virus Analysis
## Analyzing the global effects of Corona Virus from January 2020 to June 2021.

The COVID-19 pandemic, which swept across the globe from early 2020 onwards, had profound and far-reaching effects on societies, economies, and healthcare systems worldwide. It led to widespread disruptions in daily life, severe strains on healthcare infrastructure, and significant socio-economic impacts. This analysis report examines the trajectory of confirmed cases, fatalities, and recoveries from COVID-19 across different countries during the critical period of 2020 to 2021, shedding light on the varying impacts and responses observed globally.

# About the Internship:

* Organization: Mentorness
* Type: Remote
* Duration: 26/05/2024 to 26/06/2024
* Number of tasks: 3

# About the Project:

This project is done as a part of Mentorness Internship from 01/06/2024 to 12/06/2024. This is the task 2 where I am analyzing the data about the number of confirmed, dead and recovered cases of Corona Virus pandemic in various countries recorded between January 2020 to June 2021.

# Problem Statement:

The CORONA VIRUS pandemic has had a significant impact on public health and has created an urgent need for data-driven insights to understand the spread of the virus. As a data analyst, you have been tasked with analyzing a CORONA VIRUS dataset to derive meaningful insights and present your findings.

# Deliverables: 

* Project Source Code: SQL file with queries
* Dashboard
* Presentation Report
* Video Presentation explaining the approach towards dataset, problem statement, inferences drawn, final outcome and future scope

# Tools Used:

* Microsoft Excel: For Data Cleaning and Transforming
* Microsoft SQL Server: For Data Analysis
* Power BI: For Data Visualization and Dashboard
* Canva: For creating Project Report
* GitHub: Documenting the result

# Methodologies Used:

* Data Cleaning and Transformation
* Data Analysis
* Data Visualization
* Reporting

# Data Decription:

The Dataset contains 78387 rows and 8 columns that provides information about the number of confirmed, dead and recovered cases of Corona Virus pandemic in various countries recorded between January 2020 to June 2021.

| Column Name | Datatype | Description |
| :--- | :--- | :--- |
| Province | Str | Geographic subdivision within a country/region |
| Country/Region | Str | Geographic entity where data is recorded |
| Latitude | Str | North-south position on Earth's surfacen |
| Longitude | Str | East-west position on Earth's surface |
| Date | Str | Recorded date of CORONA VIRUS data |
| Confirmed | Str | Number of diagnosed CORONA VIRUS cases |
| Deaths | Str | Number of CORONA VIRUS related deaths |
| Recovered | Str | Number of recovered CORONA VIRUS cases |

# Data Cleaning:

1. I created a copy of the original CSV file as an Excel worksheet.
2. First I checked for null values using a Conditional Formatting. It returned zero null values.
3. Then I checked for duplicate entries using Remove Duplicate tool. There were no duplicate entries.
4. I changed the format of the Date column from General to Date.
5. Similarly I changed the format of Confirmed, Deaths and Recovered columns from General to Number, with no decimal places.
6. Finally I saved and imported this Excel workbook into Microsoft SQL Server. 

# Data Exploration:

I am tasked to find answers to these 16 questions using SQL queries. So here I'll provide the answers.

### Q1. Write a code to check NULL values.

  ![1](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/e22d3aeb-546a-435a-88f9-467a754a381b)

### Q2. If NULL values are present, update them with zeros for all columns. 

  There were no Null values present in the dataset.

### Q3. Check the total number of rows.

  ![3](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/481be551-b253-4c73-a995-1991ad2386d3)

### Q4. What are the start and end date in this dataset.

  ![4](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/fa38b1f0-7085-4a78-bb7d-410e1a2860e0)

### Q5. Find the number of month present in the dataset.

  ![5](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/7a806a4c-ee6f-4f59-9b86-bc4a149ec392)

### Q6. Find monthly average for confirmed, deaths, recovered.

  ![6](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/bc798c5a-6e56-42a4-a8cb-76b8ac31b177)

### Q7. Find most frequent value for confirmed, deaths, recovered each month. 

  ![7](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/867a67d0-4932-4ea6-815c-ef92003c8236)

  ![7 1](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/8ec2337b-4305-4e61-b57f-faed891e7d6a)

### Q8. Find the minimum values for confirmed, deaths, recovered per year.

  ![8](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/4767b9e6-326d-4b6f-a5d2-f1ef3ad5ba2d)

### Q9. Find the maximum values of confirmed, deaths, recovered per year.

  ![9](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/6d081b5e-0b41-4a5f-b215-dde3c2c738f1)

### Q10. Find the total number of case of confirmed, deaths, recovered each month.

  ![10](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/7a52c6db-9ea9-458a-a9ae-ca4fa49c4f41)

### Q11. Check how Corona Virus spread out with respect to confirmed case per month (e.g., total confirmed cases, their average, variance & Standard Deviation).

  ![11](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/03c677c2-987c-4b6f-a90b-b9204d79f793)

  ![11 1](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/9cfd9ddb-912e-4fa5-bc5f-e68b4a8d0c81)

### Q12. Check how Corona Virus spread out with respect to death case per month (e.g., total confirmed cases, their average, variance & Standard Deviation).

  ![12](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/6af52362-8371-4415-ab2c-b5777d7e91a3)

  ![12 1](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/f07d9626-7174-400a-a3be-001ce21f7bb9)

### Q13. Check how Corona Virus spread out with respect to recovered case per month (e.g., total confirmed cases, their average, variance & Standard Deviation).

  ![13](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/1c6a4b85-ce46-4352-abd9-4451f05c9ddb)

  ![13 1](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/17b6ec6e-51d9-4f4e-a94c-066972af25c5)

### Q14. Find the Country having the highest number of the Confirmed case.

  ![14](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/990414c2-6eab-4fdd-a6e8-3631da94100e)

### Q15. Find the Country having the lowest number of the death case.

  ![15](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/7e418be9-bcb9-4c43-883b-599afd19426b)

### Q16. Find the top 5 countries having highest recovered case.

  ![16](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/5920af4c-6d14-42ab-9c98-3af934794c47)

# Data Analysis:



# Summary of the Result:



# Dashboard:



# Limitations of the Project:



# Future Ideas:


# References:
