--************************************** ManifestSTP STORED PROCEDURE**************************************

USE Truck
GO

CREATE PROCEDURE ManifestSTP
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
SELECT ManifestID, Truck_TruckID, Item, Item_Description, Weight_Per_Unit, Quantity, HaulRecord_HaulRecordID
FROM Manifest
WHERE Quantity > 2
ORDER BY Quantity
END
