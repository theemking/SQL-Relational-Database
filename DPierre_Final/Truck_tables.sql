/*		
			Name: DONY PIERRE
Course: CMIT-200-40: Relational Database Design and SQL - Spring 2021 (2021S7A)
Assignment: Final Project
Portion: Week 2: Assignment - Database Table Structure
*/

--******************** TRUCK DATABASE ********************

USE Truck;

-- This is the Employee Table
CREATE TABLE dbo.Employee
(
EmployeeID INT NOT NULL,
Date_Of_Birth DATE NOT NULL,
FirstName VARCHAR(40) NOT NULL,
LastName VARCHAR(40) NOT NULL,
Address VARCHAR(200) NOT NULL,
City VARCHAR(200) NOT NULL,
State VARCHAR(50) NOT NULL,
Zip INT NOT NULL
CONSTRAINT PK_Employee PRIMARY KEY (EmployeeID)
);

-- This is the Driver Table
CREATE TABLE dbo.Driver
(
DriverID INT NOT NULL,
Employee_EmployeeID INT NOT NULL,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Date_Hire DATE NOT NULL,
Commercial_Driver_License BIT NOT NULL
CONSTRAINT PK_Driver PRIMARY KEY (DriverID)
);

-- This is the Truck Information Table
CREATE TABLE dbo.TruckInfo
(
TruckInfoID INT NOT NULL,
Driver_DriverID INT NOT NULL,
Truck_Type VARCHAR(50),
Truck_Body_Type VARCHAR(50),
Truck_Description VARCHAR(100),
Truck_Engine_Type VARCHAR(50),
Truck_Fuel_Type VARCHAR(20),
Truck_Mileage INT,
Truck_Condition VARCHAR(20)
CONSTRAINT PK_TruckInfo PRIMARY KEY (TruckInfoID)
);

-- This is the Trailer Information Table
CREATE TABLE dbo.TrailerInfo
(
TrailerInfoID INT NOT NULL,
Trailer_Type VARCHAR(15),
Trailer_Capacity VARCHAR(10),
Trailer_Mileage INT,
Trailer_Discription VARCHAR(20),
CONSTRAINT PK_TrailerInfo PRIMARY KEY (TrailerInfoID)
);

-- This is the Haul Record Information Table
CREATE TABLE dbo.HaulRecord  --Delivery Records
(
HaulRecordID INT NOT NULL,
Truck_Used VARCHAR(20),
Client VARCHAR(50),
Cargo_Type VARCHAR(20),
Date_Sent DATE,
Date_Delivered DATE,
MileageCount INT,
Haul_Notes VARCHAR(1000),
CONSTRAINT PK_HaulRecord PRIMARY KEY (HaulRecordID)
);

-- This is the Haul Manifest Information Table
CREATE TABLE dbo.Manifest
(
ManifestID INT NOT NULL,
Truck_TruckID INT NOT NULL,
Item VARCHAR(12),
Item_Description VARCHAR(100),
Weight_Per_Unit INT,
Quantity INT,
CONSTRAINT PK_Manifest PRIMARY KEY (ManifestID)
);

-- This is the Truck Information Table
CREATE TABLE dbo.Maintnance
(
MaintnanceID INT NOT NULL,
Truck_TruckID INT NOT NULL,
TruckInfo_TruckInfoID INT NOT NULL,
Maintnance_Start DATE,
Maintnance_End DATE,
Maintnance_Type VARCHAR(20),
Maintnance_Code INT,
CONSTRAINT PK_Maintnance PRIMARY KEY (MaintnanceID)
);
GO

