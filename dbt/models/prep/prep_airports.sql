with airports_reorder as (
select
	country,
	faa,
	name,
	lat,
	lon,
	alt,
	tz,
	dst,
	city
from {{ref('staging_airports')}}
)
select *
from airports_reorder