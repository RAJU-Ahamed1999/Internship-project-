use genz;
 
--  1.What is the gender distribution of respondents from India?
Select Gender,count(*)
from gen
where Country= "India"
group by Gender ;

--  2. What percentage of respondents from India are interested in education abroad and sponsorship?
select 
sum(case when Outside_of_India= "Yes" then 1 end )*100 / count(*) as Percentage_respomdent 
from gen;

 -- 3.What are the 6 top influences on career aspirations for respondents in India?
 select Influence ,count(*) as Influence_count 
 from gen
 where Country = "India"
 group by Influence
 order by Influence_Count DESC
 limit 6 ;
 
  -- 4. How do career aspiration influences vary by gender in India?
  select Gender , Influence ,count(*) as Influence_Count 
  from gen
  where Country = "India"
  group by Gender,Influence 
  order by Influence_Count DESC   ;
 -- 5. What percentage of respondents are willing to work for a company for at least 3 years?
 SELECT 
    (SUM(CASE WHEN Commitment_3_years = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS percentage_commitment
FROM 
    gen;
    
    -- 6.How many respondents prefer to work for socially impactful companies?
    select
    count(case when Inconsistency_Job = "Yes" then 1 else 0  end) as social_impactful_comanies
    from gen ;
    
  -- 7. How does the preference for socially impactful companies vary by gender?  
  select Gender, count(case when Inconsistency_Job = "Yes" then 1 else 0  end) as social_impactful_comanies 
  from gen
  group by Gender 
order by Gender ; 

-- 8. What is the distribution of minimum expected salary in the first three years among respondents?
 select Salary_expectation, Count(*) as count_of_respondents
 from gen 
 group by Salary_expectation
 order by Salary_expectation asc;
 -- 9. What is the expected minimum monthly salary in hand?
select Starting_salary_expectations,count(*) as minimum_monthly_salary_in_hand
from gen 
group by Starting_salary_expectations
order by Starting_salary_expectations ;

-- 10. What percentage of respondents prefer remote working?
    select sum(case when Preferences = "Fully Remote" then 1 else 0 end ) * 100 / count(*) as remote_working_respondents 
from gen ;

-- 11. What is the preferred number of daily work hours?
select 
Daily_work_hours_preference,Count(*) as daily_work_preference 
from gen
 group by Daily_work_hours_preference
 order by  Daily_work_hours_preference asc ;
 
  
  
    

 