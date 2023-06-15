--**************************************  DELETE TruckInfo STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteTruckInfo
	(
	@TruckInfoID INT
	)

AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	
	DELETE FROM TruckInfo
		WHERE TruckInfoID = @TruckInfoID;

	COMMIT TRANSACTION;

	SET NOCOUNT OFF;

END;
GO
