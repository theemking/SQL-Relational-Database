--************************************** DriverSTPLookUp STORED PROCEDURE**************************************
USE Truck;

GO
CREATE PROCEDURE DriverSTPLookUp 
(
@DriverID INT,
@Employee_EmployeeID INT,
@Date_Hire DATE,
@Commercial_Driver_License BIT
)
AS
BEGIN

SELECT DriverID, Date_Hire, Commercial_Driver_License,
	CASE
		WHEN Commercial_Driver_License = 1 THEN 'Valid License'
		WHEN Commercial_Driver_License = 0 THEN 'License Suspended'
	END AS [Invalid License]
FROM Driver
END;
GO