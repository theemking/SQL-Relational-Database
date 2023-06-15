--**************************************  DELETE Manifest STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE DeleteManifest
	(
	@ManifestID INT
	)

AS
BEGIN
	
	SET NOCOUNT ON;

	BEGIN TRANSACTION;
	
	DELETE FROM Manifest
		WHERE ManifestID = @ManifestID;

	COMMIT TRANSACTION;

	SET NOCOUNT OFF;

END;
GO
