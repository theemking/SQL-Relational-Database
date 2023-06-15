--**************************************  UpdateManifest STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UpdateManifest
(
@ManifestID INT,
@Truck_TruckID INT,
@Item VARCHAR(12),
@Item_Description VARCHAR(100),
@Weight_Per_Unit INT,
@Quantity INT,
@HaulRecord_HaulRecordID INT
)
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

	IF(@Truck_TruckID IS NOT NULL)
	UPDATE Manifest
	SET Truck_TruckID = @Truck_TruckID
	WHERE ManifestID = @ManifestID;
	
	IF(@Item IS NOT NULL)
	UPDATE Manifest
	SET Item = @Item
	WHERE ManifestID = @ManifestID;

	IF(@Item_Description IS NOT NULL)
	UPDATE Manifest
	SET Item_Description = @Item_Description
	WHERE ManifestID = @ManifestID;

	IF(@Weight_Per_Unit IS NOT NULL)
	UPDATE Manifest
	SET Weight_Per_Unit = @Weight_Per_Unit
	WHERE ManifestID = @ManifestID;

	IF(@Quantity IS NOT NULL)
	UPDATE Manifest
	SET Quantity = @Quantity
	WHERE ManifestID = @ManifestID;


	IF(@HaulRecord_HaulRecordID IS NOT NULL)
	UPDATE Manifest
	SET HaulRecord_HaulRecordID = @HaulRecord_HaulRecordID
	WHERE ManifestID = @ManifestID;


	COMMIT TRANSACTION;
	SET NOCOUNT OFF;

END;
GO
