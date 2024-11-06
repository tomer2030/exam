-- Get all the the sepal.length rounded
SELECT ROUND(sepal_length, 0) AS rounded_sepal_length
FROM iris;

-- Get first char of the iris name id the petal.length bigger than the average. If not, get the last char of the iris name
SELECT 
    CASE 
        WHEN petal_length <= avg_petal.avg_length THEN SUBSTRING(species, LENGTH(species), 1) 
        ELSE SUBSTRING(species, 1, 1)
    END AS one_char_of_name
FROM 
    iris
JOIN 
    (SELECT AVG(petal_length) AS avg_length FROM iris) AS avg_petal ON 1=1;
