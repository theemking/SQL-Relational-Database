--**************************************  DELETE HaulRecord STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteHaulRecord
	(
	@HaulRecordID INT
	)

AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	
	DELETE FROM HaulRecord
		WHERE HaulRecordID = @HaulRecordID;

	COMMIT TRANSACTION;

	SET NOCOUNT OFF;

END;
GO
