```
-- Remove commas from the price column
UPDATE cars_fact
SET Price = REPLACE(Price, ',', '');
```
