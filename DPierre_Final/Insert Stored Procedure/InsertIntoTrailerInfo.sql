--**************************************  InsertIntoTrailerInfo STORE PROCEDURES **************************************

USE Truck;
GO
CREATE PROCEDURE InsertIntoTrailerInfo
(
@TrailerInfoID INT,
@Trailer_Type VARCHAR(15),
@Trailer_Capacity VARCHAR(10),
@Trailer_Mileage INT,
@Trailer_Description VARCHAR(20),
@TruckInfo_TruckInfoID INT
)
AS
BEGIN
--**************************************  INSERT INTO TrailerInfo **************************************
BEGIN TRANSACTION;
INSERT INTO TrailerInfo(TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID)
	VALUES(@TrailerInfoID, @Trailer_Type, @Trailer_Capacity, @Trailer_Mileage, @Trailer_Description, 
			@TruckInfo_TruckInfoID)	
					
COMMIT TRANSACTION;
END;