--**************************************  UpdateDriver STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UpdateDriver
(
@DriverID INT,
@Employee_EmployeeID INT,
@Date_Hire DATE,
@Commercial_Driver_License BIT
)

AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;
		
	IF(@DriverID IS NOT NULL)
	UPDATE Driver
	SET DriverID = @DriverID
	WHERE DriverID = @DriverID;

	IF(@Employee_EmployeeID IS NOT NULL)
	UPDATE Driver
	SET Employee_EmployeeID = @Employee_EmployeeID
	WHERE DriverID = @DriverID;
	
	IF(@Date_Hire IS NOT NULL)
	UPDATE Driver
	SET Date_Hire = @Date_Hire
	WHERE DriverID = @DriverID;

	IF(@Commercial_Driver_License IS NOT NULL)
	UPDATE Driver
	SET Commercial_Driver_License = @Commercial_Driver_License
	WHERE DriverID = @DriverID;

	COMMIT TRANSACTION;
	SET NOCOUNT OFF;

END;
GO
