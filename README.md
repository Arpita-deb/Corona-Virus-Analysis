# Epidemic Analytics: Evaluating COVID-19’s Global Footprint
## With SQL Analysis and Power BI Visualizations

![Title Page](https://github.com/Arpita-deb/Corona-Virus-Analysis/assets/139372731/ed1e5617-8847-481a-bc99-589dfb47e4e0)

The COVID-19 pandemic, which swept across the globe from early 2020 onwards, had profound and far-reaching effects on societies, economies, and healthcare systems worldwide. It led to widespread disruptions in daily life, severe strains on healthcare infrastructure, and significant socio-economic impacts. This analysis report examines the trajectory of confirmed cases, fatalities, and recoveries from COVID-19 across different countries during the critical period of 2020 to 2021, shedding light on the varying impacts and responses observed globally.

# About the Internship:

* Organization: Mentorness
* Type: Remote
* Duration: 26/05/2024 to 26/06/2024
* Number of tasks: 3

# About the Project:

This project is done as a part of Mentorness Internship from 01/06/2024 to 12/06/2024. This is the task 2 where I am analyzing the data about the number of confirmed, dead and recovered cases of Corona Virus pandemic in various countries recorded between January 2020 to June 2021.

# Problem Statement:

"The CORONA VIRUS pandemic has had a significant impact on public health and has created an urgent need for data-driven insights to understand the spread of the virus. As a data analyst, you have been tasked with analyzing a CORONA VIRUS dataset to derive meaningful insights and present your findings."

# Deliverables: 

* Project Source Code: SQL file with queries
* [Dashboard](https://drive.google.com/file/d/1DMGkVY3RVBzQ2uZMKMOgVbWhXrDZrY_k/view?usp=sharing)
* [Presentation Report](https://drive.google.com/file/d/1fbtrZ_OoYkPkuV38CfHGvbRvYCOWO_LZ/view?usp=sharing)
* [Video Presentation](https://drive.google.com/file/d/168YmV5N0FQdJ4fFSavlFkxsYX7K1ynMo/view?usp=sharing) explaining the approach towards dataset, problem statement, inferences drawn, final outcome and future scope.

# Tools Used:

* Microsoft Excel: For Data Cleaning and Transforming
* Microsoft SQL Server: For Data Analysis
* Power BI: For Data Visualization and Dashboard
* Canva: For creating Project Report
* GitHub: Documenting the result

# Methodologies Used:

* Data Cleaning
* Data Analysis
* Data Visualization
* Presentation
* Documentation

# Data Decription:

The Dataset contains 78387 rows and 8 columns that provides information about the number of confirmed, dead and recovered cases of Corona Virus pandemic in various countries recorded between January 2020 to June 2021.

| Column Name | Datatype | Description |
| :--- | :--- | :--- |
| Province | Str | Geographic subdivision within a country/region |
| Country/Region | Str | Geographic entity where data is recorded |
| Latitude | Str | North-south position on Earth's surface |
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

The data spans from January 2020 to June 2021, which gives us total 18 months of data, instead of general 12 months which aggregates the data based on 12 months a year which does not take into account the months from different years (2020 and 2021).

### Q6. Find monthly average for confirmed, deaths, recovered.

  ![6](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/bc798c5a-6e56-42a4-a8cb-76b8ac31b177)

### Q7. Find most frequent value for confirmed, deaths, recovered each month. 

  ![7](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/867a67d0-4932-4ea6-815c-ef92003c8236)

  ![7 1](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/8ec2337b-4305-4e61-b57f-faed891e7d6a)
  
  The mode is the value that appears most frequently in a set of data. In the context of the COVID-19, a mode of 0 means that on more days than any other number, there were no new confirmed cases reported. 
  
  This could indicate that there were several days with no spread of the infection or that no new cases were detected on those days. It’s a positive sign when the mode is 0, as it suggests there were periods with potentially very low transmission rates.

### Q8. Find the minimum values for confirmed, deaths, recovered per year.

  ![8](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/4767b9e6-326d-4b6f-a5d2-f1ef3ad5ba2d)

 The minimum value was 0 for confirmed, deaths, recovered per year.

### Q9. Find the maximum values of confirmed, deaths, recovered per year.

  ![9](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/6d081b5e-0b41-4a5f-b215-dde3c2c738f1)

### Q10. Find the total number of case of confirmed, deaths, recovered each month.

  ![10](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/7a52c6db-9ea9-458a-a9ae-ca4fa49c4f41)

### Q11. Check how Corona Virus spread out with respect to confirmed case per month (e.g., total confirmed cases, their average, variance & Standard Deviation).

  ![11](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/03c677c2-987c-4b6f-a90b-b9204d79f793)

  ![11 1](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/9cfd9ddb-912e-4fa5-bc5f-e68b4a8d0c81)

The **monthly summary statistics** give us a detailed look at the spread of COVID-19 over time. They include several different numbers that help us understand the situation better:

- **Total count**: This is the total number of confirmed cases for a given month. For example, in April, there were **24,047,819 confirmed cases**, which was the highest for any month.

- **Mean**: This is the average number of cases per day in a month. December had the highest daily average, meaning that, on average, more people were confirmed to have COVID-19 each day in December than in other months.

- **Range**: This tells us the difference between the smallest and largest number of cases in a month. The minimum number of cases in any month was **0**, and the maximum number varied, with the highest being **823,225**.

- **Median**: This is the middle value of confirmed cases when they are arranged in order. For all months, the median was **23**, indicating that half the days had fewer than 23 cases, and the other half had more.

- **Variance and Standard Deviation**: These are statistical measures of how much the number of cases varies from day to day within a month. A higher variance and standard deviation mean that the number of cases was very inconsistent, with a lot of fluctuation from day to day. Most months had high variance and standard deviation, indicating that the number of cases each day was quite unpredictable.

In simple terms, these statistics tell us that April saw the most cases overall, December was the worst on average each day, and there was a lot of variation in the number of cases from day to day in most months. The situation was quite volatile, with some days having very few cases and others having a very high number of cases.

### Q12. Check how Corona Virus spread out with respect to death case per month (e.g., total confirmed cases, their average, variance & Standard Deviation).

  ![12](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/6af52362-8371-4415-ab2c-b5777d7e91a3)

  ![12 1](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/f07d9626-7174-400a-a3be-001ce21f7bb9)

The **monthly summary statistics** give us a detailed look at the mortality rate of COVID-19 over time.

- **Total count**: In case of death cases, April had the highest number of cases **554,220 death cases** among all the other months.

- **Mean**: This is the average number of death cases per day in a month. December had the highest daily average (71), meaning that, on average, more people were dying due to COVID-19 each day in December than in other months.

- **Range**: This tells us the difference between the smallest and largest number of cases in a month. The minimum number of cases in any month was **0**, and the maximum number varied, with the highest being **7374** in June.

- **Median**: This is the middle value of confirmed cases when they are arranged in order. For all months, the median was **0**, indicating that half the days had 0 cases, and the other half had more.

- **Variance and Standard Deviation**: These are statistical measures of how much the number of cases varies from day to day within a month. A higher variance and standard deviation mean that the number of death cases was very inconsistent, with a lot of fluctuation from day to day. However, the monthly variance and standard deviations were lower compared to confirmed cases.

### Q13. Check how Corona Virus spread out with respect to recovered case per month (e.g., total confirmed cases, their average, variance & Standard Deviation).

  ![13](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/1c6a4b85-ce46-4352-abd9-4451f05c9ddb)

  ![13 1](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/17b6ec6e-51d9-4f4e-a94c-066972af25c5)

The **monthly summary statistics** give us a detailed look at the recovery rate of COVID-19 over time. 

- **Total count**: This is the total number of recovered cases for a given month. For example, in May, **20,651,389** people cured, which was the highest for any month.

- **Mean**: This is the average number of recovered cases per day in a month. December had the highest daily average (2498), meaning that, on average, more people were recovered from COVID-19 each day in December than in other months.

- **Range**: This tells us the difference between the smallest and largest number of cases in a month. The minimum number of cases in any month was **0**, and the maximum number varied, with the highest being **1,123,456** in December.

- **Median**: This is the middle value of recovered cases when they are arranged in order. For all months, the median was **2**, indicating that half the days had fewer than 2 recovered cases, and the other half had more.

- **Variance and Standard Deviation**: These are statistical measures of how much the number of cases varies from day to day within a month. A higher variance and standard deviation mean that the number of recovered cases was very inconsistent, with a lot of fluctuation from day to day. Most months had high variance and standard deviation, indicating that the number of recovered cases each day was quite unpredictable.
  
### Q14. Find the Country having the highest number of the Confirmed case.

  ![14](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/990414c2-6eab-4fdd-a6e8-3631da94100e)

### Q15. Find the Country having the lowest number of the death case.

  ![15](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/7e418be9-bcb9-4c43-883b-599afd19426b)

### Q16. Find the top 5 countries having highest recovered case.

  ![16](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/5920af4c-6d14-42ab-9c98-3af934794c47)

# Summary of the Result:

I have analyzed 78,386 records of Covid 19 cases (Confirmed, Death, Recovered) of 121 countries from January 2020 to June 2021 and found the following results:

1. From January 2020 to June 2021, total 169,065,144 people were diagnosed with Novel Corona Virus (confirmed cases). The data shows that 3,647,894 people died during this period and 113,089,548 people recovered.

2. **Confirmed Cases Trend**: From January to July 2020, there was a steady rise in confirmed COVID-19 cases, followed by a slight decline and then a sharp increase from October to December. In 2021, the peak occurred in January, with a subsequent gradual decline until March, before rising again through April.
   
  ![monthly confirmed line chart](https://github.com/Arpita-deb/Corona-Virus-Analysis/assets/139372731/89d472a8-4f25-465f-95ea-7f0279d8f3ff)

3. **Death Cases Trend**: A significant spike in deaths was observed in April 2020. Following this, death cases decreased, only to rise steadily from October 2020 to January 2021, reaching a peak. The numbers then fell until March, rose in May, and declined again in June.

  ![monthly death line chart](https://github.com/Arpita-deb/Corona-Virus-Analysis/assets/139372731/541ee82b-6637-4a68-839a-78f4de3ea1d3)

4. **Recovered Cases Trend**: The trend in recovered cases mirrored that of confirmed cases, indicating that as more individuals were diagnosed, a corresponding number of patients recovered.

  ![monthly recovered line chart](https://github.com/Arpita-deb/Corona-Virus-Analysis/assets/139372731/9c74b2a6-90c5-4385-adce-a21aadc23578)

5. **Impact of Recovery Measures**: An analysis of the charts suggests that effective recovery measures led to a decrease in death rates, as evidenced from January to March, May to September in 2020, and February to March in 2021. Conversely, death cases surged when recovery efforts lagged behind the rapid increase in confirmed cases, notably in April 2020 and from October 2020 to January 2021.

  ![monthly 3 cases line chart](https://github.com/Arpita-deb/Corona-Virus-Analysis/assets/139372731/d038074a-7a14-45b7-8eba-15924dd2c1cf)  

6. **Monthly Average Trends**: The monthly averages for confirmed, death, and recovered cases showed significant increases in January, April, and from August to December. Conversely, there were decreases in February and June.

  ![average 3 cases](https://github.com/Arpita-deb/-Corona-Virus-Analysis/assets/139372731/da1c9371-c4e4-4e88-9a89-c70dabc2090c)

7. **Death and Recovery Percentages**: The death-to-confirmed case ratio was approximately 2.16%, indicating a relatively small impact on the global population. In contrast, the recovery-to-confirmed case ratio was about 67%, suggesting that a majority of patients recovered.

8. **Countries Most Affected**: The United States, India, Brazil, France, and Turkey were among the countries with the highest number of confirmed cases.
   
  ![top 5 countries by confirmed cases](https://github.com/Arpita-deb/Corona-Virus-Analysis/assets/139372731/796f9774-7a49-4858-bb2f-144b33e1415e)

 The highest death tolls were recorded in the United States, Brazil, India, Mexico, and Peru.

  ![top 5 countries by death case](https://github.com/Arpita-deb/Corona-Virus-Analysis/assets/139372731/9d251912-4637-43c1-a843-fdf2d5898945)

9. **Countries Least Affected**: Kiribati, Samoa, Marshall Islands, Dominica, and Tanzania reported the lowest confirmed cases. The fewest deaths occurred in the Marshall Islands, Samoa, Kiribati, Dominica, and Bhutan.

10. **High Recovery Cases**: India demonstrated a remarkable recovery rate, with 28.1 million citizens recovering over 18 months. Brazil, the United States, Turkey, and Russia also reported high numbers of recoveries.

  ![top 5 countrie by recovered case](https://github.com/Arpita-deb/Corona-Virus-Analysis/assets/139372731/bc86eebc-2f37-4ca1-8991-6f716d4adced)


# Dashboard:

![dashboard](https://github.com/Arpita-deb/Corona-Virus-Analysis/assets/139372731/8316524e-0376-4f18-969e-19b14a262b45)

# Limitations of the Project:

* Incomplete Timeline: The dataset covers Covid-19 cases only from January 2020 to June 2021, missing nearly two years of data up to May 2023 when the WHO’s emergency declaration ended.

* Limited Data for Analysis: With just three columns for confirmed, deaths, and recovered cases, the dataset lacks depth, omitting key statistics like hospitalization and testing rates needed for a thorough analysis.

* No Demographic Details: The absence of patient demographics such as age, gender, and health conditions prevents detailed group analysis and affects strategy development for public health responses.

* Missing Mitigation Measures: Information on country-specific actions like lockdowns and vaccinations is not included, limiting understanding of their effectiveness in managing the pandemic’s spread and impact.

# Future Ideas:

To address these limitations in future research, the following steps could be considered:

* Update the Dataset: Include data up to the latest date to capture the entire scope of the pandemic.

* Expand Data Points: Add more data types like hospitalization and testing rates for richer analysis.

* Add Patient Demographics: Collect age, gender, and health condition data to identify vulnerable populations and improve health strategies.

* Leverage Advanced Analytics: Use machine learning and predictive models to reveal deeper insights and patterns in the data.

# References:

* [COVID-19 pandemic](https://en.wikipedia.org/wiki/COVID-19_pandemic)

# Appendix:

* [Power BI Dashboard](https://drive.google.com/file/d/1DMGkVY3RVBzQ2uZMKMOgVbWhXrDZrY_k/view?usp=sharing)
* [Epidemic Analytics Report Presentation](https://drive.google.com/file/d/1fbtrZ_OoYkPkuV38CfHGvbRvYCOWO_LZ/view?usp=sharing)
* [Epidemic Analytics Video Presentation](https://drive.google.com/file/d/168YmV5N0FQdJ4fFSavlFkxsYX7K1ynMo/view?usp=sharing)
* [Epidemic Analytics - Analyzing Global Covid 19 cases using SQL Medium Article](https://medium.com/@arpita_deb/epidemic-analytics-530f222b1de7)
