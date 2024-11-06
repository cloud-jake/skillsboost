/*
My Task-4 query was giving the correct results, yet the task progress was not being recorded. I had to write in a completely different way, which wasted a lot of time - 
*/

select subregion1_name as state, confirmed_count as total_confirmed_cases from 
    (select subregion1_name, sum(cumulative_confirmed) confirmed_count 
    from bigquery-public-data.covid19_open_data.covid19_open_data 
    where date = '2020-04-25' 
    and country_name = 'United States of America' 
    and cumulative_confirmed is not null 
    and subregion1_name is not null 
    group by subregion1_name) 
where confirmed_count >2000 
ORDER BY total_confirmed_cases DESC ;
