-- What is the number of distinct countries present in the database?
SELECT COUNT (DISTINCT country_code) AS total_distinct_countries
FROM international_debt;

-- What country has the highest amount of debt?
SELECT DISTINCT country_name, SUM(debt) AS total_debt
FROM international_debt
GROUP BY country_name
ORDER BY SUM(debt) DESC
LIMIT 1;

-- What country has the lowest amount of repayments?
SELECT DISTINCT country_name, indicator_name, MAX(debt) AS lowest_repayment
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
GROUP BY country_name, indicator_name
ORDER BY MAX(debt)
LIMIT 1;