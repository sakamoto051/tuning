SELECT
    room_nbr
    , SUM(end_date - start_date) AS working_days 
FROM
    hotelrooms 
GROUP BY
    room_nbr 
HAVING
    SUM(end_date - start_date) >= 10
SELECT
    room_nbr
    , SUM(end_date - start_date) AS working_days 
FROM
    hotelrooms 
GROUP BY
    room_nbr 
HAVING
    SUM(end_date - start_date) >= 10
