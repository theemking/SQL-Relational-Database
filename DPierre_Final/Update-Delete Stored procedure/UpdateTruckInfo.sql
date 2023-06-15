--**************************************  UpdateTruckInfo STORE PROCEDURES **************************************

USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UpdateTruckInfo
(
@TruckInfoID INT,
@Driver_DriverID INT,
@Truck_Type VARCHAR(50),
@Truck_Body_Type VARCHAR(50),
@Truck_Description VARCHAR(100),
@Truck_Engine_Type VARCHAR(50),
@Truck_Fuel_Type VARCHAR(20),
@Truck_Mileage INT,
@Truck_Condition VARCHAR(20)
)
AS
BEGIN
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

	IF(@Driver_DriverID IS NOT NULL)
	UPDATE TruckInfo
	SET Driver_DriverID = @Driver_DriverID
	WHERE TruckInfoID = @TruckInfoID;
	
	IF(@Truck_Type IS NOT NULL)
	UPDATE TruckInfo
	SET Truck_Type = @Truck_Type
	WHERE TruckInfoID = @TruckInfoID;

	IF(@Truck_Body_Type IS NOT NULL)
	UPDATE TruckInfo
	SET Truck_Body_Type = @Truck_Body_Type
	WHERE TruckInfoID = @TruckInfoID;

	IF(@Truck_Description IS NOT NULL)
	UPDATE TruckInfo
	SET Truck_Description = @Truck_Description
	WHERE TruckInfoID = @TruckInfoID;

	IF(@Truck_Engine_Type IS NOT NULL)
	UPDATE TruckInfo
	SET Truck_Engine_Type = @Truck_Engine_Type
	WHERE TruckInfoID = @TruckInfoID;
	
	IF(@Truck_Fuel_Type IS NOT NULL)
	UPDATE TruckInfo
	SET Truck_Fuel_Type = @Truck_Fuel_Type
	WHERE TruckInfoID = @TruckInfoID;

	IF(@Truck_Mileage IS NOT NULL)
	UPDATE TruckInfo
	SET @Truck_Mileage = @Truck_Mileage
	WHERE TruckInfoID = @TruckInfoID;

	IF(@Truck_Condition IS NOT NULL)
	UPDATE TruckInfo
	SET Truck_Condition = @Truck_Condition
	WHERE TruckInfoID = @TruckInfoID;

	COMMIT TRANSACTION;
	SET NOCOUNT OFF;

END;
GO
