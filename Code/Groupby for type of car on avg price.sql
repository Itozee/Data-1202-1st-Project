```
-- Group by on Type of cars and the average price
SELECT L.Type,
	  AVG (R.Price)
FROM cars_dim AS L
LEFT JOIN cars_fact AS R
ON L.`Car id` = R.`Car id`
GROUP BY L.Type;
```
