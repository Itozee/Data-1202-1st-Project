# Data Archive For Used Cars Dataset (2023) For Magnum Motors, Alaska

# About Dataset
The datasets provide detailed information about used cars, including their specifications and pricing details. The data was scraped from the popular online platform cars24.com, ensuring a diverse range of car models and accurate pricing information. The metadata dataset (Used_Cars) contains information about used cars in Sitka, Alaska owned by a Car Dealership company. The  meta dataset consists of approximately 1001 rows and 13 columns, covering various types of used cars (such as sedans, SUV) etc, The class of the cars (Small, Sporty, and Compact), and other information. Another table was manually created to support the numerical attributes of the cars from the metadata. The information includes RPG, Distance covered to date, etc. The variables included in the secondary table were initially in the parent table and had to be separated to show one table with the facts(measurable, quantitative data points or metrics that represent the events or transactions of interest) and another with the dimension (the characteristics or attributes that provide context to the facts). 

# Meta dataset
The Meta dataset includes the following columns:
- Car Id: The related identity number for each car for sale
- Car Name: The name or model of the car.
- Year: The year when the car was Manufactured.
Carkey: This joins the year the car was manufactured with the name of the car to ensure uniqueness in the dataset.
Fuel: The fuel used (petrol, diesel, CNG, etc.).
Drive: The dataset refers to the type of transmission which could be Manual and Automatic
Car Type: The type of car (sedan, SUV, hatchback, luxury SUV, luxury sedan).
Mans trans avail: 
Model: This refers to a specific version or variant of a particular make or brand of automobile
Class: This emphasizes the category that groups cars into segments based on size and style.
Airbags: This indicates information regarding the airbags located in the car. It could either be ‘None’, ‘Driver only’ and, ‘Driver and Passenger’.
Drivetrain: The drivetrain in the car dataset refers to the components and mechanisms that deliver power from the engine to the wheels. The category includes 4wd, Rear, and Front.
Origin: This states if the car was manufactured in the U.S.A

# Dimension
The dimension dataset consists of approximately 1001 rows and 13 columns. They include; 
Car Id: The related identity number for each car for sale
Car Name: The name or model of the car.
Year: The year when the car was Manufactured.
CaKy: This joins the year the car was manufactured with the name of the car to ensure uniqueness in the dataset.


# Problems the Dataset Intends to Solve
This dataset is valuable and intends to solve various problems for the Car Dealership company, and potential buyers. Specifically, the dataset would solve the following;

Market Analysis: Analyzing the trends and patterns in the used car market based on factors like car type, year, and price
Pricing Insights: Understanding the relationship between car specifications and pricing to assist in determining fair market value.
Decision Making: Supporting decisions related to car purchases, investments, and market strategies.
The data was scraped from the popular online platform cars24.com, ensuring a diverse range of car models and accurate pricing information. We can also see cars that have covered more distance over time.




