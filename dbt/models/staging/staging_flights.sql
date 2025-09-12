
WITH flights AS (
    SELECT * 
    FROM {{source('flights_data', 'flights_raw')}}
)
SELECT * FROM flights
WHERE origin in ('MSY', 'MOB', 'MIA') OR dest in ('MSY', 'MOB', 'MIA')