```
SELECT L.*,
       R.RPM,
       R.Distance,
       R.Owner,
	   R.Price
FROM cars_dim AS L
LEFT JOIN cars_fact AS R
ON L.`Car id` = R.`Car id`
WHERE Owner = 3 AND R.Year = 2010
ORDER BY Price DESC;
```
