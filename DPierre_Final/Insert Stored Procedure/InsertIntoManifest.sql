--**************************************  InsertIntoManifest STORE PROCEDURES **************************************

USE Truck;
GO
CREATE PROCEDURE InsertIntoManifest
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
--**************************************  INSERT INTO Manifest **************************************
BEGIN TRANSACTION;
INSERT INTO Manifest(ManifestID, Truck_TruckID, Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID)
		VALUES(@ManifestID, @Truck_TruckID, @Item, @Item_Description, @Weight_Per_Unit, @Quantity, @HaulRecord_HaulRecordID);			
COMMIT TRANSACTION;
SET NOCOUNT OFF;
END;