--**************************************  InsertIntoHaulRecord STORE PROCEDURES **************************************

USE Truck;
GO
CREATE PROCEDURE InsertIntoHaulRecord
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
SET NOCOUNT ON;
--**************************************  HaulRecord INTO DRIVER **************************************
BEGIN TRANSACTION;
INSERT INTO HaulRecord(HaulRecordID, Truck_Used, Client, Cargo_Type, Date_Sent, Date_Delivered, MileageCount, 
			Haul_Notes, TruckInfo_TruckInfoID)
		VALUES(@HaulRecordID, @Truck_Used, @Client, @Cargo_Type, @Date_Sent, @Date_Delivered, @MileageCount, 
			@Haul_Notes, @TruckInfo_TruckInfoID);			
COMMIT TRANSACTION;
SET NOCOUNT OFF;
END;