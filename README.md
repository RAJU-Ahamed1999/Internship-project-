# Internship-project-
# Gen Z's Career Aspirations
## project overview :
This data analysis project aims to provide valuable insights into the career aspirations of Gen Z. The analysis delves into various aspects of their career preferences, highlighting what drives their decisions and ambitions. By focusing on how Gen Z views careers, this study offers a well-rounded perspective, showcasing their aspirations from different angles
### Data sources : 
The primary data source used for this project is the 'Your Career Aspirations (Responses).xlsx' file.
### Data cleaning tools:
  - Excel
  - SQL
### Data visualization tools
  - Excel
### Problem Statement and Documentation
The project focuses on identifying and analyzing the career aspirations of Gen Z. To structure this identification process, we utilized the 5W Framework (Who, What, When, Where, Why) to address the core aspects of the problem


### Data Cleaning and Preparation"
- In the initial phase, we performed the following tasks:

- Data Loading and Inspection: Importing the dataset and examining its structure to understand the data.
- Handling Missing Data: Identifying and addressing missing or incomplete entries to ensure data integrity.
- Data Standardization and Normalization: Ensuring uniform formatting and scaling for consistency across variables.
- Data Cleaning and Formatting: Removing errors, duplicates, and irrelevant entries while organizing the data for analysis.

### Exploratory Data Analysis :
 - What is the gender distribution of respondents from India?
- What percentage of respondents from India are interested in education abroad and sponsorship?
- What are the 6 top influences on career aspirations for respondents in India?
- How do career aspiration influences vary by gender in India?
- What percentage of respondents are willing to work for a company for at least 3 years?
- How many respondents prefer to work for socially impactful companies?
-  How does the preference for socially impactful companies vary by gender?
-  hat is the distribution of minimum expected salary in the first three years among respondents?
-  What is the expected minimum monthly salary in hand?
-  hat percentage of respondents prefer remote working?
-  hat is the preferred number of daily work hours?
- what are the common work frustrations among respondents?
 - How does the need for work-life balance interventions vary by gender?
 - How many respondents are willing to work under an abusive manager?
-  What is the distribution of minimum expected salary after five years?
  ### Data  analysis 
      
```SQL
select 
sum(case when Outside_of_India= "Yes" then 1 end )*100 / count(*) as Percentage_respomdent 
from gen;

select Influence ,count(*) as Influence_count 
 from gen
 where Country = "India"
 group by Influence
 order by Influence_Count DESC
 limit 6 ;
```

### Results and Findings : Gen Z Career Aspirations
1. Influences on Career Choices:Personal values, social influence, and modern trends strongly shape Gen Z’s career preferences.
2. They are particularly attracted to companies with socially responsible missions and innovative cultures.
3. Importance of Company Type:Gen Z prefers organizations that promote inclusivity, sustainability, and flexibility.Startups, NGOs, and forward-thinking corporations are favored.
4. Role of Higher Education:Higher education remains a critical factor for career planning, with many Gen Z individuals pursuing specialized degrees for competitive advantage.
5. Multidimensional Aspirations:Gen Z seeks careers that allow for creativity, work-life balance, and opportunities for continuous learning.
6. Workplace Frustrations:Factors such as lack of growth opportunities, rigid structures, and workplace dissatisfaction can lead to shifts in career goals.
7. Salary Expectations:At entry-level, Gen Z has realistic minimum salary expectations, but they seek incremental growth tied to skill development and performance.
8. Flexibility and Remote Work:Flexibility in work hours and the option for remote work are increasingly non-negotiable for Gen Z employees.
9. Long-term Vision:Beyond financial stability, they aim for roles where they can make a meaningful impact on society and achieve personal fulfillment.

### Recommendations
1. Flexible Work: Offer remote or hybrid work models with flexible schedules to attract Gen Z, who value work-life balance and autonomy.

2. Purpose-Driven Roles: Align the company’s mission with social and environmental goals to appeal to Gen Z’s desire for meaningful work.

3. Continuous Learning: Provide access to online courses, mentorship, and clear career paths to satisfy their need for growth and development.

4. Mental Health Support: Implement wellness programs, counseling, and mental health days to support their well-being and prevent burnout.

5. Agile Feedback: Shift to continuous feedback and quarterly reviews for timely guidance and recognition.

6. Modern Recruitment: Use social media, gamified assessments, and transparent job postings to attract Gen Z in a relatable way.

7. Inclusive Environment: Foster diversity through employee groups and unbiased hiring to create a welcoming workplace for all.

### Limitation : 
The analysis of Gen Z's career aspirations has several limitations. It may overgeneralize preferences, not accounting for individual differences across cultural, economic, and regional backgrounds. The analysis also lacks specific data tailored to certain industries or locations, which may lead to assumptions that don't fully capture Gen Z's needs. Moreover, not all companies, especially smaller ones, can adapt to changes like flexible work or wellness programs due to resource constraints. Gen Z's priorities may also evolve with experience and economic conditions, making some recommendations less relevant over time. Additionally, while flexible models may attract Gen Z, they don’t guarantee long-term retention, especially given the generation’s tendency to switch jobs. Finally, the analysis is more applicable to tech and creative fields, where flexible work models are common, and is harder to apply in traditional sectors where such practices are less feasible.
 
