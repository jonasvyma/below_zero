WITH airports_regions_join AS (
    SELECT * 
    FROM {{source('flights_data', 'airports')}}
)
SELECT * FROM airports_regions_join
WHERE faa in ('MSY', 'MOB', 'MIA')