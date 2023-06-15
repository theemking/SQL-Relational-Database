--**************************************  UpdateMaintnance STORE PROCEDURES **************************************


USE Truck
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UpdateMaintnance
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
	
	SET NOCOUNT ON;
	BEGIN TRANSACTION;

	IF(@TruckInfo_TruckInfoID IS NOT NULL)
	UPDATE Maintnance
	SET TruckInfo_TruckInfoID = @TruckInfo_TruckInfoID
	WHERE MaintnanceID = @MaintnanceID;
	
	IF(@Maintnance_Start IS NOT NULL)
	UPDATE Maintnance
	SET Maintnance_Start = @Maintnance_Start
	WHERE MaintnanceID = @MaintnanceID;

	IF(@Maintnance_End IS NOT NULL)
	UPDATE Maintnance
	SET Maintnance_End = @Maintnance_End
	WHERE MaintnanceID = @MaintnanceID;

	IF(@Maintnance_Type IS NOT NULL)
	UPDATE Maintnance
	SET Maintnance_Type = @Maintnance_Type
	WHERE @MaintnanceID = @MaintnanceID;

	IF(@Maintnance_Code IS NOT NULL)
	UPDATE Maintnance
	SET Maintnance_Code = @Maintnance_Code
	WHERE MaintnanceID = @MaintnanceID;

	COMMIT TRANSACTION;
	SET NOCOUNT OFF;

END;
GO
