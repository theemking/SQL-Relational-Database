--************************************** HaulRecordSTP STORED PROCEDURE**************************************
ALTER PROCEDURE HaulRecordSTP
(
@HaulRecordID INT,
@Truck_Used VARCHAR(20),
@Client VARCHAR(50),
@Cargo_Type VARCHAR(20),
@Date_Sent DATE,
@Date_Delivered DATE,
@MileageCount INT,
@Haul_Notes VARCHAR(1000),
@TruckInfo_TruckInfoID INT
)
AS
BEGIN
SELECT HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID
FROM HaulRecord
WHERE Client = 'Acme'
ORDER BY HaulRecordID
END

