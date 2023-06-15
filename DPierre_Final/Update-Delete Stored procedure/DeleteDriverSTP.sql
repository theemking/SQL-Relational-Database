--**************************************  DELETE DRIVER STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteDriver
	(
	@DriverID INT
	)

AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	
	DELETE FROM Driver
		WHERE DriverID = @DriverID;

	COMMIT TRANSACTION;

	SET NOCOUNT OFF;

END;
GO


