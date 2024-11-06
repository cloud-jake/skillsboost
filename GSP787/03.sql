
WITH FOO AS (
SELECT SUM(cumulative_confirmed) AS total_confirmed_cases, subregion1_name as state, country_code
FROM bigquery-public-data.covid19_open_data.covid19_open_data
WHERE date = "2020-04-20"
AND country_code like "%US%" 
AND subregion1_name is not null
GROUP BY 2,3
)

SELECT state, total_confirmed_cases
FROM FOO
WHERE total_confirmed_cases > 2000
ORDER BY total_confirmed_cases  DESC

/*
 In Task 3, I had to give the field name in order by clause 
 and it is not taking order by 2 desc. 
*/
