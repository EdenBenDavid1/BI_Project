SELECT AVG(price) as AVGprice
from Houses_FACT

select AVG(price) as AVGprice3Bed
from Houses_FACT
where bedrooms=3

SELECT AVG(sqm_living) as AVGsqm
FROM Houses_FACT

SELECT AVG(sqm_living) as AVGsqm3Bed
FROM Houses_FACT

SELECT city, COUNT(*) as numOfHouses
FROM Houses_FACT
GROUP BY city
order by COUNT(*) desc

SELECT city, MIN(price) as minPriceHouse, AVG(price) as avgPriceHouse, MAX(price) as maxPriceHouse
FROM Houses_FACT
GROUP BY city

SELECT city, MIN(sqm_living) as minSqmHouse, AVG(sqm_living) as avgSqmHouse, MAX(sqm_living) as maxSqmHouse
FROM Houses_FACT
GROUP BY city

select distinct(bedrooms),bathrooms, COUNT(*) over (partition by bedrooms, bathrooms) as amountPerBedBath
from Houses_FACT
order by amountPerBedBath desc

select houses_prices_id, price, bedrooms, yr_built, yr_renovated, 
case when yr_renovated=0 then 0 else yr_renovated-yr_built end as numYearsTillRenovated
from Houses_FACT
order by price desc,numYearsTillRenovated desc

