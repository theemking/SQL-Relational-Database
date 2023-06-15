--************************************** TrailerInfoLookUP STORED PROCEDURE**************************************
USE Truck
GO

CREATE PROCEDURE TrailerInfoLookUP
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
SELECT TrailerInfoID, Trailer_Type, Trailer_Capacity,  Trailer_Description, TruckInfo_TruckInfoID
FROM TrailerInfo
WHERE (Trailer_Mileage > 100
AND Trailer_Capacity = '10 tone') OR
	  (Trailer_Mileage =12670 AND Trailer_Capacity ='5 tones') OR
	  (Trailer_Type IN ('Manual Attached', 'Auto Pull'))
ORDER BY TrailerInfoID, Trailer_Type, Trailer_Capacity, Trailer_Description, 
			TruckInfo_TruckInfoID ASC;
END
GO
