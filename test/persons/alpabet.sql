SELECT
    SUBSTRING(name, 1, 1) as label
    , count(*) 
FROM
    persons 
GROUP BY
    SUBSTRING(name, 1, 1) 
ORDER BY
    SUBSTRING(name, 1, 1)
