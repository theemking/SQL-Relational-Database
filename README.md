# SQL-Relational-Database
Final Project Requirements
I would like to present the proposal for the XYZ Truck database. I am not sure if I'm suppose to keep the name XYZ but if I can change it I will call it the Truck Database.
Customer requirements – Initial project requirements
The project requirements will include all the basic functionality the the customer requires
Systems Analysis – Development of diagrams and concept refinement
The database will have a diagram to show the customer all the table connections or how the tables are joined together so that information can easily accessed.
Systems Architecture – Constructing the technical framework of the system
The system architecture will be used to she all the essential component of the database system, how it is make and how it will functioned.
System Development – Writing code for the system
The process the represent the writing of the codes that will run the program.
System Testing – Testing the functionality of the system to ensure that it meets
Testing will be done to check the functionality of the database system to make sure that the database works and fulfill its purposed.
requirements and is bug-free
I will be working to make sure that all the codes work properly and that there is no bugs or errors.
Minimum system requirements:
I have highlighted 19 requirements that I will be using to grow the ideas for the development of the database. I will be using these requirements to create more tables  as the needs arise while building the database.
1.	System design documents
2.	Tables in 3rd normal form
3.	Look up tables
4.	Use of stored procedures for query, insert, and delete
5.	In code commenting
6.	System create scripts
7.	System data insert scripts to populate lookup tables as well as some ‘dummy’ data for the rest of the system so that your instructor may test your system
8.	cargo was in a truck,
9.	who drove the truck,
10.	which truck was used,
11.	when was it delivered
12.	Related information on any truck maintenance.
13.	Number of truck
14.	drivers
15.	unforeseen circumstances
16.	single unit, without trailer,
17.	Large tractor-trailer combination (18-wheel) vehicles that can pull varying types of trailers.
18.	A preliminary business analysis has been done and the analyst has determined that the below data is required for the initial database system.
19.	Minimum Required Data Elements: (Key M = Element must always have a value, L = look up table of default values). Items in ()’s are the only legal values for those fields.
Driver Demographic Information:
Name M
Date of Birth M
Employee Number M
Date of Hire
Commercial Driver License (yes or no) M
Truck Information:
Truck Type (Long or short haul) M
Truck Body Type (Tractor Trailer or Single Unit) M
Truck Number M
Truck License Number
Truck Description
Truck Engine Type
Truck Fuel Type
Truck Current Mileage M
Trailer Information (Tractor-Trailer Only)
Trailer Type (Tanker, Flat Bed, Box, Refrigerated) M, L
Trailer Capacity M
Trailer Mileage M
Trailer Description
Haul Record (Delivery Records)
Truck Used M
Client M
Cargo Type (Hazardous, Liquid, Refrigerated, Standard, Other), L
Date Haul Began M
Date Delivered M
Mileage M
Haul Notes
Haul Manifest (Inventory of items delivered)
Item M
Item Description
Item Weight Per Unit
Quantity M
Truck Maintenance
Truck M
Maintenance Start Date M
Maintenance End Date M
Maintenance Type (Engine, Transmission, Tires, Body, Electrical, Hydraulic, Pneumatic) M, L
Maintenance Code (Routine, Unscheduled) M, L

In compliance with the minimum data elements,I will build a prototype database system. I will also developed store procedures that ill include the basic business logic which will be used by the Acme Software to access data in the database. All data manipulation (insert, update, delete, and query) will be done through the stored procedures.
Business Logic
The basic business logic of the system shall be included in the database’s stored procedures. Design of the logic will require some systems analysis in order to ensure that the logic is correct.
•	A driver shall always be associated with a haul. (This means that whenever there is data inserted into the haul tables, the driver ID must be included in that data.)
•	A truck that is a tractor-trailer combination shall always be associated with trailer information.
•	If a truck has a maintenance date that is between a begin haul date and delivery date, that information must be included in the Haul Notes. (This one is a bit more complex because the stored procedure that inserts a haul record must have logic to check the maintenance tables(s) to see if that truck has scheduled maintenance due between the beginning date and end dates for that haul. If so, the record inserted into the haul table(s) must include a note on that maintenance in the Haul Notes column of the table.) 
Truck Maintenance: The stored procedure shall accept a date range for the report and shall include the truck number, maintenance done, and shall be ordered by long haul, short haul and maintenance date.
Haul Record:The stored procedure shall accept a truck number and date range. The stored procedure shall return the haul record of the truck in chronological order but not include detailed inventory.
Haul Inventory: This stored procedure is similar to Haul Record, except it shall also include the detailed haul inventory.
Custom Report: Develop one other report of your choosing.

