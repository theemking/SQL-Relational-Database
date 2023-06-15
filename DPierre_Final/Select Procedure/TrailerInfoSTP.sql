--************************************** TrailerInfoSTP STORED PROCEDURE**************************************
USE Truck
GO

CREATE PROCEDURE TrailerInfoSTP
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
SELECT TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Mileage, Trailer_Description, 
			TruckInfo_TruckInfoID
FROM TrailerInfo
WHERE Trailer_Mileage > 10000
ORDER BY Trailer_Type
END
GO