
WITH flights AS (
    SELECT * 
    FROM {{source('flights_data', 'flights')}}
)
SELECT * FROM flights
WHERE origin in ('MSY', 'MOB', 'MIA') OR dest in ('MSY', 'MOB', 'MIA')