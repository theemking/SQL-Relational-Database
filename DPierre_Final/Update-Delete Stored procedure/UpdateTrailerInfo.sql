--**************************************  UpdateTrailerInfo STORE PROCEDURES **************************************

USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UpdateTrailerInfo
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
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

	IF(@Trailer_Type IS NOT NULL)
	UPDATE TrailerInfo
	SET Trailer_Type = @Trailer_Type
	WHERE TrailerInfoID = @TrailerInfoID;
	
	IF(@Trailer_Capacity IS NOT NULL)
	UPDATE TrailerInfo
	SET Trailer_Capacity = @Trailer_Capacity
	WHERE TrailerInfoID = @TrailerInfoID;

	IF(@Trailer_Mileage IS NOT NULL)
	UPDATE TrailerInfo
	SET Trailer_Mileage = @Trailer_Mileage
	WHERE TrailerInfoID = @TrailerInfoID;

	IF(@Trailer_Description IS NOT NULL)
	UPDATE TrailerInfo
	SET Trailer_Description = @Trailer_Description
	WHERE TrailerInfoID = @TrailerInfoID;

	IF(@TruckInfo_TruckInfoID IS NOT NULL)
	UPDATE TrailerInfo
	SET TruckInfo_TruckInfoID = @TruckInfo_TruckInfoID
	WHERE TrailerInfoID = @TrailerInfoID;

	COMMIT TRANSACTION;
	SET NOCOUNT OFF;

END;
GO
