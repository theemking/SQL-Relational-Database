--************************************** DriverLookUp STORED PROCEDURE**************************************
USE Truck;

GO
CREATE PROCEDURE DriverLookUp
(
@DriverID INT,
@Employee_EmployeeID INT,
@Date_Hire DATE,
@Commercial_Driver_License BIT
)
AS
BEGIN
SELECT Truck_Mileage, Driver_DriverID, Truck_Body_Type, Truck_Description 	
FROM TruckInfo
GROUP BY Truck_Mileage, Driver_DriverID, Truck_Body_Type, Truck_Description 	
HAVING Truck_Mileage > 100
ORDER BY Truck_Mileage, Driver_DriverID, Truck_Body_Type, Truck_Description 

END;
GO