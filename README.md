# Global Trends: Analyzing COVID-19 Spread across Nations (January 2020 - June 2021)
## SQL Analysis and Power BI Visualizations

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
  
  When I calculated the Mode or the most frequent value of confirmed, death and recovered cases, I found that for all the months the value is 0. Which means that for majority of the records contain no corona cases.

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

![monthly 3 cases line chart](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/de1999a5-2652-412f-8e95-aa525361985e)

![average 3 cases](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/da1c9371-c4e4-4e88-9a89-c70dabc2090c)

![top 10 countrie recovered](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/22e5cdc3-c466-4598-b4ad-f067c234f64d)

![top 10 countries confirmed](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/c5b74056-0947-403e-9215-1ac9890e9ad9)

![top 10 countries death](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/03d4dd07-6c9d-4088-9a75-b55e9e6f1ba1)

![total 3 cases per month](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/bfae7e01-f6ce-4933-9d63-5fddddd31d23)

# Summary of the Result:

I have analyzed 78000 records of Covid 19 cases (Confirmed, Death, Recovered) of 121 countries from January 2020 to June 2021 and found the following results:
1. The number of confirmed covid patients increased steadily from January 2020 unto July 2020 after which it dipped a bit before increasing rapidly from October to December. In 2021, number of confirmed cases were at peak during January after which it geadually decreases until March and rose again till April.

The same goes for Recovered Cases. As the number of Confirmed corona patients increases so does the recovered patients.

In case of death cases, we can see a sharp peak at April,2020 indicating an increase in deaths. After that death cases reduces before rising steadily from October till January 2021 when it was at its peak. After that it dropped till March and rose again in May and finally dropped in June.

Looking at the three charts we can notice that when the recovery measures taken up by countries catches up with the confirmed corona cases, meaning they succeed in mitigating the effects of the pandemic the death rate decreases, as can be seen in initial months of Jan to March, again from May to September in 2020 and Feb and March in 2021.

Number of death cases rises as the recovery measures cannot effectively catches up with the rapidly increasing corona cases as can be seen for April 2020, then from Oct 2020 to jan 2021.

2. The % of death and recovered cases

We can see that the ratio between death and confirmed cases is rather very small, about 0.0216 or ~2.16% which means that a very little fraction of the total world population has died in this pandemic.

On the other hand, the ratio between recovered and confirmed cases is about 0.6689 or ~ 67%. That is about 67% of the corona patients recovered.

3. The worst affected countries
Among the worst affected countries in this pandemic with a high confirmed cases were the United States, India, Brazil, France, Turkey among others. The united states, Brazil, india, Mexico and Peru wwere the contries with highest number of death cases. 

4 The least affected countries

The top 5 countries with lowest confirmed cases were Kiribati(with 2 cases), Samoa(3), Marshall Islands (5), Dominica (189) and Tanzania (509).

the top 5 countries with least death cases were Marshall Island(0), Samoa(0), Kiribati(0), Dominica(0) and Bhutan(1).

5. Monthly average trends


# Dashboard:



# Limitations of the Project:



# Future Ideas:


# References:
