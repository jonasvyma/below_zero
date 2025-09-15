with f as(
select
	flight_date,
	sum(cancelled) cancelled, sum(arr_delay)
from
	below_zero.prep_flights
where
	(origin = 'MSY'
		or dest = 'MSY')
	and cancelled = 1
group by
	1
order by
	1 asc
),
w as(
select
	date ,
	round(avg(pwh.precipitation_mm)) preci ,
	round(avg(pwh.wind_speed_kmh)) speed,
	round(avg(pwh.pressure_hpa) ) presh,
	round(avg(pwh.humidity_perc)) hum
from
	prep_weather_hourly pwh
group by
	date
	order by date asc
	)
select
	*
from
	w
join f on
	flight_date = date
;