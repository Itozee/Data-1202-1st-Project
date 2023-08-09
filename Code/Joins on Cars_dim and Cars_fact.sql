```
SELECT L.*,
	   R.RPM,
       R.Price,
       R.Distance,
       R.Owner
FROM Cars_dim AS L
LEFT JOIN Cars_fact AS R
ON L.`Car id` = R.`Car id`; 
```
