--************************************** MaintnanceSTP STORED PROCEDURE**************************************

USE Truck
GO

CREATE PROCEDURE MaintnanceSTP
(
@MaintnanceID INT,
@TruckInfo_TruckInfoID INT,
@Maintnance_Start DATE,
@Maintnance_End DATE,
@Maintnance_Type VARCHAR(20),
@Maintnance_Code INT
)
AS 
BEGIN
SELECT MaintnanceID, TruckInfo_TruckInfoID, Maintnance_Start, Maintnance_End, Maintnance_Type, Maintnance_Code
FROM Maintnance
WHERE MaintnanceID = 6
ORDER BY Maintnance_Start

END
GO
