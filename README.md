# Data Archive For Used Cars Dataset (2023) For Magnum Motors, Alaska

# About Dataset
The datasets provide detailed information about used cars, including their specifications and pricing details. The data was scraped from the popular online platform cars24.com, ensuring a diverse range of car models and accurate pricing information. The metadata dataset (Used_Cars) contains information about used cars in Sitka, Alaska owned by a Car Dealership company. The  meta dataset consists of approximately 1001 rows and 13 columns, covering various types of used cars (such as sedans, SUV) etc, The class of the cars (Small, Sporty, and Compact), and other information. 

# Problems the Dataset Intends to Solve
This dataset is valuable and intends to solve various problems for the Car Dealership company, and potential buyers. Specifically, the dataset would solve the following;

- Market Analysis: Analyzing the trends and patterns in the used car market based on factors like car type, year, and price
- Pricing Insights: Understanding the relationship between car specifications and pricing to assist in determining fair market value.
- Decision Making: Supporting decisions related to car purchases, investments, and market strategies.
The data was scraped from the popular online platform cars24.com, ensuring a diverse range of car models and accurate pricing information. We can also see cars that have covered more distance over time.

# Meta dataset
The Meta dataset includes the following columns:
- Car Id: The related identity number for each car for sale
- Car Name: The name or model of the car.
- Year: The year when the car was Manufactured.
- Carkey: This joins the year the car was manufactured with the name of the car to ensure uniqueness in the dataset.
- Fuel: The fuel used (petrol, diesel, CNG, etc.).
- Drive: The dataset refers to the type of transmission which could be Manual and Automatic
- Car Type: The type of car (sedan, SUV, hatchback, luxury SUV, luxury sedan).
- Mans trans avail: This data suggests if the type of transmission in the vehicles requires the driver to manually shift gears using a clutch pedal and a gear stick(Yes or No)
- Model: This refers to a specific version or variant of a particular make or brand of automobile
- Class: This emphasizes the category that groups cars into segments based on size and style.
- Airbags: This indicates information regarding the airbags located in the car. It could either be ‘None’, ‘Driver only’ and, ‘Driver and Passenger’.
- Drivetrain: The drivetrain in the car dataset refers to the components and mechanisms that deliver power from the engine to the wheels. The category includes 4wd, Rear, and Front.
- Origin: This states if the car was manufactured in the U.S.A

# Dimension
The dimension dataset consists of approximately 1001 rows and 8 columns. They include; 
- Car Id: The related identity number for each car for sale
- Car Name: The name or model of the car.
- Year: The year when the car was Manufactured.
- CaKy: This joins the year the car was manufactured with the name of the car to ensure uniqueness in the dataset.
- RPM: RPM refers to the revolutions per minute, and it’s used as a measure of how fast any machine is operating at a given time.
- Price: This is the current valuation of the cars at the moment. 
- Distance: The distance already traveled by car (in kilometers).
- Owner: The number of previous owners of the car.

# Data Extraction
A second table was manually created to support the numerical attributes of the cars from the metadata. The information includes RPG, Distance covered to date, etc. The variables included in the secondary table were initially in the parent table and had to be separated to show one table with the facts(measurable, quantitative data points or metrics that represent the events or transactions of interest) and another with the dimension (the characteristics or attributes that provide context to the facts). 
The data extraction process involved my creating a schema on the MYSQL workbench called Cars_24. I then created a table bringing in Cars_Fact and Cars_Dim tables into the schema. 

-  Issues Faced
  
- Import Wizard
 
During import, MySQL was unable to load my dataset in the specified table. I noticed this was due to the format of the Excel worksheet
 being in an XLSX format.

- How the issue was resolved
  
Information from surfing the net helped me realize I needed to change the format the document. I further went on to re-save the document as a CSV (Comma Delimited) so as allow for a successful import.

# Data Transformation
 In this phase, I focused on the process of converting, cleanin, and structuring data from its raw format into a format that is suitable for analysis and storage in a data warehouse or database.

- Issues Faced
  
- Wrong Values(1)
  
I performed some quality checks on the dataset by using the 'Distinct' function on the columns. I found that the 'Model' column in the Cars_Dim dataset had some wrong values in some of the rows.


- How the issue was resolved
  
I used the 'update' function to actively change some of the values in the model column

- Issues Faced
  
- Wrong Datatype(2)
  
After performing a join linking the dimension and the fact tables together, I tried to do some aggregations on price but I noticed the price column had comma separated in each value indicating that the datatype was set at Text. We have to change the datatype to be able to perform data aggregations.   

- How the issue was resolved
  
I started by removing all the commas in the Price column of the Cars_dim, then modified the datatype of the price column from TEXT TO INTEGER.

 # Operations Performed In the Transformations Phase
 
 - Join
   
  I performed the join function to show additional information regarding the cars. This involved using a left join which is the dimensions table (Cars_dim) and fact table (Cars_fact).

- GROUP BY
  
  By looking at the joined table, we can answer so many questions and make decisions based on the current conditions of the car.

- Customer
  
  From the customer's perspective, when purchasing a car, he might pounder on what type of car to get buy at a range of amount in mind. 
  This leads to the question of what the average cost of each type of car is ?
  The question gives the buyer a lead into what type of cars he would be more interested in.
  A group by was done to give the customer this insight.

- Operation performed
  
  I did a group by on the 'Types' of cars and the average price of those cars in the group.

- Output
  
  The results from the operation show a potential customer that he would most likely find Lux_SUV cars to be more expensive, with an 
  average price of $1,349,818.
  A cheaper alternative, if he wants to look for pocket-friendly vehicles would be to go for Hatchbacks due to the category having an 
  average price of $471,134.  


- Magnum Motors
  
   The car dealership companies will from time to time want to offer the best and most accommodating prices to the customers. One of the 
   best business strategy employed by vendors with depreciating assets or goods is to offer the assets that are not in demand or older 
   at a reduced price than what would have been charged.
   From the dataset, we can filter out the cars with the longest manufactured year and the most owners. This can help provide 
   information to the sales team in the company to evaluate strategies that would get those cars bought.

  - Operation performed
    
   I used the 'Where' function to filter out cars that have been used by 3 previous owners being the highest number of owners in the 
   dataset and filtered for 2010 manufacture date. I also use an 'Order by' function to allow us see the DESC (Descending) order in 
   terms of price. 

- Output
  
  The results from the operation shows 4 Hyundai i10 vehicles. The prices of the vehicles range from $170,000 to $287,000. 











