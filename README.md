# Data Archive For Used Cars Dataset (2023) For Magnum Motors, Alaska

# About Dataset
The datasets provide detailed information about used cars, including their specifications and pricing details. The data was scraped from the popular online platform cars24.com, ensuring a diverse range of car models and accurate pricing information. The metadata dataset (Used_Cars) contains information about used cars in Sitka, Alaska owned by a Car Dealership company. The  meta dataset consists of approximately 1001 rows and 13 columns, covering various types of used cars (such as sedans, SUV) etc, The class of the cars (Small, Sporty, and Compact), and other information. 

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


# Problems the Dataset Intends to Solve
This dataset is valuable and intends to solve various problems for the Car Dealership company, and potential buyers. Specifically, the dataset would solve the following;

- Market Analysis: Analyzing the trends and patterns in the used car market based on factors like car type, year, and price
- Pricing Insights: Understanding the relationship between car specifications and pricing to assist in determining fair market value.
- Decision Making: Supporting decisions related to car purchases, investments, and market strategies.
The data was scraped from the popular online platform cars24.com, ensuring a diverse range of car models and accurate pricing information. We can also see cars that have covered more distance over time.

# Data Extraction
A second table was manually created to support the numerical attributes of the cars from the metadata. The information includes RPG, Distance covered to date, etc. The variables included in the secondary table were initially in the parent table and had to be separated to show one table with the facts(measurable, quantitative data points or metrics that represent the events or transactions of interest) and another with the dimension (the characteristics or attributes that provide context to the facts). 
The data extraction process involved my creating a schema on the MYSQL workbench called Cars_24. I then created a table bringing in Cars_Fact and Cars_Dim tables into the schema. 

-  Issues Faced
  
- Import Wizard
  During import, MySQL was unable to load my dataset in the specified table. I noticed this was due to the format of the Excel worksheet
 being in an XLSX format.

- How the issue was resolved
  Surfing the net helped me realize I needed to change the format the document was in. I further went on to re-save the document as a CSV (Comma Delimited) so as allow for a successful import.

# Data Transformation
 In this phase, I focus on the process of converting, cleaning, and structuring data from its raw format into a format that is suitable for analysis and storage in a data warehouse or database.

- Issues Faced
  
- Datatype
  After the table import stage, I observed the datatype for the Price column in the fact table (cars_fact) was in text format. I noticed this when executing a select statement as the column had commas (,) inbetweenn numbers

- How the issue was resolved










