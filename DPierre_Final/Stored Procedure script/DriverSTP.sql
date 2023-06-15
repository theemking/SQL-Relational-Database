--************************************** DriverSTP STORED PROCEDURE**************************************
USE Truck;

GO
CREATE PROCEDURE DriverSTP
(
@DriverID INT,
@Employee_EmployeeID INT,
@Date_Hire DATE,
@Commercial_Driver_License BIT
)
AS
BEGIN

SELECT DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License
FROM Driver  
WHERE Commercial_Driver_License = 1
ORDER BY DriverID
END;
GO