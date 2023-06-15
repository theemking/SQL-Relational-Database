--**************************************  DELETE TrailerInfo STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteTrailerInfo
	(
	@TrailerInfoID INT
	)

AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	
	DELETE FROM TrailerInfo
		WHERE TrailerInfoID = @TrailerInfoID;

	COMMIT TRANSACTION;

	SET NOCOUNT OFF;

END;
GO
