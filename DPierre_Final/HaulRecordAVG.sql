--************************************** HaulRecordAVG STORED PROCEDURE**************************************
CREATE PROCEDURE HaulRecordAVG
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
select  AVG(MileageCount)
FROM HaulRecord
WHERE Client = 'Acme'
END

