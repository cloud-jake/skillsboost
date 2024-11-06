WITH FOO AS (
SELECT SUM(cumulative_deceased) AS FUCK, subregion1_name, country_name
FROM bigquery-public-data.covid19_open_data.covid19_open_data
WHERE date = "2020-04-20"
AND country_name = "United States of America" 
GROUP BY 2,3
)

SELECT COUNT(subregion1_name) AS count_of_states 
FROM FOO
WHERE FUCK > 100