--**************************************  InsertIntoDriver STORE PROCEDURES **************************************

USE Truck;
GO
CREATE PROCEDURE InsertIntoDriver
(
@DriverID INT,
@Employee_EmployeeID INT,
@Date_Hire DATE,
@Commercial_Driver_License BIT
)
AS
BEGIN
SET NOCOUNT ON;
--**************************************  INSERT INTO DRIVER **************************************
BEGIN TRANSACTION;
INSERT INTO Driver ( DriverID, Employee_EmployeeID, Date_Hire, Commercial_Driver_License) 
			VALUES(@DriverID, @Employee_EmployeeID, @Date_Hire, @Commercial_Driver_License);
COMMIT TRANSACTION;
SET NOCOUNT ON;
END;

