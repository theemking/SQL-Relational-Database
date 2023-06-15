USE [Truck]

GO
ALTER PROCEDURE TruckInfoSTP
(
@TruckInfoID INT,
@Driver_DriverID INT,
@Truck_Type VARCHAR(50),
@Truck_Body_Type VARCHAR(50),
@Truck_Description VARCHAR(100),
@Truck_Engine_Type VARCHAR(50),
@Truck_Fuel_Type VARCHAR(20),
@Truck_Mileage INT,
@Truck_Condition VARCHAR(20)
)
AS
BEGIN
--**************************************  Select TruckInfo **************************************
SELECT TruckInfoID, Driver_DriverID,
			Truck_Type, Truck_Body_Type, Truck_Description, Truck_Engine_Type, Truck_Fuel_Type, 
			Truck_Mileage, Truck_Condition
FROM TruckInfo
WHERE Truck_Mileage > 100
ORDER BY TruckInfoID
END
GO
