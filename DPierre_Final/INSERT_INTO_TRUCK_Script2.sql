------***************************** RECORD 6  ****************************
----***************************** Employee TABLE  ****************************

SET IDENTITY_INSERT Driver OFF
SET IDENTITY_INSERT HaulRecord OFF
SET IDENTITY_INSERT TruckInfo OFF
SET IDENTITY_INSERT Maintnance OFF
SET IDENTITY_INSERT Manifest OFF
SET IDENTITY_INSERT TrailerInfo OFF
SET IDENTITY_INSERT Employee OFF

USE Truck;

----***************************** RECORD 9  ****************************
SET IDENTITY_INSERT Employee ON
INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip ) 
					Values (10, '6/21/1999', 'Loe', 'Diooyn', '143 Sprusu st', 'Voltu Township', 'Minissota', 67132);
GO


--***************************** Driver TABLE  **************************** DONE
SET IDENTITY_INSERT Driver ON
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			Values ( 9, 9, '07/18/1998', 0);
GO

Select * from Employee
--***************************** TruckInfo TABLE  **************************** DONY
SET IDENTITY_INSERT TruckInfo ON
INSERT INTO dbo.TruckInfo(TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition)
			Values (9, 9, 'Max Feeder', 'Longated', 'Extra Long Trailor', '12 Speed', 'Gasoline', 19000, 'Good');

--***************************** HaulRecord TABLE  ****************************
SET IDENTITY_INSERT HaulRecord ON
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
			Values ( 9, 'Marc', 'Polo', 'Gas Tank', '06-11-2006', '06-12-2006', 3434, 'Repaired', 9);
GO

--***************************** Maintnance TABLE  ****************************
SET IDENTITY_INSERT Maintnance ON
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, 
			Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
			Values (9, 9, '01-19-2008', '01-20-2008', 'Replace Break', 656);
GO

--***************************** Manifest TABLE  ****************************
SET IDENTITY_INSERT Manifest ON
INSERT INTO Manifest(ManifestID, Truck_TruckID, 
			Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
			Values (9, 9, 'Bird', 'Duck', 300, 9, 9 );
GO

--***************************** TrailerInfo TABLE  ****************************
SET IDENTITY_INSERT TrailerInfo ON
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
			Values (9, 'Feeder', '12 tones', 12670, 'Regular Haul', 9);
GO

SET IDENTITY_INSERT Employee ON
INSERT INTO dbo.Employee (EmployeeID, Date_Of_Birth, FirstName, LastName, Address, City, State, Zip ) 
					Values (10, '6/21/1999', 'Loe', 'Diooyn', '143 Sprusu st', 'Voltu Township', 'Minissota', 67132);
GO

----***************************** RECORD 10  ****************************
--***************************** Driver TABLE  **************************** DONE
SET IDENTITY_INSERT Driver ON
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			Values ( 10, 10, '08/18/1998', 1);
GO

Select * from Employee
--***************************** TruckInfo TABLE  **************************** DONY
SET IDENTITY_INSERT TruckInfo ON
INSERT INTO dbo.TruckInfo(TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition)
			Values (10, 10, 'Max Feeder', 'Longated', 'Extra Long Trailor', '15 Speed', 'Gasoline', 12300, 'Good');

--***************************** HaulRecord TABLE  ****************************
SET IDENTITY_INSERT HaulRecord ON
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
			Values ( 10, 'Moric', 'Paula', 'AC Tank', '06-11-2007', '06-13-2006', 33434, 'Repaired', 10);
GO

select * from HaulRecord
--***************************** Maintnance TABLE  ****************************
SET IDENTITY_INSERT Maintnance ON
INSERT INTO Maintnance(MaintnanceID, TruckInfo_TruckInfoID, 
			Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code)
			Values (10, 10, '02-28-2009', '03-02-2009', 'Replace Miror', 334);
GO

--***************************** Manifest TABLE  ****************************
SET IDENTITY_INSERT Manifest ON
INSERT INTO Manifest(ManifestID, Truck_TruckID, 
			Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
			Values (10, 10, 'Bird', 'Chicken', 435, 10, 10);
GO

--***************************** TrailerInfo TABLE  ****************************
SET IDENTITY_INSERT TrailerInfo ON
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
			Values (10, 'Feeder', '12 tones', 12670, 'Regular Haul', 10);
GO

