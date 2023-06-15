/***************************** DATABASE INSERT STATEMENT ****************************/

SET IDENTITY_INSERT Driver OFF
SET IDENTITY_INSERT HaulRecord OFF
SET IDENTITY_INSERT TruckInfo OFF
SET IDENTITY_INSERT Maintnance OFF
SET IDENTITY_INSERT Manifest OFF
SET IDENTITY_INSERT TrailerInfo OFF

USE Truck;
--***************************** RECORD 1  ****************************
--***************************** Employee TABLE  ****************************
--SET IDENTITY_INSERT Employee ON
--INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip ) 
--					Values (1, '01/12/1961', 'Bery', 'Pery', '32 Kilibu', 'Carrying', 'Texas', 78372);
--SET IDENTITY_INSERT Employee OFF

--***************************** Driver TABLE  ****************************
SET IDENTITY_INSERT Driver ON
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			Values ( 1, 1, '01/12/1970', 1);
GO

--***************************** TruckInfo TABLE  ****************************
SET IDENTITY_INSERT TruckInfo ON
INSERT INTO dbo.TruckInfo(TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition)
			Values (1, 1, 'Heavy Duty', 'FlatBed', '18 Wheeler', '12 Speed', 'Gasoline', 150000, 'Excelent');

--***************************** HaulRecord TABLE  ****************************
SET IDENTITY_INSERT HaulRecord ON
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
			Values ( 1, 'PETERBILT', 'Walmart', 'Food', '02-23-2013','02-27-2013', 300, 'Successfull delivery', 1);
GO

--***************************** Maintnance TABLE  ****************************
SET IDENTITY_INSERT Maintnance ON
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, 
			Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
			Values (1, 1, '12-09-2019', '12-12-2019', 'Replace Tire', 201);
GO

--***************************** Manifest TABLE  ****************************
SET IDENTITY_INSERT Manifest ON
INSERT INTO Manifest(ManifestID, Truck_TruckID, 
			Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
			Values (1, 1, 'Train Part', 'Train Engine', 800, 1, 1 );
GO

--***************************** TrailerInfo TABLE  ****************************
SET IDENTITY_INSERT TrailerInfo ON
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
			Values (1, 'Auto Pull', '10 tones', 100000, 'Long Flatbed', 1);
GO

----***************************** RECORD 2  ****************************
--***************************** Employee TABLE  ****************************
SET IDENTITY_INSERT Employee ON
INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip ) 
					Values (2, '01/12/1968', 'Mark', 'Yolly', '21 Orriy st', 'Austin', 'Texas', 72342);
GO

--***************************** Driver TABLE  **************************** DONE
SET IDENTITY_INSERT Driver ON
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			Values ( 2, 2, '01/12/1986', 2);
GO

--***************************** TruckInfo TABLE  **************************** DONY
SET IDENTITY_INSERT TruckInfo ON
INSERT INTO dbo.TruckInfo(TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition)
			Values (2, 2, 'Light Duty', 'Short FlatBed', '10 Wheeler', '8 Speed', 'Desiel', 1000, 'Good');

--***************************** HaulRecord TABLE  ****************************
SET IDENTITY_INSERT HaulRecord ON
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
			Values ( 2, 'Ford', 'Sears', 'Washer', '03-23-2014','04-29-2014', 300, 'Successfull delivery', 2);
GO

--***************************** Maintnance TABLE  ****************************
SET IDENTITY_INSERT Maintnance ON
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, 
			Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
			Values (2, 2, '01-20-2020', '11-12-2018', 'Replace Engine', 202);
GO

--***************************** Manifest TABLE  ****************************
SET IDENTITY_INSERT Manifest ON
INSERT INTO Manifest(ManifestID, Truck_TruckID, 
			Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
			Values (2, 2, 'Sement', 'Sement Bags', 500, 2, 2 );
GO

--***************************** TrailerInfo TABLE  ****************************
SET IDENTITY_INSERT TrailerInfo ON
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
			Values (2, 'Manual Attached', '5 tones', 40000, 'Short Haul', 2);
GO

----***************************** RECORD 3  ****************************
--***************************** Employee TABLE  ****************************
SET IDENTITY_INSERT Employee ON
INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip ) 
					Values (3, '08/15/1967', 'Paul', 'Son', '43 Lorr st', 'Prody', 'Alabama', 45543);
GO

select * from employee
--***************************** Driver TABLE  **************************** DONE
SET IDENTITY_INSERT Driver ON
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			Values ( 3, 3, '10/24/1989', 3);
GO

--***************************** TruckInfo TABLE  **************************** DONY
SET IDENTITY_INSERT TruckInfo ON
INSERT INTO dbo.TruckInfo(TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition)
			Values (3, 3, 'Medium Weight', 'Trailor', '10 feet long', '9 Speed', 'Gasozine', 11000, 'Fair');

--***************************** HaulRecord TABLE  ****************************
SET IDENTITY_INSERT HaulRecord ON
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
			Values ( 3, 'Marc', 'Burlington', 'Clothes', '05-23-2014','05-29-2014', 300, 'delayed delivery', 3);
GO

--***************************** Maintnance TABLE  ****************************
SET IDENTITY_INSERT Maintnance ON
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, 
			Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
			Values (3, 3, '11-20-2018', '11-25-2018', 'Replace Oil', 203);
GO

