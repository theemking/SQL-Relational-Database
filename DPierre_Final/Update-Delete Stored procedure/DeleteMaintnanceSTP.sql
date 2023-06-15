--**************************************  DELETE Maintnance STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteMaintnance
	(
	@MaintnanceID INT
	)

AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	
	DELETE FROM Maintnance
		WHERE MaintnanceID = @MaintnanceID;

	COMMIT TRANSACTION;

	SET NOCOUNT OFF;

END;
GO
