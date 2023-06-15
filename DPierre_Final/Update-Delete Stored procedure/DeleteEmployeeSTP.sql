--**************************************  DELETE EMPLOYEE STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteEmployee
	(
	@EmployeeID INT
	)

AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	
	DELETE FROM Employee
		WHERE EmployeeID = @EmployeeID;

	COMMIT TRANSACTION;

	SET NOCOUNT OFF;

END;
GO
