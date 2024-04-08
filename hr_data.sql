SELECT * FROM hr_attrition.hr_data;

-- 1. total number of employees who left the company 
select count(*) as AttritionCount from hr_data
where Attrition = 'Yes';

-- 2. average daily rate of employee who frequently travel for business
 select avg(DailyRate) 
 from hr_data
 where BusinessTravel='Travel_Frequently';
 
 -- 3. how many employees are satisfied for their job involvement 
select JobInvolvement, count(JobInvolvement) from hr_data
group by JobInvolvement;

-- 4. overall avg rating performance of employees
select avg(PerformanceRating) from hr_data;
