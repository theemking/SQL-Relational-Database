--**************************************  UpdateHaulRecord STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UpdateHaulRecord
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
	BEGIN TRANSACTION;

	IF(@Truck_Used IS NOT NULL)
	UPDATE HaulRecord
	SET Truck_Used = @Truck_Used
	WHERE HaulRecordID = @HaulRecordID;
	
	IF(@Client IS NOT NULL)
	UPDATE HaulRecord
	SET Client = @Client
	WHERE HaulRecordID = @HaulRecordID;

	IF(@Cargo_Type IS NOT NULL)
	UPDATE HaulRecord
	SET Cargo_Type = @Cargo_Type
	WHERE HaulRecordID = @HaulRecordID;

	IF(@Date_Sent IS NOT NULL)
	UPDATE HaulRecord
	SET Date_Sent = @Date_Sent
	WHERE HaulRecordID = @HaulRecordID;

	IF(@Date_Delivered IS NOT NULL)
	UPDATE HaulRecord
	SET Date_Delivered = @Date_Delivered
	WHERE HaulRecordID = @HaulRecordID;

	IF(@MileageCount IS NOT NULL)
	UPDATE HaulRecord
	SET MileageCount = @MileageCount
	WHERE HaulRecordID = @HaulRecordID;

	IF(@Haul_Notes IS NOT NULL)
	UPDATE HaulRecord
	SET Haul_Notes= @Haul_Notes
	WHERE HaulRecordID = @HaulRecordID;

	IF(@TruckInfo_TruckInfoID IS NOT NULL)
	UPDATE HaulRecord
	SET TruckInfo_TruckInfoID = @TruckInfo_TruckInfoID
	WHERE HaulRecordID = @HaulRecordID;

	COMMIT TRANSACTION;
	SET NOCOUNT OFF;

END;
GO