--***************************** Manifest TABLE  ****************************
SET IDENTITY_INSERT Manifest ON
INSERT INTO Manifest(ManifestID, Truck_TruckID, 
			Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
			Values (3, 3, 'Food', 'Potato', 1000, 3, 3 );
GO

--***************************** TrailerInfo TABLE  ****************************
SET IDENTITY_INSERT TrailerInfo ON
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
			Values (3, 'Trailor', '20 tones', 49000, 'Long Haul', 3);
GO

----***************************** RECORD 4  ****************************
--***************************** Employee TABLE  ****************************
SET IDENTITY_INSERT Employee ON
INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip ) 
					Values (4, '09/19/1970', 'John', 'Well', '123 Ring st', 'Peole', 'Florida', 33299);
GO

select * from employee
--***************************** Driver TABLE  **************************** DONE
SET IDENTITY_INSERT Driver ON
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			Values ( 4, 4, '02/24/1990', 4);
GO

--***************************** TruckInfo TABLE  **************************** DONY
SET IDENTITY_INSERT TruckInfo ON
INSERT INTO dbo.TruckInfo(TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition)
			Values (4, 4, 'Dump Truck', 'Tractor', 'Short Dumpster', '8 Speed', 'Diesel', 6000, 'Old');

--***************************** HaulRecord TABLE  ****************************
SET IDENTITY_INSERT HaulRecord ON
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
			Values ( 4, 'GMC', 'Wawa', 'Juice', '06-13-2015', '06-15-2015', 400, 'Late', 4);
GO

select * from HaulRecord
--***************************** Maintnance TABLE  ****************************
SET IDENTITY_INSERT Maintnance ON
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, 
			Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
			Values (4, 4, '08-20-2017', '08-25-2017', 'Replace Filter', 214);
GO

--***************************** Manifest TABLE  ****************************
SET IDENTITY_INSERT Manifest ON
INSERT INTO Manifest(ManifestID, Truck_TruckID, 
			Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
			Values (4, 4, 'Water', 'Spring', 2000, 4, 4 );
GO

--***************************** TrailerInfo TABLE  ****************************
SET IDENTITY_INSERT TrailerInfo ON
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
			Values (4, 'Feeder', '20 tones', 12000, 'Regular Haul', 4);
GO

----***************************** RECORD 5  ****************************
--***************************** Employee TABLE  ****************************
SET IDENTITY_INSERT Employee ON
INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip ) 
					Values (5, '03/17/1990', 'Redy', 'Orrington', '233 Stirre st', 'Errie', 'Pennsylvania', 19132);
GO

select * from employee
--***************************** Driver TABLE  **************************** DONE
SET IDENTITY_INSERT Driver ON
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			Values ( 5, 5, '03/29/1996', 5);
GO

Select * from Employee
--***************************** TruckInfo TABLE  **************************** DONY
SET IDENTITY_INSERT TruckInfo ON
INSERT INTO dbo.TruckInfo(TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition)
			Values (5, 5, 'Semi-Trailer', 'Panel', 'Long Trailor', '12 Speed', 'Gasonine', 76000, 'New');

--***************************** HaulRecord TABLE  ****************************
SET IDENTITY_INSERT HaulRecord ON
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
			Values ( 5, 'IZUZU', 'PepBoys', 'Tire', '08-19-2016', '08-20-2016', 700, 'On Time', 5);
GO

select * from HaulRecord
--***************************** Maintnance TABLE  ****************************
SET IDENTITY_INSERT Maintnance ON
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, 
			Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
			Values (5, 5, '02-21-2011', '02-21-2011', 'Replace Fuel Tank', 216);
GO

--***************************** Manifest TABLE  ****************************
SET IDENTITY_INSERT Manifest ON
INSERT INTO Manifest(ManifestID, Truck_TruckID, 
			Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
			Values (5, 5, 'Concrete', 'Gravel', 12000, 5, 5 );
GO

--***************************** TrailerInfo TABLE  ****************************
SET IDENTITY_INSERT TrailerInfo ON
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
			Values (5, 'Dumpster', '50 tones', 12000, 'Regular Haul', 5);
GO

----***************************** RECORD 6  ****************************
--***************************** Employee TABLE  ****************************
SET IDENTITY_INSERT Employee ON
INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip ) 
					Values (6, '04/11/1995', 'Mody', 'Litting', '575 Garvy st', 'Allen Town', 'Pennsylvania', 19132);
GO

select * from employee
--***************************** Driver TABLE  **************************** DONE
SET IDENTITY_INSERT Driver ON
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			Values ( 6, 6, '04/19/1997', 0);
GO

Select * from Employee
--***************************** TruckInfo TABLE  **************************** DONY
SET IDENTITY_INSERT TruckInfo ON
INSERT INTO dbo.TruckInfo(TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition)
			Values (6, 6, 'Short Feeder', 'Seramo', 'Short Trailor', '8 Speed', 'Diesel', 164000, 'Fair');

--***************************** HaulRecord TABLE  ****************************
SET IDENTITY_INSERT HaulRecord ON
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
			Values ( 6, 'Toyota', 'Acme', 'Steering', '05-17-2005', '05-20-2005', 11530, 'Waiting on Vendor', 6);
GO

select * from HaulRecord
--***************************** Maintnance TABLE  ****************************
SET IDENTITY_INSERT Maintnance ON
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, 
			Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
			Values (6, 6, '06-11-2007', '06-15-2007', 'Replace Break', 346);
GO

--***************************** Manifest TABLE  ****************************
SET IDENTITY_INSERT Manifest ON
INSERT INTO Manifest(ManifestID, Truck_TruckID, 
			Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
			Values (6, 6, 'Flour', 'Pizza', 900, 6, 6 );
GO

--***************************** TrailerInfo TABLE  ****************************
SET IDENTITY_INSERT TrailerInfo ON
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
			Values (6, 'Feeder', '12 tones', 12670, 'Regular Haul', 6);
GO

